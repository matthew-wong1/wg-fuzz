struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-962f, false), Struct_1(-1191f, false), vec4<bool>(false, false, true, false), vec4<f32>(-2448f, -1000f, -189f, -1000f));

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global1 = false;
    let var_0 = max(u_input.d.x, _wgslsmith_clamp_u32(12277u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)), ~vec3<u32>(u_input.d.x, 0u, 0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x), vec4<u32>(9584u, 0u, u_input.a, u_input.a))) & 16612u);
    var var_1 = Struct_2(global0.a, global0.a, vec4<bool>(true, global0.a.b, false, global0.a.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d.x, 141f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1192f, global0.b.a))), 495f))));
    var var_2 = Struct_3(u_input.c.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-910f, global0.d.x)), var_1.b.a) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.a - global0.d.x)))), any(!(!var_1.c.yww))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.d.x, var_1.b.a)) - _wgslsmith_f_op_f32(step(1435f, -669f))), _wgslsmith_f_op_f32(1000f + var_1.a.a) == _wgslsmith_f_op_f32(f32(-1f) * -1792f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1304f))), !var_1.c.x), global0.c, _wgslsmith_f_op_vec4_f32(-var_1.d)), 0u, 0u);
    var var_3 = Struct_3(1i, global0.b, Struct_2(Struct_1(var_1.b.a, true), var_2.b, !var_2.c.c, _wgslsmith_f_op_vec4_f32(ceil(global0.d))), 47336u, u_input.d.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -963f), -2163f))))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global0.d.x, arg_0, arg_0) * vec4<f32>(global0.d.x, 1489f, -306f, arg_0))))), global0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.d, vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global0.a.a)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(453f, -395f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f - arg_0) - global0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1623f), _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(func_3()))))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -1000f), global0.a.a), var_0.x, _wgslsmith_f_op_f32(step(var_0.x, -265f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_3())));
    var var_1 = Struct_4(firstLeadingBit(firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, 39021u, u_input.a)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x), vec4<u32>(17818u, 26677u, u_input.a, u_input.d.x))));
    var_1 = Struct_4(~vec4<u32>(~(~13870u), u_input.d.x, u_input.d.x, _wgslsmith_add_u32(1u, ~u_input.a)));
    var_1 = Struct_4(vec4<u32>(~(~1u), 0u, min(~var_1.a.x, 24196u & firstTrailingBit(var_1.a.x)), 10713u ^ max(_wgslsmith_clamp_u32(var_1.a.x, 33974u, 4294967295u), reverseBits(92424u))));
    return Struct_1(var_0.x, !(true != (all(arg_1) & true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = func_2(global0.d.x, vec4<bool>((global0.c.x && (-887f == global0.b.a)) == true, select(true, ~arg_1 == arg_1, _wgslsmith_f_op_f32(arg_2 - 416f) != 834f), (arg_1 < 0u) || false, all(global0.c.yy)));
    var var_1 = select(max(abs(max(u_input.c, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c.x, -u_input.c.x, i32(-1i) * -1i), u_input.c, max(u_input.c, vec3<i32>(32108i, -2147483647i, u_input.b)) << (firstLeadingBit(vec3<u32>(arg_1, u_input.a, 0u)) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(~(-u_input.c)), abs(vec3<i32>(-1i) * -u_input.c), _wgslsmith_sub_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(10983i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 1i)), u_input.c, !global0.c.wxx), max(min(vec3<i32>(u_input.b, 45974i, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b)), abs(u_input.c)))), select(u_input.b == ~_wgslsmith_sub_i32(0i, 2147483647i), func_2(_wgslsmith_f_op_f32(min(global0.d.x, arg_2)), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)).b & arg_0.x, true));
    var var_2 = abs(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.zz, abs(~vec2<i32>(u_input.b, var_1.x)))));
    let var_3 = Struct_3(_wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(1i, -28108i)), var_1.x | _wgslsmith_div_i32(abs(var_1.x), var_1.x)), var_0, Struct_2(Struct_1(var_0.a, true), global0.b, !vec4<bool>(all(global0.c), all(vec2<bool>(arg_0.x, arg_0.x)), !global0.b.b, false), global0.d), ~(firstLeadingBit(~arg_1) & ~(~1u)), ~arg_1);
    let var_4 = select(var_3.c.c, var_3.c.c, vec4<bool>(false, false, arg_0.x, false));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.c.zyz, u_input.a, 1416f);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(960f, -550f)), 846f, _wgslsmith_f_op_f32(global0.b.a - _wgslsmith_div_f32(global0.d.x, global0.b.a)));
    global1 = global0.a.b;
    var_0 = vec3<f32>(-775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-909f * -538f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-269f, -546f)))))), 332f);
    var var_1 = (firstTrailingBit(firstLeadingBit(u_input.c)) ^ _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2537i, u_input.c.x, 7221i), u_input.c, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 1i), u_input.c)), vec3<i32>(u_input.c.x >> (u_input.d.x % 32u), -2147483647i, ~(-30215i)))) ^ vec3<i32>(u_input.b, max(0i, ~u_input.c.x), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yx) - var_0.zx), -140f, ~(-3488i));
}


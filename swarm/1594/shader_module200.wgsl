struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 71217u;

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = vec3<u32>(u_input.a, _wgslsmith_mod_u32(48800u, ~(~u_input.a >> (u_input.d.x % 32u))), abs(_wgslsmith_add_u32(102409u, 1u)));
    global0 = _wgslsmith_add_u32(u_input.a, var_0.x & firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) & 70533u));
    global2 = array<vec3<f32>, 5>();
    let var_1 = Struct_1(~firstTrailingBit(select(50728u, var_0.x, false) << ((var_0.x >> (1u % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1430f * _wgslsmith_f_op_f32(-1000f - -479f))))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec2<bool>(false, false)), 1u == u_input.d.x, true), vec3<bool>(true, select(false, false, false), true)), vec3<bool>(select(any(vec2<bool>(false, true)), all(vec4<bool>(false, false, false, false)), true), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), true), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) * -1520f), 1369f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1919f, -386f, -646f), vec3<f32>(-1209f, 115f, 280f), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(388f, 1000f, 1925f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, 112f, 1000f))), true)))));
    var var_2 = var_1.c.x;
    return -u_input.e.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(func_3(), i32(-1i) * -2147483647i), -2147483647i, min(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -1i, 25087i), vec4<i32>(arg_0.x, 2147483647i, arg_0.x, 44075i)), 1i), firstLeadingBit(firstLeadingBit(u_input.b.x))) >> (_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(u_input.d.zzx, vec3<u32>(u_input.d.x, u_input.a, u_input.a)) ^ ~27322u) % 32u), i32(-1i) * -arg_0.x);
    global0 = 4294967295u;
    var_0 = abs(-(_wgslsmith_add_vec4_i32(u_input.e, ~u_input.c) << (u_input.d % vec4<u32>(32u))));
    let var_1 = Struct_1(4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f * -1000f))))), !select(select(!arg_1, select(vec3<bool>(arg_1.x, arg_1.x, false), arg_1, arg_1), !arg_1), select(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), false), arg_1, vec3<bool>(false, false, true)), !(!arg_1)), vec3<f32>(_wgslsmith_f_op_f32(ceil(136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * 776f), -276f))), 103f));
    global0 = max(firstLeadingBit(u_input.a) ^ u_input.a, u_input.a);
    return var_1;
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = func_2(~countOneBits(vec3<i32>(-16396i, min(u_input.c.x, 1i), 1i)), vec3<bool>(true, !any(vec3<bool>(true, true, true)), true & any(vec2<bool>(true, false))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(var_0.d.yx)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(707f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-668f))), var_0.d.x), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x * 660f))), var_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b + -610f)))))), func_2(vec3<i32>(-u_input.e.x, min(1i, u_input.c.x), _wgslsmith_div_i32(0i, 9160i)) & firstLeadingBit(arg_0.zwx ^ vec3<i32>(u_input.b.x, arg_0.x, 10654i)), var_0.c));
    global2 = array<vec3<f32>, 5>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(732f, var_1.c.b))), var_0.d.xy)) * _wgslsmith_f_op_vec2_f32(-func_2(abs(vec3<i32>(u_input.b.x, 66999i, -9061i)), var_1.c.c).d.yx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(693f, -559f, _wgslsmith_f_op_f32(abs(var_1.b.x))))), vec3<f32>(259f, _wgslsmith_f_op_f32(abs(-157f)), var_1.a.x)), Struct_1(~(~_wgslsmith_add_u32(4294967295u, var_0.a)), _wgslsmith_f_op_f32(min(var_0.d.x, var_0.b)), !var_1.c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -429f, var_1.a.x) - vec3<f32>(-129f, var_1.a.x, -782f)) + func_2(u_input.c.xyx, var_1.c.c).d) + vec3<f32>(_wgslsmith_div_f32(-1722f, 319f), var_0.b, _wgslsmith_f_op_f32(-var_0.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec4_i32(~u_input.c, vec4<i32>(u_input.e.x, -2147483647i, ~min(u_input.e.x, u_input.c.x), u_input.c.x)));
    let var_1 = var_0;
    let var_2 = vec2<i32>(u_input.b.x ^ -1i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-39314i, -17152i), vec2<i32>(u_input.c.x, u_input.b.x ^ 27041i))));
    global1 = abs(var_0.c.a);
    global0 = func_1(u_input.e).c.a;
    let var_3 = var_1.c.a;
    let var_4 = vec2<bool>(true & select(true, !(var_0.c.c.x & false), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(1156f, ~(-2147483647i), 1u, reverseBits(~(~(~var_3))));
}


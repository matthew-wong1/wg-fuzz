struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(589f, -571f, 1153f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec3_i32(abs(u_input.a.xwx) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 13136i, -2147483647i, -11873i), ~vec4<i32>(u_input.c, u_input.d, u_input.a.x, u_input.e.x)), u_input.e.x, abs(1i)), vec3<i32>(u_input.a.x, -_wgslsmith_clamp_i32(reverseBits(u_input.c), u_input.a.x, u_input.a.x), -(~u_input.c)));
    let var_1 = vec3<bool>(global0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(751f * global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 471f) - _wgslsmith_f_op_f32(-global0.x))), select(var_0.x >= _wgslsmith_div_i32(1i, var_0.x), true && (var_0.x >= select(u_input.c, 18720i, true)), false), true);
    let var_2 = -reverseBits(reverseBits(vec3<i32>(-1i) * -vec3<i32>(14576i, var_0.x, -1i)));
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_2.x ^ u_input.e.x, 0i, _wgslsmith_sub_i32(2147483647i, u_input.d)) & var_0.x, var_0.x, ~var_2.x), _wgslsmith_add_vec3_i32(select(~var_2, u_input.a.wyy << (u_input.b % vec3<u32>(32u)), vec3<bool>(var_1.x, false, var_1.x)) | u_input.a.wxw, vec3<i32>(-23251i, abs(var_0.x | 2147483647i), ~(-u_input.e.x))));
    let var_4 = Struct_2(!select(select(!vec4<bool>(false, var_1.x, true, false), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, true), vec4<bool>(var_1.x, true, false, true)), var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1.x));
    return !(!(!(!(!var_1))));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, 1177f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(-1000f))), global0.x) * arg_0)));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(-532f, global0.x)), -616f, -352f)));
    let var_2 = vec4<bool>(all(!func_3()), true, true, func_3().x);
    var var_3 = -89502i;
    return !var_2.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = func_3().zy;
    let var_1 = u_input.b;
    var var_2 = Struct_1(var_0, ~vec2<u32>(u_input.b.x, max(46649u, 0u << (u_input.b.x % 32u))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32((_wgslsmith_mod_u32(arg_0, 24011u) ^ _wgslsmith_clamp_u32(arg_0, arg_3.x, arg_1.b.x)) | select(1111u ^ arg_1.b.x, firstLeadingBit(var_1.x), var_0.x), ~select(~arg_0, ~arg_0, func_3().x)), 74128u);
    var var_4 = arg_1;
    return Struct_2(vec4<bool>(arg_1.a.x, any(select(!vec2<bool>(var_2.a.x, var_0.x), var_0, arg_1.c.x < 625f)), var_2.a.x, (~4294967295u == arg_3.x) || all(!vec4<bool>(var_0.x, true, arg_1.a.x, true))));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, -773f))) * vec3<f32>(1729f, global0.x, global0.x)))));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global0.x), -1690f)))))), global0.x);
    let var_1 = u_input.c & _wgslsmith_add_i32(~u_input.e.x, 2147483647i);
    let var_2 = func_4(_wgslsmith_add_u32(4294967295u, reverseBits(0u)), Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_2(vec4<f32>(-814f, var_0.b, var_0.a, var_0.b))), u_input.b.yy, _wgslsmith_f_op_vec2_f32(ceil(global0.yz))), _wgslsmith_add_vec3_i32(u_input.a.zxy, vec3<i32>(var_1, ~_wgslsmith_add_i32(u_input.e.x, u_input.e.x), _wgslsmith_div_i32(u_input.e.x, -var_1))), ~(~u_input.b));
    let var_3 = true;
    return Struct_1(var_2.a.zw, ~_wgslsmith_mod_vec2_u32(u_input.b.zx << (vec2<u32>(31413u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.b.yy, ~u_input.b.yz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - var_0.a))) * var_0.a), _wgslsmith_f_op_f32(-global0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0.c.x, arg_0.c.x) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(308f, arg_0.c.x, global0.x), vec3<f32>(global0.x, global0.x, -848f)))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), 1077f));
    global0 = vec3<f32>(global0.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-571f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2002f + arg_0.c.x))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_f_op_f32(max(arg_0.c.x, -562f))))), _wgslsmith_f_op_f32(abs(func_1().c.x)), _wgslsmith_f_op_f32(-global0.x)));
    let var_0 = Struct_1(vec2<bool>(arg_0.a.x, true), u_input.b.xy, vec2<f32>(_wgslsmith_f_op_f32(ceil(-1074f)), _wgslsmith_div_f32(arg_0.c.x, func_1().c.x)));
    return Struct_1(!(!arg_0.a), (countOneBits(arg_0.b) >> (abs(firstTrailingBit(vec2<u32>(1u, u_input.b.x))) % vec2<u32>(32u))) << (vec2<u32>(1u, _wgslsmith_mod_u32(~0u, arg_1)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    let var_1 = func_5(func_1(), 6044u);
    var var_2 = _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(70302u, var_1.b.x, u_input.b.x, 46218u)), select(vec4<u32>(0u, 43844u, var_1.b.x, var_1.b.x), vec4<u32>(4294967295u, var_1.b.x, var_1.b.x, 7997u), var_0.a.x))), firstLeadingBit(~vec4<u32>(var_1.b.x, u_input.b.x, 4294967295u, u_input.b.x))) >= ~(~(~1u));
    var_2 = false & select(!(!(var_0.a.x | false)), var_1.a.x, func_2(vec4<f32>(303f, _wgslsmith_f_op_f32(438f - -1920f), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-var_1.c.x))));
    let var_3 = var_1;
    var var_4 = u_input.e.yz;
    let var_5 = ~(~(~var_3.b.x));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1783f, _wgslsmith_f_op_f32(-498f * global0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 1401f, var_1.c.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.x, var_3.c.x, var_3.c.x), vec3<f32>(-782f, 1360f, var_3.c.x)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(530f, -1560f, var_3.c.x))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(793f + 1000f), var_3.c.x), _wgslsmith_f_op_f32(global0.x * -379f), _wgslsmith_f_op_f32(-global0.x)))), func_5(Struct_1(vec2<bool>(true, true), ~vec2<u32>(0u, 14222u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), 41453u).a.x));
    var var_6 = Struct_3(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_3.b.x, 0u), var_5 & var_3.b.x);
}


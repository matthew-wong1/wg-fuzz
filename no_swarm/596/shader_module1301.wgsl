struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(447f, -896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-745f, 1187f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(290f)), _wgslsmith_div_f32(354f, -1171f), -476f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1996f, -186f, 1523f)))));
    var var_1 = Struct_3(arg_0, arg_0.b);
    var var_2 = 0i;
    var_1 = Struct_3(Struct_2(true, Struct_1(arg_0.b.a), arg_0.c), var_1.a.b);
    let var_3 = vec4<u32>(0u, arg_1 & ~(~select(arg_1, 44648u, arg_3.x)), 1u, ~4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1293f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(632f, 1042f)), 247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * var_0.x)))) + var_0.x);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = ~vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), ~(50249i & u_input.c.x)) ^ _wgslsmith_clamp_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(vec2<i32>(-20328i, _wgslsmith_div_i32(43243i, u_input.b)), -vec2<i32>(0i, 16520i)), vec2<i32>(u_input.b >> (reverseBits(u_input.a.x) % 32u), 1i));
    let var_1 = abs(var_0.x & -u_input.c.x) ^ var_0.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_1, Struct_1(vec3<i32>(-1622i, -2147483647i, 2147483647i)), vec4<i32>(16217i, 3576i, 17728i, var_1)), _wgslsmith_mod_u32(1u, u_input.d.x), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), !vec3<bool>(true, true, arg_1)))))));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1047f - arg_0) - arg_0)));
    let var_3 = Struct_3(Struct_2(arg_1, Struct_1(select(~vec3<i32>(-1i, 2147483647i, -2147483647i), abs(vec3<i32>(var_1, 1i, -34915i)), arg_1)), vec4<i32>(-1i) * -(vec4<i32>(-503i, -1i, var_0.x, 2856i) >> (u_input.d % vec4<u32>(32u)))), Struct_1(reverseBits(vec3<i32>(-42050i, u_input.c.x, var_0.x) ^ vec3<i32>(1i, var_1, 0i)) ^ vec3<i32>(abs(-17548i), u_input.c.x, 0i)));
    return Struct_1(vec3<i32>(0i, ~(u_input.b ^ 0i), ~(-10082i)) & -vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.b.a, vec3<i32>(var_1, -9907i, var_1)), var_0.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_3.b.a.x, var_1))));
}

fn func_1() -> Struct_1 {
    let var_0 = -(~u_input.b);
    var var_1 = !(!vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), any(vec4<bool>(true, true, true, true))));
    var var_2 = -1000f;
    var var_3 = true;
    var var_4 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2758f + 1121f))), _wgslsmith_div_f32(-1129f, _wgslsmith_f_op_f32(f32(-1f) * -712f)), select(true, var_1.x, false) | true))), !(!var_1.x));
    return Struct_1(~vec3<i32>(1i, _wgslsmith_sub_i32(-20288i >> (u_input.a.x % 32u), u_input.b), _wgslsmith_mult_i32(~u_input.b, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-585f, 1077f, -1515f), vec3<f32>(-190f, -1701f, -791f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, -605f, 435f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-634f, 592f, 315f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, 1170f, 707f))))));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-263f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 530f, false))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(1283f - var_0.x)));
}


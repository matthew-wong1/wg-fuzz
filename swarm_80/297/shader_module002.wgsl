struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_4,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = 0u;
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(33727u, var_0), 1u ^ u_input.a.x), u_input.a, u_input.c.zww);
    global1 = array<vec4<u32>, 26>();
    var var_2 = i32(-1i) * -2147483647i;
    var var_3 = _wgslsmith_mult_u32(~abs(var_0) | max(44323u, reverseBits(var_0)), 66680u) == 7884u;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1112f))), _wgslsmith_f_op_f32(399f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1399f, -472f))))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = vec2<f32>(892f, _wgslsmith_f_op_f32(func_3()));
    let var_1 = 0u;
    global0 = ~u_input.a.x << (arg_3 % 32u);
    let var_2 = arg_1;
    var var_3 = -31297i;
    return _wgslsmith_clamp_u32(max(~select(4294967295u, 64461u, any(vec4<bool>(true, true, true, arg_2))), 1u), 65830u, arg_0.x & 1u);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> f32 {
    global1 = array<vec4<u32>, 26>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~func_2(vec3<u32>(u_input.a.x, arg_2, 79708u), u_input.d, false, 18669u), ~_wgslsmith_mod_u32(u_input.c.x, arg_1.a.c.x), 28612u), min(~u_input.c.xzz, _wgslsmith_add_vec3_u32(abs(arg_1.a.b), arg_1.a.c))), ~(~arg_1.a.b.x));
    var var_1 = arg_0.a.c;
    var var_2 = select(vec2<bool>(((arg_2 <= arg_2) || true) || true, all(vec4<bool>(true, true, true, true))), select(vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(10570i, u_input.d, u_input.d), vec3<i32>(u_input.b, -13362i, 0i)) <= max(-2147483647i, -2147483647i), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, false)), true)), true), !vec2<bool>(all(vec4<bool>(false, false, true, false)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    var var_3 = Struct_2(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, 46180i, u_input.b), vec4<i32>(u_input.d, -1i, 17i, u_input.b)) & ~abs(vec4<i32>(1i, 0i, u_input.d, u_input.b))), Struct_1(~min(~arg_2, ~arg_2), ~(vec3<u32>(4294967295u, arg_0.a.b.x, 1u) & _wgslsmith_sub_vec3_u32(arg_1.a.c, vec3<u32>(6929u, 1u, 1u))), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(arg_2, u_input.c.x), 4294967295u) & ~(~arg_0.a.b)), ~(~12947u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -766f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(919f - 193f) - _wgslsmith_f_op_f32(round(935f)))) * -1147f), 550f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(375f, 1356f, false)) + _wgslsmith_f_op_f32(530f + 727f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1085f)), 484f)), _wgslsmith_f_op_f32(1652f * _wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(u_input.a.x, vec3<u32>(u_input.a.x, 24417u, 105653u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_4(Struct_1(13688u, u_input.c.wwy, u_input.a)), 0u)))))));
    let var_1 = false;
    global0 = 46809u;
    let var_2 = Struct_4(Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.a.yy), u_input.c.zz), u_input.c.zxw, vec3<u32>(16321u, ~4294967295u, _wgslsmith_div_u32(4294967295u, func_2(vec3<u32>(u_input.a.x, 44699u, u_input.c.x), 1i, true, u_input.c.x)))));
    let var_3 = 1u;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(max(1104f, var_0))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-488f, -925f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 165f) - vec2<f32>(var_0, 310f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(607f, var_0))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(~u_input.b, ~min(u_input.b, 48557i)), ~var_2.a.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -1422f)))), var_0), _wgslsmith_mod_u32(~(~u_input.a.x), ~0u));
}


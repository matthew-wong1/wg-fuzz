struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = ~(-(~(-6860i << (countOneBits(0u) % 32u))));
    var var_1 = _wgslsmith_mult_vec4_u32(~(~(~(~vec4<u32>(4294967295u, 4294967295u, 1u, 26383u)))), select(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(~4294967295u, ~75993u, 1u, 31183u)), any(vec2<bool>(true, true))));
    var var_2 = arg_0.c;
    var var_3 = 2147483647i;
    let var_4 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true))));
    return var_4;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = ~(u_input.b ^ _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xzz << (vec3<u32>(1u, 22461u, 28808u) % vec3<u32>(32u)), vec3<i32>(u_input.b, 9726i, 1i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1232f)))), _wgslsmith_f_op_f32(f32(-1f) * -551f), arg_0, arg_0);
    var var_2 = 1f;
    var var_3 = Struct_4(Struct_1(~(-vec3<i32>(u_input.b, var_0, u_input.b))), func_3(Struct_3(Struct_1(u_input.a.zxw), Struct_2(_wgslsmith_f_op_f32(-var_1.x)), Struct_1(vec3<i32>(1i, 26837i, 1i)), -_wgslsmith_mod_i32(-2147483647i, -17150i), Struct_2(_wgslsmith_f_op_f32(350f * arg_0)))));
    let var_4 = 8446u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_1() -> Struct_3 {
    let var_0 = -2147483647i;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3841f))) * _wgslsmith_div_f32(690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(652f, Struct_2(-716f))) + _wgslsmith_f_op_f32(f32(-1f) * -164f)))));
    var var_2 = 15544u;
    var var_3 = Struct_2(878f);
    let var_4 = _wgslsmith_f_op_f32(-var_3.a);
    return Struct_3(Struct_1(max(-u_input.a.zyz, -(vec3<i32>(-14818i, -1i, var_0) & vec3<i32>(-31217i, u_input.a.x, 2147483647i)))), var_1, Struct_1(u_input.a.zyz), 1i, var_1);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.a - -222f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) + _wgslsmith_f_op_f32(-arg_0.e.a)))));
    var var_1 = u_input.b;
    let var_2 = select(firstLeadingBit(4294967295u), abs(abs(~max(0u, 49052u))), 657f > arg_0.b.a);
    let var_3 = -(~(_wgslsmith_sub_vec2_i32(-u_input.a.wy, vec2<i32>(-7345i, u_input.b) | u_input.a.ww) << (countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_2), vec2<u32>(var_2, 15376u))) % vec2<u32>(32u))));
    let var_4 = Struct_4(Struct_1(~u_input.a.wyy), vec2<bool>(all(vec3<bool>(true, any(vec2<bool>(true, true)), false)), -1162f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.e.a)), _wgslsmith_f_op_f32(-473f - -1042f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = Struct_4(func_4(Struct_3(func_4(func_4(var_0)).a, var_0.e, var_0.a, _wgslsmith_div_i32(1i, -1707i), Struct_2(-2548f))).c, vec2<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true));
    var var_2 = -46545i;
    let var_3 = vec3<bool>(all(var_1.b), var_1.b.x, !(!select(!var_1.b.x, var_1.b.x, var_1.b.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, -377f, _wgslsmith_f_op_f32(sign(var_0.b.a))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-535f, var_0.b.a, 1098f)))))))));
    var_2 = -7136i;
    var var_5 = _wgslsmith_add_i32(0i, 1i);
    var var_6 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_0.e.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(-65706i, 0i, ~vec3<u32>(abs(min(54444u, 2723u)), 102714u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 60795u, 879u, 4294967295u), vec4<u32>(0u, 63538u, 0u, 1u)), ~28886u)));
}


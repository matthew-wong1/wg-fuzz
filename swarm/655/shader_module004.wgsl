struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = arg_0.x;
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 45136u, u_input.b, 1u) >> ((vec4<u32>(79454u, 0u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(select(35426u, 1u, var_0), 1u, u_input.a.x, ~8425u))));
    let var_2 = Struct_2(Struct_1(vec4<u32>(~countOneBits(0u), ~u_input.b, abs(~4480u), _wgslsmith_sub_u32(~var_1.a.a.x, 11471u))));
    let var_3 = 1u;
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-585f, 741f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, -177f))) + vec2<f32>(-381f, -564f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-618f, -592f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-661f, -256f) + vec2<f32>(1312f, -235f)), any(arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2250f, -123f)) + vec2<f32>(-827f, 1087f)))));
    return true;
}

fn func_3() -> vec4<bool> {
    let var_0 = 2487i;
    let var_1 = Struct_4(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(11330u, 20809u), ~17383u, 1u, u_input.b), ~abs(vec4<u32>(0u, 20293u, 37245u, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))) + -1023f), Struct_1(firstLeadingBit(vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_mod_u32(u_input.b, u_input.b), abs(u_input.a.x), 0u))));
    let var_2 = var_1;
    let var_3 = Struct_2(var_2.a);
    var var_4 = vec4<bool>((var_1.a.a.x | var_2.a.a.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(var_2.a.a, vec4<u32>(var_1.c.a.x, u_input.a.x, 1u, u_input.b)), 1u, u_input.b), vec3<u32>(_wgslsmith_mod_u32(0u, var_2.c.a.x), 39771u & var_2.c.a.x, ~var_2.c.a.x)), true, !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false)) && func_2(vec4<bool>(true, true, true, true)), true);
    return select(select(select(!select(vec4<bool>(true, true, false, var_4.x), vec4<bool>(var_4.x, true, false, true), var_4.x), vec4<bool>(var_2.b == var_1.b, all(vec3<bool>(true, var_4.x, true)), true, all(vec3<bool>(true, var_4.x, var_4.x))), true), vec4<bool>(true, var_4.x, var_4.x, true), all(vec2<bool>(true, var_4.x && var_4.x))), !vec4<bool>(var_4.x, all(select(var_4.wx, vec2<bool>(var_4.x, false), var_4.wz)), true != (var_2.b <= var_2.b), select(true, var_4.x, true)), select(vec4<bool>(var_4.x, var_4.x, select(all(var_4.wwy), var_4.x, var_0 > 1i), any(select(vec2<bool>(var_4.x, true), vec2<bool>(var_4.x, true), vec2<bool>(var_4.x, false)))), vec4<bool>(var_4.x, var_4.x, all(select(var_4.yz, var_4.xx, true)), true), true));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mod_i32(arg_2, -1i) ^ -_wgslsmith_sub_i32(~1i, 22511i);
    var var_1 = !select(vec4<bool>(false, !(arg_0.a & arg_0.a), false, all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), vec4<bool>(!arg_0.a, arg_0.a, arg_0.a, arg_0.a), func_2(select(select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, false, false, arg_0.a), arg_0.a), !vec4<bool>(arg_0.a, false, true, true), select(vec4<bool>(true, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false)))));
    var var_2 = arg_3;
    var_1 = select(select(!func_3(), !vec4<bool>(arg_0.a, var_1.x, func_2(vec4<bool>(false, false, arg_0.a, var_1.x)), true), select(select(func_3(), !vec4<bool>(arg_0.a, var_1.x, false, false), select(vec4<bool>(true, arg_0.a, var_1.x, false), vec4<bool>(false, var_1.x, arg_0.a, arg_0.a), vec4<bool>(false, var_1.x, arg_0.a, true))), vec4<bool>(true, false, all(var_1.xw), !var_1.x), var_1.x)), !select(select(vec4<bool>(true, var_1.x, arg_0.a, arg_0.a), vec4<bool>(var_1.x, false, true, arg_0.a), select(vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.a), vec4<bool>(arg_0.a, false, true, true), true)), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.a), !vec4<bool>(false, arg_0.a, arg_0.a, true), !vec4<bool>(var_1.x, true, var_1.x, arg_0.a)), false), !select(!(!vec4<bool>(arg_0.a, var_1.x, false, arg_0.a)), func_3(), all(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(var_1.x, var_1.x, var_1.x, true)))));
    var var_3 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f - _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(step(434f, 1107f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-656f, -489f), -125f, true)) * 703f)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i > min(-abs(-46223i >> (1u % 32u)), -func_1(Struct_3(true), ~vec4<u32>(u_input.a.x, 1u, 4294967295u, 27920u), 1i, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 16155u, 0u))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -343f);
    var var_2 = 1u;
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = Struct_1(~(~vec4<u32>(4294967295u, 84959u, 1u << (u_input.b % 32u), 4294967295u)));
    let var_5 = Struct_2(Struct_1(vec4<u32>(130010u, 4294967295u, 1u, 40656u)));
    let var_6 = Struct_3(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(-160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-526f, -1000f))))), -624f, 463f), -491f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1380f))))));
}


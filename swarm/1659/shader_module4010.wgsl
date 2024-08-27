struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<i32, 11> = array<i32, 11>(13402i, 0i, 0i, 23079i, -7365i, 1i, 30625i, 2147483647i, 7103i, 41881i, -9585i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> f32 {
    global1 = array<i32, 11>();
    global0 = array<Struct_1, 10>();
    let var_0 = !all(select(!(!vec2<bool>(arg_0.b, true)), select(select(vec2<bool>(arg_2, false), vec2<bool>(true, true), vec2<bool>(arg_2, arg_0.b)), !vec2<bool>(arg_2, arg_2), true), !vec2<bool>(arg_0.b, arg_0.b)));
    var var_1 = _wgslsmith_mult_u32(arg_0.a.x, firstLeadingBit(arg_0.a.x) >> (_wgslsmith_div_u32(arg_0.a.x, ~(1u << (arg_1 % 32u))) % 32u));
    let var_2 = arg_0;
    return 625f;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_2(!select(select(!vec4<bool>(true, arg_0.b, false, arg_0.b), vec4<bool>(false, true, arg_0.b, arg_2.b), any(vec3<bool>(true, arg_0.b, arg_2.b))), select(!vec4<bool>(arg_2.b, false, true, arg_2.b), vec4<bool>(arg_2.b, false, true, false), !arg_2.b), any(select(vec3<bool>(true, arg_0.b, false), vec3<bool>(true, arg_0.b, arg_2.b), vec3<bool>(arg_2.b, arg_2.b, arg_2.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_2, 4294967295u, true)), arg_3, 551f))), vec3<f32>(arg_3, -125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f + arg_3) * _wgslsmith_f_op_f32(arg_3 + -1556f)) * 544f)), var_0.a.xww));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(9407u, arg_2.a.x), arg_0.a.x), 10u)];
    var var_3 = vec3<u32>(36774u, arg_2.a.x, _wgslsmith_div_u32(max(0u, abs(reverseBits(0u))), ~_wgslsmith_clamp_u32(1u, ~0u, arg_2.a.x)));
    let var_4 = Struct_3(arg_0.a, true);
    return abs(abs(u_input.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    let var_0 = -1i;
    let var_1 = vec2<i32>(~(0i ^ _wgslsmith_mod_i32(u_input.a.x, -2147483647i)), -43037i) >> (abs(~(~min(vec2<u32>(33015u, arg_1), vec2<u32>(arg_1, 1u)))) % vec2<u32>(32u));
    var var_2 = all(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, false, false))));
    var var_3 = arg_2.x;
    var_2 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1520f))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(476f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(exp2(arg_3))))) != (~_wgslsmith_sub_u32(arg_1, ~89268u) != arg_1);
    return Struct_3(vec4<u32>(min(arg_1, ~arg_1), abs(reverseBits(~arg_1)), max(_wgslsmith_add_u32(arg_1, countOneBits(13182u)), ~(~arg_1)), abs(countOneBits(arg_1))), !all(vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true)), true)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    global0 = array<Struct_1, 10>();
    let var_0 = arg_2.a;
    var var_1 = vec2<u32>(_wgslsmith_div_u32(var_0, 1u), arg_2.a);
    global1 = array<i32, 11>();
    var var_2 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_2.a, var_0, var_0, 40087u), vec4<u32>(arg_2.a, arg_2.a, var_1.x, var_0)), vec4<u32>(var_1.x, 0u, arg_2.a, arg_2.a)), countOneBits(~vec4<u32>(var_1.x, 67142u, var_0, var_0))), (vec4<u32>(48186u, var_1.x, var_0, 4294967295u) << (max(vec4<u32>(48378u, var_0, var_0, 53893u), vec4<u32>(arg_2.a, arg_2.a, var_0, 20233u)) % vec4<u32>(32u))) >> (select(~vec4<u32>(var_1.x, var_0, 1u, var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(14286u, 33728u, 1u, var_1.x), vec4<u32>(var_0, var_1.x, 105948u, arg_2.a)), select(arg_0.a, arg_0.a, true)) % vec4<u32>(32u))), arg_0.a.x);
    return func_4(~vec4<i32>(u_input.a.x, ~u_input.a.x, 0i, u_input.a.x), 63712u, ~(select(func_2(Struct_3(vec4<u32>(179u, var_2.a.x, 20438u, var_2.a.x), false), u_input.a.yxy, Struct_3(var_2.a, arg_0.a.x), 576f), u_input.a & vec4<i32>(global1[_wgslsmith_index_u32(arg_2.a, 11u)], 1981i, global1[_wgslsmith_index_u32(0u, 11u)], arg_2.b), arg_0.a) ^ max(vec4<i32>(0i, 50292i, 71794i, 16521i), select(vec4<i32>(arg_2.b, 1i, arg_2.b, -11558i), u_input.a, var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - _wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x)) + -1278f), 1f));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(select(!select(select(vec4<bool>(true, arg_0.b, true, arg_0.b), arg_1.a, arg_1.a), select(arg_1.a, vec4<bool>(arg_1.a.x, arg_0.b, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_0.b, false, true, true)), arg_1.a), !select(arg_1.a, !arg_1.a, !arg_1.a.x), vec4<bool>(!(arg_1.a.x & true), true, true, arg_1.a.x)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(arg_0.a, abs(abs(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, 4294967295u)))), arg_0.a), 11u)];
    let var_2 = global0[_wgslsmith_index_u32(~0u, 10u)];
    var var_3 = 935i;
    return any(select(select(!arg_1.a, !(!vec4<bool>(false, false, true, var_0.a.x)), func_4(-u_input.a, var_2.a, u_input.a, var_2.c.x).b), var_0.a, ~var_2.a <= var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -378f;
    global0 = array<Struct_1, 10>();
    var var_1 = Struct_2(vec4<bool>(!any(vec4<bool>(true, true, false, true)) || ((global1[_wgslsmith_index_u32(1u, 11u)] > -1i) && false), false, func_5(func_1(Struct_2(vec4<bool>(false, true, true, true)), 13650i, global0[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_2(vec4<bool>(true, false, true, false))) & true, true));
    var var_2 = _wgslsmith_f_op_f32(var_0 + var_0);
    global0 = array<Struct_1, 10>();
    var var_3 = select(!vec4<bool>(all(!var_1.a.xz), var_1.a.x, var_1.a.x, false | !var_1.a.x), !(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), select(var_1.a, vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), var_1.a), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x))), true);
    var var_4 = !(25383u >= _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(69759u, 0u, 17138u), vec3<u32>(0u, 72446u, 82927u)) | select(96598u, 42204u, true), _wgslsmith_mod_u32(max(20685u, 1u), ~57101u)));
    var var_5 = !(!(!any(!vec4<bool>(var_1.a.x, var_3.x, true, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(93007u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(~0u, ~39093u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 * var_0))))), _wgslsmith_f_op_f32(select(525f, _wgslsmith_f_op_f32(-670f * _wgslsmith_div_f32(var_0, _wgslsmith_div_f32(var_0, var_0))), any(!var_1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2366f))), -909f)));
}


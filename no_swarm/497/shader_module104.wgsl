struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> vec2<u32> {
    var var_0 = vec3<u32>(~64669u, u_input.c, ~firstTrailingBit(1u ^ _wgslsmith_div_u32(u_input.c, 1u)));
    let var_1 = Struct_5(u_input.b.x);
    var_0 = vec3<u32>(~u_input.c, reverseBits(~u_input.c), _wgslsmith_add_u32(_wgslsmith_sub_u32(47310u, firstTrailingBit(6363u)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.c, 0u), 19895u)));
    var_0 = ~vec3<u32>(34599u, ~(~_wgslsmith_mult_u32(1u, u_input.c)), ~select(u_input.c, u_input.c ^ 48493u, 2147483647i >= u_input.b.x));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))));
    return abs(countOneBits(firstTrailingBit(vec2<u32>(max(8771u, u_input.c), 0u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(func_3(vec4<f32>(arg_1.d, arg_1.c, arg_1.e, -1000f), arg_1.a), vec2<u32>(arg_0.x, arg_0.x) >> (arg_0 % vec2<u32>(32u))), arg_0.x, _wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(arg_0.x, arg_0.x)))), vec3<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.b.x), abs(4294967295u), arg_1.b.x) >> (min(vec3<u32>(24166u, arg_0.x, arg_1.b.x), vec3<u32>(u_input.c, 1u, 28182u)) % vec3<u32>(32u)), select(min(vec3<u32>(8716u, arg_1.b.x, u_input.c) >> (vec3<u32>(61238u, 21967u, 26961u) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.c, 24794u, 31390u))), vec3<u32>(~u_input.c, _wgslsmith_sub_u32(7855u, u_input.c), u_input.c ^ arg_1.b.x), !vec3<bool>(arg_1.a, arg_1.a, true))), ~select(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.x, 46794u), vec3<u32>(4294967295u, arg_0.x, 1u)), vec3<u32>(0u, ~u_input.c, 24222u), vec3<bool>(true || arg_1.a, !arg_1.a, true)));
    var var_1 = Struct_5(0i);
    let var_2 = Struct_5(-abs(79246i));
    let var_3 = arg_1.a;
    var var_4 = var_2;
    return !(!var_3);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    var var_0 = 7315i;
    let var_1 = !select(select(arg_1.b.a.b.x < -168f, false & arg_1.a, true) | any(vec4<bool>(arg_1.a, arg_1.a, false, false)), select(arg_1.a, !func_2(arg_1.b.a.c.yw, Struct_3(true, vec2<u32>(arg_1.b.a.c.x, arg_1.b.b.a.x), arg_1.b.a.b.x, -1000f, -1041f), u_input.b), arg_1.a), false);
    var var_2 = arg_1.b.a;
    var_2 = Struct_1(_wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(var_2.d, arg_1.b.a.d)), ~select(vec2<u32>(0u, var_2.a.x), vec2<u32>(37218u, 0u), vec2<bool>(var_1, false))) & var_2.c.ww, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.b.b.b.x, -861f, arg_1.a)), 1117f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-var_2.b))), arg_1.b.b.b)), abs(var_2.c), reverseBits(arg_1.b.b.d));
    var_0 = -arg_0.a;
    return arg_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = -277f;
    let var_1 = Struct_4(!(!select(arg_1.x == arg_0.b.b.x, select(true, true, true), select(true, false, false))), arg_0);
    let var_2 = select(vec3<bool>(true, all(select(!vec3<bool>(false, false, var_1.a), select(vec3<bool>(false, var_1.a, true), vec3<bool>(true, true, false), var_1.a), var_1.a && false)), var_1.a), select(vec3<bool>(any(!vec2<bool>(false, var_1.a)), false, all(vec3<bool>(var_1.a, var_1.a, var_1.a))), !vec3<bool>(false, all(vec4<bool>(false, var_1.a, true, false)), var_1.a), vec3<bool>(!any(vec2<bool>(false, false)), all(vec3<bool>(var_1.a, var_1.a, true)), var_1.a)), !(false & any(vec2<bool>(true, true))));
    var var_3 = 1043f;
    var_3 = -1434f;
    return var_1.b;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = func_4(func_1(Struct_5(select(i32(-1i) * -1i, u_input.b.x, true)), arg_0, max(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, 9436i)), u_input.b.xz), ~u_input.a)), vec2<f32>(func_4(arg_0.b, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 1237f), vec2<f32>(117f, arg_0.b.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1468f, arg_0.b.a.b.x))).a.b.x, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, -1053f) + _wgslsmith_f_op_vec2_f32(trunc(arg_0.b.a.b)))).b;
    var var_1 = firstLeadingBit(_wgslsmith_div_i32(1i >> (select(firstTrailingBit(arg_0.b.b.c.x), ~arg_0.b.a.d, arg_0.a & arg_0.a) % 32u), -13636i));
    var_1 = _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(~u_input.a, 1i));
    let var_2 = _wgslsmith_f_op_f32(abs(1251f));
    let var_3 = _wgslsmith_add_u32(u_input.c, 11322u);
    return StorageBuffer(vec3<i32>(-2147483647i, -38317i, u_input.a) & -_wgslsmith_mod_vec3_i32(vec3<i32>(41683i, u_input.a, -2147483647i), vec3<i32>(-75141i, 11884i, u_input.a)), 4294967295u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(622f, 1067f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_4(true, func_4(func_1(Struct_5(-2147483647i), Struct_4(true, Struct_2(Struct_1(vec2<u32>(u_input.c, 25887u), vec2<f32>(-258f, -1185f), vec4<u32>(61087u, u_input.c, 0u, 4328u), u_input.c), Struct_1(vec2<u32>(21189u, u_input.c), vec2<f32>(1000f, -223f), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), u_input.c))), -1i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(f32(-1f) * -529f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-154f, 988f), vec2<f32>(-1289f, -376f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, -433f) + vec2<f32>(-911f, -1523f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1472f, 886f)), _wgslsmith_f_op_f32(135f - 591f), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(abs(366f))))));
}


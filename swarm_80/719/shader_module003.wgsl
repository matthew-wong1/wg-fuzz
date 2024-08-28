struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-1i, -1i, 48134i, 0i, 2147483647i, -74849i, -1i, 12278i, 47060i, 1i, 1i, 40503i, 8856i, -31445i, 2147483647i, -6625i);

var<private> global1: array<i32, 10> = array<i32, 10>(75878i, 7772i, -40975i, 70125i, -29315i, 0i, -1i, -59435i, 0i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_1.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(73477u, 10u)], -2147483647i)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(arg_1, arg_1), ~(~vec2<i32>(-2147483647i, -5992i)))));
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    let var_1 = _wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, _wgslsmith_clamp_u32(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(select(4294967295u, 1u, arg_0.d.b.x) << (u_input.b % 32u), ~countOneBits(arg_0.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, u_input.b, arg_0.b.x, u_input.b)), ~vec4<u32>(u_input.a, 1u, arg_0.b.x, 119460u)), firstTrailingBit(vec4<u32>(18589u, 33811u, 16093u, 4294967295u)))));
    global1 = array<i32, 10>();
    return global0[_wgslsmith_index_u32(4294967295u, 16u)];
}

fn func_2() -> Struct_1 {
    let var_0 = ~((select(vec3<i32>(35801i, global0[_wgslsmith_index_u32(4294967295u, 16u)], 2147483647i), ~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b, 10u)], -1i), vec3<bool>(false, false, false)) ^ countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(10307u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]), vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 16u)], -12506i, 2147483647i)))) & vec3<i32>(-func_3(Struct_2(Struct_1(false, vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 1u, u_input.a), Struct_1(false, vec4<bool>(true, true, true, false)), Struct_1(true, vec4<bool>(false, true, true, false))), vec2<i32>(global1[_wgslsmith_index_u32(25527u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), 2147483647i, -1000f), -1i, reverseBits(global1[_wgslsmith_index_u32(u_input.a, 10u)]) & -26792i));
    global0 = array<i32, 16>();
    var var_1 = -1i;
    var var_2 = Struct_2(Struct_1(false, select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(all(vec2<bool>(true, false)), false, true, true), true || all(vec3<bool>(true, false, false)))), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(max(14940u, u_input.b)), u_input.a, u_input.a), vec3<u32>(47000u, ~_wgslsmith_add_u32(11384u, 20415u), ~u_input.a)), Struct_1(1u >= ~(u_input.a >> (1u % 32u)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), all(vec2<bool>(false, true)))), Struct_1(!(_wgslsmith_f_op_f32(min(559f, 1000f)) < _wgslsmith_f_op_f32(step(144f, 734f))), vec4<bool>(true, true, true, true)));
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(var_2.c.b.x, any(select(var_2.d.b.wz, select(vec2<bool>(false, var_2.c.a), var_2.d.b.xx, vec2<bool>(var_2.a.a, true)), false | var_2.a.b.x))), !vec2<bool>(~global1[_wgslsmith_index_u32(u_input.b, 10u)] >= abs(1i), false & (1u < u_input.b)));
    return Struct_1(true, var_2.d.b);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global0 = array<i32, 16>();
    let var_0 = Struct_2(func_2(), abs(_wgslsmith_add_vec3_u32(vec3<u32>(40335u, 58174u, 1u) & select(vec3<u32>(60703u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.a, 81039u), vec3<bool>(arg_3.a, arg_2.x, arg_3.a)), vec3<u32>(u_input.a, 6514u, 4294967295u))), arg_3, arg_3);
    var var_1 = abs(var_0.b.xz);
    global1 = array<i32, 10>();
    var var_2 = -global0[_wgslsmith_index_u32((~(var_1.x << (1u % 32u)) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.b.x, 1u, u_input.a), vec4<u32>(31456u, u_input.a, u_input.b, var_1.x))) | 4294967295u, 16u)];
    return -28878i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32) -> bool {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global1 = array<i32, 10>();
    global0 = array<i32, 16>();
    let var_0 = select(vec3<bool>(true, ~(-arg_0.x) <= func_4(-346f, _wgslsmith_f_op_f32(-arg_1.x), vec2<bool>(true, true), func_2()), any(vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 16u)] > -2147483647i, true, true))), vec3<bool>(false, false, !(true || (arg_0.x <= global0[_wgslsmith_index_u32(u_input.b, 16u)]))), select(!vec3<bool>(u_input.b < arg_2, true, true), vec3<bool>((29110u ^ arg_2) < 17717u, all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, false)) & true), true));
    return var_0.x | false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f) - _wgslsmith_f_op_f32(abs(1096f))), _wgslsmith_f_op_f32(select(246f, _wgslsmith_div_f32(-350f, -1226f), func_1(vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<f32>(-689f, 1604f, 1201f), u_input.a))), true)) + -1568f));
    var var_1 = !(!(!func_2().b));
    var_1 = select(select(func_2().b, vec4<bool>(any(vec2<bool>(true, false)), any(!vec2<bool>(var_1.x, true)), true, !var_1.x), !all(vec4<bool>(var_1.x, false, false, false))), func_2().b, select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(!var_1.x, (var_1.x | false) & (var_1.x | var_1.x), (2147483647i < global0[_wgslsmith_index_u32(u_input.b, 16u)]) || true, var_1.x), func_2().b));
    global0 = array<i32, 16>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(step(1525f, -219f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 187f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))) + _wgslsmith_f_op_f32(select(-1785f, _wgslsmith_f_op_f32(var_0 - var_0), func_2().b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + _wgslsmith_f_op_f32(round(-931f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-299f))) + var_0) * _wgslsmith_div_f32(var_0, var_0)));
    var_2 = vec4<f32>(-121f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), -168f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) * _wgslsmith_f_op_f32(-var_2.x)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1136f, 265f) - _wgslsmith_f_op_f32(max(var_2.x, var_2.x))) * 2025f)));
    var var_4 = Struct_4(Struct_1(false, !func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, (vec2<u32>(~u_input.b, 0u) >> (min(vec2<u32>(8910u, u_input.b), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))) >> (~firstLeadingBit(~vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)));
}


struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(782f, -1000f), vec2<f32>(1256f, -176f), vec2<f32>(-880f, -1000f), vec2<f32>(991f, 2024f), vec2<f32>(1311f, 567f), vec2<f32>(198f, -416f), vec2<f32>(-1037f, 735f), vec2<f32>(-496f, -881f), vec2<f32>(-1611f, -2551f), vec2<f32>(-362f, -1000f), vec2<f32>(1107f, 1247f), vec2<f32>(1665f, -1000f), vec2<f32>(-684f, -655f), vec2<f32>(-234f, -1096f), vec2<f32>(-1521f, -298f), vec2<f32>(2829f, 1268f), vec2<f32>(-2869f, -1000f), vec2<f32>(-505f, 557f), vec2<f32>(569f, 1127f), vec2<f32>(766f, -1000f), vec2<f32>(-1897f, -185f), vec2<f32>(-721f, -1004f), vec2<f32>(-2843f, 995f), vec2<f32>(1296f, -825f), vec2<f32>(520f, -869f), vec2<f32>(795f, -1005f), vec2<f32>(-464f, 1131f), vec2<f32>(-1324f, 1000f), vec2<f32>(1174f, 1000f));

var<private> global2: vec3<f32> = vec3<f32>(1287f, -968f, 1486f);

var<private> global3: array<f32, 20> = array<f32, 20>(-592f, -1000f, -959f, -350f, -742f, 637f, 460f, -346f, -1510f, 1868f, -121f, -1000f, -1774f, -959f, 926f, 346f, 194f, 133f, -632f, -1058f);

var<private> global4: array<vec4<u32>, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 23u)];
    global2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(712f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x * 2025f))) * global3[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f * global2.x) + _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~u_input.b.x, 20u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))), global3[_wgslsmith_index_u32(select(countOneBits(44843u), u_input.b.x, select(false, arg_1, false)), 20u)]) * vec3<f32>(1504f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(780f, 497f))), _wgslsmith_f_op_f32(-global2.x)))));
    global4 = array<vec4<u32>, 24>();
    let var_1 = vec2<i32>(select(u_input.a.x, firstLeadingBit(u_input.d), arg_1), ~(~u_input.d));
    let var_2 = Struct_1(~abs(vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x)));
    return !select(vec2<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 23u)], true, true)), false), vec2<bool>((0u > var_2.a.x) && true, select(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]) || false), !all(vec4<bool>(false, arg_1, false, false)) & all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], false)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = u_input.a;
    var var_2 = true;
    var_2 = all(!select(!select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(1471u, 23u)], false), vec2<bool>(global0[_wgslsmith_index_u32(arg_2, 23u)], global0[_wgslsmith_index_u32(arg_0.a.a.x, 23u)])), !func_3(arg_1.xzx, false), -1423f > global2.x));
    var var_3 = 724f;
    return ~(-1i);
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = ~vec2<u32>(~_wgslsmith_mult_u32(~u_input.b.x, 36368u), u_input.b.x);
    let var_1 = vec4<i32>(-(arg_0.c ^ 0i), -(47789i >> (~abs(arg_0.a.a.x) % 32u)), _wgslsmith_div_i32(u_input.c, _wgslsmith_mod_i32(firstTrailingBit(8734i), func_2(Struct_2(arg_0.a, Struct_1(arg_0.a.a), arg_0.c), vec4<i32>(67873i, 37557i, 40484i, u_input.d), arg_0.a.a.x, max(vec4<u32>(85814u, 0u, 1u, var_0.x), global4[_wgslsmith_index_u32(u_input.b.x, 24u)])))), ~u_input.d);
    let var_2 = !(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.a.x, 23u)], true, 1i >= arg_0.c));
    global1 = array<vec2<f32>, 29>();
    let var_3 = Struct_2(arg_0.b, arg_0.b, -var_1.x);
    return -709f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 20>();
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(985f, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global3[_wgslsmith_index_u32(14033u, 20u)], global2.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global2.x, 954f))))), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<u32>(0u, 0u, u_input.b.x)), Struct_1(vec3<u32>(40591u, 1u, u_input.b.x)), 0i))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.b.x, 20u)]), global2.x)))));
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), vec3<u32>(2033u, u_input.b.x, u_input.b.x)), firstTrailingBit(1u), select(_wgslsmith_div_u32(u_input.b.x, 0u), u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))), reverseBits(~vec3<u32>(~62921u, 1u, _wgslsmith_mod_u32(14610u, 29571u)))), 23u)];
    global2 = vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~(~u_input.b.x)), u_input.b.x), 20u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.b.x, 20u)])), global2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) * _wgslsmith_div_f32(-1132f, 212f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<u32>(u_input.b.x, 4300u, u_input.b.x)), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.c)))))));
    var var_1 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(61866u, ~146130u, u_input.b.x >> (reverseBits(u_input.b.x) % 32u)), countOneBits(min(abs(vec3<u32>(u_input.b.x, u_input.b.x, 1u)), abs(vec3<u32>(0u, u_input.b.x, u_input.b.x))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(trunc(1f)));
    var var_3 = Struct_1(vec3<u32>(77755u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(1u, max(var_1.a.x, var_1.a.x))), ~var_1.a.x | ~_wgslsmith_sub_u32(u_input.b.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global2.x, 1746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-388f, -655f)))), _wgslsmith_f_op_f32(var_2 - var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_3.a.x, 20u)], -1030f, 353f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-140f, -343f, 632f), vec3<f32>(128f, -380f, -502f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, -505f, 1337f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, global2.x)))))), vec2<i32>(-(~1i), u_input.a.x));
}


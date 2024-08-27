struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 15>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(-1i, -1i), vec4<bool>(true, false, false, false), -47966i, vec3<f32>(-1000f, -1000f, -1225f)), Struct_1(vec2<i32>(19688i, 2147483647i), vec4<bool>(true, true, true, true), -15327i, vec3<f32>(1000f, 801f, 1000f)), Struct_1(vec2<i32>(29174i, 6128i), vec4<bool>(true, true, false, false), 5834i, vec3<f32>(-1098f, 846f, -1000f)), Struct_1(vec2<i32>(-3674i, 2147483647i), vec4<bool>(false, false, false, true), 0i, vec3<f32>(-1038f, -216f, 304f)), Struct_1(vec2<i32>(i32(-2147483648), 27292i), vec4<bool>(false, true, true, false), -30418i, vec3<f32>(841f, 578f, 703f)), Struct_1(vec2<i32>(6281i, -12677i), vec4<bool>(false, true, true, true), -20082i, vec3<f32>(1581f, -106f, -986f)), Struct_1(vec2<i32>(1807i, 6203i), vec4<bool>(false, false, true, true), i32(-2147483648), vec3<f32>(711f, -970f, 1053f)), Struct_1(vec2<i32>(2147483647i, 0i), vec4<bool>(false, false, false, false), -46512i, vec3<f32>(-821f, -282f, 1000f)), Struct_1(vec2<i32>(272i, 1i), vec4<bool>(true, false, false, true), -69423i, vec3<f32>(439f, 961f, -370f)), Struct_1(vec2<i32>(-23967i, 30368i), vec4<bool>(true, true, false, true), 0i, vec3<f32>(1801f, 828f, 2202f)), Struct_1(vec2<i32>(i32(-2147483648), 10342i), vec4<bool>(true, true, false, false), -1i, vec3<f32>(440f, 1000f, -1457f)), Struct_1(vec2<i32>(41984i, 2147483647i), vec4<bool>(true, true, true, true), 20925i, vec3<f32>(1174f, -1353f, 1259f)), Struct_1(vec2<i32>(5123i, 77597i), vec4<bool>(true, false, true, true), -58883i, vec3<f32>(-385f, 2241f, 1912f)), Struct_1(vec2<i32>(13485i, 0i), vec4<bool>(true, true, false, true), -10958i, vec3<f32>(1000f, 1136f, 391f)), Struct_1(vec2<i32>(2112i, -71860i), vec4<bool>(false, true, true, false), 1i, vec3<f32>(776f, -1660f, -1462f)), Struct_1(vec2<i32>(58155i, -51508i), vec4<bool>(true, true, false, true), 2147483647i, vec3<f32>(-951f, 431f, 527f)));

var<private> global3: array<bool, 31>;

var<private> global4: array<i32, 10> = array<i32, 10>(1i, 7091i, i32(-2147483648), 12469i, 0i, -1i, i32(-2147483648), 0i, 1i, -7135i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.d.xy);
    var var_1 = Struct_1(arg_1.a, !arg_1.b, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_3.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(96976u, global1[_wgslsmith_index_u32(arg_3.x, 15u)], 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 74870u, arg_3.x))), 10u)], _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(22523i, 22911i, -10963i), vec3<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 10u)], u_input.a, u_input.c), arg_1.b.wwz), ~vec3<i32>(global4[_wgslsmith_index_u32(15846u, 10u)], -1i, global4[_wgslsmith_index_u32(67516u, 10u)])), abs(u_input.a))), arg_1.d);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x - 1191f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.d.x, -1000f))), _wgslsmith_div_f32(-108f, _wgslsmith_f_op_f32(max(var_1.d.x, var_0.x))))));
    var var_2 = _wgslsmith_add_vec2_i32(-arg_1.a | ~vec2<i32>(u_input.b, u_input.b >> (arg_3.x % 32u)), -arg_1.a);
    let var_3 = !vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1012f)), _wgslsmith_f_op_f32(max(-548f, -844f)))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_1.d.x)))), all(var_1.b.wx));
    return global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(arg_3.x)), 10u)];
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = vec3<i32>(0i, -11561i, func_3(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, global3[_wgslsmith_index_u32(75315u, 31u)])), Struct_1(vec2<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(115758u, 15u)], 15u)], 10u)], u_input.c), vec4<bool>(false, global3[_wgslsmith_index_u32(63284u, 31u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68362u, 15u)], 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]), 43069i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-330f, 1222f, -930f) + vec3<f32>(893f, 1271f, 837f))), _wgslsmith_f_op_f32(f32(-1f) * -485f), countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38170u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13198u, 15u)], 15u)], 15u)], 15u)], 15u)])))) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6517u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 0u) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71785u, 15u)], 15u)], 15u)], 16970u, 1u, global1[_wgslsmith_index_u32(38849u, 15u)]) % vec4<u32>(32u)), vec4<u32>(0u, 7011u, 0u, global1[_wgslsmith_index_u32(42240u, 15u)])), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 71673u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(25095u, 15u)], 56775u, global1[_wgslsmith_index_u32(51139u, 15u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(38389u, 15u)], 1u, 24356u), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90125u, 15u)], 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7044u, 15u)], 15u)]))), vec3<u32>(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80436u, 15u)], 15u)], 15u)], 15u)]), 2710u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31711u, 15u)], 15u)])), 15u)], firstLeadingBit(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7606u, 15u)], 15u)], 15u)], 15u)], 15u)]) >> (38699u % 32u)) % vec3<u32>(32u));
    global0 = true;
    global3 = array<bool, 31>();
    var var_1 = -var_0;
    global0 = !global3[_wgslsmith_index_u32(reverseBits(max(~countOneBits(0u), min(1u, 49252u))), 31u)];
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(571f)), _wgslsmith_f_op_f32(265f + 624f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-743f)) + _wgslsmith_f_op_f32(512f * -334f)), -242f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, 164f, arg_1.d.x, 897f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2006f, -702f, arg_1.d.x, 1657f))))));
}

fn func_1() -> vec3<bool> {
    global0 = all(vec4<bool>(!global3[_wgslsmith_index_u32(0u, 31u)], false, -39710i < u_input.c, global3[_wgslsmith_index_u32(30831u, 31u)]));
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, 798f, 802f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1441f, -1362f, 1042f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2198f, 438f, 1442f))) - vec3<f32>(-1000f, 636f, 574f))), Struct_1(_wgslsmith_div_vec2_i32(select(vec2<i32>(-1391i, u_input.c), vec2<i32>(5244i, u_input.b), global3[_wgslsmith_index_u32(4294967295u, 31u)]), ~vec2<i32>(1i, -2147483647i)), vec4<bool>(u_input.b < u_input.c, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(17918u), 15u)], 15u)], 31u)], true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 15u)]), 31u)]), -firstTrailingBit(-1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(0i)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1090f, -1383f, -929f)), Struct_1(vec2<i32>(u_input.c, -2147483647i), vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 31u)], false, true, global3[_wgslsmith_index_u32(4294967295u, 31u)]), 2147483647i, vec3<f32>(1875f, 816f, 1095f)))).x, _wgslsmith_f_op_vec3_f32(func_2(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 10u)] << (0u % 32u))).x, _wgslsmith_f_op_f32(sign(-611f)), -683f), vec4<f32>(1010f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-971f, -384f))), 644f, 597f), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(18630u, 31u)], true, global3[_wgslsmith_index_u32(0u, 31u)]))))));
    var var_1 = global2[_wgslsmith_index_u32(1u, 16u)];
    var var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~countOneBits(1u), 15u)] ^ ~1u, 16u)];
    let var_3 = vec4<bool>(false, false, any(var_1.b.yy), !any(select(var_1.b, select(vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 31u)], false, true), var_1.b, true), var_1.b)));
    return var_2.b.zxy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 15>();
    let var_0 = select(select(select(!vec3<bool>(false, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62546u, 15u)], 31u)]), vec3<bool>(global4[_wgslsmith_index_u32(15860u, 10u)] != u_input.b, all(vec2<bool>(true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 31u)])), !global3[_wgslsmith_index_u32(4294967295u, 31u)]), func_1()), vec3<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(4157u), global1[_wgslsmith_index_u32(0u, 15u)] << (global1[_wgslsmith_index_u32(70597u, 15u)] % 32u)), 31u)], !(false & global3[_wgslsmith_index_u32(4122u, 31u)])), all(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 31u)], true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 15u)], 31u)])))), vec3<bool>(true, all(!vec2<bool>(false, global3[_wgslsmith_index_u32(22022u, 31u)])), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4294967295u, 15u)] & global1[_wgslsmith_index_u32(25342u, 15u)]), 15u)], global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45475u, 15u)], 15u)], 15u)]), 15u)]), 31u)]), !(!select(!vec3<bool>(global3[_wgslsmith_index_u32(33252u, 31u)], global3[_wgslsmith_index_u32(30565u, 31u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 31u)]), !vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 31u)], false), !vec3<bool>(false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 31u)], true))));
    var var_1 = !(!(!(!var_0)));
    var_1 = !select(vec3<bool>(-1i < global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 15u)], 17687u, 1u), vec3<u32>(28116u, global1[_wgslsmith_index_u32(67226u, 15u)], 56818u)), 10u)], !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)] > 72050u), global3[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(true, all(!vec4<bool>(false, var_0.x, var_1.x, var_0.x)), true), var_1.x);
    var var_2 = ~abs(max(abs(select(vec2<u32>(20017u, 4294967295u), vec2<u32>(103904u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)]), var_0.xz)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4620u, 76702u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), ~vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 15u)]))));
    let var_3 = !var_0;
    global2 = array<Struct_1, 16>();
    let var_4 = !select(func_1().x, !all(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(var_2.x, 31u)], false), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 31u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(5721u, 31u)], false, var_1.x))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, global1[_wgslsmith_index_u32(var_2.x, 15u)], var_2.x), vec4<u32>(global1[_wgslsmith_index_u32(var_2.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 40322u))) < countOneBits(reverseBits(1u)));
    var var_5 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, 1244f, 1029f, -1613f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, 120f, 614f, -887f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-532f, -1000f, 252f, -1000f), vec4<f32>(-243f, 939f, -845f, 878f), vec4<bool>(global3[_wgslsmith_index_u32(1u, 31u)], var_1.x, true, false))))), vec4<f32>(-1046f, _wgslsmith_f_op_vec3_f32(func_2(-1i | global4[_wgslsmith_index_u32(39726u, 10u)])).x, _wgslsmith_f_op_f32(f32(-1f) * -1229f), 1000f)), _wgslsmith_div_vec2_i32(~reverseBits(~vec2<i32>(u_input.b, 31596i)), vec2<i32>(max(reverseBits(global4[_wgslsmith_index_u32(var_2.x, 10u)]), 1i), ~0i)));
}


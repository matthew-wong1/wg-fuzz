struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-2025f, -1919f, -431f, 771f), true, 2147483647i);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(419f, -1000f, -1455f, -1052f), false, 0i), Struct_1(vec4<f32>(401f, 578f, -1000f, -920f), false, -12920i), Struct_1(vec4<f32>(-564f, -1225f, 188f, 1572f), true, 1i), Struct_1(vec4<f32>(817f, 607f, -2465f, 943f), false, 2147483647i), Struct_1(vec4<f32>(317f, 1702f, -166f, 945f), true, 36495i), Struct_1(vec4<f32>(1424f, 1917f, -126f, 1000f), false, 0i), Struct_1(vec4<f32>(-1000f, -771f, -1000f, 530f), false, -18498i), Struct_1(vec4<f32>(620f, 1000f, -509f, -1878f), true, 45586i), Struct_1(vec4<f32>(-119f, 1000f, -1858f, 1093f), true, 0i), Struct_1(vec4<f32>(532f, 1907f, -1589f, 918f), true, -1i), Struct_1(vec4<f32>(-1125f, -1632f, 1632f, 1000f), true, 20533i), Struct_1(vec4<f32>(-593f, -1422f, 542f, 2624f), false, 16441i), Struct_1(vec4<f32>(291f, -193f, -130f, 204f), true, -10758i), Struct_1(vec4<f32>(472f, -1381f, 689f, 1472f), true, -97561i), Struct_1(vec4<f32>(1000f, 135f, 627f, -1175f), true, -24807i), Struct_1(vec4<f32>(-349f, -1858f, -260f, 663f), true, -19151i), Struct_1(vec4<f32>(-616f, 1245f, -993f, 511f), false, 61416i), Struct_1(vec4<f32>(586f, -1000f, 175f, -530f), true, -18490i), Struct_1(vec4<f32>(326f, -490f, -1000f, -1000f), false, i32(-2147483648)), Struct_1(vec4<f32>(-1127f, 644f, 414f, -393f), false, i32(-2147483648)), Struct_1(vec4<f32>(-775f, 152f, -798f, 1000f), false, 42910i), Struct_1(vec4<f32>(-1000f, -1000f, 787f, 1082f), false, -12591i), Struct_1(vec4<f32>(-1351f, -312f, -279f, 576f), true, -1760i), Struct_1(vec4<f32>(1322f, -163f, -1192f, 765f), false, 15232i), Struct_1(vec4<f32>(-1821f, -1000f, 151f, -3127f), true, -45809i), Struct_1(vec4<f32>(1810f, 1257f, 631f, 1149f), true, 1i), Struct_1(vec4<f32>(1220f, -1237f, 368f, -602f), false, 25336i), Struct_1(vec4<f32>(-1538f, -996f, -520f, -330f), false, i32(-2147483648)), Struct_1(vec4<f32>(1252f, -917f, -703f, -427f), true, 1i));

var<private> global3: array<f32, 13> = array<f32, 13>(882f, 1070f, -1133f, -140f, -1513f, 286f, -866f, -464f, -1589f, 631f, 348f, 530f, 197f);

var<private> global4: array<vec4<bool>, 28>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec3<bool> {
    var var_0 = global1.c;
    return select(!select(!vec3<bool>(global1.b, false, global1.b), select(vec3<bool>(true, false, true), !vec3<bool>(arg_0.x, true, global1.b), true), !select(vec3<bool>(global1.b, true, true), vec3<bool>(arg_0.x, global1.b, true), vec3<bool>(false, true, true))), select(!(!vec3<bool>(global1.b, true, arg_0.x)), !vec3<bool>(global1.b, all(vec3<bool>(global1.b, global1.b, false)), any(vec4<bool>(true, arg_0.x, arg_0.x, global1.b))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(global1.b, false, false), arg_0.x)), true);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(962f, arg_0.x))), _wgslsmith_f_op_f32(arg_0.x + global3[_wgslsmith_index_u32(~0u, 13u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(exp2(global1.a.x))), -994f, (global1.a.x < 217f) & any(vec2<bool>(false, global1.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f * global1.a.x)))), any(vec2<bool>(global1.b, true)), _wgslsmith_sub_i32(21548i << (arg_3 % 32u), 0i));
    return _wgslsmith_f_op_f32(min(-1862f, var_0.a.x));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec4<f32>(-590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)) + -121f), _wgslsmith_f_op_f32(min(-1514f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-763f)), -1223f)))), 1076f), false, i32(-1i) * -(1i >> (0u % 32u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.a.x)), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.c, 13u)])), _wgslsmith_f_op_f32(1489f + -328f), -438f), var_0.a, any(func_3(vec2<bool>(false, false), u_input.c)), ~50368u)), 643f)), var_0.a.x);
    let var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12418u), vec2<u32>(15687u, u_input.c)), 34234u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 13986u) & vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, u_input.c)), max(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(56113u, u_input.c), vec2<u32>(1u, u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.c, u_input.c))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(25061u, 10709u), vec2<u32>(4294967295u, u_input.c))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, global1.a.x, -670f, 2289f))))), var_0.a))), true, -73633i);
    let var_3 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -593f))), global1.a.x, 504f)), (global1.b & false) && !arg_3.b, _wgslsmith_add_i32(~(-2147483647i), firstLeadingBit(global1.c)));
    return func_3(select(vec2<bool>(var_0.b, arg_2 | false), vec2<bool>(global1.b, true), arg_2), ~826u).zx;
}

fn func_1() -> vec2<bool> {
    return select(func_5(_wgslsmith_mod_i32(u_input.b, ~select(20615i, 23544i, false)), _wgslsmith_f_op_f32(func_2()), global1.b, global2[_wgslsmith_index_u32(68605u, 29u)]), !func_3(select(vec2<bool>(false, false), select(vec2<bool>(false, global1.b), vec2<bool>(false, global1.b), global1.b), !global1.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(15113u, u_input.c, u_input.c), ~vec3<u32>(4294967295u, u_input.c, u_input.c))).yz, func_5(_wgslsmith_sub_i32(~abs(u_input.b), -global1.c), 409f, false, global2[_wgslsmith_index_u32(49616u, 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 16>();
    var var_0 = func_1();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1629f, -534f, -135f, _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.a)) + vec4<f32>(global1.a.x, global1.a.x, 721f, global1.a.x))), !vec4<bool>(all(vec2<bool>(true, var_0.x)), true, any(vec4<bool>(true, true, var_0.x, global1.b)), true))), any(select(select(!global4[_wgslsmith_index_u32(124729u, 28u)], vec4<bool>(var_0.x, var_0.x, var_0.x, false), global1.b), vec4<bool>(!var_0.x, func_5(0i, global3[_wgslsmith_index_u32(u_input.c, 13u)], true, global2[_wgslsmith_index_u32(u_input.c, 29u)]).x, var_0.x, !global1.b), !select(global4[_wgslsmith_index_u32(u_input.c, 28u)], vec4<bool>(true, global1.b, var_0.x, global1.b), global4[_wgslsmith_index_u32(u_input.c, 28u)]))), -1i);
    var var_1 = global4[_wgslsmith_index_u32(firstLeadingBit(~69499u), 28u)];
    global2 = array<Struct_1, 29>();
    var_1 = vec4<bool>(true, var_0.x, !(global1.c > _wgslsmith_sub_i32(~28525i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, global1.c, 2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, global1.c, u_input.a)))), !all(global4[_wgslsmith_index_u32(~u_input.c, 28u)]));
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a), 0i);
}


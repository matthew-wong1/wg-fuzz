struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(1u, 45186u, -445f, 750f, vec4<f32>(-1167f, 242f, -588f, 1000f)), Struct_1(87280u, 0u, -429f, 165f, vec4<f32>(-1068f, 228f, 395f, -801f)), Struct_1(4294967295u, 6297u, -213f, 1391f, vec4<f32>(502f, -409f, 1027f, 1593f)), Struct_1(0u, 1u, 222f, -415f, vec4<f32>(-1119f, -663f, 1512f, -456f)), Struct_1(4294967295u, 3121u, -2025f, 877f, vec4<f32>(-270f, 860f, -999f, 520f)), Struct_1(4294967295u, 22834u, -180f, 446f, vec4<f32>(-643f, 464f, -1355f, -709f)), Struct_1(1u, 0u, 418f, -1241f, vec4<f32>(-281f, 1000f, 448f, 718f)), Struct_1(4294967295u, 86212u, 1365f, -258f, vec4<f32>(499f, 1731f, -197f, 999f)), Struct_1(4294967295u, 4294967295u, 449f, 400f, vec4<f32>(-200f, 596f, -640f, 236f)), Struct_1(21585u, 42952u, 1450f, -1310f, vec4<f32>(-1385f, -536f, 101f, 1179f)), Struct_1(0u, 51323u, -1181f, -472f, vec4<f32>(-1082f, 763f, -375f, 1956f)), Struct_1(12524u, 6810u, 1000f, 213f, vec4<f32>(1127f, 953f, -435f, 374f)), Struct_1(23338u, 0u, -1329f, 280f, vec4<f32>(-945f, 580f, -1289f, -461f)), Struct_1(4294967295u, 0u, 625f, -1000f, vec4<f32>(122f, -131f, -271f, 559f)), Struct_1(4294967295u, 1u, -1000f, -300f, vec4<f32>(-1654f, -812f, -1854f, 342f)), Struct_1(26282u, 0u, -914f, -1691f, vec4<f32>(773f, 1000f, 758f, 254f)), Struct_1(27810u, 0u, 1000f, 727f, vec4<f32>(-3493f, 2230f, 1274f, -983f)), Struct_1(8438u, 1u, 830f, -760f, vec4<f32>(-848f, -1267f, -154f, -1134f)), Struct_1(4294967295u, 1u, -501f, 404f, vec4<f32>(-860f, -484f, 1741f, 465f)), Struct_1(1u, 1u, -1002f, 507f, vec4<f32>(-636f, -593f, 434f, 1000f)), Struct_1(4294967295u, 24153u, 363f, -217f, vec4<f32>(-1000f, -1813f, -1808f, -385f)), Struct_1(17563u, 4294967295u, -149f, -760f, vec4<f32>(1821f, -202f, 706f, 316f)), Struct_1(4294967295u, 0u, 431f, -682f, vec4<f32>(-130f, 1308f, -1123f, 877f)), Struct_1(4294967295u, 4294967295u, 480f, -1038f, vec4<f32>(1429f, -185f, -454f, 587f)));

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-14647i, -86i, -19591i, 887i), vec4<i32>(-1i, i32(-2147483648), -2053i, -45875i), vec4<i32>(27482i, 0i, 77264i, i32(-2147483648)), vec4<i32>(1i, 22960i, 16891i, -17409i), vec4<i32>(8558i, 0i, -15053i, -4785i), vec4<i32>(1i, 8799i, 28274i, 37973i), vec4<i32>(0i, 0i, 2147483647i, -19396i), vec4<i32>(-45693i, 1i, 30583i, -600i));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: i32 = -32561i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = u_input.b.x & firstLeadingBit(35756i);
    var var_1 = ~global3.a;
    var var_2 = global0[_wgslsmith_index_u32(abs(~(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(32101u, 0u, global2.b, 59809u), vec4<u32>(1u, global2.b, 25180u, 7419u))))), 24u)];
    let var_3 = Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4894u, 22991u, 0u, global2.a), ~vec4<u32>(96006u, global2.a, 109604u, 1u)), global2.a, 4294967295u), firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global3.b, var_2.a), global2.b)), -295f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1436f - var_2.c) - 254f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(598f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.x * 165f)), 872f, global2.c));
    var var_4 = true && all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec3<bool>(false, true, true)), false, true), vec4<bool>(true, true, false, true)));
    return !any(vec2<bool>(true, true)) & true;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = ~vec3<i32>(i32(-1i) * -33064i, select(57109i, arg_0, func_3() | true), 0i);
    let var_1 = arg_3;
    let var_2 = vec2<bool>(any(!vec4<bool>(all(vec2<bool>(var_1, var_1)), true, false && var_1, true)), !(!var_1));
    let var_3 = true;
    var var_4 = _wgslsmith_mod_i32(i32(-1i) * -u_input.a.x, ~min(select(_wgslsmith_clamp_i32(45338i, var_0.x, arg_0), var_0.x, var_1), 0i));
    return global2.c;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~1u << (arg_0.a % 32u), global2.b, -1706f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(369f, global2.c), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1062f, -1137f))))), _wgslsmith_f_op_vec4_f32(-global3.e));
    let var_1 = Struct_1(50456u, 4294967295u, _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f) * _wgslsmith_f_op_f32(func_2(u_input.b.x, arg_0, global0[_wgslsmith_index_u32(0u, 24u)], false))))), 1068f, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(-15540i, Struct_1(var_0.b, 4294967295u, -1000f, -214f, var_0.e), arg_0, false)), _wgslsmith_f_op_f32(-101f * global3.e.x), _wgslsmith_f_op_f32(sign(arg_0.c)), global3.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.e + vec4<f32>(111f, 207f, -1642f, -1053f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c, var_0.d, global2.c, arg_0.d))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.e.x, _wgslsmith_div_f32(-857f, -537f), _wgslsmith_f_op_f32(f32(-1f) * -1955f), _wgslsmith_f_op_f32(exp2(global3.d))))))));
    let var_2 = true;
    global3 = global0[_wgslsmith_index_u32(6775u, 24u)];
    let var_3 = u_input.a.zzx;
    return vec2<bool>(var_2, 4294967295u < global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_1(global0[_wgslsmith_index_u32(global3.b, 24u)]), vec2<bool>(true, true)), func_1(Struct_1(global3.a, global2.b, -1097f, global3.c, vec4<f32>(-1105f, -1015f, -173f, 790f))), !select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(func_1(Struct_1(~global3.b, ~68612u, _wgslsmith_f_op_f32(global2.e.x * global2.c), _wgslsmith_f_op_f32(-521f - -572f), global2.e)), !vec2<bool>(select(false, false, false), 206f >= global3.e.x), vec2<bool>(true, select(all(vec3<bool>(false, true, true)), true, false))), true);
    var var_1 = u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global3.a, 1678f, select(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(18685u), ~global2.b), firstLeadingBit(~vec2<u32>(global2.a, global2.a))), 74202u, false));
}


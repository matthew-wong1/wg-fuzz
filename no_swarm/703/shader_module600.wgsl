struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(4320i, 1i, 24141i), vec3<i32>(4932i, 1i, -52104i), vec3<i32>(i32(-2147483648), 33952i, -19993i), vec3<i32>(-506i, 0i, 1i), vec3<i32>(-44045i, 477i, i32(-2147483648)), vec3<i32>(0i, -12721i, 1i), vec3<i32>(1i, 0i, -1i), vec3<i32>(-1i, 0i, -26192i), vec3<i32>(-39802i, i32(-2147483648), 6850i), vec3<i32>(45417i, 2147483647i, 51931i), vec3<i32>(-27650i, 1i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 8381i));

var<private> global2: f32 = -804f;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(168f, -263f, 700f, -423f), vec4<f32>(-1019f, 1986f, 1556f, 932f), vec4<f32>(117f, -1401f, -174f, -1051f), vec4<f32>(-709f, 911f, -667f, 1113f), vec4<f32>(-1442f, 586f, 643f, -806f), vec4<f32>(-2039f, 995f, 1035f, -533f), vec4<f32>(519f, -829f, 552f, 1554f), vec4<f32>(-615f, -2014f, 969f, 763f), vec4<f32>(-1598f, 705f, -1000f, -460f), vec4<f32>(-611f, 111f, -584f, -502f), vec4<f32>(-2566f, -817f, -1108f, -1912f), vec4<f32>(-1065f, -640f, -3379f, 1158f), vec4<f32>(-364f, 593f, 621f, 1000f), vec4<f32>(1170f, -1231f, 684f, -1271f), vec4<f32>(-137f, 1127f, -2533f, 431f), vec4<f32>(-572f, 2861f, -1000f, 474f), vec4<f32>(358f, 1573f, -2254f, -361f), vec4<f32>(636f, 389f, -860f, -1436f), vec4<f32>(1216f, 1000f, 2163f, 269f), vec4<f32>(967f, -666f, -1037f, -1000f), vec4<f32>(-1081f, -338f, -185f, 466f), vec4<f32>(867f, -928f, 460f, -102f), vec4<f32>(-1458f, -1402f, 2176f, -105f), vec4<f32>(-397f, 503f, -486f, -717f), vec4<f32>(-1104f, 530f, -2344f, -613f), vec4<f32>(875f, -1435f, 123f, -483f), vec4<f32>(246f, -185f, -1219f, -1000f), vec4<f32>(265f, -266f, 524f, 537f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> i32 {
    return -1512i;
}

fn func_3(arg_0: vec4<f32>) -> bool {
    return true;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global2 = -957f;
    let var_0 = vec4<i32>(~countOneBits(abs(u_input.a)), max(~1i, _wgslsmith_clamp_i32(~(-31851i), max(_wgslsmith_dot_vec3_i32(u_input.b.zyw, vec3<i32>(u_input.a, u_input.b.x, -49316i)), 2147483647i), firstLeadingBit(~(-58143i)))), -select(func_2(Struct_3(Struct_2(Struct_1(false, vec3<u32>(4294967295u, 1u, 0u), 4294967295u), Struct_1(true, vec3<u32>(86705u, 0u, 4294967295u), 1u)), vec3<bool>(true, true, false), Struct_2(Struct_1(true, vec3<u32>(4908u, 4294967295u, 79910u), 1u), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 1u), 68860u))), _wgslsmith_f_op_f32(exp2(arg_0.x)), Struct_2(Struct_1(false, vec3<u32>(0u, 4294967295u, 58776u), 1u), Struct_1(true, vec3<u32>(81944u, 2728u, 0u), 19084u))), 1i, !all(vec3<bool>(false, true, false))), u_input.b.x >> (123284u % 32u));
    let var_1 = vec2<bool>(true, true);
    let var_2 = ~_wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(45524u, 10875u, 4294967295u))), ~vec3<u32>(1u, 39948u, ~1u));
    var var_3 = Struct_3(Struct_2(Struct_1(select(true, select(var_1.x, var_1.x, var_1.x), false), ~(~vec3<u32>(var_2, 1u, var_2)), var_2), Struct_1((var_0.x | var_0.x) >= (i32(-1i) * -2147483647i), countOneBits(vec3<u32>(var_2, var_2, 4294967295u)), _wgslsmith_mod_u32(13535u, 3383u))), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), true), vec3<bool>(true, !var_1.x, func_3(global3[_wgslsmith_index_u32(var_2, 28u)])), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false), var_1.x), select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x), false), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, false)))), select(vec3<bool>(var_1.x, false, var_1.x), !select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), var_1.x), true), any(vec4<bool>(false != var_1.x, !var_1.x, var_1.x, true))), Struct_2(Struct_1(arg_0.x < arg_0.x, vec3<u32>(4294967295u, 1u, var_2), var_2), Struct_1(var_1.x, vec3<u32>(15705u << (var_2 % 32u), var_2, 66966u), 1u)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(794f, arg_0.x)) * _wgslsmith_f_op_f32(sign(-1531f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_div_f32(arg_0.x, arg_0.x))), -111f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(306f)), 1f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-728f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -650f)))))));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.a), -19154i, firstTrailingBit(select(28984i, _wgslsmith_mod_i32(-1i, 2147483647i), false) >> (~(~16153u) % 32u)));
    global0 = array<vec2<i32>, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1652f, 214f, 1674f, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -2880f, 989f, var_0) + vec4<f32>(var_0, -1817f, 589f, var_0)))))) * vec4<f32>(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 + -878f), 836f)), _wgslsmith_f_op_f32(-944f - 288f), var_0));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(select(var_2.x, var_0, true)) < -196f, ~firstTrailingBit(vec3<u32>(21412u, 1u, 19280u)), 4294967295u), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), var_1) < 4279i, ~(~vec3<u32>(1u, 4294967295u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(1u, 16187u), vec2<u32>(4294967295u, 4294967295u))))), select(vec3<bool>(firstTrailingBit(0u) <= 1u, true, !all(vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), vec3<bool>(true, false, true)), Struct_2(Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), min(~vec3<u32>(117864u, 4294967295u, 4294967295u), ~vec3<u32>(31200u, 4294967295u, 10305u)), 1u), Struct_1(true, ~vec3<u32>(9006u, 0u, 4294967295u), max(1u, abs(1u)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * -295f));
    global3 = array<vec4<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u));
}


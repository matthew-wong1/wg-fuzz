struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(10882u, 0u, 36051u, 1u, 91658u, 25431u, 1u, 87911u, 21013u);

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(0i, 38956i, 32858i), vec2<f32>(1833f, 1000f), vec4<f32>(-723f, 1196f, 141f, 969f), vec4<u32>(55236u, 0u, 4294967295u, 36749u)), false, 855f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(65162i, 2147483647i, -99044i), vec2<f32>(139f, 1768f), vec4<f32>(399f, 1455f, -1969f, -1077f), vec4<u32>(0u, 64777u, 15810u, 40340u)), false, -928f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(0i, -1i, 50461i), vec2<f32>(700f, -676f), vec4<f32>(-667f, 664f, 276f, 308f), vec4<u32>(4294967295u, 1u, 1u, 1u)), true, -256f), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<i32>(59834i, 1i, -15059i), vec2<f32>(-106f, -1365f), vec4<f32>(1000f, -112f, 911f, 809f), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), true, -1000f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, 48205i, 1i), vec2<f32>(-2338f, -1946f), vec4<f32>(-200f, -504f, 1112f, 1126f), vec4<u32>(0u, 116118u, 63072u, 0u)), false, -1076f), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<i32>(-604i, -12954i, -5017i), vec2<f32>(330f, 1227f), vec4<f32>(1521f, 1153f, -427f, -437f), vec4<u32>(1u, 0u, 1u, 765u)), false, -1758f));

var<private> global3: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<i32>(-1i, -1i, i32(-2147483648)), vec2<f32>(881f, 519f), vec4<f32>(-1000f, -1542f, -1109f, -1204f), vec4<u32>(27486u, 4294967295u, 33505u, 1u)), true, -452f)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(-43586i, 2184i, -49826i), vec2<f32>(-359f, -815f), vec4<f32>(-1218f, -473f, -959f, -658f), vec4<u32>(1u, 22087u, 4294967295u, 0u)), false, 114f)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<i32>(1807i, 78005i, i32(-2147483648)), vec2<f32>(-540f, -802f), vec4<f32>(1368f, -906f, -136f, 418f), vec4<u32>(67489u, 4294967295u, 1u, 91881u)), false, 164f)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(-4047i, -13166i, 2147483647i), vec2<f32>(717f, 679f), vec4<f32>(-193f, 921f, -408f, 1014f), vec4<u32>(4294967295u, 0u, 23163u, 0u)), false, -310f)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(0i, 0i, -16089i), vec2<f32>(161f, -825f), vec4<f32>(-119f, 436f, 989f, 948f), vec4<u32>(0u, 11940u, 76239u, 4294967295u)), false, 1186f)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, i32(-2147483648), 0i), vec2<f32>(680f, -1000f), vec4<f32>(-1671f, 961f, -1903f, 269f), vec4<u32>(40237u, 4294967295u, 40615u, 1715u)), true, 1745f)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(-42518i, 11697i, -12882i), vec2<f32>(754f, 1154f), vec4<f32>(-729f, 1047f, 462f, -394f), vec4<u32>(4294967295u, 1u, 43610u, 4294967295u)), false, -1293f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - 767f);
    global3 = array<Struct_4, 7>();
    var var_1 = arg_1;
    global3 = array<Struct_4, 7>();
    global1 = array<vec2<f32>, 20>();
    return firstLeadingBit(1u);
}

fn func_3() -> vec2<u32> {
    let var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec3<bool>(true, false, true)) | true, true, true || all(vec2<bool>(false, true))), vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(vec3<bool>(true, true, true)), false)));
    global1 = array<vec2<f32>, 20>();
    global3 = array<Struct_4, 7>();
    let var_1 = (reverseBits(vec2<u32>(~32823u, 1u)) << (~(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9180u, 9u)], 9u)], global0[_wgslsmith_index_u32(u_input.e, 9u)]))) % vec2<u32>(32u))) | vec2<u32>(1u, _wgslsmith_div_u32(42414u, (global0[_wgslsmith_index_u32(21462u, 9u)] | 14053u) << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)] << (u_input.c % 32u)) % 32u)));
    let var_2 = select(select(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0), select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), vec2<bool>(false, true)), vec2<bool>(var_0, var_0), select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), true)), true), vec2<bool>(var_0, true), vec2<bool>(false, var_0 || false)), vec2<bool>(true, false), false);
    return vec2<u32>(34583u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, select(u_input.a, u_input.a, true)) & _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 74027u), 9u)]), ~(0u >> (_wgslsmith_mult_u32(68145u, u_input.e) % 32u))), 9u)]);
}

fn func_2() -> vec2<u32> {
    global2 = array<Struct_2, 6>();
    let var_0 = ~(~_wgslsmith_add_u32(30342u, 34621u));
    global0 = array<u32, 9>();
    var var_1 = reverseBits(4294967295u);
    global0 = array<u32, 9>();
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 9u)], 4294967295u) ^ 4294967295u, _wgslsmith_mod_u32(var_0, ~var_0)), ~57631u) & ~func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), reverseBits(~(~(vec3<i32>(6232i, u_input.b, u_input.d) & vec3<i32>(-1i, u_input.b, 2147483647i)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2316f - -774f) * _wgslsmith_f_op_f32(-437f - -290f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f * 194f) - _wgslsmith_f_op_f32(f32(-1f) * -1072f)) + _wgslsmith_f_op_f32(-1000f - 728f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1172f, 1000f, false)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-196f, 446f)) + _wgslsmith_f_op_f32(-338f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-346f, -1224f))))), -108f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1303f * 1083f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f - -1000f))))), abs(~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 30190u), ~u_input.e, func_1(1492f, global2[_wgslsmith_index_u32(21876u, 6u)], Struct_1(vec3<bool>(false, false, true), vec3<i32>(u_input.d, -1i, u_input.d), vec2<f32>(-1000f, -597f), vec4<f32>(-601f, -408f, -915f, 1057f), vec4<u32>(0u, 37905u, u_input.e, global0[_wgslsmith_index_u32(1u, 9u)]))), global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31087u, 9u)], 9u)]), 9u)])));
    global1 = array<vec2<f32>, 20>();
    var var_1 = Struct_3(686f, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.e.x), _wgslsmith_mult_vec2_u32(min(var_0.e.zy, vec2<u32>(50303u, var_0.e.x)), func_2())), vec4<bool>(false, any(select(vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a, vec3<bool>(true, var_0.a.x, true))), false, any(vec4<bool>(true, true, var_0.a.x, select(var_0.a.x, false, var_0.a.x)))));
    var var_2 = global2[_wgslsmith_index_u32(~(~(~(~(~1u)))), 6u)];
    let var_3 = vec4<u32>(~(~(~1u)), 0u, ~firstTrailingBit(abs(~0u)), 78918u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d.x);
}


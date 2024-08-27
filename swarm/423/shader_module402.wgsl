struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(49356u, 1u, 49994u), vec3<u32>(26205u, 7090u, 61148u), vec3<u32>(1u, 32000u, 4294967295u), vec3<u32>(1u, 0u, 1894u), vec3<u32>(1u, 10755u, 0u), vec3<u32>(87706u, 93829u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(34750u, 25725u, 4294967295u), vec3<u32>(16531u, 39731u, 0u), vec3<u32>(23710u, 70692u, 0u), vec3<u32>(21011u, 77325u, 25883u), vec3<u32>(0u, 18062u, 45359u), vec3<u32>(95718u, 14820u, 78725u), vec3<u32>(26720u, 46521u, 56751u), vec3<u32>(4294967295u, 4294967295u, 77446u), vec3<u32>(73691u, 1u, 1u), vec3<u32>(38781u, 0u, 29235u), vec3<u32>(2659u, 4294967295u, 0u), vec3<u32>(13396u, 0u, 1u), vec3<u32>(16112u, 4294967295u, 14445u), vec3<u32>(0u, 1u, 1u), vec3<u32>(22302u, 67922u, 11344u));

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 24>;

var<private> global3: array<bool, 7> = array<bool, 7>(false, true, false, false, true, true, false);

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    global1 = arg_1.a;
    var var_0 = arg_1;
    var var_1 = Struct_2(~reverseBits(2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -916f));
    let var_2 = var_1.b;
    var var_3 = -1273f;
    return _wgslsmith_mod_u32(arg_1.d, var_0.d);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-465f, global1.x) * vec2<f32>(1059f, 673f)) * vec2<f32>(112f, global1.x))), vec2<f32>(-418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-408f - global1.x) + _wgslsmith_f_op_f32(-569f + global1.x)))), vec2<i32>(0i | -(~u_input.a.x), ~0i), !all(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(18087u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(46u, 7u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(33948u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(2406u, 24u)], false, false, false), global3[_wgslsmith_index_u32(22828u, 7u)]), true)), 1u);
    let var_1 = 46060u;
    let var_2 = abs(firstTrailingBit(vec2<u32>(0u, ~var_1))) ^ ~vec2<u32>(~(var_1 << (1u % 32u)), 19817u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), u_input.a.zz, !global3[_wgslsmith_index_u32(~var_2.x, 7u)], 1u);
    var var_4 = vec3<f32>(-319f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1817f, global1.x) * 1000f));
    return select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_3.d, 60313u, 1u), vec4<u32>(var_1, var_3.d, var_3.d, var_1)), 24u)], !global3[_wgslsmith_index_u32(29023u, 7u)], var_3.c), !vec4<bool>(false, var_3.c, true, global2[_wgslsmith_index_u32(var_1, 24u)]), select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 7u)], var_0.c, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_3.c, var_3.c, var_3.c), true)), vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, var_3.c, var_3.c), vec3<bool>(var_3.c, false, var_3.c))), var_0.c, true, true), global3[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_f32(var_4.x * var_4.x), var_3, vec4<i32>(49741i, var_0.b.x, var_3.b.x, var_0.b.x)), 7u)]), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, any(!select(vec2<bool>(true, true), vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, true))), var_3.d > (~13024u | _wgslsmith_dot_vec4_u32(vec4<u32>(9370u, 25238u, 4294967295u, 33330u), vec4<u32>(var_3.d, 0u, 7843u, 1u)))), (abs(select(0i, -2147483647i, var_3.c)) | u_input.a.x) <= -2147483647i);
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-851f, -2421f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(390f, global1.x), vec2<f32>(-2112f, global1.x), vec2<bool>(false, global3[_wgslsmith_index_u32(14672u, 7u)])))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, -791f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -442f), vec2<f32>(1100f, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(579f, global1.x) * vec2<f32>(global1.x, global1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1641f, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 793f) - vec2<f32>(219f, 588f))))), _wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    global4 = array<Struct_3, 26>();
    let var_0 = !(!select(vec4<bool>(global3[_wgslsmith_index_u32(~1u, 7u)], true, global2[_wgslsmith_index_u32(select(0u, 0u, false), 24u)], true), func_2(), vec4<bool>(true, true, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(6330u, 7u)])));
    global0 = array<vec3<u32>, 22>();
    global2 = array<bool, 24>();
    return Struct_2(0i, -1369f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 7u)];
    global0 = array<vec3<u32>, 22>();
    let var_2 = vec2<bool>(!global2[_wgslsmith_index_u32(~0u, 24u)], true | ((true & (global3[_wgslsmith_index_u32(37706u, 7u)] || true)) && all(vec3<bool>(global2[_wgslsmith_index_u32(98661u, 24u)], true, true))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1216f, var_0.b) - vec2<f32>(var_0.b, -2181f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(345f, global1.x)))) + vec2<f32>(-1264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 1129f) + _wgslsmith_f_op_f32(1254f + var_0.b)))), -abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-50628i, -1i), ~vec2<i32>(-27356i, var_0.a))), -15420i < u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(4294967295u, 307u))), select(select(vec2<u32>(20250u, 84159u), vec2<u32>(49547u, 0u), var_2.x), vec2<u32>(1u, 1u), true)), 4294967295u, firstLeadingBit(4892u)));
    global4 = array<Struct_3, 26>();
    let var_4 = 1114f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-35402i), 0i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, var_0.a, var_3.b.x), var_3.b.x), 18961i), max(vec4<i32>(-13334i, var_3.b.x ^ var_3.b.x, var_0.a, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(7919i, 37113i, var_0.a, u_input.a.x), vec4<i32>(var_0.a, -1i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, -29981i, u_input.a.x)) << (vec4<u32>(var_3.d, var_3.d, 25903u, var_3.d) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1160f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1395f)))) + var_3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, -298f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_3.a))))));
}


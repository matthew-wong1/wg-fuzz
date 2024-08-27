struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(53148u, 39516u, 4294967295u), vec3<u32>(10552u, 65720u, 4294967295u), vec3<u32>(0u, 4294967295u, 17223u), vec3<u32>(14243u, 31366u, 52469u), vec3<u32>(28398u, 8541u, 1u), vec3<u32>(4294967295u, 4294967295u, 6035u), vec3<u32>(28140u, 4294967295u, 18384u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(5052u, 38087u, 13071u), vec3<u32>(59215u, 1u, 1u), vec3<u32>(55343u, 5159u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(62627u, 1u, 1585u), vec3<u32>(0u, 35580u, 65607u), vec3<u32>(1u, 27453u, 4294967295u), vec3<u32>(37476u, 1u, 4294967295u), vec3<u32>(16401u, 1u, 9691u), vec3<u32>(4294967295u, 37225u, 1u), vec3<u32>(87837u, 2698u, 0u), vec3<u32>(67868u, 61730u, 1u), vec3<u32>(0u, 87674u, 0u), vec3<u32>(3964u, 0u, 3146u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u));

var<private> global2: f32 = -798f;

var<private> global3: array<u32, 17> = array<u32, 17>(53805u, 74260u, 0u, 1u, 0u, 0u, 0u, 5950u, 4294967295u, 0u, 81359u, 1u, 7227u, 0u, 66569u, 12804u, 103886u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_3((select(global1[_wgslsmith_index_u32(1u, 24u)], ~global1[_wgslsmith_index_u32(u_input.b.x, 24u)], true) << (abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(9456u, global3[_wgslsmith_index_u32(15717u, 17u)]), 24u)]) % vec3<u32>(32u))) ^ vec3<u32>(~min(global3[_wgslsmith_index_u32(97308u, 17u)], 48676u), ~u_input.b.x >> (countOneBits(u_input.b.x) % 32u), firstLeadingBit(firstTrailingBit(arg_1.x))));
    var var_1 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(countOneBits(max(vec4<u32>(11622u, global3[_wgslsmith_index_u32(var_0.a.x, 17u)], u_input.b.x, 110974u), vec4<u32>(arg_1.x, 0u, 0u, arg_1.x))), vec4<u32>(_wgslsmith_add_u32(arg_1.x, 0u), reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(10936u, 4294967295u, 4294967295u, 0u), vec4<u32>(arg_1.x, 92094u, 15845u, arg_1.x)), arg_1.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, arg_1.x, 1u), ~vec4<u32>(4294967295u, 1u, 41760u, 1u)), vec4<u32>(_wgslsmith_clamp_u32(0u, 37939u, var_0.a.x), ~u_input.b.x, 1u, abs(0u)), min(vec4<u32>(var_0.a.x, 4294967295u, 4294967295u, 0u) << (vec4<u32>(81936u, global3[_wgslsmith_index_u32(u_input.b.x, 17u)], var_0.a.x, 60857u) % vec4<u32>(32u)), ~vec4<u32>(arg_1.x, 20918u, 4294967295u, 4294967295u))) >> (vec4<u32>(_wgslsmith_clamp_u32(arg_1.x, ~u_input.b.x, arg_1.x), _wgslsmith_mult_u32(~1u, ~arg_1.x), ~1u, arg_1.x) % vec4<u32>(32u)));
    var var_2 = ~(~(~(vec2<u32>(var_0.a.x, 50418u) >> ((var_0.a.xz | u_input.b) % vec2<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1377f))), -1698f, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(0u, 8302u)), 21u)]))));
    global3 = array<u32, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1207f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(var_2.x, 0u)) & 1u, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1418f + global0[_wgslsmith_index_u32(1u, 21u)]) * 1000f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(955f)))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(~(~u_input.b.x), ~u_input.b.x);
    global0 = array<f32, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(-arg_0)), u_input.a.x), ~firstTrailingBit(u_input.b))), 1u);
    global3 = array<u32, 17>();
    global3 = array<u32, 17>();
    return Struct_3(global1[_wgslsmith_index_u32(~u_input.b.x, 24u)]);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = u_input.a.zx;
    var var_2 = Struct_3(arg_0.a);
    let var_3 = func_2(185f);
    global1 = array<vec3<u32>, 24>();
    return Struct_2(_wgslsmith_div_f32(1289f, 1164f), abs(~(-1i)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> vec4<u32> {
    global3 = array<u32, 17>();
    var var_0 = func_2(-2769f).a.yx;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(384f * -1000f))), reverseBits(global3[_wgslsmith_index_u32(reverseBits(~1u), 17u)]));
    global2 = arg_0.a;
    var var_2 = ~abs(countOneBits(min(23281u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 17u)], 17u)], u_input.b.x << (var_0.x % 32u))));
    return min(vec4<u32>(55571u, (_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(66669u, var_0.x, global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(4236u, 17u)])) ^ _wgslsmith_sub_u32(2019u, arg_2.x)) & global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 1u), 17u)], _wgslsmith_dot_vec4_u32((vec4<u32>(88982u, arg_2.x, arg_2.x, 0u) & arg_2) ^ arg_2, vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), ~0u, u_input.b.x, global3[_wgslsmith_index_u32(arg_2.x >> (6068u % 32u), 17u)])), 56920u), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~86057u, 21u)], _wgslsmith_dot_vec4_u32(~func_4(func_1(Struct_3(global1[_wgslsmith_index_u32(0u, 24u)]), Struct_1(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 21u)], global3[_wgslsmith_index_u32(36240u, 17u)]), vec4<i32>(-3772i, 73495i, -63697i, u_input.a.x)), global0[_wgslsmith_index_u32(4294967295u, 21u)] != -1603f, ~vec4<u32>(4294967295u, 8030u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49353u, 17u)], 17u)], 0u), _wgslsmith_f_op_f32(f32(-1f) * -1249f)), vec4<u32>(~u_input.b.x, ~20688u, 14787u, _wgslsmith_div_u32(firstLeadingBit(33595u), ~98806u))));
    let var_1 = u_input.c;
    global0 = array<f32, 21>();
    let var_2 = ~(~(~abs(vec3<u32>(17573u, 1u, 32233u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-531f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(trunc(-473f)), var_0.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1224f, _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(14017u, 21u)])), global0[_wgslsmith_index_u32(func_4(Struct_2(342f, var_1), true, vec4<u32>(global3[_wgslsmith_index_u32(49715u, 17u)], 8498u, 50567u, 4294967295u), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37163u, 17u)], 21u)]).x, 21u)]))))));
    var var_4 = !(!all(vec2<bool>(all(vec3<bool>(false, true, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yy, ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(func_4(Struct_2(global0[_wgslsmith_index_u32(26731u, 21u)], u_input.a.x), any(vec3<bool>(false, true, false)), firstTrailingBit(vec4<u32>(12665u, u_input.b.x, 5279u, 83306u)), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.b, 21u)]))).x, 17u)], 4294967295u), var_1, global3[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + 1114f)).a.x, 17u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))) + -303f), var_3.x));
}


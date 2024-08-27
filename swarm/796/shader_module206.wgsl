struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<i32, 27>;

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 3>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<bool>(true, true, false), 2147483647i, false, -346f, true), Struct_3(vec3<bool>(false, true, false), 0i, true, 825f, true), Struct_3(vec3<bool>(true, true, true), 2147483647i, false, -844f, false), Struct_3(vec3<bool>(true, true, false), 23546i, true, -1173f, false), Struct_3(vec3<bool>(false, true, false), 1i, true, 1221f, false), Struct_3(vec3<bool>(false, true, false), 2147483647i, false, 793f, false), Struct_3(vec3<bool>(true, false, true), 43118i, false, 565f, false), Struct_3(vec3<bool>(false, true, true), -23735i, true, -1378f, false), Struct_3(vec3<bool>(false, false, true), 20585i, true, 429f, true), Struct_3(vec3<bool>(true, false, false), -42807i, false, 1002f, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = false;
    let var_1 = any(vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_3.c.x, arg_3.c.x)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-arg_3.c.x)), global3.x == true, all(vec4<bool>(arg_1, global3.x != false, true, arg_3.b.d))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 3u)];
    var var_3 = Struct_1(any(arg_3.b.c.yw), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_3.b.b, vec4<f32>(_wgslsmith_f_op_f32(min(-935f, arg_3.c.x)), _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-344f + 530f), arg_3.b.b.x))), arg_3.b.b), select(arg_3.b.c, select(vec4<bool>(global0[_wgslsmith_index_u32(22147u, 27u)] > -2147483647i, true, var_1, u_input.a == 15982u), vec4<bool>(true, !arg_3.b.d, true, arg_3.b.b.x < arg_3.c.x), select(arg_3.b.c, vec4<bool>(false, true, false, false), global3.x)), all(select(arg_3.b.c.wyx, select(arg_3.b.c.wxx, vec3<bool>(var_0, false, false), global3.x), var_0))), arg_3.b.d);
    let var_4 = arg_3.b;
    return vec4<bool>((i32(-1i) * -32747i) != abs(u_input.c >> (max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10903u, 3u)], 3u)], 3u)], 16666u) % 32u)), !global3.x, min(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(27821u, 0u), 3u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9397u, 3u)], 3u)]) != ~u_input.a, var_4.a);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(all(!func_3(~1i, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 3u)], 27u)], Struct_2(u_input.d, Struct_1(global3.x, vec4<f32>(-1315f, 1972f, -767f, 1000f), vec4<bool>(global3.x, global3.x, global3.x, global3.x), true), vec2<f32>(976f, -1403f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2113f, 1453f, -1000f, -178f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2727f, -1034f, 848f, -811f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-564f, -132f, 480f, -152f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(421f, -2248f), -387f, _wgslsmith_f_op_f32(ceil(845f)), _wgslsmith_f_op_f32(1197f + 821f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(443f, -686f, -123f, -262f)))), true)), !func_3(u_input.d.x, true, -13409i, Struct_2(vec4<i32>(global1.x, -1i, -26305i, -346i) ^ u_input.d, Struct_1(true, vec4<f32>(801f, -1683f, -102f, -1453f), vec4<bool>(true, global3.x, true, false), global3.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-242f, 615f))))), false);
    global4 = array<Struct_3, 10>();
    global0 = array<i32, 27>();
    let var_1 = ~select(vec3<u32>(_wgslsmith_add_u32(22001u, 29110u), _wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(15968u, 3u)]), vec2<u32>(4294967295u, 4294967295u))), vec3<u32>(4294967295u, 4294967295u, 16326u) ^ vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], u_input.a), !select(vec3<bool>(true, false, false), var_0.c.wwx, vec3<bool>(var_0.d, var_0.c.x, var_0.a))) & _wgslsmith_clamp_vec3_u32(abs(~select(vec3<u32>(0u, 56078u, u_input.a), vec3<u32>(9809u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)]), true)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), abs(vec3<u32>(1u, 44716u, 1u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(82266u, global2[_wgslsmith_index_u32(9414u, 3u)], 26102u, 10892u), vec4<u32>(global2[_wgslsmith_index_u32(47045u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 53281u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(5848u, u_input.a, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), vec4<u32>(global2[_wgslsmith_index_u32(37368u, 3u)], 43678u, 4294967295u, 0u)), 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(64630u, 0u, ~4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 3u)], 4294967295u), vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], u_input.a)) | ~vec3<u32>(2601u, u_input.a, u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.b.ww)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.x, var_0.b.x))))))))));
    return ~u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = global1.zw;
    let var_1 = _wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(firstLeadingBit(arg_1.a.x) >> (~5703u % 32u), -u_input.b), ~global0[_wgslsmith_index_u32(func_2(), 27u)]);
    let var_2 = ~(~(68655u ^ ~_wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(3432u, 3u)])));
    var var_3 = Struct_1(-var_1 == global0[_wgslsmith_index_u32(~min(var_2, 0u >> (1u % 32u)), 27u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.b.b)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_1.b.b, arg_1.b.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.b)) - vec4<f32>(arg_1.b.b.x, -618f, arg_0.b.x, -1759f)), func_3(_wgslsmith_sub_i32(var_0.x, 2147483647i), 52845u >= global2[_wgslsmith_index_u32(43468u, 3u)], -1i, Struct_2(u_input.d, Struct_1(global3.x, vec4<f32>(arg_0.b.x, -453f, -323f, 1340f), vec4<bool>(arg_1.b.a, true, false, false), global3.x), vec2<f32>(-392f, 500f)))))), !vec4<bool>(select(true, global3.x, true), all(func_3(0i, false, var_1, arg_1).zxy), global3.x, !all(vec2<bool>(arg_1.b.c.x, arg_1.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - -1044f), _wgslsmith_div_f32(arg_0.b.x, 340f))) != arg_1.c.x);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1394f * 117f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.x, arg_1.c.x)))), 1000f), arg_1.c.x);
    return arg_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    var var_0 = Struct_1(global3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1147f, 753f, -748f, 379f) - vec4<f32>(-1000f, 144f, 501f, -417f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(879f, 742f, -1735f, 1000f), vec4<f32>(-509f, 1025f, 950f, 428f))), vec4<f32>(-1064f, 2029f, -392f, -1774f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, -1101f, 244f, -1683f)), _wgslsmith_div_vec4_f32(vec4<f32>(673f, 940f, 415f, -1000f), vec4<f32>(472f, 119f, 1235f, -475f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(global3.x, vec4<f32>(-170f, 461f, 300f, 493f), vec4<bool>(true, false, global3.x, global3.x), true), Struct_2(u_input.d, Struct_1(false, vec4<f32>(-1000f, -573f, -427f, 837f), vec4<bool>(false, global3.x, false, true), false), vec2<f32>(-421f, 1000f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-735f, 450f, -747f, 225f)))), vec4<bool>(true, true, true, true)))), select(select(!select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(true, true, global3.x, global3.x)), vec4<bool>(true, true, select(global3.x, global3.x, true), 14197u == u_input.a), vec4<bool>(true | global3.x, global3.x, false, false)), func_3(-34343i, !global3.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, global1.x), global1.wx), Struct_2(u_input.d, Struct_1(true, vec4<f32>(-622f, 405f, 824f, -1000f), vec4<bool>(false, false, global3.x, true), global3.x), vec2<f32>(1f, 1f))), select(vec4<bool>(global3.x, global3.x, !global3.x, false), vec4<bool>(true, true, true, true), !func_3(global1.x, global3.x, u_input.b, Struct_2(u_input.d, Struct_1(global3.x, vec4<f32>(2049f, 1432f, 2231f, 379f), vec4<bool>(true, global3.x, global3.x, false), false), vec2<f32>(4239f, 240f))))), false);
    let var_1 = Struct_2(firstLeadingBit(u_input.d), Struct_1(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(245f, 480f, var_0.b.x, -1532f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1579f, -746f, -1733f)), func_3(_wgslsmith_add_i32(-74711i, -1i), !var_0.a, -2147483647i, Struct_2(vec4<i32>(global1.x, u_input.b, global1.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], 27u)]), Struct_1(true, var_0.b, vec4<bool>(false, true, global3.x, var_0.a), true), vec2<f32>(866f, 1784f))))), var_0.c, global1.x > u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x))))));
    let var_2 = _wgslsmith_f_op_f32(var_0.b.x - 1550f);
    global0 = array<i32, 27>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 20131u)), abs(vec2<u32>(1u, 1u))) ^ ~0u);
}


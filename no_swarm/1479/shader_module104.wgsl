struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<f32>(1235f, -1039f, 1269f)), Struct_3(vec3<f32>(1712f, 133f, 898f)), Struct_3(vec3<f32>(-417f, 464f, -1446f)), Struct_3(vec3<f32>(504f, 1104f, 632f)), Struct_3(vec3<f32>(-1281f, -811f, 828f)), Struct_3(vec3<f32>(469f, -853f, 1696f)), Struct_3(vec3<f32>(-243f, -1398f, 1000f)), Struct_3(vec3<f32>(1237f, 1270f, -550f)), Struct_3(vec3<f32>(2171f, 519f, 1313f)), Struct_3(vec3<f32>(-1032f, 717f, -487f)), Struct_3(vec3<f32>(-1206f, -345f, 1000f)), Struct_3(vec3<f32>(-1048f, -2598f, -470f)), Struct_3(vec3<f32>(1000f, -1162f, 256f)), Struct_3(vec3<f32>(-1000f, 804f, 348f)), Struct_3(vec3<f32>(1374f, -708f, -1427f)), Struct_3(vec3<f32>(199f, 687f, 1895f)), Struct_3(vec3<f32>(-230f, 1000f, -782f)), Struct_3(vec3<f32>(1737f, 264f, -1879f)), Struct_3(vec3<f32>(1256f, 1848f, 2120f)), Struct_3(vec3<f32>(-1371f, 136f, 340f)), Struct_3(vec3<f32>(-137f, -893f, -1000f)), Struct_3(vec3<f32>(-1051f, 241f, -862f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, arg_0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1243f, -1363f))))))));
    var_0 = arg_0.zy;
    var_0 = vec2<f32>(703f, _wgslsmith_f_op_f32(ceil(1f)));
    global1 = array<Struct_1, 19>();
    let var_1 = !(true != (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, var_0.x)), 376f)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -516f))), var_0.x) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(arg_0))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-580f)) * arg_0.x)), var_0.x, var_0.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>) -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_5(Struct_4(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 13u)], 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x + 324f), _wgslsmith_f_op_f32(-169f + 1309f), true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(-359f - -1868f), true)))));
    global1 = array<Struct_1, 19>();
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.a, u_input.a);
    let var_3 = Struct_4(firstTrailingBit(36544u), -1000f);
    return _wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(u_input.a.x, 75352u, arg_0.x, 4294967295u) | vec4<u32>(var_2, var_3.a, 2636u, u_input.a.x))), vec4<u32>(var_2 & var_2, var_3.a, u_input.a.x, 39295u) << (vec4<u32>(52980u | var_3.a, 4294967295u & arg_0.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 1u), 0u) % vec4<u32>(32u))) & var_1.a.a;
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_dot_vec3_u32(~(~(u_input.a | vec3<u32>(u_input.a.x, 0u, 0u))) ^ min(vec3<u32>(18278u, u_input.a.x, firstLeadingBit(56792u)), _wgslsmith_mod_vec3_u32(vec3<u32>(16026u, u_input.a.x, global0[_wgslsmith_index_u32(96792u, 13u)]) ^ vec3<u32>(u_input.a.x, 46774u, 12037u), ~vec3<u32>(41188u, 0u, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), vec3<u32>(func_4(u_input.a.yy, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-154f, -120f, -329f), vec3<f32>(820f, -331f, 387f), true))))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], u_input.a.x, u_input.a.x, u_input.a.x))), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]));
    var var_1 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], 13u)], u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), (_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xz) ^ global0[_wgslsmith_index_u32(~56227u, 13u)]) | ~1u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -905f), _wgslsmith_div_f32(-1574f, -625f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -128f)))) - _wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(ceil(1098f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-163f)) - -1007f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1798f * _wgslsmith_div_f32(-1195f, 165f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(941f + 1000f))))));
    var var_3 = -_wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b.x, 1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-3737i, 0i, 2147483647i), ~u_input.b));
    return Struct_5(Struct_4(20650u, _wgslsmith_f_op_f32(f32(-1f) * -1521f)));
}

fn func_1() -> vec2<f32> {
    var var_0 = func_2();
    var_0 = Struct_5(Struct_4(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, var_0.a.a, var_0.a.a), u_input.a), reverseBits(u_input.a)), _wgslsmith_f_op_f32(abs(-1000f))));
    var var_1 = var_0.a.a;
    global1 = array<Struct_1, 19>();
    var var_2 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), var_0.a.b) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2285f, var_0.a.b), vec2<f32>(var_0.a.b, -802f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, var_0.a.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, var_0.a.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, var_0.a.b) * vec2<f32>(-1300f, var_0.a.b))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, 2302f)), vec2<f32>(1011f, 267f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(ceil(var_0.a.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1480f, -112f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-333f, 642f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-1471f - -455f)) * _wgslsmith_f_op_vec2_f32(func_1())) + vec2<f32>(func_2().a.b, 1000f)));
    let var_1 = select(select(select(vec3<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), vec3<bool>(false, any(vec4<bool>(false, true, true, false)), all(vec4<bool>(false, false, false, true)))), !vec3<bool>(false, true, any(vec2<bool>(false, false))), vec3<bool>(select(false, false, false) && any(vec2<bool>(false, true)), true, true)), vec3<bool>(false, u_input.a.x != global0[_wgslsmith_index_u32(1u, 13u)], false), vec3<bool>(all(vec2<bool>(true, true)), !(!all(vec3<bool>(false, true, false))), all(vec2<bool>(true, true))));
    var var_2 = var_0.x;
    var_2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(472u, 4294967295u, 0u), _wgslsmith_sub_vec3_u32(~u_input.a, ~vec3<u32>(4294967295u, 4294967295u, 4294967295u))), reverseBits(u_input.a));
    let var_4 = min(u_input.b.x | abs(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -13779i), u_input.b.yx))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(381f, var_0.x, var_0.x, -814f), vec4<f32>(var_0.x, var_0.x, 1071f, var_0.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -224f, var_0.x, 1179f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1398f, var_0.x, -1438f))))), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)));
}


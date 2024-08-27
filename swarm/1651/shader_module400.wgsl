struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<bool>,
    e: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_3, 11>;

var<private> global3: vec2<i32>;

var<private> global4: array<bool, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.x))), -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), 875f, 696f))));
    let var_1 = vec2<bool>(arg_2, true);
    let var_2 = Struct_2(arg_0.a, arg_0.b);
    global0 = array<vec2<bool>, 4>();
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(arg_1.a));
    return var_2.a.a;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_5(arg_2, vec4<bool>(!arg_1.x, ~arg_2.c.a.a >= ~41382u, arg_2.b.x, 1f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.e)))), Struct_2(arg_2.c.a, u_input.a.ww));
    global4 = array<bool, 32>();
    let var_1 = Struct_1(~(~arg_2.c.a.c.x), -((~arg_2.c.b.x & 1i) >> (arg_2.c.a.c.x % 32u)), u_input.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.c.a.d * arg_2.c.a.d))), _wgslsmith_div_vec2_f32(arg_2.c.a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, 669f))))), var_0.a.c.a.d)), !(!(_wgslsmith_f_op_f32(round(1000f)) == _wgslsmith_f_op_f32(-var_0.a.e))));
    global1 = _wgslsmith_mod_i32(-var_1.b, reverseBits(max(_wgslsmith_add_i32(2147483647i, var_1.b >> (137u % 32u)), select(arg_2.c.a.b, -1i, arg_1.x))));
    global4 = array<bool, 32>();
    return !all(!(!(!vec2<bool>(var_0.b.x, arg_1.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(~0u, firstLeadingBit(~(-2147483647i)), ~(~u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(-1976f, arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))), false), vec2<i32>(~(-2147483647i), -5334i)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32((max(1u, 29555u) << (u_input.b.x % 32u)) >> (62879u % 32u), u_input.b.x), 11u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), 11u)];
    var var_1 = var_0.a.xx;
    var var_2 = Struct_4(arg_0.x, !select(!(!vec3<bool>(false, global4[_wgslsmith_index_u32(74590u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)])), !(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], false)), vec3<bool>(true, true, true)), Struct_2(Struct_1(_wgslsmith_mod_u32(~u_input.b.x, 26096u), 2147483647i, u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-arg_2), 519f), all(vec3<bool>(true, true, true))), reverseBits(arg_0.zx) | countOneBits(vec2<i32>(u_input.a.x, arg_0.x))), !(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], func_3(37012u, global0[_wgslsmith_index_u32(9649u, 4u)], Struct_4(36590i, vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(20147u, 32u)], false), Struct_2(Struct_1(4294967295u, u_input.a.x, u_input.b, var_0.a.zx, global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), u_input.a.yx), vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 32u)], true, false), -1371f)), true, -1i > arg_0.x)), _wgslsmith_f_op_f32(ceil(527f)));
    global0 = array<vec2<bool>, 4>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_f_op_f32(max(var_0.a.x, var_2.e)))));
    return global4[_wgslsmith_index_u32(var_2.c.a.c.x, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(!vec4<bool>(global4[_wgslsmith_index_u32(18351u, 32u)], false, false, global4[_wgslsmith_index_u32(7473u, 32u)]), !vec4<bool>(true, false, global4[_wgslsmith_index_u32(35695u, 32u)], true), all(vec2<bool>(true, false))), select(vec4<bool>(func_1(vec4<i32>(global3.x, 7861i, 0i, -2147483647i), 1i, -984f), func_3(133341u, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], Struct_4(-37175i, vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], false, global4[_wgslsmith_index_u32(21122u, 32u)]), Struct_2(Struct_1(u_input.b.x, u_input.a.x, u_input.b, vec2<f32>(-1084f, -111f), true), u_input.a.wz), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], false, false), 500f)), func_3(0u, vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), Struct_4(-39507i, vec3<bool>(global4[_wgslsmith_index_u32(6760u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(30203u, 32u)]), Struct_2(Struct_1(u_input.b.x, -29701i, vec4<u32>(u_input.b.x, 76574u, 6785u, 26926u), vec2<f32>(-807f, -1462f), false), vec2<i32>(8820i, 0i)), vec4<bool>(global4[_wgslsmith_index_u32(2874u, 32u)], global4[_wgslsmith_index_u32(0u, 32u)], false, false), 419f)), true), select(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(46736u, 32u)]), !vec4<bool>(false, true, global4[_wgslsmith_index_u32(14627u, 32u)], true), all(global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(0u, 32u)], false), vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.b.x, 32u)], false), global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], true, false, true), select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(49648u, 32u)], false, global4[_wgslsmith_index_u32(90562u, 32u)]), vec4<bool>(global4[_wgslsmith_index_u32(12999u, 32u)], true, global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), global4[_wgslsmith_index_u32(2342u, 32u)]))), false && any(vec3<bool>(global4[_wgslsmith_index_u32(14805u, 32u)], false, global4[_wgslsmith_index_u32(u_input.b.x, 32u)])));
    var var_1 = Struct_1(u_input.b.x, u_input.a.x, ~u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, -280f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(f32(-1f) * -418f)))), global4[_wgslsmith_index_u32(35311u, 32u)] | any(select(select(var_0.yzz, vec3<bool>(var_0.x, global4[_wgslsmith_index_u32(11293u, 32u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 32u)], false)), var_0.yzw, global4[_wgslsmith_index_u32(0u, 32u)] && false)));
    global4 = array<bool, 32>();
    let var_2 = -317f;
    global3 = _wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(i32(-1i) * -14724i, _wgslsmith_sub_i32(~(10055i | global3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, 27521i), firstTrailingBit(u_input.a.wy)))));
    let var_3 = Struct_2(Struct_1(u_input.b.x, u_input.a.x, ~abs(u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1189f, 2454f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d))), var_0.x), u_input.a.xw);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.c.x, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 55831u, 43022u), vec3<u32>(1u, 4294967295u, var_1.c.x)))), -_wgslsmith_sub_i32(-(1i ^ var_3.a.b), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.zxw, u_input.a.wyw, u_input.a.xxx), vec3<i32>(0i, var_1.b, var_3.b.x))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_mod_u32(91394u << (var_3.a.a % 32u), 37400u)), var_3.a.c.x));
}


struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-22609i, i32(-2147483648), -54985i, 1i);

var<private> global1: array<vec3<bool>, 4>;

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-531f, -385f), vec2<f32>(197f, 2118f), vec2<f32>(683f, 759f));

var<private> global3: vec3<f32>;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~max(1u, 13001u), 4u)];
    let var_1 = Struct_3(vec4<u32>(~min(abs(0u), _wgslsmith_div_u32(4294967295u, 30203u)), 1u, max(437u, 0u), 31316u));
    let var_2 = Struct_3(var_1.a);
    global2 = array<vec2<f32>, 3>();
    let var_3 = ~(~abs(~var_2.a.x << (3091u % 32u)));
    return _wgslsmith_mod_i32(2147483647i, 1i);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> Struct_4 {
    global4 = global3.zx;
    let var_0 = 16333u;
    global1 = array<vec3<bool>, 4>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(271f, 723f, 1195f) * arg_1)))));
    return Struct_4(Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(9278u, var_0, 55889u, var_0) | vec4<u32>(66342u, var_0, var_0, 4294967295u), vec4<u32>(42092u, 1u, var_0, 1u)), vec4<u32>(4294967295u, ~0u, ~40512u, 10231u & var_0))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    global2 = array<vec2<f32>, 3>();
    global1 = array<vec3<bool>, 4>();
    var var_0 = arg_0;
    var var_1 = Struct_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1207f, -519f) - 1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.b, arg_1.b), vec3<f32>(global4.x, -1690f, 243f), arg_1.a.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, 1000f, -644f), vec3<f32>(global4.x, 321f, global4.x))))))).a);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(883f, -228f)))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(f32(-1f) * -376f)));
    return func_2(-1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1755f, -1000f, -1213f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1287f, arg_1.b, -1000f) + vec3<f32>(global3.x, arg_1.b, -1000f)), vec3<bool>(arg_1.c, false, true)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global4.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.x - global4.x))), global3.x))).a;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -2731f, 128f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.x, arg_2, arg_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(846f, arg_2, arg_1))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2146f, -706f, 255f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, global4.x, arg_1) * vec3<f32>(537f, -1008f, -422f)))))), vec3<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1716f))))), select(select(global1[_wgslsmith_index_u32(~arg_0.a.a.x, 4u)], global1[_wgslsmith_index_u32(max(1u, 0u), 4u)], true), global1[_wgslsmith_index_u32(arg_0.a.a.x & _wgslsmith_mod_u32(arg_0.a.a.x, ~arg_0.a.a.x), 4u)], global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.a.x), 4u)])));
    var var_0 = ~arg_0.a.a.x;
    global4 = global3.yz;
    var var_1 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.a.a.x < 4294967295u)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), arg_0.a.a.zw & arg_0.a.a.zx, ~vec2<u32>(arg_0.a.a.x >> (~arg_0.a.a.x % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(35537u, 1u, arg_0.a.a.x), vec3<u32>(4294967295u, arg_0.a.a.x, arg_0.a.a.x))));
    var_0 = ~0u;
    return Struct_1(vec2<bool>(16072u <= ~var_1.b.x, any(select(vec3<bool>(var_1.a.x, true, true), !vec3<bool>(true, var_1.a.x, false), !var_1.a.x))), ~vec2<u32>(31802u, countOneBits(~58113u)), ~var_1.b);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<f32>(183f, _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = arg_1.b.x;
    global3 = arg_0;
    let var_2 = 790f;
    global3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_f32(select(var_0.x, arg_0.x, any(vec2<bool>(false | arg_1.a.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_2)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 3>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3.zy, _wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(81102u, 3u)], vec2<f32>(global4.x, global4.x), false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-580f, _wgslsmith_f_op_f32(abs(global3.x))) - vec2<f32>(global4.x, _wgslsmith_div_f32(global3.x, global3.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.zy) * _wgslsmith_div_vec2_f32(vec2<f32>(-527f, global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, 430f)))));
    global0 = ~vec4<i32>(func_1(), -2147483647i | ~(global0.x << (1u % 32u)), ~(-(~0i)), -2147483647i);
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1644f, -721f, var_0.x) * vec3<f32>(822f, global4.x, -123f)))))), Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<u32>(34317u, ~_wgslsmith_mod_u32(46628u, 2251u)), vec2<u32>(4294967295u, 4564u)), func_4(Struct_4(func_3(func_2(var_0.x, vec3<f32>(global4.x, global3.x, global3.x)), Struct_2(Struct_1(vec2<bool>(false, true), vec2<u32>(53000u, 15268u), vec2<u32>(41445u, 1u)), global4.x, false))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~reverseBits(abs(vec2<u32>(28531u, 24799u)))));
    let var_2 = func_2(_wgslsmith_f_op_f32(851f + global3.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1724f, global4.x, var_0.x))));
    let var_3 = func_2(197f, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-374f - global3.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 329f)))))));
    let var_4 = ~var_1.b.x;
    global1 = array<vec3<bool>, 4>();
    var var_5 = Struct_2(func_4(Struct_4(func_3(var_2, Struct_2(Struct_1(var_1.a, vec2<u32>(var_3.a.a.x, var_3.a.a.x), vec2<u32>(4294967295u, 41800u)), -1000f, true))), _wgslsmith_div_f32(global4.x, -233f), -182f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-208f)))), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1310f)), !func_4(func_2(global4.x, vec3<f32>(var_0.x, var_0.x, global4.x)), _wgslsmith_f_op_f32(271f * _wgslsmith_f_op_f32(select(global4.x, global3.x, var_1.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(f32(-1f) * -421f), true))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_u32(var_5.a.b.x, ~var_2.a.a.x)), vec3<i32>(-_wgslsmith_mult_i32(-1581i, _wgslsmith_dot_vec4_i32(vec4<i32>(256i, 1i, u_input.a.x, -33697i), vec4<i32>(2147483647i, -1i, 2147483647i, 1i))), _wgslsmith_mod_i32(-27315i, global0.x), global0.x), vec2<u32>(func_3(func_2(var_5.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_5.b, 221f, -1000f)))), Struct_2(func_5(vec3<f32>(global4.x, 130f, var_0.x), var_1, var_1, 51217u), -551f, var_1.a.x)).a.x, _wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(var_3.a.a.yzw, var_2.a.a.xzz), vec3<u32>(var_1.b.x, 4294967295u, 60544u)), ~var_3.a.a.wwy)));
}


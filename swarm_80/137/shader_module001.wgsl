struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(50307i, 64254i, 9614i), vec3<i32>(-56779i, -17515i, 0i), vec3<i32>(1i, -1i, 1i), vec3<i32>(18373i, 0i, 2147483647i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-5369i, 2147483647i, 2147483647i), vec3<i32>(1i, 21228i, -46057i), vec3<i32>(11699i, 1i, 0i), vec3<i32>(4460i, -10914i, 19243i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(i32(-2147483648), 5063i, 6056i), vec3<i32>(-36896i, 50407i, i32(-2147483648)), vec3<i32>(-21282i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 20211i), vec3<i32>(-61779i, 1i, 14187i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(14536i, 74359i, -26024i), vec3<i32>(2147483647i, 41096i, 0i), vec3<i32>(739i, 2147483647i, -35610i), vec3<i32>(-348i, -1i, 17088i), vec3<i32>(0i, -63150i, i32(-2147483648)), vec3<i32>(0i, -20975i, 0i), vec3<i32>(1i, 59287i, 2147483647i), vec3<i32>(2147483647i, 0i, -5581i), vec3<i32>(-46952i, -56272i, 14417i));

var<private> global2: Struct_5;

var<private> global3: array<bool, 6>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = 453u;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, ~reverseBits(_wgslsmith_mod_u32(u_input.b, u_input.b)), ~abs(83573u)), 25u)];
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2() -> Struct_5 {
    let var_0 = -vec4<i32>(max(39685i, 2147483647i), 1i, ~(~(~(-2147483647i))), -(i32(-1i) * -1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.b, -927f, global2.a.b, -812f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, -1482f, global2.a.b, global2.a.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b, 1000f, -910f, global2.a.b) * vec4<f32>(-259f, global2.a.b, -1303f, global2.a.b)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a.b, 312f, global2.a.b, global2.a.b), vec4<f32>(-179f, -1667f, global2.a.b, global2.a.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, global2.a.b, global2.a.b, global2.a.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b, -667f, global2.a.b, global2.a.b) + vec4<f32>(global2.a.b, global2.a.b, -823f, -1000f))))));
    var_1 = vec4<f32>(var_1.x, global2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -771f)), 954f);
    return Struct_5(Struct_1(false, _wgslsmith_f_op_f32(func_3())));
}

fn func_4(arg_0: Struct_5) -> bool {
    global2 = Struct_5(Struct_1(!global3[_wgslsmith_index_u32(52875u, 6u)], 1583f));
    return true & arg_0.a.a;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_3 {
    global1 = array<vec3<i32>, 25>();
    global2 = Struct_5(global2.a);
    global3 = array<bool, 6>();
    let var_0 = func_2();
    global3 = array<bool, 6>();
    return Struct_3(~arg_3.x);
}

fn func_1() -> bool {
    var var_0 = func_5(~(~vec2<u32>(min(35432u, 68186u), abs(0u))), vec2<u32>(select(u_input.b, 1u, any(vec2<bool>(global2.a.a, true))), 21203u | u_input.a), vec3<bool>(func_4(func_2()), any(!vec3<bool>(global3[_wgslsmith_index_u32(29282u, 6u)], false, global2.a.a)), any(vec3<bool>(true, true, true))), ~(-vec2<i32>(1i, 1i)));
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a.b * -455f))), 667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f - global2.a.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1806f, global2.a.b, -155f) - vec3<f32>(global2.a.b, global2.a.b, -1000f)) - vec3<f32>(global2.a.b, -1048f, -120f))))));
    global3 = array<bool, 6>();
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.a, 2147483647i, -52461i, var_0.a) & vec4<i32>(0i, 3884i, -1i, 0i)), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, -51619i, -2147483647i, var_0.a), vec4<i32>(var_0.a, var_0.a, var_0.a, -1i)), vec4<i32>(-1i) * -vec4<i32>(-52027i, var_0.a, var_0.a, 0i))));
    return !(false && any(vec2<bool>(all(vec4<bool>(global2.a.a, global2.a.a, global2.a.a, global3[_wgslsmith_index_u32(20123u, 6u)])), global2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(u_input.a | 4294967295u, _wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(0u, 4294967295u, 16636u, 0u)), ~vec4<u32>(u_input.a, 1u, u_input.a, 16987u)), 28808u);
    let var_1 = vec4<bool>(global2.a.a, true, select(func_1(), func_4(Struct_5(func_2().a)), true), global2.a.b <= _wgslsmith_f_op_f32(round(462f)));
    global1 = array<vec3<i32>, 25>();
    global1 = array<vec3<i32>, 25>();
    var var_2 = _wgslsmith_add_i32(countOneBits(-25229i), _wgslsmith_add_i32(-22629i, _wgslsmith_mod_i32(24991i, _wgslsmith_add_i32(func_5(vec2<u32>(u_input.b, var_0.x), var_0.wy, var_1.yzw, vec2<i32>(0i, 1i)).a, -69140i))));
    var var_3 = Struct_4(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_clamp_vec2_i32(max(vec2<i32>(1i, 1i), -max(vec2<i32>(-23441i, 0i), vec2<i32>(2147483647i, 0i))), _wgslsmith_div_vec2_i32(countOneBits(select(vec2<i32>(1i, -32700i), vec2<i32>(1i, 0i), global3[_wgslsmith_index_u32(15087u, 6u)])), reverseBits(~vec2<i32>(25423i, 23954i))), -vec2<i32>(i32(-1i) * -14329i, ~(-2147483647i))), func_4(func_2()), _wgslsmith_clamp_vec3_u32(~var_0.wzy, min(vec3<u32>(0u, ~var_0.x, countOneBits(0u)), vec3<u32>(4294967295u, firstLeadingBit(u_input.b), u_input.b)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), 1u), 1u, 4294967295u)));
    let var_4 = _wgslsmith_sub_vec4_i32(max(_wgslsmith_sub_vec4_i32(select(min(vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x), vec4<i32>(0i, var_3.b.x, var_3.b.x, 3762i)), -vec4<i32>(-36389i, var_3.b.x, 2147483647i, 71154i), global2.a.a), (vec4<i32>(var_3.b.x, -2147483647i, -5978i, 1i) ^ vec4<i32>(-17883i, -2147483647i, -1i, var_3.b.x)) >> (abs(vec4<u32>(0u, var_0.x, var_3.d.x, u_input.b)) % vec4<u32>(32u))), abs(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, -2147483647i), vec4<i32>(0i, -47523i, var_3.b.x, 4742i)), vec4<i32>(0i, 1i, 1i, -13354i) << (vec4<u32>(0u, u_input.a, var_0.x, 89897u) % vec4<u32>(32u))))), -countOneBits(vec4<i32>(~(-37156i), 1i, var_3.b.x, firstTrailingBit(var_3.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.b, -641f, _wgslsmith_f_op_f32(var_3.a.b + _wgslsmith_f_op_f32(global2.a.b * 823f)), -138f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b * 870f)))));
}


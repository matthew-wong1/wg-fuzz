struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(80950u, 35502u, 0u, 0u), vec2<f32>(-840f, 1839f), vec4<i32>(-19182i, 17745i, -13481i, i32(-2147483648)), 953f, vec3<u32>(1u, 1u, 0u)), Struct_1(vec4<u32>(0u, 7271u, 0u, 44892u), vec2<f32>(1493f, 1000f), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 2147483647i), -1582f, vec3<u32>(1u, 22683u, 51489u)), Struct_1(vec4<u32>(6549u, 13018u, 3958u, 1u), vec2<f32>(-971f, 1291f), vec4<i32>(-32217i, 5631i, 2147483647i, 14355i), 1000f, vec3<u32>(45709u, 4488u, 41547u)), Struct_1(vec4<u32>(1u, 60813u, 4294967295u, 77768u), vec2<f32>(-1327f, 1287f), vec4<i32>(1905i, -45340i, -3938i, 24871i), -451f, vec3<u32>(32081u, 6554u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 1u, 19704u), vec2<f32>(235f, -784f), vec4<i32>(-85351i, -1i, 1i, 1i), 1000f, vec3<u32>(0u, 54u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 56580u), vec2<f32>(612f, 1856f), vec4<i32>(i32(-2147483648), 29904i, 2147483647i, 4904i), 371f, vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec4<u32>(62649u, 1u, 0u, 4294967295u), vec2<f32>(1087f, -1000f), vec4<i32>(i32(-2147483648), 0i, -1i, -50385i), 163f, vec3<u32>(48864u, 0u, 0u)), Struct_1(vec4<u32>(37566u, 30074u, 63707u, 0u), vec2<f32>(-1102f, -239f), vec4<i32>(-1i, 12899i, 0i, -5147i), -1651f, vec3<u32>(0u, 0u, 4630u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 7557u), vec2<f32>(-1040f, -1242f), vec4<i32>(-1i, 2147483647i, -22608i, i32(-2147483648)), -457f, vec3<u32>(24353u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 32885u, 29585u, 1u), vec2<f32>(232f, -155f), vec4<i32>(32389i, 18946i, 5762i, 1i), -471f, vec3<u32>(46322u, 1u, 53082u)), Struct_1(vec4<u32>(1u, 4294967295u, 43092u, 1u), vec2<f32>(-405f, 847f), vec4<i32>(-32988i, 2147483647i, -2900i, 24602i), 946f, vec3<u32>(56398u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 108411u, 8095u, 5587u), vec2<f32>(1150f, -1000f), vec4<i32>(26895i, 21326i, -1i, 1i), 214f, vec3<u32>(0u, 32100u, 32040u)), Struct_1(vec4<u32>(21137u, 26488u, 3629u, 15402u), vec2<f32>(-929f, 420f), vec4<i32>(0i, -33133i, 2147483647i, 23138i), -1229f, vec3<u32>(1u, 20578u, 1u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec2<f32>(851f, 122f), vec4<i32>(-1i, i32(-2147483648), -6143i, i32(-2147483648)), 436f, vec3<u32>(82492u, 45617u, 30409u)), Struct_1(vec4<u32>(0u, 5607u, 90099u, 13595u), vec2<f32>(-519f, 269f), vec4<i32>(-42470i, 2147483647i, 1i, -10747i), -331f, vec3<u32>(0u, 7207u, 1u)), Struct_1(vec4<u32>(0u, 1u, 1u, 0u), vec2<f32>(-359f, -2383f), vec4<i32>(-1i, -17846i, 1i, 27712i), 1321f, vec3<u32>(15569u, 66367u, 53952u)), Struct_1(vec4<u32>(7108u, 0u, 0u, 1u), vec2<f32>(1631f, 1000f), vec4<i32>(-24043i, 42926i, -61804i, -1i), -541f, vec3<u32>(30524u, 29313u, 9594u)), Struct_1(vec4<u32>(22630u, 2787u, 1u, 31397u), vec2<f32>(314f, -956f), vec4<i32>(9944i, 9486i, 46594i, i32(-2147483648)), -371f, vec3<u32>(11307u, 68413u, 4294967295u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = arg_0;
    let var_1 = arg_1;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -1706f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(321f, var_0.b.x)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1438f, _wgslsmith_div_f32(1551f, 653f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2098f, 550f), var_0.d)))));
    return ~(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, var_0.c.x, 0i), firstLeadingBit(vec3<i32>(var_0.c.x, 3928i, -5538i))), -_wgslsmith_add_i32(0i, arg_2.c.x)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    let var_0 = vec3<bool>(arg_2, any(vec2<bool>(select(all(vec4<bool>(false, arg_2, true, arg_2)), true, false), true)), arg_2);
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_1 = global0[_wgslsmith_index_u32(~abs(30084u), 18u)];
    global0 = array<Struct_1, 18>();
    return var_1.b.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(_wgslsmith_f_op_f32(arg_0.d - 366f) >= arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(func_3(select(func_2(arg_0, 133f >= arg_0.b.x, Struct_1(vec4<u32>(arg_0.e.x, arg_0.e.x, 4294967295u, arg_0.a.x) | vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec2<f32>(arg_0.d, -1402f), arg_0.c & vec4<i32>(11431i, -4652i, -1i, u_input.a), arg_0.b.x, arg_0.a.xyw), ~arg_0.c.x), 1i, !var_0), select(firstLeadingBit(abs(~1i)), _wgslsmith_mult_i32(~min(u_input.a, u_input.a), ~(~43379i)), var_0), var_0, vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(arg_0.a.x), ~4954u), 7887u, _wgslsmith_add_u32(arg_0.a.x, 0u), 1u)));
    var var_2 = u_input.a & arg_0.c.x;
    global0 = array<Struct_1, 18>();
    var_2 = 0i;
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_div_f32(var_1, -718f))), ~(~select(arg_0.c, vec4<i32>(2147483647i, arg_0.c.x, -1i, 1i), vec4<bool>(true, true, var_0, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_1) - _wgslsmith_f_op_f32(min(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * -1059f), _wgslsmith_f_op_f32(func_3(-2147483647i, 1i, true, arg_0.a)))))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(abs(vec3<u32>(arg_0.e.x, 0u, arg_0.a.x))), arg_0.a.yww), arg_0.a.zwz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(~(~4294967295u), 18u)]);
    let var_1 = ~(~(~var_0.a) >> (_wgslsmith_add_vec4_u32(var_0.a, ~var_0.a) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_0.e.x, var_0.a.x), vec2<u32>(60623u, 81095u)), ~var_0.a.zw), 56110u, var_0.a.x, _wgslsmith_sub_u32(~var_0.e.x, _wgslsmith_sub_u32(var_0.e.x, 0u))), var_0.a);
    global0 = array<Struct_1, 18>();
    var var_2 = ~(~(~(~vec2<u32>(4294967295u, 48090u))));
    global0 = array<Struct_1, 18>();
    let var_3 = vec3<f32>(func_1(Struct_1(~var_1 << (~var_0.a % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), 1632f), max(max(var_0.c, var_0.c), var_0.c), var_0.d, ~var_1.xxz >> (_wgslsmith_mult_vec3_u32(vec3<u32>(44015u, 4294967295u, var_0.e.x), var_0.e) % vec3<u32>(32u)))).d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(91021u, var_0.a.x, 2322u, 12712u), var_0.b, vec4<i32>(-45456i, 0i, -36821i, -5105i), -422f, vec3<u32>(var_1.x, var_0.a.x, var_1.x))).b.x * -283f)))), _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x));
    let var_4 = vec3<u32>(min(abs(reverseBits(var_2.x) << (~var_0.e.x % 32u)), var_0.e.x), 0u, 1u);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))))), vec4<i32>(~var_0.c.x, ~_wgslsmith_div_i32(-var_0.c.x, ~u_input.a), min(u_input.a, u_input.a), u_input.a), _wgslsmith_f_op_f32(-483f + 297f), _wgslsmith_sub_vec3_u32(var_0.a.zwz, vec3<u32>(46270u, 52760u, 0u) ^ vec3<u32>(8730u, var_4.x, 4294967295u)) << (vec3<u32>(~(~var_2.x), firstTrailingBit(1u | var_2.x), 0u) % vec3<u32>(32u)));
    var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_0.e.x), var_0.a.xz), vec2<u32>(firstLeadingBit(19444u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, select(firstLeadingBit(var_0.c.xy), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(11033i, -2147483647i), var_0.c.xx) ^ (var_0.c.yz & vec2<i32>(u_input.a, -14147i)), vec2<i32>(-1i) * -vec2<i32>(-1i, -30174i)), true));
}


struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<f32>(-113f, 1387f, -923f, 122f), -1i), Struct_1(vec4<f32>(969f, 434f, 894f, -497f), i32(-2147483648)), Struct_1(vec4<f32>(-1000f, -1192f, 236f, -1557f), i32(-2147483648)), Struct_1(vec4<f32>(591f, -329f, -420f, -1252f), -49582i), Struct_1(vec4<f32>(-773f, -166f, 1237f, 1333f), 4993i), Struct_1(vec4<f32>(-658f, 501f, 119f, 389f), 0i), Struct_1(vec4<f32>(506f, -1842f, -379f, 1080f), -27247i), Struct_1(vec4<f32>(139f, 834f, 877f, -1149f), -22929i), Struct_1(vec4<f32>(908f, 1000f, 567f, -740f), 35928i), Struct_1(vec4<f32>(-1101f, 517f, 283f, -1606f), i32(-2147483648)), Struct_1(vec4<f32>(-1000f, -1307f, 795f, -1107f), -1i));

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 3350u, 0u), vec3<u32>(24970u, 1u, 0u), vec3<u32>(0u, 1u, 38496u), vec3<u32>(4294967295u, 64288u, 0u), vec3<u32>(4294967295u, 77457u, 81783u), vec3<u32>(1u, 4294967295u, 73096u), vec3<u32>(12372u, 28172u, 7688u), vec3<u32>(28252u, 1u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 20210u, 0u), vec3<u32>(4845u, 11600u, 38217u), vec3<u32>(1u, 18823u, 38572u), vec3<u32>(0u, 4294967295u, 43364u));

var<private> global3: array<i32, 29>;

var<private> global4: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))) || false;
    global3 = array<i32, 29>();
    global2 = array<vec3<u32>, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.a.wzx)));
    let var_2 = 129f;
    return 39065u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, 771f, arg_0.a.x, 2182f), global4.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.a.x, global4.a.x, 1244f, 1000f)), arg_0.a, any(vec3<bool>(false, false, true))))));
    var var_1 = 32312u;
    var_1 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(92202u, ~u_input.a.x, 57291u), ~vec3<u32>(u_input.a.x, ~u_input.a.x, func_3(var_0.ww, u_input.a.x)), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(4294967295u, u_input.a.x, true), 4294967295u & u_input.a.x, min(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(65427u, u_input.a.x, u_input.a.x), max(vec3<u32>(0u, u_input.a.x, 11437u), global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_add_vec3_u32(vec3<u32>(72827u, 32529u, u_input.a.x), firstLeadingBit(vec3<u32>(1u, 1u, u_input.a.x))))));
    let var_2 = 1533u;
    var var_3 = Struct_1(global0.a, arg_0.b);
    return global1[_wgslsmith_index_u32(u_input.a.x, 11u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<f32>) -> vec4<f32> {
    global1 = array<Struct_1, 11>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_vec3_i32(firstTrailingBit(-(_wgslsmith_sub_vec3_i32(vec3<i32>(-20603i, global0.b, -2147483647i), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], 2847i, -1i)) | ~vec3<i32>(-37875i, -2147483647i, -2147483647i))), vec3<i32>((arg_2 << (~u_input.a.x % 32u)) << (var_0 % 32u), 1i ^ -u_input.c, global3[_wgslsmith_index_u32(var_0, 29u)]));
    global4 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-192f * -1000f), _wgslsmith_f_op_f32(-arg_0.a.x), arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -347f))), ~_wgslsmith_dot_vec2_i32(u_input.b, reverseBits(u_input.b))));
    let var_2 = ~u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(-arg_0.a);
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(func_2(global1[_wgslsmith_index_u32(78013u, 11u)]), select(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global3[_wgslsmith_index_u32(arg_0, 29u)], 1i) >> (u_input.a % vec2<u32>(32u))), vec2<bool>(false, false)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.b, 13472i, -2147483647i), vec3<i32>(global0.b, global3[_wgslsmith_index_u32(26095u, 29u)], -30706i), vec3<bool>(true, true, true)) | (vec3<i32>(-8824i, global4.b, 0i) & vec3<i32>(-58634i, global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 0i)), ~countOneBits(vec3<i32>(-2147483647i, 7086i, global3[_wgslsmith_index_u32(arg_0, 29u)]))), global0.a.xyy)), u_input.b.x << (abs(102450u) % 32u));
    var var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 59952u != select(15440u, 4294967295u, true)), vec3<bool>(false, select(any(vec2<bool>(true, false)), u_input.a.x == u_input.a.x, true) & (_wgslsmith_f_op_f32(max(-228f, 505f)) == _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), false && (true || any(vec4<bool>(false, true, false, false)))), vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 29u)] < (global3[_wgslsmith_index_u32(~4294967295u, 29u)] | firstLeadingBit(-2147483647i))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(~reverseBits(4294967295u), _wgslsmith_mult_u32(~17257u, _wgslsmith_dot_vec4_u32(vec4<u32>(12418u, u_input.a.x, arg_0, 4294967295u), vec4<u32>(38603u, 0u, arg_0, arg_0)))) >> (func_3(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(step(337f, global4.a.x))), ~(~arg_0)) % 32u)), 11u)];
    let var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, global3[_wgslsmith_index_u32(min(4294967295u, ~u_input.a.x), 29u)]), _wgslsmith_clamp_i32(-16264i, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.c, -59736i, global4.b, -1i)), -(~vec4<i32>(30254i, -39227i, global4.b, global4.b))), _wgslsmith_sub_i32(-(~global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), -global4.b)));
    global1 = array<Struct_1, 11>();
    return -_wgslsmith_add_vec3_i32(~(-vec3<i32>(-1i, global0.b, -1i)), vec3<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-62033i, -31217i), u_input.b)), -9972i, _wgslsmith_mult_i32(-2147483647i, -global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(101963u, 11u)];
    global4 = global1[_wgslsmith_index_u32((~u_input.a.x | firstLeadingBit(35658u)) ^ u_input.a.x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(max(-vec3<i32>(0i, 2147483647i, u_input.c), func_1(4294967295u)) ^ _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, global3[_wgslsmith_index_u32(59322u, 29u)], -3692i), _wgslsmith_add_vec3_i32(vec3<i32>(global4.b, -1i, -1i), vec3<i32>(var_0.b, 0i, -1i)), abs(vec3<i32>(0i, 1i, 5538i)))), u_input.a.x);
}


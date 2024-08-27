struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 65631u, 4294967295u, 13934u, 1u, 2906u, 4294967295u, 23645u, 0u, 22776u, 1u, 24218u, 8965u);

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false));

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -59207i, -20592i, -18476i);

var<private> global3: array<u32, 10> = array<u32, 10>(4294967295u, 14473u, 4294967295u, 43172u, 4294967295u, 6023u, 0u, 0u, 29856u, 96882u);

var<private> global4: vec3<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(global2.x, global2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-374f, 900f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(652f, -1407f, -601f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, -390f, -108f)))))))));
    global3 = array<u32, 10>();
    let var_2 = ~(~global0[_wgslsmith_index_u32(global4.x, 13u)]);
    global3 = array<u32, 10>();
    return Struct_3(u_input.c.x);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    global4 = u_input.a;
    var var_0 = arg_2.x;
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global4.x, global0[_wgslsmith_index_u32(1u, 13u)]), 54145u, 238u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 10u)], 10u)]), vec4<u32>(_wgslsmith_clamp_u32(62627u, global0[_wgslsmith_index_u32(arg_1.x, 13u)], u_input.a.x), ~global4.x, 32407u, 71230u)));
    var var_2 = Struct_2(Struct_1(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global4.x, _wgslsmith_dot_vec4_u32(var_1, var_1), _wgslsmith_dot_vec2_u32(var_1.yy, global4.yz))));
    global1 = array<vec4<bool>, 4>();
    return ~_wgslsmith_sub_i32(0i, global2.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_5 {
    global1 = array<vec4<bool>, 4>();
    let var_0 = !(!(true & (select(false, false, true) | false)));
    let var_1 = arg_1.a;
    global0 = array<u32, 13>();
    global1 = array<vec4<bool>, 4>();
    return Struct_5(Struct_4(u_input.c.zy, global4.x));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_5) -> vec4<i32> {
    var var_0 = u_input.c;
    var_0 = ~vec3<i32>(abs(1i), 1i, 1i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 10u)], 1082u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global4.x, 13u)], global0[_wgslsmith_index_u32(arg_2.a.b, 13u)]), abs(vec4<u32>(global0[_wgslsmith_index_u32(75920u, 13u)], u_input.b, 0u, 45889u))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(851f, -420f) - vec2<f32>(967f, 1787f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1508f))))))) - vec2<f32>(175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f))));
    let var_3 = var_1;
    return select(vec4<i32>(u_input.c.x, max(-global2.x >> ((arg_2.a.b & 9906u) % 32u), i32(-1i) * -arg_2.a.a.x), _wgslsmith_add_i32(var_0.x, reverseBits(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 47449i, global2.x), vec4<i32>(-2147483647i, u_input.c.x, 20592i, -2147483647i)), ~(-1608i)), vec4<i32>(global2.x, -17175i, arg_2.a.a.x, 2147483647i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.a.x, u_input.d, global3[_wgslsmith_index_u32(arg_2.a.b, 10u)], 75227u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.d, 10u)], arg_2.a.b, arg_2.a.b, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, 62950i, 8805i, var_0.x), vec4<i32>(u_input.c.x, 30693i, 18127i, -1i), false), -vec4<i32>(-58318i, arg_2.a.a.x, arg_2.a.a.x, 0i)), ~(-vec4<i32>(arg_2.a.a.x, 0i, var_0.x, var_0.x))) >> (var_3.a.a % vec4<u32>(32u)), !(!select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(false, true, false, false), true)));
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, global2.x << (global3[_wgslsmith_index_u32(global4.x, 10u)] % 32u), 1i), ~(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -52748i, u_input.c.x, u_input.c.x), vec4<i32>(global2.x, global2.x, -1i, -2147483647i)) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x, 1u, u_input.b) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_i32(func_5(1u >= ~u_input.d, true, func_4(func_2(true), Struct_2(Struct_1(vec4<u32>(90909u, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(35919u, 13u)], global3[_wgslsmith_index_u32(global4.x, 10u)]))), func_3(vec2<f32>(-1849f, 1458f), global4.yy, vec3<i32>(21324i, global2.x, -22140i)))), vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(-1i, -44559i), global2.x, select(_wgslsmith_mult_i32(-1i, 11822i), ~(-2147483647i), true)));
    var var_0 = Struct_2(Struct_1(vec4<u32>(u_input.a.x, 1u, 1759u, reverseBits(global3[_wgslsmith_index_u32(4294967295u, 10u)] >> (u_input.b % 32u)))));
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~8214u), 30780u), global4.zz);
    var var_2 = 15221u;
    global1 = array<vec4<bool>, 4>();
    return Struct_2(var_0.a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = -1654f;
    global3 = array<u32, 10>();
    let var_1 = arg_0;
    let var_2 = arg_2.x;
    global2 = vec4<i32>(u_input.c.x, arg_1.a, ~arg_1.a, -1i);
    return Struct_4(vec2<i32>(global2.x, global2.x), _wgslsmith_mult_u32(4294967295u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_6(func_1(), func_2(true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(true, true, false))), true)));
    let var_1 = var_0.a;
    var var_2 = Struct_4(_wgslsmith_add_vec2_i32(-vec2<i32>(~var_0.a.a.x, max(global2.x, 27349i)), global2.xw), global0[_wgslsmith_index_u32(global4.x, 13u)]);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -2138f)) + 631f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-520f, 846f) - _wgslsmith_f_op_f32(f32(-1f) * -114f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(478f)) - 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2321f), -378f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2120f, _wgslsmith_f_op_f32(-1277f + 531f), any(vec3<bool>(false, true, false))))))));
    var var_4 = Struct_5(func_6(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(25615u, var_2.b, var_1.b, var_1.b), vec4<u32>(1u, 1u, global4.x, 1u)))), Struct_3(1i), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)));
    var var_5 = abs(max(_wgslsmith_add_vec3_i32(u_input.c, abs(countOneBits(vec3<i32>(var_4.a.a.x, var_4.a.a.x, 2147483647i)))), vec3<i32>(_wgslsmith_sub_i32(var_1.a.x ^ 0i, ~(-36271i)), -func_2(false).a, ~1381i)));
    let var_6 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, 33684i, vec3<i32>(-77083i, var_4.a.a.x, global2.x) >> (var_6.a.zxy % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1863f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_3.x)))), _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1627f, 1019f, -417f, var_3.x), vec4<f32>(var_3.x, var_3.x, var_3.x, 674f))))))), vec4<i32>(_wgslsmith_sub_i32(var_2.a.x, -22330i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-7776i, var_5.x), u_input.c.x) & -2147483647i, var_1.a.x, _wgslsmith_add_i32(abs(global2.x), ~2147483647i) << (0u % 32u)));
}


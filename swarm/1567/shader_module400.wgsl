struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 29> = array<i32, 29>(-19598i, -1i, -5522i, 17225i, 2147483647i, 18131i, i32(-2147483648), i32(-2147483648), 3586i, 1i, -1i, 1i, 19943i, 81413i, i32(-2147483648), 28176i, -1i, 1i, -5135i, 8463i, -1i, -34544i, i32(-2147483648), -22979i, -1273i, -40683i, 1480i, i32(-2147483648), -19977i);

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, 1i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    var var_0 = arg_1.yz;
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1370f)), _wgslsmith_f_op_f32(f32(-1f) * -1524f))), _wgslsmith_f_op_f32(-1153f * _wgslsmith_f_op_f32(-1000f - -1766f)), -349f)));
    var_0 = arg_1.zy;
    global0 = u_input.b;
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a.xw, _wgslsmith_div_vec2_u32(~(~u_input.a.ww), vec2<u32>(~18466u, ~u_input.b))) ^ u_input.a.wx;
    global1 = array<i32, 29>();
    let var_1 = Struct_4(var_0.x <= 14775u, !(u_input.c > 0i), ~u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~74015u, u_input.a.x, 36165u), u_input.a), u_input.b, var_0.x, ~_wgslsmith_mult_u32(firstTrailingBit(u_input.b), _wgslsmith_div_u32(7132u, 63804u))), true);
    let var_2 = Struct_2(vec4<i32>(-2147483647i & _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, 62455i, global1[_wgslsmith_index_u32(0u, 29u)], -1i), vec4<i32>(u_input.c, 74870i, -36963i, global1[_wgslsmith_index_u32(0u, 29u)]), var_1.a), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(66502u, 29u)], u_input.c, -9111i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-29684i << (u_input.a.x % 32u), -73352i), _wgslsmith_add_i32(-u_input.c, u_input.c)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -32303i, -3123i), vec3<i32>(35588i, 22115i, global1[_wgslsmith_index_u32(var_0.x, 29u)])), countOneBits(vec3<i32>(global2.x, global2.x, global2.x))), -(~(-39678i))), ~(-1i)), Struct_1(vec4<bool>(var_1.b, true, !(!var_1.a), var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(1403f, _wgslsmith_f_op_f32(max(1805f, 2534f)), -614f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-939f, 504f, -1178f) * vec3<f32>(-861f, 321f, 197f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1936f, 477f, -739f), vec3<f32>(-838f, -570f, -1000f)))), 606f), select(!(!(!vec3<bool>(true, false, var_1.a))), vec3<bool>(!all(vec3<bool>(true, false, var_1.b)), var_1.b, false), false));
    global1 = array<i32, 29>();
    return vec4<bool>(any(select(var_2.b.a.xyw, var_2.c, var_2.c)), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b, 29u)], 0i >> (~var_0.x % 32u)) == ~(i32(-1i) * -u_input.c), var_2.c.x, true);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> vec3<f32> {
    global1 = array<i32, 29>();
    global0 = arg_2.x;
    let var_0 = -1i;
    global2 = reverseBits(vec3<i32>(-34395i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(global2.x, -5699i), global2.x, -73503i), _wgslsmith_clamp_i32(countOneBits(countOneBits(u_input.c)), min(var_0, 10576i) ^ 0i, global2.x)));
    let var_1 = vec4<i32>(countOneBits(max(~(~(-20097i)), -2147483647i)), -18646i, ~firstTrailingBit(abs(-1i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.c, 1i, -28669i, 0i)), select(vec4<i32>(-22993i, 1946i, global2.x, global1[_wgslsmith_index_u32(0u, 29u)]), min(vec4<i32>(-29323i, -1i, u_input.c, u_input.c), vec4<i32>(var_0, 90511i, -16890i, global1[_wgslsmith_index_u32(arg_3, 29u)])), func_3())), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0, -1i ^ u_input.c), 1i)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-537f, arg_0, arg_0) - vec3<f32>(171f, arg_0, -1037f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 611f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 968f) - vec3<f32>(arg_0, 937f, -576f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, -580f, 1840f)))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1104f, 392f)), vec3<f32>(arg_0, arg_0, 1151f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-824f, -1597f), arg_0), 1130f, -882f)), vec3<bool>(false, true, any(vec2<bool>(true, true)) && true)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    return Struct_2(~countOneBits(var_0.a), Struct_1(!(!arg_2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_3.b.b)) * var_0.b.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_f32(238f, -2065f), 3539u << (u_input.b % 32u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 16218u), _wgslsmith_mod_u32(u_input.a.x, 20233u))).x))), vec3<bool>(arg_3.b.a.x, !any(arg_0.c), !func_3().x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_dot_vec2_u32(~u_input.a.wx, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(41765u, u_input.b))) == u_input.a.x) | all(vec3<bool>(all(vec2<bool>(true, true)), true, true));
    let var_1 = ~u_input.a;
    global1 = array<i32, 29>();
    let var_2 = func_4(Struct_2(vec4<i32>(~(~(-1i)), firstTrailingBit(u_input.c), global1[_wgslsmith_index_u32(~countOneBits(54728u), 29u)], _wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(global2.x, u_input.c))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(func_1(-1i, vec4<bool>(false, false, true, false), false)), var_1.x, vec4<u32>(29030u, u_input.a.x, var_1.x, u_input.b), 1u)), _wgslsmith_f_op_f32(-195f - _wgslsmith_f_op_f32(max(-206f, -409f)))), vec3<bool>(true, true, ~u_input.a.x > ~u_input.a.x)), _wgslsmith_mod_u32(~(~u_input.b), var_1.x) >= u_input.a.x, Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true && all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(287f, 1504f, -981f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-557f, -442f, 124f) + vec3<f32>(927f, 958f, -363f)), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), Struct_2(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 0i, global2.x, 0i), vec4<i32>(u_input.c, -24872i, global1[_wgslsmith_index_u32(26884u, 29u)], u_input.c), vec4<i32>(global2.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], 68064i, -1i))), Struct_1(vec4<bool>(true, false, true, any(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1270f, -211f, -1015f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<bool>(true, true, true)));
    let var_3 = func_4(Struct_2(_wgslsmith_mod_vec4_i32(var_2.a, _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(76999u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)], u_input.c, 1i), _wgslsmith_sub_vec4_i32(var_2.a, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.c, global1[_wgslsmith_index_u32(var_1.x, 29u)], 1i)))), Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(ceil(var_2.b.b)), var_2.b.b.x), func_4(Struct_2(func_4(Struct_2(var_2.a, var_2.b, var_2.b.a.yzz), true, var_2.b, var_2).a, Struct_1(var_2.b.a, vec3<f32>(var_2.b.c, var_2.b.c, var_2.b.c), var_2.b.c), select(var_2.c, var_2.c, var_2.c)), !(false | var_2.c.x), var_2.b, Struct_2(max(var_2.a, var_2.a), func_4(Struct_2(var_2.a, Struct_1(vec4<bool>(true, var_2.b.a.x, var_2.b.a.x, false), var_2.b.b, -335f), vec3<bool>(var_2.c.x, false, true)), var_2.c.x, var_2.b, Struct_2(vec4<i32>(-1i, global2.x, global2.x, -46717i), var_2.b, vec3<bool>(true, var_2.b.a.x, false))).b, !var_2.b.a.yxz)).c), all(vec4<bool>(true, true, var_2.c.x & all(vec3<bool>(var_2.c.x, true, true)), true)), func_4(Struct_2(abs(vec4<i32>(var_2.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global2.x, var_2.a.x) << (var_1 % vec4<u32>(32u))), var_2.b, !var_2.c), !var_2.c.x, Struct_1(!vec4<bool>(var_2.c.x, var_2.b.a.x, var_2.b.a.x, var_2.c.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2761f, var_2.b.b.x, var_2.b.c), var_2.b.b)), -2215f), var_2).b, var_2).c.yz;
    global2 = var_2.a.xxx;
    var var_4 = Struct_3(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], 18551i, global2.x, u_input.c)), firstLeadingBit(reverseBits(var_2.a))));
    var_0 = select(var_3.x, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(1264f, -8123i);
}


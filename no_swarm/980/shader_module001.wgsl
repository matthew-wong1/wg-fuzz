struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<i32>(-35206i, 2147483647i, 2147483647i), 1u, vec3<i32>(47294i, -17200i, -29397i)), Struct_1(vec3<i32>(20464i, 27165i, 21686i), 14282u, vec3<i32>(-158i, -13505i, 1i)), Struct_1(vec3<i32>(2147483647i, 40326i, i32(-2147483648)), 0u, vec3<i32>(24530i, -58376i, -60138i)), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)), 1u, vec3<i32>(2147483647i, -17595i, 2147483647i)), Struct_1(vec3<i32>(-1i, 2069i, 1i), 7675u, vec3<i32>(30086i, -77985i, -3770i)), Struct_1(vec3<i32>(2147483647i, -15611i, -1i), 4294967295u, vec3<i32>(1i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(1i, -1i, 1i), 1u, vec3<i32>(1859i, -21327i, 0i)), Struct_1(vec3<i32>(-1i, 2147483647i, -1i), 0u, vec3<i32>(12485i, i32(-2147483648), 35095i)), Struct_1(vec3<i32>(2147483647i, 0i, 1i), 27888u, vec3<i32>(13128i, i32(-2147483648), -35292i)), Struct_1(vec3<i32>(2147483647i, 0i, 2540i), 4146u, vec3<i32>(15241i, -18875i, 33208i)), Struct_1(vec3<i32>(i32(-2147483648), -3861i, 2147483647i), 62151u, vec3<i32>(i32(-2147483648), 64254i, 2147483647i)), Struct_1(vec3<i32>(0i, 2147483647i, 65561i), 0u, vec3<i32>(i32(-2147483648), 0i, 1i)), Struct_1(vec3<i32>(2147483647i, -1i, -1i), 26041u, vec3<i32>(1i, 1i, 1i)), Struct_1(vec3<i32>(789i, -1i, i32(-2147483648)), 18764u, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 25796i, -43951i), 31838u, vec3<i32>(48149i, -1i, 1i)));

var<private> global2: array<u32, 13> = array<u32, 13>(1u, 48783u, 69175u, 1u, 4294967295u, 3275u, 0u, 0u, 16732u, 1u, 0u, 1u, 32513u);

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    global0 = array<Struct_2, 16>();
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(arg_2.a, abs(_wgslsmith_add_vec3_i32(firstLeadingBit(arg_0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.x, -2147483647i, arg_2.a.x), vec3<i32>(arg_2.a.x, arg_0.a.x, arg_0.a.x), vec3<i32>(2147483647i, -7341i, -3300i)))), arg_2.a ^ abs(arg_0.a)), ~firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(109691u, 13u)], 13u)]), arg_2.e)), arg_0.a);
    let var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(u_input.d), 13u)], 16u)];
    let var_2 = select(arg_2.a.zz, countOneBits(vec2<i32>(-1i, _wgslsmith_sub_i32(var_0.a.x, 41334i)) ^ abs(~vec2<i32>(global3.x, var_0.c.x))), _wgslsmith_f_op_f32(arg_2.c * arg_2.c) <= _wgslsmith_div_f32(-815f, 947f));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_2.c, arg_2.b.x)))), _wgslsmith_f_op_f32(select(1000f, 1331f, arg_2.b.x)))) * _wgslsmith_f_op_f32(sign(arg_2.c)));
    return select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, 20079u), ~arg_0.e.x), ~min(vec2<u32>(var_0.b, global2[_wgslsmith_index_u32(4294967295u, 13u)]), u_input.b.zx)), 0u, _wgslsmith_sub_u32(var_0.b, 4294967295u)), vec3<u32>(~0u, ~1u, ~u_input.b.x), true);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_1(select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.a) >> (func_3(Struct_3(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec4<bool>(arg_0.x, false, arg_0.x, true), -374f, vec4<u32>(u_input.b.x, 3404u, 4294967295u, global2[_wgslsmith_index_u32(0u, 13u)]), u_input.b.zy), arg_0.x, Struct_3(vec3<i32>(u_input.a, 8836i, 841i), vec4<bool>(arg_0.x, true, arg_0.x, false), -2087f, vec4<u32>(56889u, u_input.b.x, u_input.d, 4294967295u), u_input.b.zx)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c, -11331i, global3.x), max(vec3<i32>(0i, 2428i, global3.x), vec3<i32>(global3.x, 5859i, global3.x)))), vec3<i32>(-_wgslsmith_mod_i32(global3.x, u_input.c), abs(-global3.x), _wgslsmith_div_i32(firstLeadingBit(global3.x), 39155i)), !(arg_0.x && arg_0.x) && (_wgslsmith_f_op_f32(abs(1248f)) <= _wgslsmith_f_op_f32(select(-442f, 639f, arg_0.x)))), ~_wgslsmith_dot_vec2_u32(u_input.b.zz, select(vec2<u32>(11702u, 10436u), vec2<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)]), !arg_0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(global3.x), -18785i, _wgslsmith_add_i32(-45381i ^ u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(23459i, 38206i), vec2<i32>(u_input.c, -1i)))), _wgslsmith_sub_vec3_i32(select(select(vec3<i32>(u_input.a, -13001i, 0i), vec3<i32>(global3.x, u_input.c, -20037i), true), vec3<i32>(global3.x, -1i, 72439i), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(false, false, arg_0.x), vec3<bool>(false, false, arg_0.x))), select(vec3<i32>(global3.x, u_input.c, global3.x), vec3<i32>(u_input.a, 2147483647i, -2147483647i), vec3<bool>(false, arg_0.x, arg_0.x)) ^ vec3<i32>(global3.x, u_input.a, u_input.a))));
    let var_1 = select(!vec4<bool>(any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, true, arg_0.x))), all(select(arg_0, arg_0, arg_0.x)), !arg_0.x == true, _wgslsmith_f_op_f32(1000f * -832f) < _wgslsmith_f_op_f32(sign(1064f))), select(select(!(!vec4<bool>(arg_0.x, false, true, true)), !(!vec4<bool>(false, true, arg_0.x, arg_0.x)), arg_0.x), !(!vec4<bool>(arg_0.x, false, true, arg_0.x)), any(vec4<bool>(false, arg_0.x & false, arg_0.x & arg_0.x, false))), vec4<bool>(arg_0.x, true, true, true));
    var var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.b, ~u_input.d, 4294967295u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b.x), vec2<u32>(global2[_wgslsmith_index_u32(0u, 13u)], u_input.d)), global2[_wgslsmith_index_u32(68256u, 13u)]);
    global1 = array<Struct_1, 15>();
    let var_3 = Struct_2(var_1.xxw);
    return Struct_3(-var_0.c, var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f - -1000f)) - _wgslsmith_f_op_f32(floor(1327f))), _wgslsmith_f_op_f32(f32(-1f) * -504f))), firstLeadingBit(vec4<u32>(var_0.b, ~countOneBits(1812u), u_input.d, 27841u)), ~u_input.b.yz);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    global2 = array<u32, 13>();
    let var_0 = firstTrailingBit(-_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(-58515i, global3.x, arg_2.a.x, arg_2.a.x)), vec4<i32>(u_input.c, abs(arg_2.a.x), u_input.a, -2147483647i)));
    global3 = arg_2.a.zx;
    global1 = array<Struct_1, 15>();
    var var_1 = func_2(vec2<bool>(-global3.x < var_0.x, false));
    return Struct_3(arg_2.a, arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -717f), _wgslsmith_f_op_f32(f32(-1f) * -328f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(553f - 599f), 1322f))) * -152f), min(var_1.d, vec4<u32>(select(u_input.b.x, 1754u, true), ~(~var_1.e.x), ~16489u, _wgslsmith_div_u32(_wgslsmith_div_u32(11353u, 4294967295u), 4294967295u))), ~func_3(Struct_3(~vec3<i32>(u_input.a, var_1.a.x, var_0.x), vec4<bool>(true, arg_0.a.x, var_1.b.x, arg_2.b.x), _wgslsmith_f_op_f32(1000f + var_1.c), ~arg_2.d, ~u_input.b.zz), arg_2.b.x, func_2(vec2<bool>(arg_0.a.x, arg_2.b.x))).yx);
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = func_4(Struct_2(!select(vec3<bool>(false, false, false), !vec3<bool>(arg_0, arg_0, false), !arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1535f, -701f, -223f, -1010f)))))), func_2(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1577f - -802f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, var_0.c)) + _wgslsmith_f_op_f32(var_0.c * var_0.c))))), vec4<f32>(1f, _wgslsmith_f_op_f32(min(-1845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.c, -1572f), _wgslsmith_f_op_f32(-var_0.c), var_0.b.x && arg_0)) + _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * var_0.c) - 1941f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -2250f, var_1.x, var_0.c))))));
    let var_2 = Struct_3(countOneBits(func_4(global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1000f, -709f, var_1.x) + vec4<f32>(var_0.c, 253f, var_1.x, var_1.x)), vec4<f32>(var_0.c, 404f, -559f, var_1.x))), var_0).a), func_4(global0[_wgslsmith_index_u32(~reverseBits(68840u), 16u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -989f), _wgslsmith_f_op_f32(var_0.c + var_1.x), 1248f, _wgslsmith_f_op_f32(1238f - 957f))), var_0).b, var_1.x, abs(max(vec4<u32>(select(4294967295u, 1u, false), ~70019u, _wgslsmith_sub_u32(var_0.e.x, global2[_wgslsmith_index_u32(1u, 13u)]), var_0.d.x), countOneBits(select(vec4<u32>(49014u, 0u, 54545u, 52693u), var_0.d, var_0.b)))), u_input.b.yx);
    let var_3 = Struct_1(_wgslsmith_mult_vec3_i32(abs(abs(var_2.a)), -countOneBits(var_0.a ^ var_0.a)), _wgslsmith_add_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(22540u, 13u)], ~47252u) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.d, vec4<u32>(u_input.b.x, 72190u, var_0.e.x, var_0.e.x)), var_2.d) % 32u), var_0.e.x), ~vec3<i32>(u_input.a, func_2(select(vec2<bool>(false, arg_0), var_2.b.wy, var_0.b.x)).a.x, global3.x));
    return countOneBits(0u);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3.b | (13316u >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(u_input.b.x)), 4294967295u) % 32u));
    var var_1 = Struct_3(~_wgslsmith_div_vec3_i32(~arg_1.c, arg_1.a), !func_2(!arg_2.a.yx).b, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), vec4<u32>(35858u, select(func_2(vec2<bool>(arg_2.a.x, arg_2.a.x)).d.x, _wgslsmith_dot_vec2_u32(max(u_input.b.xx, vec2<u32>(35861u, 0u)), min(vec2<u32>(global2[_wgslsmith_index_u32(arg_3.b, 13u)], 1u), vec2<u32>(4294967295u, arg_3.b))), arg_2.a.x), _wgslsmith_add_u32(0u, 1u), select(firstTrailingBit(9025u & u_input.b.x), 60858u, true)), countOneBits(~u_input.b.zx) << (firstLeadingBit(u_input.b.yx) % vec2<u32>(32u)));
    var var_2 = arg_2.a.x;
    let var_3 = global3.x;
    let var_4 = arg_2.a.x;
    return _wgslsmith_dot_vec4_i32(-(select(vec4<i32>(-2145i, arg_1.a.x, var_1.a.x, global3.x) >> (var_1.d % vec4<u32>(32u)), countOneBits(vec4<i32>(-1i, 19553i, arg_3.a.x, u_input.a)), var_1.b.x) & _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_1.a.x, arg_1.c.x, -25772i, global3.x), vec4<i32>(1i, 2147483647i, arg_3.c.x, 2209i), true), ~vec4<i32>(48779i, arg_3.c.x, 1505i, u_input.c))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(abs(vec4<i32>(global3.x, u_input.c, arg_1.c.x, -1i))), (vec4<i32>(-1i, -2147483647i, 23555i, arg_3.c.x) >> (var_1.d % vec4<u32>(32u))) << ((vec4<u32>(13419u, 0u, arg_1.b, 51729u) & vec4<u32>(arg_3.b, var_1.d.x, 1u, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(~u_input.a, 33840i, -global3.x, max(2408i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.x, u_input.c >> (u_input.b.x % 32u), -1i, abs(-1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, arg_1.a.x, arg_3.c.x, 21285i), vec4<i32>(var_1.a.x, var_1.a.x, arg_1.a.x, arg_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2064f))))));
    let var_1 = vec3<u32>(~(~global2[_wgslsmith_index_u32(u_input.d & 31526u, 13u)]), abs(u_input.b.x), firstLeadingBit(~1u));
    let var_2 = global2[_wgslsmith_index_u32((u_input.b.x & ~(global2[_wgslsmith_index_u32(u_input.d, 13u)] >> (39822u % 32u))) >> (4294967295u % 32u), 13u)];
    global3 = vec2<i32>(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, var_0))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1511f, -293f), vec2<f32>(var_0, var_0))))), Struct_1(~(vec3<i32>(u_input.a, 37800i, 8234i) << (vec3<u32>(0u, global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(38854u, 13u)]) % vec3<u32>(32u))), func_1(true, u_input.c << (0u % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, global3.x, 2147483647i), vec3<i32>(13768i, 55312i, 1i)), vec3<i32>(-23355i, -1i, 0i))), global0[_wgslsmith_index_u32(~(26932u >> (u_input.d % 32u)), 16u)], Struct_1(func_4(global0[_wgslsmith_index_u32(u_input.d, 16u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, -552f, 369f, var_0)), Struct_3(vec3<i32>(global3.x, global3.x, global3.x), vec4<bool>(false, true, true, false), var_0, vec4<u32>(global2[_wgslsmith_index_u32(23883u, 13u)], var_1.x, var_1.x, 4294967295u), vec2<u32>(u_input.b.x, 1u))).a, global2[_wgslsmith_index_u32(18650u, 13u)] | (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 13u)] << (1u % 32u)), func_4(global0[_wgslsmith_index_u32(~16208u, 16u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(318f, var_0, var_0, var_0))), Struct_3(vec3<i32>(u_input.a, 0i, global3.x), vec4<bool>(false, true, false, false), var_0, vec4<u32>(1u, var_1.x, var_1.x, u_input.d), u_input.b.yy)).a)), firstLeadingBit(1i));
    var var_3 = Struct_2(!select(vec3<bool>(true, true, true), select(func_4(Struct_2(vec3<bool>(true, true, false)), vec4<f32>(-460f, -759f, var_0, -862f), Struct_3(vec3<i32>(global3.x, u_input.c, 2147483647i), vec4<bool>(true, false, false, false), 1000f, vec4<u32>(16545u, u_input.d, u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)]), vec2<u32>(1u, var_1.x))).b.zxz, vec3<bool>(false, true, true), true), vec3<bool>(any(vec2<bool>(true, false)), true, true)));
    global3 = -vec2<i32>(global3.x >> (_wgslsmith_mult_u32(90459u, _wgslsmith_clamp_u32(0u, 1u, 3754u)) % 32u), global3.x | -reverseBits(0i));
    let var_4 = ~(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, u_input.d), _wgslsmith_add_u32(var_1.x, u_input.b.x), 1u), 15068u) ^ vec2<u32>(func_3(Struct_3(vec3<i32>(global3.x, 0i, u_input.c), vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, false), -760f, vec4<u32>(90883u, u_input.b.x, var_1.x, 0u), u_input.b.zx), var_3.a.x, Struct_3(vec3<i32>(global3.x, -31538i, u_input.c), vec4<bool>(false, false, var_3.a.x, false), var_0, vec4<u32>(4294967295u, 4294967295u, 77515u, var_1.x), vec2<u32>(53518u, global2[_wgslsmith_index_u32(var_1.x, 13u)]))).x, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-(~global3.x)), select(global3.x, _wgslsmith_add_i32(u_input.a, i32(-1i) * -28155i), false), u_input.a << (func_2(func_4(global0[_wgslsmith_index_u32(0u, 16u)], vec4<f32>(var_0, var_0, 1000f, var_0), Struct_3(vec3<i32>(global3.x, 78717i, 2147483647i), vec4<bool>(var_3.a.x, false, false, false), var_0, vec4<u32>(u_input.d, var_1.x, u_input.d, var_1.x), vec2<u32>(var_4.x, 0u))).b.zy).e.x % 32u), -67693i), u_input.a >> (select(~0u ^ (47241u ^ global2[_wgslsmith_index_u32(1u, 13u)]), ~var_1.x, true) % 32u), ((~vec3<i32>(u_input.a, 2147483647i, global3.x) >> (u_input.b % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u))) << (vec3<u32>(~(var_1.x << (global2[_wgslsmith_index_u32(11379u, 13u)] % 32u)), u_input.b.x, global2[_wgslsmith_index_u32(~u_input.b.x ^ u_input.d, 13u)]) % vec3<u32>(32u)), 31554u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, -1220f, var_0, -1379f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(986f, var_0, 1133f, 891f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, -1305f, var_0, -512f), vec4<f32>(705f, -603f, var_0, 421f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-141f, var_0, 891f, -535f) - vec4<f32>(var_0, -584f, 477f, var_0))))));
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1000f, -541f), vec4<i32>(2147483647i, 0i, -25917i, 19240i), -194f);

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<bool, 10>;

var<private> global3: array<vec2<f32>, 11>;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(-1428f, -2035f), vec4<i32>(i32(-2147483648), -1i, -353i, 1i), 1912f), Struct_1(vec2<f32>(1576f, -1307f), vec4<i32>(0i, 54393i, -23119i, -29945i), -1000f), Struct_1(vec2<f32>(-2059f, -563f), vec4<i32>(-14882i, -8117i, 2147483647i, 1i), -387f), Struct_1(vec2<f32>(1215f, -642f), vec4<i32>(i32(-2147483648), -7387i, 19372i, 0i), -2323f), Struct_1(vec2<f32>(-534f, -118f), vec4<i32>(-1i, -1i, -47515i, -11676i), 175f), Struct_1(vec2<f32>(841f, -943f), vec4<i32>(2991i, 49601i, i32(-2147483648), 0i), 339f), Struct_1(vec2<f32>(780f, 397f), vec4<i32>(1i, 20619i, 4470i, -1i), 1533f), Struct_1(vec2<f32>(1272f, -162f), vec4<i32>(i32(-2147483648), 28624i, -19052i, 1i), 1279f), Struct_1(vec2<f32>(430f, 962f), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648)), 544f), Struct_1(vec2<f32>(-2168f, -440f), vec4<i32>(-13827i, -50727i, -10332i, i32(-2147483648)), 301f), Struct_1(vec2<f32>(-917f, 488f), vec4<i32>(-1903i, i32(-2147483648), -52025i, 0i), -463f), Struct_1(vec2<f32>(-1364f, 297f), vec4<i32>(1i, -62308i, 1i, -26410i), 1000f), Struct_1(vec2<f32>(-652f, -657f), vec4<i32>(3267i, 100671i, 32238i, -29093i), 872f), Struct_1(vec2<f32>(314f, -1000f), vec4<i32>(i32(-2147483648), -26491i, -1717i, 2147483647i), 2072f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = vec3<u32>(arg_0.x, 30861u, 33074u << (min(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 68269u), ~15470u), ~(1u | arg_0.x)) % 32u));
    var var_1 = vec2<bool>(select(global2[_wgslsmith_index_u32(45291u, 10u)], !all(arg_3), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-273f, arg_2)))) < arg_1.a.c), any(select(vec2<bool>(global0.b.x >= arg_1.d, !global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), arg_3, vec2<bool>(arg_2 <= arg_1.c.x, select(arg_3.x, true, arg_3.x)))));
    global0 = Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), select(global0.b, select(vec4<i32>(_wgslsmith_add_i32(arg_1.a.b.x, global0.b.x), max(global0.b.x, arg_1.d), arg_1.a.b.x, 2147483647i >> (arg_1.b % 32u)), global0.b, !vec4<bool>(true, arg_3.x, arg_3.x, var_1.x)), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x << (arg_1.b % 32u), 10u)], select(true, var_1.x, false), all(vec3<bool>(arg_3.x, false, false)))), -2180f);
    var var_2 = vec4<f32>(-572f, arg_2, arg_2, 740f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, arg_2))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(arg_0.x, 11u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xx) - vec2<f32>(_wgslsmith_f_op_f32(-2652f - global0.c), _wgslsmith_f_op_f32(-global0.c))), !(!arg_3))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_2 {
    global3 = array<vec2<f32>, 11>();
    let var_0 = abs(_wgslsmith_div_u32(~6241u, ~5696u << (u_input.b.x % 32u))) >> (1u % 32u);
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1013f, global0.c)))), _wgslsmith_f_op_vec2_f32(arg_0.zx - _wgslsmith_f_op_vec2_f32(func_3(~vec4<u32>(0u, 9760u, 4294967295u, 0u), Struct_2(Struct_1(global0.a, global0.b, -1633f), 88144u, vec3<f32>(-2113f, global0.c, global0.a.x), u_input.a.x), _wgslsmith_div_f32(343f, arg_0.x), vec2<bool>(global2[_wgslsmith_index_u32(13197u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]))))), firstTrailingBit(vec4<i32>(u_input.a.x ^ u_input.a.x, -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.yyx, vec3<i32>(-2147483647i, 1i, -1i)), -global0.b.x), ~u_input.a.x)), _wgslsmith_f_op_f32(trunc(arg_0.x)));
    let var_1 = vec3<i32>(abs(countOneBits(-u_input.a.x)), 13181i, _wgslsmith_mod_i32(~u_input.a.x ^ -_wgslsmith_div_i32(global0.b.x, 1i), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_dot_vec2_i32(~u_input.a.wx, vec2<i32>(-1946i, u_input.a.x) | arg_1))));
    global0 = Struct_1(vec2<f32>(-2571f, -1342f), select(abs(-max(u_input.a, global0.b)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(29489i, var_1.x, 2147483647i, 6777i), global0.b), ~var_1.x), var_1.x, global0.b.x, _wgslsmith_sub_i32(-global0.b.x, var_1.x)), vec4<bool>(global2[_wgslsmith_index_u32(30559u, 10u)], true, global2[_wgslsmith_index_u32(35384u, 10u)], !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 10u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(step(2542f, global0.c))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, 18043u), 29u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global1 = array<Struct_2, 29>();
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c.x)) - -772f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x - -801f) * 378f), _wgslsmith_f_op_f32(f32(-1f) * -487f))), _wgslsmith_mult_vec2_i32(u_input.a.wx, -_wgslsmith_sub_vec2_i32(firstTrailingBit(global0.b.zy), -vec2<i32>(-14699i, arg_0.b.x))));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.c, -221f, 415f) - vec4<f32>(var_0.c.x, arg_0.c, 483f, -302f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(140f, arg_2.c.x, arg_2.c.x, arg_0.c))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 763f, global0.a.x, -864f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-arg_2.a.b.x, abs(2147483647i)), vec2<i32>(global0.b.x | 0i, 25039i)))).a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1198f - 1395f));
    global3 = array<vec2<f32>, 11>();
    return u_input.b.x;
}

fn func_4(arg_0: u32, arg_1: i32) -> vec2<bool> {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, global0.a.x, -468f, 1058f), vec4<f32>(765f, 825f, global0.c, global0.a.x), global2[_wgslsmith_index_u32(arg_0, 10u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, global0.a.x, global0.a.x, global0.a.x)), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)]))))), ~vec2<i32>(2147483647i, _wgslsmith_sub_i32(-arg_1, arg_1 >> (arg_0 % 32u))));
    global0 = var_0.a;
    var_0 = global1[_wgslsmith_index_u32(0u, 29u)];
    var var_1 = _wgslsmith_mult_vec4_i32(-var_0.a.b, _wgslsmith_clamp_vec4_i32(var_0.a.b, ~(vec4<i32>(global0.b.x, global0.b.x, u_input.a.x, -21566i) << (u_input.b % vec4<u32>(32u))), global0.b | -global0.b));
    var_1 = _wgslsmith_mod_vec4_i32(-(vec4<i32>(global0.b.x, _wgslsmith_mod_i32(-57075i, 1i), var_0.d, 1i) ^ u_input.a), reverseBits(countOneBits(u_input.a)) | ((var_0.a.b ^ (vec4<i32>(-33532i, var_0.a.b.x, -1i, var_0.a.b.x) >> (vec4<u32>(4294967295u, 1u, 0u, arg_0) % vec4<u32>(32u)))) << (firstTrailingBit(vec4<u32>(arg_0, var_0.b, arg_0, u_input.b.x)) % vec4<u32>(32u))));
    return vec2<bool>(global2[_wgslsmith_index_u32(~4294967295u, 10u)], !(global2[_wgslsmith_index_u32(countOneBits(~arg_0), 10u)] && false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~abs(~u_input.b.x | func_1(global4[_wgslsmith_index_u32(9113u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_2(Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -33316i, -2147483647i), global0.c), 0u, vec3<f32>(393f, -640f, 597f), u_input.a.x))), -u_input.a.x);
    global1 = array<Struct_2, 29>();
    let var_1 = !vec3<bool>(all(vec2<bool>(u_input.b.x > u_input.b.x, any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(7664u, 10u)])))), var_0.x, select(_wgslsmith_div_u32(4294967295u, u_input.b.x) <= _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), true, true));
    global3 = array<vec2<f32>, 11>();
    let var_2 = u_input.b.yxz;
    let var_3 = ~func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 584f, global0.a.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1000f, global0.c, -1000f) * vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))), ~vec2<i32>(global0.b.x, global0.b.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(15955u, 43935u), vec2<u32>(var_2.x, 0u)) % vec2<u32>(32u))).a.b.x;
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), -1343f), vec4<i32>(u_input.a.x, reverseBits(min(u_input.a.x, ~11439i)), _wgslsmith_clamp_i32(u_input.a.x, -1i, _wgslsmith_sub_i32(global0.b.x, var_3) >> (min(22695u, var_2.x) % 32u)), -32166i), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(756f, _wgslsmith_f_op_f32(-global0.c))))));
    global1 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, _wgslsmith_f_op_f32(global0.c * 1000f), _wgslsmith_f_op_f32(sign(166f)), global0.c) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a.x, -1000f, -1000f, -282f) + vec4<f32>(var_4.a.x, var_4.a.x, 318f, var_4.a.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -1376f, global0.a.x, 397f)))))), var_4.b.xy).a.b.x, _wgslsmith_f_op_f32(-global0.c), ~12990u, ~firstTrailingBit(max(~u_input.b, u_input.b)), (vec4<i32>(var_4.b.x, var_3, var_3 << (0u % 32u), var_4.b.x) & _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(global0.b.x, global0.b.x, u_input.a.x, -1i), vec4<i32>(1i, global0.b.x, 0i, var_3))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, var_2.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), vec3<u32>(var_2.x, u_input.b.x, 30750u)), abs(var_2.x), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, var_4.a.x, var_4.a.x, 381f), vec4<f32>(global0.a.x, -176f, global0.a.x, global0.a.x), true)), vec2<i32>(var_4.b.x, var_3)).b, 4294967295u) % vec4<u32>(32u)));
}


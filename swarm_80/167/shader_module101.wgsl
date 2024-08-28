struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-700f, -1404f);

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(1i, 319i), vec2<i32>(-1338i, -1i), vec2<i32>(-5818i, -23834i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 24167i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(6750i, -1i), vec2<i32>(46670i, -31525i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(16414i, -51363i), vec2<i32>(16273i, 2147483647i), vec2<i32>(0i, -26046i), vec2<i32>(2147483647i, -5578i), vec2<i32>(-1i, -46075i), vec2<i32>(-23093i, -1i), vec2<i32>(-32042i, 15102i), vec2<i32>(0i, 24629i), vec2<i32>(13075i, -22419i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-1267f + arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    let var_1 = arg_0.x;
    global1 = vec3<bool>(global1.x, global1.x, global1.x);
    var_0 = Struct_1(var_0.a);
    global2 = array<vec2<i32>, 23>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), -1696f, arg_1.x) - var_0.a) - _wgslsmith_f_op_vec3_f32(trunc(var_0.a))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, global0.x))));
    global2 = array<vec2<i32>, 23>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 195f, _wgslsmith_div_f32(-1000f, var_0.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 204f, -1390f)) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_0.a.x, 502f), vec3<f32>(var_0.a.x, global0.x, -749f)))))));
    let var_2 = countOneBits(countOneBits((vec2<i32>(-1i) * -u_input.d.xx) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    global2 = array<vec2<i32>, 23>();
    return u_input.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.a.xx, arg_1.a.zz, select(vec2<bool>(global1.x, false), global1.xy, global1.x)))));
    var var_0 = firstTrailingBit(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), countOneBits(_wgslsmith_mult_u32(0u, 0u)), !global1.x));
    var var_1 = Struct_3(Struct_2(vec2<i32>(-1i, arg_2.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(global0.x, -1799f, 2145f)))), -143f <= _wgslsmith_f_op_f32(round(409f))), all(global1.xx), Struct_1(_wgslsmith_f_op_vec3_f32(floor(func_2(min(vec4<u32>(0u, 5823u, 32728u, 0u), vec4<u32>(13579u, 1u, 54674u, 1u)), _wgslsmith_f_op_vec2_f32(-arg_1.a.yx), abs(vec4<i32>(-1i, arg_2.x, -2147483647i, u_input.a))).a))));
    return var_1.a.a;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<i32> {
    var var_0 = vec4<bool>(1i >= u_input.b.x, global1.x, true, any(vec4<bool>(global1.x & false, global1.x, (u_input.d.x == -2147483647i) & global1.x, all(!vec3<bool>(global1.x, false, global1.x)))));
    return select(firstLeadingBit(firstLeadingBit(-u_input.d.xx)), func_4(_wgslsmith_f_op_f32(select(-437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -943f)), true)), func_2(~(vec4<u32>(arg_1, 1u, 0u, 51905u) << (vec4<u32>(2253u, arg_1, 4294967295u, arg_1) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(196f, arg_0), vec2<f32>(-2449f, 2333f))), _wgslsmith_add_vec4_i32(vec4<i32>(-9775i, u_input.d.x, 10123i, 2147483647i), -u_input.b)), -func_3()), vec2<bool>(all(!var_0.yzx) & !(!global1.x), _wgslsmith_f_op_f32(sign(-757f)) == arg_0));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global1 = !select(vec3<bool>(true, arg_1.c, false), select(!(!vec3<bool>(global1.x, global1.x, false)), vec3<bool>(global1.x, true, true), 1866f != arg_1.b.a.x), select(select(vec3<bool>(global1.x, arg_1.c, false), !vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, true, false)), select(vec3<bool>(global1.x, true, global1.x), !vec3<bool>(arg_1.c, false, global1.x), any(vec4<bool>(false, true, arg_1.c, true))), global1.x));
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1480f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.a.x))), -165f));
    let var_1 = arg_1.b;
    global0 = arg_2.a.yz;
    var var_2 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(9382u, 4329u, 12386u, 0u), countOneBits(vec4<u32>(6181u, 0u, 4294967295u, 4058u)), ~vec4<u32>(35707u, 24465u, 0u, 4294967295u)), ~(~vec4<u32>(38277u, 0u, 4294967295u, 54715u))), ~0u);
    return func_2(countOneBits(firstTrailingBit(vec4<u32>(1u, 1u, 4294967295u >> (0u % 32u), ~4294967295u))), func_2(~select(~vec4<u32>(72232u, 45044u, 4294967295u, 1u), abs(vec4<u32>(7342u, 4294967295u, 1u, 2148u)), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, true, true, arg_1.c), vec4<bool>(true, true, false, arg_1.c))), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -u_input.b).a.zy, vec4<i32>(_wgslsmith_mult_i32(-u_input.b.x ^ -32974i, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(11013i, -41554i))), arg_1.a.x, min(~func_4(-1967f, arg_2, u_input.b).x, _wgslsmith_clamp_i32(min(-5314i, arg_0), i32(-1i) * -49853i, abs(-1i))), 27905i));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.yy, abs(~vec2<i32>(u_input.a, -1i))), -global2[_wgslsmith_index_u32(~arg_2.x | _wgslsmith_add_u32(arg_2.x, 120499u), 23u)]);
    global1 = vec3<bool>(!global1.x, func_3().x >= _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, min(-2147483647i, u_input.c.x)), _wgslsmith_mod_i32(1i, firstLeadingBit(arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f - 298f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1687f) * -634f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + arg_0.a.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_3.a.xz, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1587f, arg_0.a.x), arg_0.a.yy)))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1859f)))))));
    let var_1 = !select(select(vec4<bool>(false, true, global1.x | global1.x, 0u <= arg_2.x), vec4<bool>(global1.x, global1.x, true, select(false, global1.x, false)), global1.x), !vec4<bool>(all(global1.yx), true, global1.x, all(vec3<bool>(global1.x, true, global1.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19830u, arg_2.x, 0u), vec3<u32>(arg_2.x, 50884u, 1u)), ~vec3<u32>(20880u, arg_2.x, 0u)) < ~46180u);
    var var_2 = (((_wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(27285u, 23u)], vec2<i32>(-2147483647i, u_input.a)) << (vec2<u32>(4294967295u, arg_2.x) % vec2<u32>(32u))) ^ -func_3().zy) ^ _wgslsmith_mult_vec2_i32(~reverseBits(vec2<i32>(452i, 0i)), u_input.c.xy)) | vec2<i32>(_wgslsmith_clamp_i32(arg_1, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(36303i, 1i, u_input.b.x, -9089i), vec4<i32>(10752i, u_input.c.x, arg_1, u_input.d.x) | vec4<i32>(-2147483647i, u_input.a, 1i, 11959i))), u_input.b.x >> (arg_2.x % 32u));
    return Struct_2(-_wgslsmith_add_vec2_i32(~vec2<i32>(-42334i, -6175i), func_3().wz), func_2(~vec4<u32>(arg_2.x, ~4294967295u, arg_2.x, arg_2.x), arg_0.a.zy, u_input.b), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(951f, global0.x, global0.x), vec3<f32>(global0.x, global0.x, -1252f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(119f, -494f, global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1599f, 2363f, 708f)), vec3<f32>(global0.x, global0.x, global0.x)))));
    var var_1 = Struct_3(func_6(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(global0.x, -779f, 193f)))), u_input.d.x, vec2<u32>(1u, _wgslsmith_div_u32(abs(0u), 9311u)), func_5((i32(-1i) * -11867i) >> (1u % 32u), Struct_2(func_1(var_0.a.x, 67762u), var_0, global1.x), var_0)), select(true, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4663u, 0u), vec4<u32>(0u, 5331u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(69928u, 20620u, 16794u), vec3<u32>(4294967295u, 35885u, 0u))) < _wgslsmith_dot_vec3_u32(vec3<u32>(53129u, 1u, 4294967295u), select(vec3<u32>(1u, 0u, 61300u), vec3<u32>(131257u, 0u, 0u), vec3<bool>(true, global1.x, false))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), !vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), global1.x)))), Struct_1(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(step(var_0.a, var_0.a))))));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-171f, -362f)), vec2<f32>(var_0.a.x, 850f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-167f)), var_0.a.x))))));
    var_1 = Struct_3(func_6(func_6(func_5(func_3().x, func_6(Struct_1(var_0.a), 1i, vec2<u32>(91925u, 4294967295u), var_1.a.b), func_2(vec4<u32>(63360u, 52833u, 86024u, 1u), var_1.a.b.a.xy, u_input.b)), u_input.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21362u, 0u, 3117u), vec3<u32>(12584u, 4294967295u, 0u)), _wgslsmith_add_u32(1u, 83866u)), Struct_1(var_1.a.b.a)).b, -_wgslsmith_dot_vec2_i32(func_6(var_1.a.b, var_1.a.a.x, vec2<u32>(0u, 4294967295u), Struct_1(var_0.a)).a, vec2<i32>(u_input.b.x, var_1.a.a.x)), ~max(vec2<u32>(64484u, 1u), vec2<u32>(0u, 1u)), Struct_1(var_0.a)), global1.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(var_1.c.a)), var_1.c.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(var_0.a.x, 516f, global0.x), vec3<bool>(false, false, global1.x))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, var_1.c.a.x, 368f)))))));
    var var_2 = var_1.a;
    let var_3 = func_5(-(~countOneBits(-u_input.c.x)), var_1.a, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1631f)), 771f, func_2(vec4<u32>(16418u, 117443u, 18328u, 0u), vec2<f32>(220f, 337f), vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)))), -799f, ~(~firstLeadingBit(vec4<i32>(-1i, -1456i, 2147483647i, -1i))));
}


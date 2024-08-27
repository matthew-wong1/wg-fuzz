struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(0u, 0u, 25870u), vec3<u32>(47916u, 4294967295u, 3563u), vec3<u32>(2109u, 2451u, 12117u), vec3<u32>(23520u, 104434u, 1u), vec3<u32>(14428u, 57681u, 0u), vec3<u32>(54237u, 29507u, 3215u), vec3<u32>(108235u, 31208u, 4294967295u), vec3<u32>(20098u, 1u, 7005u), vec3<u32>(0u, 3419u, 14849u), vec3<u32>(15516u, 1u, 0u), vec3<u32>(80835u, 24364u, 42116u), vec3<u32>(22989u, 101258u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(11420u, 26726u, 3150u), vec3<u32>(0u, 0u, 10315u), vec3<u32>(26496u, 56497u, 0u), vec3<u32>(64844u, 57245u, 40828u), vec3<u32>(45930u, 10070u, 84961u));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 17>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_2, 17>();
    var var_0 = vec3<bool>(!all(vec4<bool>(true, true, false, all(vec4<bool>(false, true, false, false)))), !(_wgslsmith_clamp_u32(u_input.b, ~arg_0.a, _wgslsmith_mult_u32(27268u, global1.x)) != global1.x), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f + _wgslsmith_f_op_f32(728f + -419f)) + _wgslsmith_f_op_f32(2359f * 352f))));
}

fn func_3() -> vec2<u32> {
    return select(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(~74391u, firstTrailingBit(u_input.b)), vec2<u32>(~u_input.b, _wgslsmith_clamp_u32(u_input.b, 19344u, 37579u)))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(39935u, 1u), u_input.b) >> (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1914u, global1.x), vec2<u32>(1u, 4294967295u))), false);
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))) * arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -864f)), arg_0.x, select(_wgslsmith_mod_u32(1u, 56129u), _wgslsmith_mod_u32(u_input.b, global1.x), true) >= 2722u)), -645f, _wgslsmith_f_op_f32(func_2(Struct_1(~(~u_input.b)))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 1u), ~_wgslsmith_add_u32(max(0u, u_input.b) << (~global1.x % 32u), 4294967295u));
    let var_2 = firstTrailingBit(func_3()) << ((vec2<u32>(u_input.b, abs(u_input.b & 0u)) | ~abs(~vec2<u32>(global1.x, 4576u))) % vec2<u32>(32u));
    global0 = array<vec3<u32>, 18>();
    var var_3 = all(select(vec2<bool>(true || any(vec2<bool>(true, false)), !(0i <= u_input.a.x)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(true, any(vec3<bool>(true, false, false)), true)), all(vec2<bool>(true, true)) && true));
    return ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(68194u, global1.x, 31611u), vec3<u32>(4294967295u, 0u, u_input.b)))) << (global1.x % 32u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_2, 17>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -236f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 18>();
    var var_0 = -1i;
    var var_1 = Struct_1(0u);
    let var_2 = Struct_1(var_1.a);
    var_1 = func_4(-19968i, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(26999u, var_1.a, 70673u), abs(vec3<u32>(var_1.a, u_input.b, 3654u))), ~_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(27956u, 18u)], global0[_wgslsmith_index_u32(94629u, 18u)]))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1541f) - -1733f), -240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1297f * 343f)), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(-357f, 2091f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_sub_u32(var_1.a, func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(725f, 701f))))), (any(vec2<bool>(false, true)) && false) | all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(max(var_1.a, _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(11580u, var_1.a), vec2<bool>(true, true)), vec2<u32>(60053u, var_1.a)), ~vec2<u32>(var_2.a, 17065u))), 18u)]);
    var var_3 = true;
    var var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, abs(-abs(u_input.c)), 11227i, u_input.c), vec4<i32>(u_input.c, -_wgslsmith_mod_i32(2147483647i, max(2383i, u_input.a.x)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.a.x), vec3<i32>(40933i, u_input.c, -39454i))), -u_input.a.x));
    var var_5 = Struct_2(_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(~(u_input.b >> (var_1.a % 32u)) | ~_wgslsmith_add_u32(9636u, 67666u), 18u)], ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.x, var_1.a) << (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)), vec3<u32>(global1.x, var_2.a, global1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(336f * 136f), _wgslsmith_f_op_f32(-183f - 303f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-456f, -839f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, -1559f)))), -vec4<i32>(u_input.c, _wgslsmith_mod_i32(abs(var_4.x), _wgslsmith_add_i32(u_input.c, 15934i)), -28791i, select(u_input.c, min(var_4.x, u_input.c), any(vec3<bool>(true, false, false)))), 1024f, func_4(firstLeadingBit(-12590i), Struct_1(var_1.a), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 128f, -510f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-405f, 249f, 381f, 566f), vec4<f32>(-559f, 302f, 1308f, -783f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-1774f, 844f, false)), _wgslsmith_f_op_f32(-581f * 1000f), -1000f), ~(~var_1.a), true), select(reverseBits(vec3<u32>(15278u, 72911u, 1u)), vec3<u32>(var_1.a, var_2.a, ~var_1.a), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_5.a.xz, select(vec3<u32>(u_input.b >> (countOneBits(var_2.a) % 32u), 45252u, ~0u), _wgslsmith_mult_vec3_u32(vec3<u32>(func_1(var_5.b), var_5.e.a, u_input.b), min(~var_5.a, _wgslsmith_clamp_vec3_u32(var_5.a, var_5.a, vec3<u32>(var_5.a.x, 76830u, var_1.a)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), 44371u);
}


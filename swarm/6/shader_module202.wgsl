struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(true, false, vec4<i32>(0i, -17038i, -19397i, -1i), vec2<i32>(0i, 0i), vec3<f32>(256f, -591f, 2735f)), Struct_1(false, true, vec4<i32>(-30981i, 0i, 1i, -35305i), vec2<i32>(2147483647i, 8077i), vec3<f32>(1061f, 753f, 120f)), Struct_1(false, true, vec4<i32>(1i, 0i, -10791i, -1i), vec2<i32>(-24916i, -39687i), vec3<f32>(552f, 696f, 1232f)), Struct_1(true, true, vec4<i32>(11298i, 1i, i32(-2147483648), -79018i), vec2<i32>(2147483647i, -1i), vec3<f32>(901f, 1000f, -1000f)), Struct_1(true, false, vec4<i32>(9070i, 46816i, 14531i, -1i), vec2<i32>(-38241i, -47681i), vec3<f32>(-407f, 1388f, 710f)), Struct_1(true, true, vec4<i32>(12195i, -27569i, 4072i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec3<f32>(436f, -1000f, -615f)), Struct_1(true, false, vec4<i32>(2147483647i, -1i, -1i, 1i), vec2<i32>(36998i, 0i), vec3<f32>(-1311f, 2939f, -601f)), Struct_1(false, true, vec4<i32>(0i, i32(-2147483648), 10709i, 35687i), vec2<i32>(-12518i, 2147483647i), vec3<f32>(115f, 703f, 979f)), Struct_1(false, true, vec4<i32>(i32(-2147483648), 2147483647i, 1i, -37533i), vec2<i32>(0i, 2147483647i), vec3<f32>(-1837f, -671f, -685f)), Struct_1(true, false, vec4<i32>(16566i, 3825i, 1i, -1i), vec2<i32>(0i, 2147483647i), vec3<f32>(2470f, -937f, 1199f)), Struct_1(true, false, vec4<i32>(6700i, -21857i, 1i, -9724i), vec2<i32>(0i, i32(-2147483648)), vec3<f32>(-749f, 166f, 1816f)), Struct_1(true, true, vec4<i32>(-17499i, -1i, 8103i, i32(-2147483648)), vec2<i32>(22829i, -1i), vec3<f32>(520f, -730f, -166f)), Struct_1(true, true, vec4<i32>(-1i, i32(-2147483648), 1i, -1i), vec2<i32>(i32(-2147483648), -24447i), vec3<f32>(-979f, -173f, 1164f)), Struct_1(false, false, vec4<i32>(2147483647i, 2147483647i, -1i, 54697i), vec2<i32>(18168i, 1i), vec3<f32>(-449f, -1430f, -240f)), Struct_1(true, true, vec4<i32>(-26463i, 0i, 2147483647i, -40796i), vec2<i32>(6939i, -37251i), vec3<f32>(-347f, -1462f, -1240f)), Struct_1(false, false, vec4<i32>(49394i, 2147483647i, 7257i, 73956i), vec2<i32>(45166i, 0i), vec3<f32>(-178f, -319f, -350f)), Struct_1(false, false, vec4<i32>(2147483647i, 22627i, i32(-2147483648), 12965i), vec2<i32>(-1i, 33355i), vec3<f32>(-1456f, -1467f, -651f)), Struct_1(true, false, vec4<i32>(-35136i, 2147483647i, -22902i, 38672i), vec2<i32>(2147483647i, 58240i), vec3<f32>(-1876f, -1000f, -1000f)), Struct_1(true, true, vec4<i32>(47776i, 30059i, -6670i, -9822i), vec2<i32>(-11452i, 67905i), vec3<f32>(-1295f, -1000f, -248f)), Struct_1(true, true, vec4<i32>(-1i, 0i, -1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 895i), vec3<f32>(1061f, 877f, 1000f)));

var<private> global2: Struct_3 = Struct_3(vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(4294967295u, 0u), 4294967295u);

var<private> global3: vec2<i32> = vec2<i32>(45423i, -16822i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    return ~18802u;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = false;
    var_0 = arg_0.a;
    let var_1 = arg_3;
    global1 = array<Struct_1, 20>();
    global0 = Struct_2(false, Struct_1(false, any(select(vec3<bool>(global0.b.a, arg_0.b, global0.a), vec3<bool>(false, false, false), vec3<bool>(false, true, global0.a))) || all(select(vec4<bool>(global0.b.b, arg_0.a, false, true), vec4<bool>(global0.b.a, false, global0.a, global0.b.a), vec4<bool>(false, arg_0.a, arg_0.b, false))), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, 2147483647i, -31601i, arg_0.d.x), vec4<i32>(arg_0.d.x, -43050i, 2147483647i, arg_0.d.x)), vec2<i32>(-max(global3.x, global0.d.d.x), ~(~arg_0.c.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(arg_0.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, 403f, 572f) - vec3<f32>(arg_0.e.x, 399f, -367f))))))), ~vec2<u32>(func_2(), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), Struct_1(global0.a, all(select(vec3<bool>(true, global0.d.a, arg_0.a), vec3<bool>(true, global0.b.b, true), vec3<bool>(global0.d.b, true, global0.a))) | global0.b.b, (arg_0.c & (vec4<i32>(1i, global3.x, arg_0.c.x, 15575i) ^ vec4<i32>(-2147483647i, 0i, global0.d.c.x, arg_0.d.x))) ^ -reverseBits(arg_0.c), arg_0.d, arg_1.yyz));
    return Struct_3(vec3<u32>(28742u | ~_wgslsmith_mod_u32(var_1.a.x, arg_3.a.x), max(~14824u, _wgslsmith_sub_u32(var_1.c, 0u)) >> ((firstLeadingBit(arg_3.c) | countOneBits(4294967295u)) % 32u), _wgslsmith_dot_vec3_u32(~arg_3.a, ~vec3<u32>(arg_2.x, var_1.c, 0u)) ^ u_input.b), vec2<u32>(~global2.b.x, ~1u), global2.a.x);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global2 = func_3(Struct_1(arg_0.x, !arg_0.x, vec4<i32>(global3.x, select(global3.x | global0.d.c.x, 0i << (global0.c.x % 32u), arg_0.x), abs(2392i) << (_wgslsmith_clamp_u32(4294967295u, 10389u, 1u) % 32u), 1i), global0.d.c.wx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + _wgslsmith_div_f32(-621f, global0.d.e.x)), global0.b.e.x, -1146f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.e.x, 721f, _wgslsmith_f_op_f32(trunc(global0.d.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(4294967295u, reverseBits(u_input.d.x), 1u, min(0u, _wgslsmith_div_u32(global2.a.x, global2.a.x)) << (func_2() % 32u)), Struct_3(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 118389u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(global2.a.x, 4294967295u, 58470u), global2.a)), _wgslsmith_mult_vec3_u32(global2.a, ~vec3<u32>(global0.c.x, u_input.c.x, u_input.b))), ~max(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, 37559u)), u_input.c.x));
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_mult_i32(-8224i, global0.b.c.x) & global0.b.d.x;
    let var_1 = Struct_2(false, Struct_1(any(vec2<bool>(arg_0.x, false)), arg_0.x, min(-global0.d.c, vec4<i32>(-2147483647i, global3.x, global3.x, global0.d.d.x)) >> (u_input.a % vec4<u32>(32u)), select(reverseBits(global0.d.d), global0.d.d, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.e * vec3<f32>(global0.b.e.x, 2116f, -1868f))) - _wgslsmith_f_op_vec3_f32(global0.d.e - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1307f, global0.d.e.x, global0.d.e.x), global0.d.e))))), global0.c, global0.d);
    let var_2 = var_1;
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -global0.b.c.ww & -select(-global0.b.c.wx << (vec2<u32>(global0.c.x, global2.b.x) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-21124i, global3.x), vec2<i32>(2147483647i, 9591i)), global3.x ^ -2147483647i), vec2<bool>(true, false && global0.d.a));
    global3 = -_wgslsmith_mult_vec2_i32(countOneBits(-global0.d.c.yy), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global0.d.c.x, -1i), global0.b.d)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.e.zz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-606f, global0.d.e.x)) + global0.d.e.yx)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(global0.d.e.yz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b.e.xy)))))));
    global0 = Struct_2(global2.c <= (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global2.b.x) ^ u_input.a.zwx, reverseBits(u_input.d)) << (global0.c.x % 32u)), func_1(vec2<bool>(true & all(vec3<bool>(global0.d.b, global0.d.b, global0.b.a)), global0.d.a)), ~global2.a.yy, Struct_1((_wgslsmith_f_op_f32(ceil(-462f)) <= -1277f) == any(vec3<bool>(true, false, global0.b.b)), !(!(!global0.a)), global0.d.c, ~_wgslsmith_sub_vec2_i32(select(global0.d.c.yy, global0.d.c.xz, vec2<bool>(true, global0.d.b)), global0.b.c.yz), global0.d.e));
    var var_1 = var_0;
    var var_2 = Struct_3(u_input.d, global0.c, max(global2.b.x, ~(~select(u_input.c.x, 67416u, false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(144f, _wgslsmith_f_op_f32(-global0.b.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(-global0.d.e.zy))))));
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(abs(i32(-1i) * -2147483647i), global3.x), 1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(23303i, global3.x) ^ global3.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global0.d.c.xzx, vec3<i32>(global0.d.c.x, global3.x, -2147483647i)), _wgslsmith_mod_vec3_i32(global0.b.c.zwz, vec3<i32>(global3.x, global0.b.c.x, -49494i))))), global0.d.e, vec2<i32>(reverseBits(21112i), -(~(-2147483647i) >> ((1u << (global2.b.x % 32u)) % 32u))), 1860i, ~(~vec3<u32>(0u, 48204u, 22925u) >> (global2.a % vec3<u32>(32u))));
}


struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(2422i, vec3<bool>(true, false, false)), Struct_1(0i, vec3<bool>(true, true, true)), Struct_1(13013i, vec3<bool>(true, true, false)), Struct_1(-1i, vec3<bool>(false, false, false)), Struct_1(18918i, vec3<bool>(false, false, true)), Struct_1(0i, vec3<bool>(false, false, true)), Struct_1(-1i, vec3<bool>(false, false, false)), Struct_1(8086i, vec3<bool>(false, false, false)), Struct_1(0i, vec3<bool>(true, false, true)), Struct_1(i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(-5568i, vec3<bool>(false, false, true)), Struct_1(-11719i, vec3<bool>(false, true, false)), Struct_1(-4480i, vec3<bool>(true, false, true)), Struct_1(2147483647i, vec3<bool>(false, false, true)), Struct_1(1i, vec3<bool>(false, false, true)), Struct_1(-1i, vec3<bool>(false, false, true)), Struct_1(-36038i, vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<bool>(false, false, true)), Struct_1(-1i, vec3<bool>(true, false, true)), Struct_1(i32(-2147483648), vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<bool>(true, false, false)), Struct_1(-16063i, vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(8823i, vec3<bool>(true, true, true)), Struct_1(1i, vec3<bool>(true, true, false)), Struct_1(-4040i, vec3<bool>(true, false, true)), Struct_1(-1i, vec3<bool>(true, true, false)));

var<private> global1: bool;

var<private> global2: bool = true;

var<private> global3: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-2308f, 1064f, 507f, 1555f), vec4<f32>(190f, 2249f, 742f, -1000f), vec4<f32>(-392f, 122f, 859f, -774f), vec4<f32>(191f, -553f, -450f, 536f));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 27>();
    var var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~39283u, ~38982u), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(484u, 42345u), vec2<u32>(9517u, 1977u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(1u, 12127u)), vec2<u32>(~59167u, min(57568u, 87975u))));
    global1 = true;
    var var_1 = global0[_wgslsmith_index_u32(~20457u, 27u)];
    var_1 = global0[_wgslsmith_index_u32(1u, 27u)];
    return 1u;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global3 = array<vec4<f32>, 4>();
    global4 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(8114i, 9669i, global4.a, 30116i), vec4<i32>(u_input.c, 15921i, 24734i, global4.a) & vec4<i32>(0i, u_input.c, u_input.c, global4.a))), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(13592i, u_input.b.x), -global4.a | _wgslsmith_sub_i32(global4.a, 0i))), global4.b);
    var var_0 = arg_0;
    var var_1 = global4.a;
    let var_2 = ~(vec2<i32>(_wgslsmith_add_i32(0i, u_input.d.x ^ 33481i), -_wgslsmith_mod_i32(34077i, global4.a)) ^ -_wgslsmith_mod_vec2_i32(abs(u_input.d), firstLeadingBit(vec2<i32>(-65552i, u_input.a))));
    return _wgslsmith_f_op_f32(round(-114f));
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_3(vec3<i32>(global4.a, -2147483647i, 6138i), global4.b.x, ~vec2<u32>(func_2(!vec4<bool>(global4.b.x, global4.b.x, false, global4.b.x)), 0u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, -1501f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1184f)), -339f))), 12444u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d.x)) - _wgslsmith_f_op_f32(func_3(~vec3<u32>(var_0.c.x, 4294967295u, 4294967295u), !(!vec4<bool>(global4.b.x, false, var_0.b, true)), _wgslsmith_f_op_f32(-var_0.d.x))));
    let var_2 = 2563f;
    var var_3 = _wgslsmith_sub_vec4_i32(~vec4<i32>(select(global4.a ^ u_input.d.x, 15333i, var_0.b), 53105i, min(var_0.a.x, -var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -56133i, global4.a, global4.a), vec4<i32>(-28360i, var_0.a.x, -10290i, 51102i)) >> (var_0.e % 32u)), vec4<i32>(~(-8892i), global4.a, -1i, var_0.a.x));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1108f, _wgslsmith_div_f32(314f, _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-var_2))))) - 329f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.d.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = 15003u >> ((_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1841u, 1u), vec2<u32>(60070u, 0u), vec2<u32>(5734u, 15306u)), _wgslsmith_add_vec2_u32(vec2<u32>(22976u, 1321u), vec2<u32>(13430u, 28310u))), 22499u) << ((select(~19100u, 1u, false) | 26754u) % 32u)) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(182f, -982f)) + -664f), 618f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, -978f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-197f, -2588f))))), false & all(select(global4.b.yy, vec2<bool>(global4.b.x, global4.b.x), global4.b.zx)))));
    global4 = global0[_wgslsmith_index_u32(9883u, 27u)];
    var var_3 = vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -1677i, _wgslsmith_div_i32(u_input.a, 23331i)), -abs(u_input.d)), u_input.b.xx));
    global4 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.a, u_input.b.x, u_input.a), u_input.b), select(!vec3<bool>(select(true, global4.b.x, var_0), true, true), global4.b, true));
    var var_4 = vec3<u32>(1u, ~select(min(23197u, ~41774u), 0u, false), 55448u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(var_2.x)))))) + 642f), 860f, vec3<u32>(~(var_4.x ^ 1u), var_4.x, var_4.x ^ var_4.x), vec3<u32>(~abs(var_4.x), var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, firstTrailingBit(11609u), ~1u, _wgslsmith_sub_u32(var_4.x, 1u)), ~(vec4<u32>(var_4.x, 5510u, 1u, 0u) & vec4<u32>(var_4.x, var_4.x, 0u, var_4.x)))), vec4<i32>(var_3.x >> (countOneBits(var_4.x << (var_4.x % 32u)) % 32u), abs(_wgslsmith_mod_i32(1i, ~var_3.x)), -22618i, -var_3.x));
}


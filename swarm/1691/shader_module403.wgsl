struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<u32>, 25>;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec4<f32>(-119f, 835f, 267f, 233f), vec4<i32>(2147483647i, 2147483647i, 28231i, 48128i), true, i32(-2147483648), vec2<u32>(27489u, 4294967295u)), Struct_1(vec4<f32>(738f, 384f, -787f, 422f), vec4<i32>(-20306i, -26067i, i32(-2147483648), 2147483647i), true, -2713i, vec2<u32>(34167u, 4294967295u)), vec2<f32>(888f, -154f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> bool {
    global1 = array<vec4<u32>, 25>();
    global1 = array<vec4<u32>, 25>();
    let var_0 = Struct_3(u_input.b.x, Struct_2(!vec4<bool>(global0.a.c || global0.b.c, false, all(vec2<bool>(global0.b.c, false)), true), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, arg_0.c.x, arg_0.a.a.x, -1648f), vec4<f32>(668f, arg_0.c.x, 1000f, -2055f))), -(~arg_0.a.b), true, -1138i, select(global0.b.e, global2.b.e, u_input.a <= 84126u))));
    var var_1 = Struct_5(global0.a.a.yyy, Struct_2(select(select(vec4<bool>(true, false, arg_0.a.c, true), vec4<bool>(false, false, global2.a.c, false), !global2.a.c), var_0.b.a, !select(vec4<bool>(true, global2.b.c, false, true), var_0.b.a, false)), var_0.b.b), _wgslsmith_div_u32(~_wgslsmith_div_u32(arg_0.b.e.x, ~89636u), global2.a.e.x));
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1488f, _wgslsmith_f_op_f32(arg_0.a.a.x * -623f), _wgslsmith_f_op_f32(sign(-228f))))))), Struct_2(vec4<bool>(-6404i == _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.b.d), var_1.b.b.b.ww), true == arg_0.b.c, _wgslsmith_f_op_f32(-global2.a.a.x) <= var_1.b.b.a.x, !(var_1.c >= var_1.c)), var_0.b.b), ~4294967295u ^ countOneBits(_wgslsmith_dot_vec2_u32(~var_1.b.b.e, _wgslsmith_sub_vec2_u32(vec2<u32>(6033u, 4294967295u), global2.a.e))));
    return global0.a.c;
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = vec3<bool>(func_3(Struct_4(global2.b, global2.b, global2.b.a.wx), false && !any(vec2<bool>(true, true))), all(!select(select(vec3<bool>(global2.b.c, global0.a.c, global2.b.c), vec3<bool>(global2.a.c, false, true), vec3<bool>(global0.b.c, global0.b.c, false)), !vec3<bool>(global2.b.c, true, false), global2.b.c)), !global2.b.c);
    var var_1 = Struct_3(global2.b.d, Struct_2(select(select(vec4<bool>(global2.a.c, var_0.x, var_0.x, false), !vec4<bool>(global0.b.c, global2.b.c, global2.a.c, false), true), select(select(vec4<bool>(global2.b.c, global0.a.c, global0.a.c, global2.b.c), vec4<bool>(global0.b.c, var_0.x, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, true, false, true), var_0.x), func_3(Struct_4(Struct_1(vec4<f32>(-1470f, 476f, 1888f, 1151f), global2.b.b, true, global2.a.d, global0.b.e), global2.b, global2.c), var_0.x)), true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.a.x, 1000f, global0.c.x, 1908f)))), vec4<i32>(-11935i, _wgslsmith_add_i32(global0.b.b.x, u_input.b.x), global0.b.b.x | global0.b.b.x, _wgslsmith_sub_i32(1051i, global0.a.b.x)), true, u_input.b.x, _wgslsmith_sub_vec2_u32(global2.b.e, vec2<u32>(0u, 0u)))));
    let var_2 = -_wgslsmith_sub_i32(0i, u_input.b.x);
    global0 = Struct_4(var_1.b.b, global2.b, arg_0.wz);
    global1 = array<vec4<u32>, 25>();
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.a.e, ~global0.a.e), _wgslsmith_mult_u32(5248u, 19383u) & global2.b.e.x, ~var_1.b.b.e.x << (~u_input.c % 32u)), abs(~57091u & ~var_1.b.b.e.x)), _wgslsmith_mod_u32(10281u, min(4294967295u >> (_wgslsmith_mult_u32(0u, 71656u) % 32u), ~min(global2.a.e.x, u_input.a))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(abs(arg_1.b.b.e.x << (79325u % 32u))), 25u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a.a), global0.a.b | _wgslsmith_div_vec4_i32(global2.a.b, global2.b.b), any(arg_0.a.ww), 66297i, ~countOneBits(_wgslsmith_mod_vec2_u32(var_0.xy << (vec2<u32>(global2.a.e.x, 4294967295u) % vec2<u32>(32u)), func_2(vec4<f32>(514f, 139f, -875f, -289f)))));
    global2 = Struct_4(Struct_1(global0.b.a, select(vec4<i32>(var_1.b.x, -1i, -2147483647i, 11459i), -abs(vec4<i32>(arg_0.b.b.x, 1i, arg_0.b.b.x, u_input.b.x)), true), arg_0.a.x, 2147483647i, (vec2<u32>(u_input.a, global0.b.e.x) & reverseBits(vec2<u32>(26202u, 1u))) ^ vec2<u32>(max(64498u, 106722u), ~arg_1.b.b.e.x)), Struct_1(vec4<f32>(-584f, _wgslsmith_f_op_f32(abs(763f)), -1545f, _wgslsmith_f_op_f32(-510f * _wgslsmith_f_op_f32(-317f + global0.b.a.x))), vec4<i32>(select(arg_1.a, 26628i, var_1.c), _wgslsmith_add_i32(global2.a.b.x, ~45915i), countOneBits(arg_1.b.b.d), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-9438i, -29223i, 1i)), -global2.a.b.zzy)), true, ~abs(-arg_1.b.b.d), _wgslsmith_mult_vec2_u32(~arg_1.b.b.e, var_1.e)), _wgslsmith_f_op_vec2_f32(global2.b.a.yw - global0.b.a.zy));
    var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(49461u, arg_1.b.b.e.x, var_1.e.x, arg_1.b.b.e.x)) & _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(1u, 25u)], vec4<u32>(9817u, u_input.a, var_0.x, 17911u))), ~firstLeadingBit(vec4<u32>(arg_0.b.e.x, arg_1.b.b.e.x, 5255u, var_1.e.x) >> (vec4<u32>(14428u, 0u, 1u, global0.b.e.x) % vec4<u32>(32u)))), 25u)];
    var var_2 = vec2<u32>(firstLeadingBit(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(40462u, 0u, var_1.e.x), vec3<u32>(4294967295u, 1u, 23759u)), _wgslsmith_mod_vec3_u32(var_0.wyw, var_0.wwy))), _wgslsmith_add_u32(global0.a.e.x, _wgslsmith_mod_u32(abs(global2.b.e.x) | global0.a.e.x, ~42533u)));
    return global0.b.e.x <= ~(_wgslsmith_mult_u32(u_input.a, ~1u) & _wgslsmith_dot_vec4_u32(min(vec4<u32>(29802u, arg_1.b.b.e.x, global0.b.e.x, var_0.x), global1[_wgslsmith_index_u32(17453u, 25u)]), firstTrailingBit(global1[_wgslsmith_index_u32(15617u, 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 25>();
    var var_0 = all(select(vec3<bool>(true, false, any(select(vec3<bool>(global0.a.c, false, global0.a.c), vec3<bool>(true, global0.b.c, global2.a.c), global0.b.c))), select(!select(vec3<bool>(global2.a.c, global2.b.c, global2.b.c), vec3<bool>(true, global0.b.c, true), false), select(select(vec3<bool>(global2.a.c, global2.a.c, global2.b.c), vec3<bool>(global2.a.c, global0.a.c, true), global2.a.c), select(vec3<bool>(global2.b.c, false, true), vec3<bool>(global0.b.c, true, false), vec3<bool>(global2.b.c, global2.b.c, true)), vec3<bool>(true, global0.a.c, false)), vec3<bool>(global2.a.c, false, true & global0.a.c)), func_1(Struct_2(!vec4<bool>(global2.a.c, false, false, global0.a.c), Struct_1(global0.b.a, vec4<i32>(global2.b.d, u_input.b.x, -1i, global0.a.d), true, u_input.b.x, vec2<u32>(52798u, global0.a.e.x))), Struct_3(0i, Struct_2(vec4<bool>(true, false, true, global0.a.c), Struct_1(global0.a.a, vec4<i32>(global0.b.b.x, -1i, u_input.b.x, global0.a.d), global0.a.c, -1i, vec2<u32>(1u, global2.b.e.x)))))));
    global1 = array<vec4<u32>, 25>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.c.x))))));
    var_0 = global0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, _wgslsmith_f_op_f32(global0.b.a.x - global2.c.x), 1f, -1858f)))));
}


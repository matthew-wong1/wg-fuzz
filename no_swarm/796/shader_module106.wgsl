struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(63132u, Struct_2(0i, false), Struct_1(vec3<bool>(true, true, false)), 1u), Struct_3(0u, Struct_2(-28280i, true), Struct_1(vec3<bool>(false, false, false)), 22950u), Struct_3(1u, Struct_2(2147483647i, false), Struct_1(vec3<bool>(true, true, true)), 1u), Struct_3(30311u, Struct_2(-9397i, true), Struct_1(vec3<bool>(true, false, true)), 1u), Struct_3(68003u, Struct_2(1i, true), Struct_1(vec3<bool>(false, true, false)), 0u), Struct_3(4294967295u, Struct_2(1i, false), Struct_1(vec3<bool>(true, true, true)), 33814u), Struct_3(1u, Struct_2(33801i, false), Struct_1(vec3<bool>(true, true, false)), 0u), Struct_3(4294967295u, Struct_2(1i, false), Struct_1(vec3<bool>(true, true, false)), 15411u), Struct_3(35808u, Struct_2(-66090i, true), Struct_1(vec3<bool>(true, false, true)), 19323u), Struct_3(4294967295u, Struct_2(-43563i, true), Struct_1(vec3<bool>(true, false, false)), 4294967295u), Struct_3(4294967295u, Struct_2(37597i, false), Struct_1(vec3<bool>(false, true, false)), 1131u), Struct_3(27532u, Struct_2(2147483647i, false), Struct_1(vec3<bool>(true, true, true)), 10961u), Struct_3(4294967295u, Struct_2(61818i, true), Struct_1(vec3<bool>(true, true, true)), 48128u), Struct_3(0u, Struct_2(30887i, false), Struct_1(vec3<bool>(true, false, true)), 0u), Struct_3(11689u, Struct_2(i32(-2147483648), false), Struct_1(vec3<bool>(true, true, false)), 47196u), Struct_3(4294967295u, Struct_2(1i, false), Struct_1(vec3<bool>(true, true, false)), 6695u), Struct_3(1u, Struct_2(-22609i, true), Struct_1(vec3<bool>(true, true, false)), 26424u), Struct_3(39870u, Struct_2(i32(-2147483648), true), Struct_1(vec3<bool>(false, false, true)), 1u), Struct_3(0u, Struct_2(3059i, true), Struct_1(vec3<bool>(true, false, true)), 18578u));

var<private> global1: Struct_3 = Struct_3(16313u, Struct_2(i32(-2147483648), false), Struct_1(vec3<bool>(true, false, true)), 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    global1 = Struct_3(44294u >> (arg_1.x % 32u), global1.b, Struct_1(select(global1.c.a, global1.c.a, global1.b.b)), 1u);
    global0 = array<Struct_3, 19>();
    let var_0 = global1.b.b;
    var var_1 = global0[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = max(~vec4<i32>(1i, -2147483647i, firstTrailingBit(1i), 2147483647i), -min(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.a, var_1.b.a, u_input.a, 2147483647i), vec4<i32>(0i, global1.b.a, u_input.d, -2147483647i), vec4<i32>(u_input.d, var_1.b.a, u_input.a, var_1.b.a)), vec4<i32>(-2147483647i, var_1.b.a, global1.b.a, -21467i) & ~vec4<i32>(-16765i, 17793i, -15391i, -1i)));
    return countOneBits(abs(arg_1.x) | var_1.a) | _wgslsmith_dot_vec2_u32(~arg_1, _wgslsmith_div_vec2_u32(select(arg_1, vec2<u32>(1u, 4294967295u), var_1.c.a.x), firstLeadingBit(arg_1)) ^ abs(arg_1));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(global1.c.a);
    global1 = global0[_wgslsmith_index_u32(func_3(340f, vec2<u32>(abs(0u), 4294967295u)), 19u)];
    var_0 = Struct_1(vec3<bool>(false || (_wgslsmith_f_op_f32(floor(187f)) >= _wgslsmith_f_op_f32(f32(-1f) * -322f)), false, all(!(!vec4<bool>(global1.c.a.x, true, arg_1.b, false)))));
    var var_1 = Struct_2(-arg_3.x, any(vec4<bool>(true, true, all(!vec2<bool>(var_0.a.x, true)), var_0.a.x)));
    var var_2 = Struct_3(0u, Struct_2(_wgslsmith_dot_vec3_i32(firstLeadingBit(max(u_input.e, u_input.e)), vec3<i32>(_wgslsmith_add_i32(45516i, arg_3.x), 0i | var_1.a, 19214i)), (arg_2.b & arg_1.b) & true), global1.c, _wgslsmith_add_u32(min(~arg_0, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, global1.a, 1u)), vec3<u32>(6253u, 4294967295u, arg_0) & vec3<u32>(39446u, 23189u, arg_0))), _wgslsmith_dot_vec4_u32(vec4<u32>(1107u, global1.d, global1.a, arg_0), vec4<u32>(u_input.c, 4294967295u, 18880u, 14168u) << (vec4<u32>(arg_0, 0u, 4294967295u, 42440u) % vec4<u32>(32u))) >> (4294967295u % 32u)));
    return max(_wgslsmith_clamp_vec2_i32(~(vec2<i32>(var_2.b.a, 1i) >> (vec2<u32>(u_input.b, 8974u) % vec2<u32>(32u))) ^ firstLeadingBit(-vec2<i32>(u_input.e.x, var_2.b.a)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(arg_1.a, global1.b.a)), firstLeadingBit(vec2<i32>(-33679i, -43412i)), vec2<i32>(1i, 2147483647i))), arg_3), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e.zx, _wgslsmith_mod_vec2_i32(arg_3, vec2<i32>(1i, 53777i))), arg_3));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(-_wgslsmith_sub_vec2_i32(~func_2(u_input.b, Struct_2(global1.b.a, global1.b.b), global1.b, u_input.e.yy), vec2<i32>(-32377i, -32468i)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, 32325u & ~(4294967295u & global1.a), ~(~(~71447u)), 95194u ^ global1.a), vec4<u32>(0u, _wgslsmith_add_u32(5819u, u_input.c), ~51107u, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, u_input.b), 0u))), 19u)];
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    var var_2 = global1.b.b;
    return Struct_1(select(!var_1.c.a, vec3<bool>(all(select(vec2<bool>(global1.b.b, global1.b.b), var_1.c.a.zy, global1.c.a.x)), var_1.c.a.x, global1.b.b), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, 106264u)), _wgslsmith_div_vec2_u32(vec2<u32>(global1.d, u_input.c), vec2<u32>(u_input.b, global1.a)))), global1.b, func_1(), ~1u & global1.a);
    let var_1 = select(!var_0.c.a, !vec3<bool>(!global1.b.b, var_0.b.b, true), global1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 11462i, -1i), vec4<i32>(var_0.b.a, u_input.e.x, u_input.a, 2147483647i)), vec4<i32>(33996i, global1.b.a, u_input.a, _wgslsmith_sub_i32(1i, 2147483647i))) >> (firstTrailingBit(vec4<u32>(var_0.a, 18818u, ~var_0.a, 7088u)) % vec4<u32>(32u)), vec2<u32>(select(var_0.d, var_0.a, !var_1.x), 1760u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f + -342f) * _wgslsmith_f_op_f32(f32(-1f) * -1467f)), _wgslsmith_f_op_f32(sign(256f)), _wgslsmith_f_op_f32(f32(-1f) * -1213f), _wgslsmith_f_op_f32(-860f * 1000f)));
}


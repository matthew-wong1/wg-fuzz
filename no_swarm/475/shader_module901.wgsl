struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(0u, 51342u, 0u, 0u, 24739u, 4294967295u, 0u, 13982u, 40302u, 46041u, 33534u, 40169u, 73921u, 76148u, 8513u, 58132u, 4609u, 5678u, 35303u, 1u);

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, false, true, false, true, true, false, false, false);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -47056i);

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    return Struct_1(arg_0.a, _wgslsmith_clamp_vec2_i32(~min(u_input.a ^ u_input.a, ~arg_0.b), vec2<i32>(-12972i ^ -u_input.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(global2.x, global2.x), _wgslsmith_add_i32(u_input.a.x, global2.x))), vec2<i32>(1i, -1i)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(75086u, Struct_1(-2018f, vec2<i32>(_wgslsmith_div_i32(1i, u_input.a.x), ~u_input.a.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8150u, 20u)], 20u)]);
    global1 = array<bool, 10>();
    var var_1 = firstTrailingBit(select(var_0.b.b, _wgslsmith_add_vec2_i32(var_0.b.b, u_input.a), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(19592u, 10u)]))));
    let var_2 = Struct_2(var_0.a, func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), -countOneBits(u_input.a)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(807u, global0[_wgslsmith_index_u32(var_0.c, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 52937u, var_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(var_0.a, 20u)], 18192u, 14038u)), vec3<u32>(20928u, global0[_wgslsmith_index_u32(var_0.a, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 14093u, 1u) % vec3<u32>(32u))))), countOneBits(_wgslsmith_div_u32(~25960u >> (global0[_wgslsmith_index_u32(~var_0.a, 20u)] % 32u), ~global0[_wgslsmith_index_u32(reverseBits(var_0.a), 20u)])));
    global1 = array<bool, 10>();
    return Struct_2(countOneBits(~(~0u) >> ((global0[_wgslsmith_index_u32(12315u, 20u)] & 19202u) % 32u)), var_0.b, 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    global2 = u_input.a;
    let var_0 = true;
    var var_1 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(abs(_wgslsmith_clamp_u32(~arg_0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 60412u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 49308u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a, arg_0.c), vec2<u32>(arg_0.a, 0u))), global0[_wgslsmith_index_u32(4294967295u, 20u)])), arg_0.c), 20u)], 12u)];
    var var_2 = var_1.b;
    var_2 = Struct_1(-274f, u_input.a);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    var var_0 = func_3(func_1(), select(vec4<bool>(global1[_wgslsmith_index_u32(55211u, 10u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 0u), vec2<u32>(54168u, global0[_wgslsmith_index_u32(87515u, 20u)])), 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10575u, 20u)], 20u)]), 10u)], true, all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, false))), !select(!vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23850u, 20u)], 20u)], 10u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 10u)], global1[_wgslsmith_index_u32(70944u, 10u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(94891u, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(global1[_wgslsmith_index_u32(43025u, 10u)], true, true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)], true, true)), vec4<bool>(global1[_wgslsmith_index_u32(51146u, 10u)], true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 10u)])), vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(3991u, 20u)] & 583u) ^ _wgslsmith_div_u32(8340u, 4294967295u), 20u)], 10u)], global2.x == 23950i)));
    var var_1 = global2.x;
    global2 = var_0.b.b;
    let var_2 = var_0.b.a;
    var_1 = ~firstTrailingBit(global2.x);
    global2 = select(_wgslsmith_clamp_vec2_i32(~((vec2<i32>(var_0.b.b.x, u_input.a.x) >> (vec2<u32>(1u, 14030u) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(18745u, 39894u), vec2<u32>(var_0.a, global0[_wgslsmith_index_u32(var_0.c, 20u)]), vec2<u32>(28664u, var_0.a)) % vec2<u32>(32u))), var_0.b.b, -vec2<i32>(-35694i, 0i >> (1u % 32u))), vec2<i32>(32491i, func_1().b.b.x), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 20u)], 10u)] && global1[_wgslsmith_index_u32(0u, 10u)]), !select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(69573u, 10u)]), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, true)))), !(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 10u)], global1[_wgslsmith_index_u32(43531u, 10u)]), global1[_wgslsmith_index_u32(1u, 10u)])), true));
    var var_3 = var_0.b.a;
    var_3 = var_0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 20u)] | ~var_0.c, ~(~var_0.c | countOneBits(1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(576f, 758f) + vec2<f32>(var_0.b.a, 467f)))))));
}


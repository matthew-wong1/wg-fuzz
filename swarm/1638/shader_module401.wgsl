struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(4294967295u, 61487u), vec2<u32>(0u, 11530u), vec2<u32>(32252u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(51702u, 8047u), vec2<u32>(30606u, 4294967295u), vec2<u32>(4294967295u, 8032u), vec2<u32>(4294967295u, 59992u), vec2<u32>(0u, 27366u), vec2<u32>(4294967295u, 47006u));

var<private> global2: f32 = -462f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    global0 = array<u32, 27>();
    let var_0 = Struct_1(reverseBits(abs(u_input.b)), -937f);
    var var_1 = arg_1.d.a;
    let var_2 = Struct_2(countOneBits(u_input.c.x), 1u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_2) & ~vec3<u32>(arg_1.d.c, 1u, arg_2), _wgslsmith_mod_vec3_u32(vec3<u32>(150446u, global0[_wgslsmith_index_u32(4294967295u, 27u)], 13704u), vec3<u32>(arg_2, arg_2, arg_1.d.c))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(arg_1.d.c, 27u)], 34124u, 3274u), vec4<u32>(arg_2, arg_1.d.c, 0u, 45677u)), 43770u), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_1.a.b))).x));
    global0 = array<u32, 27>();
    return 4294967295u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~76877u, reverseBits(firstLeadingBit(~select(3084u, 0u, false))), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(32175u, func_3(arg_0, Struct_3(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), 1248f), false, arg_0.xwz, Struct_2(u_input.c.x, 5928u, global0[_wgslsmith_index_u32(1u, 27u)]), vec3<i32>(20841i, u_input.b.x, 1i)), 2900u)), 27u)], 27u)] >> (global0[_wgslsmith_index_u32(~(~34484u), 27u)] % 32u), 27u)])), 27u)];
    let var_1 = Struct_4(~(~4294967295u));
    var var_2 = _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(select(-2147483647i, -845i, true), -2147483647i)), (_wgslsmith_clamp_vec2_i32(min(u_input.a, vec2<i32>(-2147483647i, 6431i)), reverseBits(u_input.c.yz), ~vec2<i32>(u_input.a.x, -1i)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 0u, var_1.a, var_1.a), vec4<u32>(1u, var_1.a, 92421u, 10938u)), func_3(arg_0, Struct_3(Struct_1(vec2<i32>(-21783i, -7168i), arg_0.x), false, arg_0.zwy, Struct_2(-9048i, var_1.a, var_1.a), u_input.c), 68786u)) % vec2<u32>(32u))) | u_input.b);
    var var_3 = var_1;
    var var_4 = firstTrailingBit(-1i);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(func_1(480f), func_1(1903f), true), vec2<bool>(false, any(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, 1i != u_input.b.x)));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1964f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -840f, -1244f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-28248i, u_input.b.x, u_input.a.x, 2147483647i), vec4<i32>(-1i, u_input.c.x, 0i, u_input.b.x), vec4<i32>(1i, -1i, 0i, -1i)))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1300f, -1527f)), _wgslsmith_f_op_f32(ceil(-292f)), true)))));
    let var_1 = Struct_2(_wgslsmith_add_i32(-11838i, u_input.c.x), reverseBits(8677u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~40979u, 1u), 27u)], 27u)]);
    let var_2 = Struct_5(select(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.c, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(5639u, 27u)]), abs(vec4<u32>(var_1.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], var_1.b, var_1.c))), abs(~vec4<u32>(4294967295u, 4294967295u, 13018u, var_1.b)), vec4<bool>(var_0.x && false, true, !var_0.x, !var_0.x)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(10640u, global0[_wgslsmith_index_u32(20482u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37355u, 27u)], 27u)], global0[_wgslsmith_index_u32(0u, 27u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], var_1.b, global0[_wgslsmith_index_u32(0u, 27u)], 52029u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.b, 0u, 69107u), vec4<u32>(global0[_wgslsmith_index_u32(52754u, 27u)], 4294967295u, 50250u, global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(99241u, var_1.c, global0[_wgslsmith_index_u32(0u, 27u)], 13124u), vec4<u32>(var_1.c, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c, 27u)], 27u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(var_1.b, 27u)], 21615u, var_1.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24593u, 27u)], 27u)], 27u)], 27u)])))), select(var_0.x || !var_0.x, !(!var_0.x), all(!var_0))), -_wgslsmith_dot_vec3_i32(~u_input.c, u_input.c) == var_1.a, firstTrailingBit(vec2<i32>(i32(-1i) * -12209i, abs(1i))));
    let var_3 = Struct_1(u_input.b ^ (var_2.c << (global1[_wgslsmith_index_u32(33714u, 11u)] % vec2<u32>(32u))), _wgslsmith_f_op_f32(func_2(vec4<f32>(-1186f, _wgslsmith_f_op_f32(abs(380f)), 887f, _wgslsmith_f_op_f32(func_2(vec4<f32>(-185f, -132f, 1201f, 1459f), _wgslsmith_clamp_vec4_i32(vec4<i32>(-3640i, var_1.a, -43892i, u_input.a.x), vec4<i32>(var_1.a, 1i, -37322i, -26761i), vec4<i32>(-1i, -2147483647i, var_1.a, -2147483647i))))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_2.c.x, -23850i, 47118i, 10178i) << (var_2.a % vec4<u32>(32u))), select(vec4<i32>(var_2.c.x, 11131i, var_1.a, var_2.c.x), ~vec4<i32>(u_input.c.x, var_2.c.x, var_1.a, 53266i), !var_0.x), vec4<i32>(firstLeadingBit(var_1.a), _wgslsmith_mod_i32(var_1.a, u_input.b.x), u_input.b.x, -1i)))));
    global2 = -174f;
    let var_4 = var_1.b;
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.a ^ var_2.a)) ^ var_2.a);
}


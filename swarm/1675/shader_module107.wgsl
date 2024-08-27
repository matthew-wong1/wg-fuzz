struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<f32, 20>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(656f, -44986i), Struct_1(129f, -1i), Struct_1(-1847f, 538i), Struct_1(563f, -1i), Struct_1(-768f, -849i), Struct_1(-379f, i32(-2147483648)), Struct_1(540f, -35474i), Struct_1(422f, 9467i), Struct_1(-716f, -1i), Struct_1(-431f, -1i), Struct_1(306f, 2147483647i), Struct_1(-1320f, i32(-2147483648)), Struct_1(335f, i32(-2147483648)), Struct_1(-2944f, 2147483647i), Struct_1(1088f, 60256i), Struct_1(1216f, -80785i), Struct_1(-603f, 4294i), Struct_1(277f, -1i), Struct_1(1416f, 0i), Struct_1(359f, 34521i), Struct_1(1341f, i32(-2147483648)), Struct_1(150f, 1i), Struct_1(-1070f, i32(-2147483648)), Struct_1(1249f, 2147483647i), Struct_1(104f, 1i), Struct_1(-315f, -38745i), Struct_1(1536f, -1424i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = Struct_1(-338f, ~u_input.e.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-651f * global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 20u)]) - _wgslsmith_f_op_f32(step(global2.a, -1249f)))) - _wgslsmith_f_op_f32(floor(global2.a))), select(4733i, -var_0.b, !(_wgslsmith_div_i32(0i, arg_0) > -arg_0)));
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    return 46102u;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 11u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(9406u, 11u)]) << (abs(u_input.d) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1673u, 11u)], 11u)]), vec3<u32>(1u, 0u, global0[_wgslsmith_index_u32(27293u, 11u)])) & vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], u_input.a, 40614u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, 4294967295u, _wgslsmith_clamp_u32(48790u, global0[_wgslsmith_index_u32(4294967295u, 11u)], u_input.d.x)), u_input.d >> (u_input.d % vec3<u32>(32u)))), u_input.b.x), 11u)];
    let var_2 = -u_input.c ^ u_input.c;
    global0 = array<u32, 11>();
    let var_3 = vec4<u32>(u_input.a, firstTrailingBit(_wgslsmith_sub_u32(countOneBits(~4294967295u), ~u_input.b.x)), ~global0[_wgslsmith_index_u32(41442u, 11u)], 6852u);
    return ~_wgslsmith_add_u32(select(~0u, var_3.x, !all(vec4<bool>(true, true, true, true))), 4294967295u);
}

fn func_1() -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(min(31162u, ~(~(func_2(global2.b, u_input.c.x, u_input.e.x) >> (~u_input.d.x % 32u)))), 27u)];
    let var_1 = false;
    global1 = array<f32, 20>();
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, func_2(_wgslsmith_add_i32(global2.b, -52579i), -1i, 6384i)), select(9944u, func_3(Struct_1(var_0.a, u_input.c.x), 690f) & ~u_input.d.x, true)), _wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(~firstLeadingBit(u_input.b.x), func_3(global3[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(~1u, 20u)]), countOneBits(4294967295u)))), 27u)];
    var var_2 = countOneBits(~countOneBits(38308i >> (u_input.a % 32u))) ^ ~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(64102i, var_0.b, var_0.b, -8977i) << (~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15186u, 11u)], 11u)], 20114u, 45310u) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) - -1416f), ~var_0.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 20u)];
    var var_1 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 0u, ~global0[_wgslsmith_index_u32(u_input.d.x << (arg_2.d % 32u), 11u)]), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(48517u, 11u)], 0u, 43669u, 4294967295u), ~vec4<u32>(global0[_wgslsmith_index_u32(91450u, 11u)], arg_2.d, arg_2.d, u_input.d.x)), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.b.x, 11u)], 11u)]), 1u), select(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, arg_0, arg_0)), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, false, arg_0), arg_0), vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, true), arg_0)), !vec3<bool>(false, false, arg_0))), _wgslsmith_sub_vec3_u32(~abs(~arg_2.b), reverseBits(vec3<u32>(0u, 25647u, ~u_input.b.x))));
    let var_2 = func_1();
    global3 = array<Struct_1, 27>();
    let var_3 = 1i;
    return StorageBuffer(_wgslsmith_sub_vec3_i32(u_input.c.zxw, firstTrailingBit(countOneBits(-vec3<i32>(-2147483647i, u_input.e.x, var_2.b)))), min(~arg_2.b, arg_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, arg_2.a.a, -354f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-872f, 344f, global1[_wgslsmith_index_u32(var_1.x, 20u)]), vec3<f32>(1301f, -779f, 326f), true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1044f, arg_2.a.a, 148f), vec3<f32>(global2.a, global1[_wgslsmith_index_u32(25869u, 20u)], 604f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<f32>(1942f, arg_1.a, 419f))) + vec3<f32>(global2.a, global2.a, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    global2 = Struct_1(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.c.x, global2.b), -1i));
    let var_0 = select(true, false, !any(vec4<bool>(true, true, true, true))) && true;
    let var_1 = var_0;
    var var_2 = vec2<bool>(4544i != u_input.e.x, var_0);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = func_4(var_0, global3[_wgslsmith_index_u32(41041u, 27u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), ~global2.b), _wgslsmith_sub_vec3_u32(countOneBits(u_input.d) ^ ~u_input.d, u_input.d), func_1(), firstLeadingBit(41305u)));
}


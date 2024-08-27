struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.b.x == 1391f;
    var var_1 = countOneBits(vec2<u32>(35306u, arg_0.a));
    global0 = ~arg_0.a;
    global1 = array<Struct_1, 12>();
    var var_2 = -11492i;
    return ~4294967295u;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = select(!vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false, true, true), vec4<bool>(true, false, !all(vec4<bool>(true, true, true, true)), u_input.b >= abs(4294967295u ^ u_input.b)), true);
    global0 = 17577u >> (firstTrailingBit(min(~arg_1.x ^ (u_input.b | arg_1.x), 55062u)) % 32u);
    var var_2 = Struct_1(_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(~26965u, 58522u >> (arg_1.x % 32u))), _wgslsmith_add_u32(u_input.b, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-217f + -1107f), _wgslsmith_f_op_f32(exp2(var_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-421f, var_0))))), ~(-reverseBits(vec4<i32>(u_input.c, 14828i, -52521i, u_input.a))) & vec4<i32>(abs(_wgslsmith_div_i32(0i, arg_2.x)), abs(_wgslsmith_div_i32(u_input.a, arg_2.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, u_input.a, arg_2.x, -1i), arg_2), ~72641i), arg_2.x));
    let var_3 = ~(~1u);
    return ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(arg_1) & arg_1, vec4<u32>(0u >> (u_input.b % 32u), arg_1.x, select(u_input.b, 4294967295u, false), var_2.a)), var_2.a);
}

fn func_1() -> Struct_1 {
    global0 = firstTrailingBit(u_input.b);
    global0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1283f))), ~vec4<u32>(4294967295u ^ func_2(global1[_wgslsmith_index_u32(4294967295u, 12u)], false, Struct_1(21437u, vec2<f32>(1161f, -1000f), vec4<i32>(-12071i, -2404i, u_input.c, 1i)), Struct_1(1u, vec2<f32>(970f, -1104f), vec4<i32>(-1i, u_input.c, u_input.a, u_input.a))), ~1u, ~(u_input.b & u_input.b), _wgslsmith_mult_u32(select(u_input.b, u_input.b, true), u_input.b)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.c, 0i, 0i) >> (~vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u) % vec4<u32>(32u)), countOneBits(vec4<i32>(2147483647i, u_input.c, -15243i, 19772i)))));
    global1 = array<Struct_1, 12>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(reverseBits(abs(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))), ~_wgslsmith_add_vec4_u32(vec4<u32>(23148u, 4294967295u, u_input.b, 14780u), vec4<u32>(2408u, u_input.b, 0u, 1u)) >> (~vec4<u32>(u_input.b, 4294967295u, u_input.b, 27914u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, _wgslsmith_div_u32(abs(4294967295u), firstTrailingBit(u_input.b)), firstTrailingBit(firstTrailingBit(4294967295u))), ~select(vec4<u32>(u_input.b, 42219u, 239u, u_input.b), min(vec4<u32>(u_input.b, 12320u, u_input.b, u_input.b), vec4<u32>(845u, 4294967295u, u_input.b, 0u)), vec4<bool>(true, true, true, true)), select(~vec4<u32>(u_input.b, u_input.b, 0u, 39891u) | vec4<u32>(68989u, u_input.b, 54119u, 14243u), ~(vec4<u32>(41854u, 0u, u_input.b, 41404u) & vec4<u32>(u_input.b, u_input.b, 1u, 25905u)), vec4<bool>(true, true, true, true)))), 12u)];
    var_0 = Struct_1(var_0.a, var_0.b, abs(firstTrailingBit(vec4<i32>(abs(-1i), var_0.c.x, ~(-36180i), 1i))));
    return global1[_wgslsmith_index_u32(4294967295u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(524u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-244f, -1051f, true)) - _wgslsmith_div_f32(-879f, -121f)), _wgslsmith_f_op_f32(-469f * _wgslsmith_div_f32(-1338f, 940f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -437f), -1015f)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(i32(-1i) * -2147483647i), ~35593i, 0i | _wgslsmith_mod_i32(u_input.c, 0i), -select(1i, 7592i, false)), select(reverseBits(~vec4<i32>(u_input.c, 2147483647i, -1i, -2147483647i)), vec4<i32>(-1i, u_input.a, 1i, u_input.c) | -vec4<i32>(u_input.a, 30720i, 0i, -2147483647i), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), any(vec2<bool>(false, true)))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.c, -100i, 1i), vec4<i32>(u_input.c, 7699i, u_input.c, 2147483647i))) >> (~abs(vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u)) % vec4<u32>(32u))));
    var_0 = func_1();
    global0 = 41929u;
    var_0 = func_1();
    let var_1 = false;
    var var_2 = func_1();
    var_2 = Struct_1(_wgslsmith_mult_u32(~var_2.a, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 6739u), var_0.a)), _wgslsmith_f_op_vec2_f32(select(var_0.b, var_2.b, !vec2<bool>(true, var_2.a > u_input.b))), abs(countOneBits((vec4<i32>(var_2.c.x, -12637i, 1i, u_input.c) & var_2.c) >> ((vec4<u32>(75526u, 1u, var_0.a, var_2.a) << (vec4<u32>(1u, u_input.b, var_2.a, var_2.a) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    global1 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_2.b, var_2.b)), var_2.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), var_2.b.x) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, var_2.b.x))))), func_1().b.x);
}


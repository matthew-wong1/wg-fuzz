struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<vec4<bool>, 13>;

var<private> global2: array<vec2<i32>, 26>;

var<private> global3: array<vec2<bool>, 22>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> u32 {
    global3 = array<vec2<bool>, 22>();
    var var_0 = firstTrailingBit(global2[_wgslsmith_index_u32(reverseBits(reverseBits(_wgslsmith_mult_u32(arg_0.x, abs(4639u)))), 26u)]);
    global1 = array<vec4<bool>, 13>();
    global2 = array<vec2<i32>, 26>();
    let var_1 = Struct_1(!(!all(select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, true, true, false), global1[_wgslsmith_index_u32(0u, 13u)]))), -vec2<i32>(-u_input.c, 10764i), -322f, vec4<i32>(23213i, _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 65887i, u_input.b.x, var_0.x), vec4<i32>(17226i, -1i, var_0.x, 2147483647i))), -13720i, 1i));
    return u_input.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, func_3(~vec2<u32>(arg_3, arg_3), arg_3 != 0u, _wgslsmith_f_op_f32(-arg_2)), ~1u, ~(~1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 0u) | vec4<u32>(5266u, arg_3, 11532u, arg_3), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, 32921u, 0u, 4294967295u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, arg_3, u_input.a)), ~vec4<u32>(0u, arg_3, 30100u, 13186u))), firstTrailingBit(vec4<u32>(u_input.a, 76048u, _wgslsmith_mult_u32(arg_3, _wgslsmith_div_u32(122050u, u_input.a)), ~arg_3 << (1u % 32u))), max(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, 4534u, u_input.a, u_input.a) >> (vec4<u32>(6969u, arg_3, u_input.a, 25706u) % vec4<u32>(32u)), select(vec4<u32>(arg_3, arg_3, u_input.a, u_input.a), vec4<u32>(u_input.a, 6607u, arg_3, arg_3), global1[_wgslsmith_index_u32(arg_3, 13u)]), any(arg_0)), ~vec4<u32>(21849u, arg_3, u_input.a, 4294967295u) >> (vec4<u32>(u_input.a, u_input.a, 0u, 0u) % vec4<u32>(32u))), vec4<u32>(34376u, 59369u, ~abs(u_input.a), ~(~4294967295u))));
    let var_1 = firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(34724u >> ((1u << (arg_3 % 32u)) % 32u), firstLeadingBit(~0u)), min(var_0.x, _wgslsmith_sub_u32(58147u >> (arg_3 % 32u), _wgslsmith_sub_u32(var_0.x, 39002u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 - 1000f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) + -2298f)))));
    var_2 = _wgslsmith_f_op_f32(-arg_2);
    var var_3 = any(arg_0.xx);
    return u_input.b.x >> (_wgslsmith_sub_u32(1u, ~4294967295u) % 32u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<vec4<bool>, 13>();
    let var_0 = global0[_wgslsmith_index_u32(~(~23568u << (_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a, 60167u), u_input.a) % 32u)), 18u)];
    let var_1 = vec3<i32>(45026i, _wgslsmith_mult_i32(0i, func_2(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), select(vec2<bool>(arg_1.a, arg_1.a), global3[_wgslsmith_index_u32(46647u, 22u)], false), 143f, u_input.a) ^ -(~arg_1.b.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~arg_1.d.x, _wgslsmith_sub_i32(arg_1.d.x, arg_1.d.x)), 0i, arg_1.b.x >> (u_input.a % 32u)), firstLeadingBit(select(arg_1.b.x, u_input.c & 43283i, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * arg_1.c))) - arg_1.c), _wgslsmith_f_op_f32(ceil(arg_0.x)));
    let var_3 = var_2;
    return ~max(abs(vec2<u32>(u_input.a, 1u)), vec2<u32>(51718u & u_input.a, min(select(u_input.a, u_input.a, arg_1.a), ~u_input.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    return global0[_wgslsmith_index_u32(u_input.a << (_wgslsmith_mod_u32(arg_0.x, min(1u, ~(~u_input.a))) % 32u), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 13>();
    global1 = array<vec4<bool>, 13>();
    var var_0 = _wgslsmith_add_i32(35128i, 0i);
    global1 = array<vec4<bool>, 13>();
    let var_1 = u_input.a;
    global2 = array<vec2<i32>, 26>();
    let var_2 = ~vec4<i32>(u_input.c, -58313i, firstLeadingBit(-387i), -24406i);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(58049u << (var_1 % 32u), ~(~(~u_input.a))), 18u)];
    var var_4 = func_4(min(firstTrailingBit(~vec2<u32>(52197u, var_1)) << (_wgslsmith_sub_vec2_u32(func_1(vec3<f32>(var_3.a, -487f, var_3.a), Struct_1(false, vec2<i32>(1i, u_input.c), var_3.a, vec4<i32>(1i, u_input.b.x, var_2.x, -26719i))), ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(var_1, 2395u)), vec2<u32>(u_input.a, var_1)) ^ vec2<u32>(1u, 1u)), global0[_wgslsmith_index_u32(11827u, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(31206u, -vec4<i32>(u_input.b.x, ~select(-34850i, -53788i, false), 45620i ^ var_2.x, var_2.x));
}


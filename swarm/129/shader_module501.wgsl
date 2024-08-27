struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(110620u, vec4<i32>(1i, 2147483647i, 1i, 2147483647i), 4294967295u, 36445u, 100905u);

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec4<i32> = vec4<i32>(43187i, 65108i, -3559i, -21136i);

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~7531u, 7u)];
    return Struct_1(0u, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(global0.b, _wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(var_0.b.x, -1i, global0.b.x, global2.x))) ^ abs(max(global0.b, vec4<i32>(11466i, global0.b.x, u_input.b, 4561i))), ~vec4<i32>(_wgslsmith_mult_i32(global0.b.x, 28933i), _wgslsmith_add_i32(global2.x, u_input.b), 1i, ~global2.x)), ~var_0.e, ~u_input.c.x, _wgslsmith_mult_u32(var_0.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 70621u), u_input.c)) << (_wgslsmith_mod_u32(var_0.d, abs(~global0.d)) % 32u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = global1[_wgslsmith_index_u32(~(39187u >> (firstLeadingBit(global0.e) % 32u)), 7u)];
    var var_2 = arg_1;
    var var_3 = u_input.c;
    var var_4 = _wgslsmith_add_vec2_u32(max(var_3.wx, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, var_0.x), vec2<u32>(6257u, var_2.c)))), vec2<u32>(~(~6614u), 1u));
    return arg_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = func_3(arg_0.x, func_2(!(!arg_0.x)), func_2(true));
    var var_1 = 43432u;
    var var_2 = !(!vec4<bool>(!(!arg_0.x), true, true, any(vec4<bool>(arg_0.x, false, false, false))));
    global0 = global1[_wgslsmith_index_u32(19431u, 7u)];
    global3 = array<Struct_1, 3>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.e, ~global0.e), 3u)];
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1000f))) - _wgslsmith_f_op_f32(trunc(-1000f))))));
    let var_1 = func_1(vec3<bool>(false, _wgslsmith_mult_u32(firstLeadingBit(global0.e), u_input.c.x) != _wgslsmith_sub_u32(u_input.a.x ^ global0.c, abs(1u)), false), ~u_input.c.wx);
    let var_2 = Struct_1(31480u, var_1.b, var_1.d, 0u, 1u & _wgslsmith_mult_u32(global0.c, 4294967295u));
    let var_3 = var_2;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1771f))), 259f, 768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(583f)) * _wgslsmith_f_op_f32(197f - 608f)) + -1881f)));
    let x = u_input.a;
    s_output = StorageBuffer(106f, func_2(true).b.x, global2.wy, countOneBits(13580i));
}


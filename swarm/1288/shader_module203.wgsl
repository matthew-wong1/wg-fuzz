struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_4 {
    let var_0 = vec3<i32>(abs(firstTrailingBit((u_input.a.x ^ -36193i) & arg_1)), ~_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(2147483647i, 0i)), ~(-(u_input.a.x & arg_1) ^ arg_1));
    global0 = array<bool, 30>();
    let var_1 = ~1u;
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    return Struct_4(Struct_3(~var_1, _wgslsmith_f_op_f32(exp2(1f)), 1586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f - -1084f)), 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> u32 {
    let var_0 = Struct_2(arg_0.a.c, i32(-1i) * -61027i, abs(select(~vec4<u32>(12395u, 32271u, 48163u, 7793u) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a, 0u, arg_0.a.a, arg_0.a.a), vec4<u32>(0u, arg_0.a.a, 36339u, arg_0.a.a)), reverseBits(firstTrailingBit(vec4<u32>(arg_0.a.a, 4294967295u, arg_0.a.a, arg_0.a.a))), false)), vec2<u32>(arg_0.a.a, 11681u));
    global0 = array<bool, 30>();
    let var_1 = arg_0.a.a;
    var var_2 = select(~_wgslsmith_div_vec2_u32(vec2<u32>(abs(var_1), 1u | var_0.d.x), abs(vec2<u32>(var_0.d.x, var_0.c.x))), countOneBits(vec2<u32>(abs(arg_0.a.a ^ 4294967295u), arg_0.a.a)), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b, 1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(686f, 259f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, arg_0.a.d) + vec2<f32>(var_0.a, arg_0.a.c))))))));
    return var_0.d.x << (var_1 % 32u);
}

fn func_1() -> u32 {
    var var_0 = min(firstLeadingBit(vec2<i32>(1i, ~u_input.a.x)), -u_input.a.zz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(435f, -537f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1622f + 650f) - _wgslsmith_f_op_f32(1151f - 1875f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-257f + 195f) * _wgslsmith_div_f32(103f, -164f)))));
    var_0 = firstLeadingBit(~max(select(vec2<i32>(u_input.a.x, var_0.x) << (vec2<u32>(16739u, 4294967295u) % vec2<u32>(32u)), u_input.a.wy, vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)])), -vec2<i32>(var_0.x, 0i) | vec2<i32>(var_0.x, u_input.a.x)));
    global0 = array<bool, 30>();
    let var_2 = select(vec2<bool>(false, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(4294967295u, 67894u, 1u, 1u), vec4<u32>(0u, 31887u, 14883u, 18763u))), 30u)]), true);
    return 29290u & _wgslsmith_mult_u32(4294967295u, func_3(func_2(4294967295u, var_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 30u)])) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(37143u, 4294967295u, 0u), min(vec3<u32>(38752u, 6723u, 1u), vec3<u32>(4294967295u, 1u, 43485u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(~8517u, 30u)], true, !global0[_wgslsmith_index_u32(20885u, 30u)], true);
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(func_1(), 30u)], global0[_wgslsmith_index_u32(~16157u << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(9213u, 53803u), vec2<u32>(1u, 1u)) % 32u), 30u)], true, true);
    var var_2 = 65245u;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2472f))))), ~u_input.a.x, ~(~firstTrailingBit(vec4<u32>(18737u, 37952u, 25048u, 8443u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(8323u, 4294967295u, 0u, 1u), vec4<u32>(17555u, 0u, 0u, 4294967295u), var_1))), abs(select(vec2<u32>(~1u, _wgslsmith_mod_u32(0u, 4294967295u)), countOneBits(vec2<u32>(11148u, 1u)), vec2<bool>(false, false))));
    var var_4 = 23049u;
    let var_5 = -var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(select(~u_input.a | -u_input.a, u_input.a, var_1.x), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(16260i, u_input.a.x, 57131i, -2147483647i)), u_input.a), select(abs(vec4<i32>(var_3.b, u_input.a.x, 8979i, -2147483647i)), ~u_input.a, true))));
}


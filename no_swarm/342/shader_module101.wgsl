struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<f32, 11>;

var<private> global2: array<vec4<i32>, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f - 983f)) * _wgslsmith_f_op_f32(trunc(1291f)))), arg_3.x);
    global1 = array<f32, 11>();
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, arg_0.x, ~(var_0.a.x << (u_input.b % 32u))), abs(vec3<u32>(u_input.a, ~19986u, ~u_input.c))), ~vec3<u32>(arg_0.x & 0u, reverseBits(~u_input.a), ~_wgslsmith_clamp_u32(0u, 84094u, u_input.a)));
    global2 = array<vec4<i32>, 2>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1564f * _wgslsmith_div_f32(279f, 1377f)) * var_0.b))), _wgslsmith_f_op_f32(abs(1000f)), global1[_wgslsmith_index_u32(arg_0.x, 11u)], -1000f);
    return ~arg_0.xxw;
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~min(u_input.b, arg_0), 0u, 1u), func_3(vec4<u32>(~72476u, ~arg_0, ~0u, 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(24559u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(109829u, 11u)])), all(vec4<bool>(true, arg_1, arg_1, true)), global2[_wgslsmith_index_u32(65945u, 2u)])), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0 ^ 23519u, 0u, arg_0), _wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, 13905u, 19700u), vec3<u32>(14092u, u_input.b, u_input.c), vec3<bool>(arg_1, arg_1, arg_1)), vec3<u32>(4294967295u, 66874u, arg_0))));
    let var_1 = Struct_1(vec4<u32>(~firstTrailingBit(0u), u_input.a, ~u_input.a << (~14200u % 32u), arg_0) ^ select(vec4<u32>(reverseBits(arg_0), _wgslsmith_sub_u32(arg_0, 4294967295u), 1u, _wgslsmith_clamp_u32(4294967295u, 33664u, u_input.c)), ~vec4<u32>(6958u, arg_0, arg_0, arg_0), arg_1), _wgslsmith_div_f32(158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12607u, 11u)] * -1231f), 1495f, true)))), max(-1i, (~(-10634i) << (min(0u, u_input.c) % 32u)) << (4294967295u % 32u)));
    var var_2 = ~(~((firstLeadingBit(vec2<i32>(var_1.c, 1i)) & -vec2<i32>(var_1.c, -5395i)) & vec2<i32>(_wgslsmith_mult_i32(var_1.c, 2147483647i), 19307i)));
    var var_3 = select(vec2<bool>(true, false), !select(!(!vec2<bool>(arg_1, true)), select(select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), vec2<bool>(true, false)), !vec2<bool>(true, arg_1), true), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_1, arg_1), true)), !select(vec2<bool>(1i == var_1.c, true), vec2<bool>(select(arg_1, false, arg_1), any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_2 = vec2<i32>(~_wgslsmith_add_i32(~var_1.c, _wgslsmith_add_i32(0i, ~var_1.c)), 13642i | _wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_1.c, var_2.x, -3759i)), firstTrailingBit(min(vec3<i32>(var_1.c, 1546i, var_2.x), vec3<i32>(var_2.x, 2147483647i, 63717i)))));
    return -627f;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~(~u_input.a)), 32u)];
    global2 = array<vec4<i32>, 2>();
    global2 = array<vec4<i32>, 2>();
    global2 = array<vec4<i32>, 2>();
    let var_1 = Struct_1(~vec4<u32>(80531u, var_0.a.x, 37852u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a), var_0.a.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(33436u, true)) * _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c, 11u)], var_0.b, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1196f + global1[_wgslsmith_index_u32(0u, 11u)]))) - -603f), arg_0);
    return ~var_0.a & ~(~(~var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 62026u, ~_wgslsmith_mult_u32(u_input.b, 0u), u_input.c), func_1(-71317i) & vec4<u32>(~u_input.a, firstTrailingBit(113739u), u_input.a, 0u | u_input.b)), -1490f, -_wgslsmith_mult_i32(24697i, 1i));
    var var_1 = vec3<i32>(firstLeadingBit(reverseBits(var_0.c)), var_0.c, -var_0.c);
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    let var_2 = global0[_wgslsmith_index_u32(4294967295u & var_0.a.x, 32u)];
    var var_3 = Struct_1(~min(~vec4<u32>(4294967295u, var_0.a.x, u_input.a, u_input.b), vec4<u32>(abs(0u), 1u, u_input.a, abs(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-298f))), -34620i);
    var_1 = vec3<i32>(min(var_3.c, -2147483647i), _wgslsmith_div_i32(var_3.c, firstTrailingBit(-select(var_2.c, 0i, true))), ~_wgslsmith_mod_i32((2147483647i >> (0u % 32u)) << ((var_2.a.x ^ var_2.a.x) % 32u), var_3.c));
    global2 = array<vec4<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, firstTrailingBit(min(-vec3<i32>(2147483647i, 652i, var_1.x), vec3<i32>(-43443i, 1i, _wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(15338i, 2147483647i))))), min(var_2.a.x, 1u));
}


struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = arg_0;
    var var_1 = Struct_1(-countOneBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, 2147483647i), u_input.b.x)));
    var var_2 = Struct_1(-var_1.a);
    return _wgslsmith_div_i32(19532i, var_1.a);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-613f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(759f * -1892f))))), -1000f, 1248f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-2115f, -1000f, 749f), vec3<f32>(-267f, 118f, 733f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(417f, 1403f, 761f) + vec3<f32>(-440f, -904f, -262f)), vec3<bool>(all(vec3<bool>(false, true, false)), select(global0[_wgslsmith_index_u32(51386u, 3u)], true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), true)))));
    global0 = array<bool, 3>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 2397f, var_1), vec3<f32>(-670f, -823f, var_1), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(21552u, 3u)])))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, -768f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -321f)))))))));
    global0 = array<bool, 3>();
    return !global0[_wgslsmith_index_u32(u_input.a, 3u)];
}

fn func_4(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-840f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-121f, 261f, global0[_wgslsmith_index_u32(u_input.a, 3u)])), -112f)), _wgslsmith_f_op_f32(299f - _wgslsmith_div_f32(896f, 794f)), 0u < reverseBits(u_input.a)))));
    var var_1 = Struct_2(Struct_1(~u_input.b.x));
    let var_2 = Struct_1(_wgslsmith_div_i32(-var_1.a.a, ~func_2(var_0)));
    let var_3 = Struct_4(Struct_2(var_2));
    global0 = array<bool, 3>();
    return ~1i;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-847f))) + _wgslsmith_f_op_f32(1f * -532f))), -27210i, i32(-1i) * -27158i);
    var var_2 = Struct_1(_wgslsmith_sub_i32(func_4(func_3(), any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(2949u, 3u)], global0[_wgslsmith_index_u32(73510u, 3u)]), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(arg_1.x, 3u)]))), ~u_input.b.x));
    let var_3 = select(_wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(~vec4<i32>(var_2.a, u_input.b.x, 28920i, 4816i), vec4<i32>(arg_0, -2147483647i, u_input.d, -21636i) >> (vec4<u32>(1u, 10723u, 14663u, var_0.x) % vec4<u32>(32u))), -vec4<i32>(var_2.a, 1i, -1i, ~var_2.a)), vec4<i32>(arg_0, var_2.a, var_2.a, 0i), true && global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, var_0.x << (arg_1.x % 32u), u_input.a), 3u)]);
    return vec2<f32>(-574f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -438f, !global0[_wgslsmith_index_u32(var_0.x ^ 26517u, 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2645f)) + -619f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(1i));
    var var_1 = 1u;
    var_1 = ~4294967295u;
    var var_2 = _wgslsmith_add_u32(73925u | u_input.a, u_input.a >> (31848u % 32u));
    var_2 = firstLeadingBit(select(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 32388u) >> (vec4<u32>(24293u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 29436u, 105259u, 23222u)), u_input.a), 0u, global0[_wgslsmith_index_u32(u_input.a, 3u)]));
    var var_3 = vec3<i32>(var_0.a.a, firstLeadingBit(firstLeadingBit(firstLeadingBit(var_0.a.a & var_0.a.a))), 20532i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2177f, -910f))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(~var_0.a.a, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a))))))), -512f);
}


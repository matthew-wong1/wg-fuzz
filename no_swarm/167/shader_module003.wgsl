struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-1i, -43741i, i32(-2147483648), 2147483647i, -34733i, -5353i, 1i, 6213i, i32(-2147483648), 28364i, 1i, -25461i, i32(-2147483648), i32(-2147483648), 2147483647i);

var<private> global1: u32;

var<private> global2: array<bool, 4>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    return _wgslsmith_mult_vec3_u32(abs(firstLeadingBit(vec3<u32>(arg_0 << (arg_0 % 32u), _wgslsmith_sub_u32(50221u, 1u), arg_0 << (arg_0 % 32u)))), ~(vec3<u32>(abs(arg_0), 4294967295u, 1u) ^ reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 6505u, 83495u), vec3<u32>(4294967295u, 43418u, 5491u)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<u32>) -> vec3<u32> {
    return ~_wgslsmith_mod_vec3_u32(~(~func_3(arg_3.x)), ~(arg_3 | vec3<u32>(17259u, arg_3.x, arg_3.x)));
}

fn func_1() -> i32 {
    global0 = array<i32, 15>();
    var var_0 = func_2(-2147483647i, vec2<i32>(~(~(u_input.a ^ 1i)), global0[_wgslsmith_index_u32(select(0u, min(20308u, 13635u), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 0u, max(0u, 3936u)), 4u)]), 15u)]), -firstTrailingBit(22381i), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(68041u, ~76006u, ~16889u), vec3<u32>(1u, 1u, 1u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(62774u, 1u, 27130u))), ~select(~vec3<u32>(61187u, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 37729u, 4294967295u)), true)));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, firstTrailingBit(abs(0u)), ~62860u, var_0.x), ~vec4<u32>(4294967295u, _wgslsmith_div_u32(~11014u, _wgslsmith_clamp_u32(19416u, var_0.x, 0u)), ~4294967295u, 12204u >> ((var_0.x & var_0.x) % 32u)));
    let var_2 = ~4294967295u;
    var var_3 = !(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_1, 4u)] & true, true)));
    return global0[_wgslsmith_index_u32(~(~(~var_0.x)), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 1u)), ~(~vec3<u32>(54662u, 63741u, 0u)), vec3<u32>(reverseBits(4294967295u), select(1u, 4294967295u, true), 1u))), 1f, select(~(~(global0[_wgslsmith_index_u32(63592u, 15u)] & 0i)), u_input.a, false), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, reverseBits(61276u)), vec2<u32>(abs(31077u), _wgslsmith_mult_u32(33295u, 61202u))), 4u)]);
    global1 = 20985u;
    global2 = array<bool, 4>();
    var var_1 = min(_wgslsmith_sub_i32(1i, 1i), _wgslsmith_sub_i32(-1i & (-2147483647i << (var_0.a.x % 32u)), u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, -558f)));
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3, 1055f, false)), var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_2.x - 1119f))), -540f, 1f), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(2147483647i, u_input.a, 46392i, u_input.a) ^ vec4<i32>(-2147483647i, 1i, 2147483647i, var_0.c)), _wgslsmith_mod_vec4_i32(-vec4<i32>(8310i, global0[_wgslsmith_index_u32(var_0.a.x, 15u)], var_0.c, global0[_wgslsmith_index_u32(var_0.a.x, 15u)]), -vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(56410u, 15u)], var_0.c, -1i))), ~vec4<i32>(u_input.a, u_input.a & 16399i, _wgslsmith_add_i32(-51892i, 0i), -14469i)));
    let var_5 = var_0.a.x;
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(344f)), 2132f))), _wgslsmith_sub_i32(~var_0.c, ~_wgslsmith_dot_vec4_i32(min(var_4.b, vec4<i32>(0i, u_input.a, var_0.c, var_4.b.x)), -var_4.b)));
}


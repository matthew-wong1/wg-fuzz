struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 14> = array<i32, 14>(-18252i, -5756i, 2147483647i, -37632i, -13472i, 57963i, 14534i, 2147483647i, 54049i, 49294i, 24888i, 2147483647i, 1i, 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> bool {
    return select(false, _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.x, max(u_input.a.x, u_input.a.x)), ~abs(0u)) != arg_1.x, any(vec4<bool>(false, true, !(!arg_3), arg_3)));
}

fn func_2() -> i32 {
    var var_0 = -global1[_wgslsmith_index_u32(max(~72267u, ~countOneBits(_wgslsmith_mod_u32(43640u, u_input.a.x))), 14u)];
    var_0 = 46511i;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -1i, 32183i), u_input.b.xy) << (vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(8199i, _wgslsmith_dot_vec4_i32(vec4<i32>(32041i, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.b.x, global1[_wgslsmith_index_u32(1u, 14u)]), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 0i, -6807i, -2147483647i))), vec2<i32>(_wgslsmith_add_i32(2147483647i, u_input.b.x) & 1783i, _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(62149u, 14u)], 45944i)))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = ~u_input.a.x;
    global1 = array<i32, 14>();
    return abs(46549i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!vec2<bool>(func_1(u_input.b, ~vec3<u32>(0u, u_input.a.x, u_input.a.x), ~5946i, all(vec3<bool>(true, false, false))), 1i == _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 14u)], -1i)), abs(-(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i, 0i, global1[_wgslsmith_index_u32(4294967295u, 14u)]) << (vec4<u32>(0u, 0u, 43034u, 1u) % vec4<u32>(32u)))));
    let var_1 = Struct_2(!vec2<bool>(true, !any(vec3<bool>(false, var_0.a.x, var_0.a.x))), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(1i, var_0.b.x), func_2()), global1[_wgslsmith_index_u32(u_input.a.x, 14u)], var_0.b.x, abs(func_3(countOneBits(var_0.b.x), all(vec2<bool>(var_0.a.x, false)), true))));
    let var_2 = -1583f;
    var_0 = var_1;
    var var_3 = _wgslsmith_mult_i32(-(~(-1i)), _wgslsmith_sub_i32(60496i, ~(u_input.b.x >> (u_input.a.x % 32u))) >> ((_wgslsmith_mult_u32(max(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) << (reverseBits(4294967295u) % 32u)) % 32u));
    let var_4 = ~(~u_input.a);
    var var_5 = vec2<bool>(!any(vec3<bool>(any(vec3<bool>(var_1.a.x, false, false)), true, select(var_1.a.x, var_1.a.x, false))), var_1.a.x);
    global1 = array<i32, 14>();
    let var_6 = (1u | var_4.x) << (~u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, vec3<u32>(4294967295u, firstTrailingBit(firstTrailingBit(~69145u)), u_input.a.x), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, firstTrailingBit(var_0.b.x)), abs(firstLeadingBit(-54806i)), ~var_1.b.x) ^ ~(_wgslsmith_div_vec3_i32(vec3<i32>(20059i, var_0.b.x, -3525i), u_input.b) >> (abs(vec3<u32>(var_6, 57723u, 0u)) % vec3<u32>(32u))), ~(i32(-1i) * -1i));
}


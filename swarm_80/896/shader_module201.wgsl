struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1188f, -479f, -798f), vec3<f32>(-747f, 1000f, 294f), vec3<f32>(320f, -1154f, 599f), vec3<f32>(375f, -338f, 901f), vec3<f32>(597f, 1784f, -2055f), vec3<f32>(764f, -397f, 350f), vec3<f32>(479f, -169f, -849f), vec3<f32>(-403f, 973f, -693f), vec3<f32>(-377f, 475f, -1160f), vec3<f32>(-456f, -840f, -1462f), vec3<f32>(-398f, 402f, 1592f), vec3<f32>(1683f, 634f, -964f), vec3<f32>(370f, -1000f, -1000f), vec3<f32>(-243f, 1057f, 138f), vec3<f32>(715f, -1972f, -1378f), vec3<f32>(1000f, -118f, -362f));

var<private> global2: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-483f, 1144f, -261f), vec3<f32>(-556f, 881f, 1466f), vec3<f32>(2006f, -1301f, 691f), vec3<f32>(-737f, -617f, 156f), vec3<f32>(-653f, -533f, 475f), vec3<f32>(-1000f, -2028f, -282f), vec3<f32>(217f, -112f, 176f), vec3<f32>(-1000f, -2040f, -943f), vec3<f32>(-195f, 1481f, 1128f), vec3<f32>(2711f, -419f, -193f), vec3<f32>(493f, 599f, 2838f), vec3<f32>(136f, -1000f, -308f), vec3<f32>(-1206f, -515f, 1000f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global2 = array<vec3<f32>, 13>();
    global2 = array<vec3<f32>, 13>();
    let var_0 = Struct_3(u_input.a, global0.a);
    let var_1 = -(max(vec4<i32>(var_0.a.x, select(-5189i, -2147483647i, global0.a.a), ~var_0.a.x, 1i), vec4<i32>(-11281i >> (0u % 32u), reverseBits(u_input.a.x), 2147483647i, _wgslsmith_div_i32(1i, var_0.a.x))) | vec4<i32>(var_0.a.x, _wgslsmith_add_i32(1i, ~(-34098i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x), firstTrailingBit(-15166i)), firstTrailingBit(var_0.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 100465u, 1639u, 0u), vec4<u32>(1u, 4294967295u, 26909u, 0u)) % 32u)));
    let var_2 = false;
    return var_0.b.b & var_2;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    return select(true, func_3(), global0.a.b);
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec3<bool>(global0.a.b, !(!func_2(Struct_1(global0.a.b, false), Struct_4(global0.a, u_input.a.x), vec4<f32>(143f, 2595f, 1000f, -550f), Struct_1(true, global0.a.a))), !global0.a.b), !vec3<bool>(true, global0.a.b, global0.a.a), !vec3<bool>(!all(vec4<bool>(true, global0.a.a, global0.a.b, true)), global0.b == ~(-14304i), true));
    global1 = array<vec3<f32>, 16>();
    let var_1 = Struct_3(u_input.a, global0.a);
    global1 = array<vec3<f32>, 16>();
    var_0 = vec3<bool>(select(var_1.b.b, true, func_2(var_1.b, Struct_4(Struct_1(var_0.x, false), -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, 257f, 421f, -924f) + vec4<f32>(-170f, 1007f, -517f, 1377f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(994f, 1803f, 666f, 313f) + vec4<f32>(979f, -829f, -146f, -212f))), Struct_1(true, false))), false, global0.a.b);
    return Struct_1(true, var_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 16>();
    let var_0 = ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~19363u, firstTrailingBit(36694u)), ~(~vec2<u32>(4294967295u, 125695u))), ~(~(~vec2<u32>(13211u, 78315u))));
    var var_1 = Struct_1(!(~(global0.b & 42536i) <= ~global0.b), -(-53965i << (~var_0.x % 32u)) > -59353i);
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(1i, u_input.a.x, global0.b) | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(70322i, global0.b, u_input.a.x))), ~5097i, u_input.b.x), reverseBits(-_wgslsmith_mult_i32(-13658i, 7921i) & u_input.b.x), u_input.b.x, u_input.a.x);
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-1026f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(646f - -1091f))) * _wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(abs(2052f)))))));
}


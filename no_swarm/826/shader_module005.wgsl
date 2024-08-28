struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -165f);
    var var_1 = select(max(abs(vec4<i32>(_wgslsmith_sub_i32(arg_2, 1i), select(arg_2, arg_2, arg_1), ~(-9616i), arg_2)), vec4<i32>(_wgslsmith_mod_i32(1i, -arg_2), arg_2, arg_2, -1i)), vec4<i32>(reverseBits(~arg_2), 18746i, ~(~3669i), firstTrailingBit(countOneBits(9687i))) | ~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_2, 0i, arg_2), vec4<i32>(1i, -14177i, arg_2, arg_2)), min(vec4<i32>(-15839i, arg_2, 0i, arg_2), vec4<i32>(-8194i, arg_2, arg_2, -2147483647i))), any(global0[_wgslsmith_index_u32(~1u, 23u)]));
    global0 = array<vec3<bool>, 23>();
    var var_2 = Struct_2(~49255i, _wgslsmith_clamp_u32(~22491u, _wgslsmith_sub_u32(~arg_0.x, 1u) ^ _wgslsmith_dot_vec3_u32(arg_0.ywy, u_input.a), arg_0.x));
    let var_3 = Struct_1(!select(vec2<bool>(false, all(vec3<bool>(arg_1, arg_1, arg_1))), !vec2<bool>(arg_1, arg_1), vec2<bool>(all(vec3<bool>(false, arg_1, arg_1)), arg_1 || true)));
    return !vec4<bool>(var_3.a.x, true | (1u >= u_input.a.x), !(!any(global0[_wgslsmith_index_u32(var_2.b, 23u)])), !(!arg_1));
}

fn func_2() -> Struct_3 {
    global0 = array<vec3<bool>, 23>();
    var var_0 = select(!(!func_3(abs(vec4<u32>(u_input.a.x, 0u, 31422u, u_input.a.x)), true, 15621i)), func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 7397u >> (u_input.a.x % 32u), u_input.a.x, _wgslsmith_mod_u32(0u, 15602u)), ~select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 56035u), vec4<u32>(38855u, 1u, 1u, 0u), false), ~(~vec4<u32>(21578u, u_input.a.x, 73863u, 84518u))), false, 1i), all(!(!func_3(vec4<u32>(u_input.a.x, u_input.a.x, 3043u, 1u), true, -19954i).ww)));
    global0 = array<vec3<bool>, 23>();
    let var_1 = Struct_1(var_0.xw);
    var_0 = func_3(vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(43400u, ~1u), 4294967295u, ~9369u), false, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(20429i, -27990i, -31942i), vec3<i32>(-26183i, 1i, -14955i)), min(vec3<i32>(0i, -1996i, -56343i), vec3<i32>(2147483647i, 28873i, 1i))), vec3<i32>(-1i, i32(-1i) * -2147483647i, 1i)));
    return Struct_3(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28612i, 2147483647i), vec2<i32>(-1i, -2162i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-22070i, -27934i, -3647i), vec3<i32>(2147483647i, 9699i, 2147483647i)), firstLeadingBit(vec3<i32>(59312i, 1i, -9080i))))), Struct_2(4724i, ~(~(~u_input.a.x))), var_1, _wgslsmith_clamp_i32(reverseBits(1i), abs(-28595i), 1i));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_add_i32(min(arg_0.b.a, ~arg_2), -1527i);
    let var_2 = false;
    let var_3 = select(!select(func_3(firstLeadingBit(vec4<u32>(arg_0.b.b, arg_0.b.b, 0u, 67290u)), arg_0.c.a.x || false, var_1).yx, !select(vec2<bool>(false, true), vec2<bool>(true, var_2), arg_0.c.a), true), select(arg_0.c.a, arg_0.c.a, all(!func_3(vec4<u32>(4294967295u, 0u, var_0.b.b, u_input.a.x), true, arg_0.d))), -((arg_0.d | arg_0.a) ^ -arg_0.a) < (_wgslsmith_sub_i32(countOneBits(var_1), var_0.b.a) << (~(19902u << (u_input.a.x % 32u)) % 32u)));
    let var_4 = arg_0.b.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1234f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = var_0;
    var var_2 = vec2<f32>(-653f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1024f + -286f), _wgslsmith_f_op_f32(func_1(Struct_3(-40571i, Struct_2(26721i, 43522u), Struct_1(vec2<bool>(var_1, var_0)), 1i), vec2<i32>(0i, 17765i), -18027i)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(171f, -1323f)) + _wgslsmith_f_op_f32(f32(-1f) * -747f)))));
    var_2 = vec2<f32>(-2811f, 426f);
    global0 = array<vec3<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(43274i, vec2<u32>(u_input.a.x, ~(~(~u_input.a.x))), min(reverseBits(~u_input.a), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) >> (~_wgslsmith_div_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), vec4<i32>(~(-2147483647i), abs(i32(-1i) * -19669i), 35475i << (func_2().b.b % 32u), 34871i), ~vec4<u32>(~(19343u << (u_input.a.x % 32u)), ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.xx) & u_input.a.x));
}


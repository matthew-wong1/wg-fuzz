struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(253f), Struct_1(566f), Struct_1(-602f), Struct_1(722f), Struct_1(525f), Struct_1(491f), Struct_1(-620f), Struct_1(308f), Struct_1(399f), Struct_1(-184f), Struct_1(-2032f), Struct_1(954f), Struct_1(271f), Struct_1(-1233f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = false;
    var_0 = true & any(vec3<bool>(true, _wgslsmith_f_op_f32(round(1918f)) >= 232f, true));
    var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(1931f, 434f)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a - -736f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(405f))))))), false));
    return -399f;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    var var_0 = any(vec2<bool>(!(!all(vec4<bool>(false, arg_0.a, false, arg_0.b))), true));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1846f - 371f) + _wgslsmith_f_op_f32(1539f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))) - _wgslsmith_f_op_f32(sign(1083f)));
    var_2 = _wgslsmith_div_f32(arg_0.d.a, _wgslsmith_f_op_f32(func_3()));
    var var_3 = _wgslsmith_div_vec4_i32(~firstTrailingBit(-(vec4<i32>(-1i, -53172i, arg_1.x, -1i) << (vec4<u32>(u_input.a.x, 21962u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), select(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 63325i, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, u_input.b, 16470i))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_1.x, u_input.b, u_input.b, 18570i)), countOneBits(vec4<i32>(2147483647i, 1i, arg_1.x, arg_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -20311i, 0i), vec4<i32>(-717i, 0i, arg_1.x, arg_1.x))), -firstTrailingBit(vec4<i32>(arg_1.x, u_input.b, -2147483647i, 0i))), !(!vec4<bool>(true, true, arg_0.a, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d.a)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), select(any(vec4<bool>(false, false, true, true)), true, arg_1.a <= -324f), vec3<bool>(true, true, true), Struct_1(760f), any(select(global0[_wgslsmith_index_u32(23354u, 3u)], vec2<bool>(true, false), true))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-67718i, u_input.b, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -1i), vec3<i32>(-43535i, u_input.b, -61324i))), vec3<i32>(countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, -2147483647i), vec4<i32>(-46135i, 2147483647i, u_input.b, u_input.b)), u_input.b)))));
    global1 = array<Struct_1, 14>();
    var var_1 = Struct_2(false, any(vec3<bool>(true, true, true)) && true, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(false, _wgslsmith_div_i32(-40993i, u_input.b) != _wgslsmith_mult_i32(u_input.b, 29209i), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(step(786f, arg_1.a))))), !((select(false, false, false) && select(false, false, false)) || ((u_input.b & 2147483647i) == ~u_input.b)));
    global1 = array<Struct_1, 14>();
    var_0 = global1[_wgslsmith_index_u32(arg_0.x, 14u)];
    return any(vec4<bool>(var_1.d.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-804f, var_1.d.a))), var_1.a, any(!select(vec4<bool>(var_1.b, false, false, var_1.c.x), vec4<bool>(true, var_1.c.x, var_1.e, false), var_1.e)), var_1.b));
}

fn func_5(arg_0: bool, arg_1: u32) -> vec2<u32> {
    var var_0 = 10088u;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.a | u_input.a, _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(arg_1, arg_1)))), ~vec3<u32>(~(1u << (u_input.a.x % 32u)), arg_1, _wgslsmith_add_u32(1u, ~u_input.a.x)));
    return vec2<u32>(u_input.a.x, abs(_wgslsmith_sub_u32(71609u, _wgslsmith_mult_u32(1u, arg_1 << (arg_1 % 32u)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_5(true != func_4(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 20742u, 0u, u_input.a.x), vec4<u32>(4294967295u, 70276u, u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(false, true, vec3<bool>(true, false, false), Struct_1(-969f), true), vec3<i32>(26400i, u_input.b, -8981i))))), 17195u);
    global0 = array<vec2<bool>, 3>();
    let var_1 = Struct_2(true, true, select(vec3<bool>(true, false, all(vec3<bool>(false, false, false))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 30043u, var_0.x, 4294967295u), vec4<u32>(13645u, 0u, 1u, var_0.x)) & reverseBits(vec4<u32>(70967u, u_input.a.x, 26039u, 1u)), global1[_wgslsmith_index_u32(~(~0u), 14u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(_wgslsmith_add_u32(max(2549u, var_0.x), ~0u), 0u), 25445u), 14u)], all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)));
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(~(~_wgslsmith_mod_u32(~var_0.x, reverseBits(var_0.x)))), 14u)];
    var var_3 = -(-_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, -2147483647i) | vec2<i32>(1i, 59108i)) << (~(~var_0) % vec2<u32>(32u)));
    return StorageBuffer(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}


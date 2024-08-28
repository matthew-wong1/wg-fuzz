struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1i, -36205i), vec2<i32>(1i, 0i), vec2<i32>(0i, 4682i), vec2<i32>(-34811i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(19680i, -7814i), vec2<i32>(i32(-2147483648), 5367i), vec2<i32>(-21239i, -1i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 8>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-456f, -388f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1278f, 967f))) + vec2<f32>(-367f, -2186f)))), Struct_2(-_wgslsmith_add_i32(37718i, -2147483647i), -min(20623i, 1i), Struct_1(!arg_0.a, select(4711u, u_input.a.x, !arg_0.e), true, !any(vec3<bool>(arg_0.a.x, true, false)), arg_0.c), u_input.a.x), ~(~_wgslsmith_sub_i32(-1i, 30828i >> (u_input.a.x % 32u))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 204f))))) - var_0.a), Struct_2(var_0.b.a, -2147483647i, arg_0, ~arg_0.b), -var_0.b.a);
    let var_1 = ~reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(31779u, arg_0.b, u_input.a.x, 4294967295u)), vec4<u32>(firstTrailingBit(43400u), ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, var_0.b.d), u_input.a), var_0.b.d)));
    let var_2 = (1i << ((_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(24546u, u_input.a.x)), select(vec2<u32>(u_input.a.x, u_input.a.x), var_1.zw, vec2<bool>(true, false))) << ((_wgslsmith_div_u32(var_1.x, var_0.b.d) & ~4294967295u) % 32u)) % 32u)) & -20207i;
    return 0u;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = vec4<u32>(arg_2, arg_2, 0u, ~(~func_3(Struct_1(vec2<bool>(true, false), arg_2, true, true, false))));
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    let var_1 = _wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(4294967295u, var_0.x, u_input.a.x, 54002u)), abs(~vec4<u32>(88412u, 0u, 27862u, 4294967295u)))), ~vec4<u32>(~u_input.a.x, 1u, ~(var_0.x << (47486u % 32u)), u_input.a.x));
    var var_2 = !(277f == arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_2(-176f, arg_0.a.x, arg_0.b.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) * arg_0.a.x)), arg_0.b, arg_0.b.b);
    var var_1 = vec3<bool>(_wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(ceil(var_0.a.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a.x), !(3174u != ((arg_0.b.c.b << (23051u % 32u)) >> (~u_input.a.x % 32u))), !(var_0.b.c.e && true));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.b.d, var_0.b.d, arg_0.b.d, 11051u) << (vec4<u32>(0u, 4294967295u, var_0.b.d, arg_0.b.d) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(58216u, 4294967295u, arg_0.b.c.b, u_input.a.x), abs(vec4<u32>(0u, 1919u, 4294967295u, var_0.b.c.b)))), select(vec4<u32>(0u, var_0.b.d, var_0.b.d, arg_0.b.c.b) << (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), max(~vec4<u32>(12631u, 30197u, 43855u, u_input.a.x), firstTrailingBit(vec4<u32>(var_0.b.c.b, 4294967295u, u_input.a.x, arg_0.b.d))), !any(var_1.xy))) ^ firstTrailingBit(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.b.c.b, 75036u, arg_0.b.d, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(68441u, arg_0.b.d, arg_0.b.c.b, 1u), vec4<u32>(4294967295u, arg_0.b.d, 42231u, u_input.a.x))), vec4<u32>(u_input.a.x, 7490u, arg_0.b.d, 16006u)));
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    return _wgslsmith_sub_u32(abs(reverseBits(~40443u)) & (13566u & firstLeadingBit(~arg_0.b.d)), select(var_0.b.d | u_input.a.x, 4294967295u, arg_0.b.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 8>();
    let var_0 = select(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(18536u, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 86291u)), vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(19498u, 64646u), u_input.a), _wgslsmith_mult_u32(u_input.a.x, func_1(Struct_3(vec2<f32>(1494f, 352f), Struct_2(1i, -18718i, Struct_1(vec2<bool>(true, false), 92001u, false, true, false), u_input.a.x), -2147483647i))))), _wgslsmith_clamp_vec3_u32(abs((vec3<u32>(1u, 0u, 6833u) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (vec3<u32>(65920u, 1u, u_input.a.x) % vec3<u32>(32u))), ~max(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), countOneBits(vec3<u32>(43506u, 27815u, u_input.a.x))), countOneBits(vec3<u32>(73233u, u_input.a.x, ~u_input.a.x))), !(all(vec2<bool>(true, true)) && (any(vec3<bool>(true, false, false)) | true)));
    let var_1 = Struct_2(1i, ~max(1i, 1i), Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, firstLeadingBit(u_input.a.x), u_input.a.x), ~vec3<u32>(var_0.x, u_input.a.x, 82579u)), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), any(vec4<bool>(all(vec4<bool>(false, true, false, true)), true, var_0.x >= var_0.x, false)), true), ~(~(~_wgslsmith_div_u32(var_0.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -724f), -129f)), 1f))));
}


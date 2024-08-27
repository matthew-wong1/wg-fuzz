struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = arg_0;
    var var_0 = select(vec2<u32>(arg_0.c.x, 13665u), (vec2<u32>(_wgslsmith_add_u32(26133u, 4005u), 1u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 33628u), global0.c, ~vec2<u32>(40724u, global0.b)) % vec2<u32>(32u))) << (global0.c % vec2<u32>(32u)), vec2<bool>(true, true));
    var var_1 = 1i;
    return firstTrailingBit(u_input.c);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_3(Struct_1(select(!global0.a, vec2<bool>(global0.a.x, false), !global0.a.x), ~global0.b, _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global0.b, u_input.b.x)), reverseBits(global0.c)))), Struct_1(global0.a, _wgslsmith_mult_u32(13555u, global0.c.x), u_input.b.yx), Struct_1(!vec2<bool>(all(vec2<bool>(global0.a.x, arg_0.a.x)), !arg_0.a.x), ~arg_0.c.x | ~(~u_input.b.x), arg_0.c), _wgslsmith_div_vec2_u32(abs(firstTrailingBit(global0.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.x ^ 76822u, ~3435u), ~(~arg_0.c))));
    let var_1 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 10637i, 0i, var_0.a.x), min(vec4<i32>(u_input.c.x, 46305i, u_input.a.x, -2147483647i), vec4<i32>(u_input.c.x, -54871i, var_0.a.x, 1i))), vec4<i32>(abs(var_0.a.x), var_0.a.x << (0u % 32u), _wgslsmith_clamp_i32(-27793i, var_0.a.x, -6624i), -1013i)) << (u_input.b % vec4<u32>(32u));
    let var_2 = var_0;
    let var_3 = Struct_1(!var_0.c.a, 4294967295u, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global0.c, vec2<u32>(0u, _wgslsmith_mult_u32(var_2.d.x, 1u))), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 31949u), arg_0.c, false), var_0.d)));
    let var_4 = min(_wgslsmith_div_i32(max(min(_wgslsmith_clamp_i32(-19914i, 27629i, 1i), func_3(var_3).x), min(abs(var_2.a.x), -1i)), select(~var_0.a.x, ~(-2147483647i), true) & max(2147483647i, min(8918i, var_2.a.x))), i32(-1i) * -49626i);
    return Struct_1(arg_0.a, var_2.d.x, arg_0.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(countOneBits(global0.b) <= abs(arg_1.x), !(!global0.a.x), global0.a.x), !vec3<bool>(true, global0.a.x, all(!vec2<bool>(global0.a.x, global0.a.x))), global0.a.x);
    let var_1 = ~arg_2;
    global0 = func_2(Struct_1(!global0.a, arg_0.x, reverseBits(global0.c)));
    var var_2 = ~(~(~38762u)) > _wgslsmith_sub_u32(max(27816u, 0u), abs(firstTrailingBit(firstLeadingBit(u_input.b.x))));
    global0 = func_2(Struct_1(select(!(!vec2<bool>(global0.a.x, false)), !global0.a, global0.a), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c.x, arg_1.x, u_input.b.x), reverseBits(vec3<u32>(0u, 11187u, 11588u))), ~(~arg_1.zx)));
    return Struct_1(vec2<bool>(_wgslsmith_mod_i32(~u_input.d.x, i32(-1i) * -20998i) < u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1194f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(round(-254f)))), 5195u, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~vec3<u32>(min(global0.b, ~u_input.b.x), global0.c.x, u_input.b.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, ~u_input.b.x, 28732u), u_input.b), 1u, ~global0.b), vec4<i32>(-17894i, max(-3076i, -u_input.d.x) ^ 0i, reverseBits(~(u_input.a.x | u_input.c.x)), u_input.a.x));
    global0 = Struct_1(vec2<bool>(any(!(!vec3<bool>(global0.a.x, global0.a.x, true))), false), _wgslsmith_sub_u32(reverseBits(global0.b), firstTrailingBit(u_input.b.x)), u_input.b.wx);
    let var_0 = global0.a;
    global0 = Struct_1(!vec2<bool>((false || global0.a.x) & false, false), reverseBits(~(_wgslsmith_clamp_u32(1u, 4294967295u, global0.c.x) >> (4294967295u % 32u))), vec2<u32>(firstTrailingBit(min(0u << (1u % 32u), 26006u)), _wgslsmith_mult_u32(u_input.b.x, ~19090u)));
    global0 = func_2(func_1(u_input.b.wxx ^ (u_input.b.yxw << (~u_input.b.wyy % vec3<u32>(32u))), vec3<u32>(global0.c.x, 21106u, func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.x, u_input.b.x, global0.c.x), vec3<u32>(global0.b, 55129u, 5056u), u_input.b.xwx), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, global0.b), u_input.b.wzw), _wgslsmith_div_vec4_i32(vec4<i32>(7736i, u_input.c.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.c.x, u_input.d.x, 11032i, -22300i))).c.x), abs(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -42494i, -2147483647i, -46239i), vec4<i32>(u_input.d.x, 2147483647i, -1i, u_input.c.x))))));
    global0 = Struct_1(vec2<bool>(true, !all(select(vec4<bool>(true, true, global0.a.x, true), vec4<bool>(false, false, false, false), vec4<bool>(global0.a.x, global0.a.x, true, false)))), ~25917u, ~_wgslsmith_div_vec2_u32(func_1(~vec3<u32>(u_input.b.x, 4294967295u, 1u), u_input.b.xyy, select(vec4<i32>(-3120i, u_input.c.x, 14374i, u_input.c.x), vec4<i32>(u_input.d.x, -11492i, 1i, u_input.c.x), false)).c, vec2<u32>(abs(18825u), ~u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -1123f, true)), _wgslsmith_f_op_f32(f32(-1f) * -418f)), func_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, global0.a.x), vec2<bool>(var_0.x, true)), ~u_input.b.x, vec2<u32>(u_input.b.x, u_input.b.x))).b ^ global0.b, abs(23864i));
}


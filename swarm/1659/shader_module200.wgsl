struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> bool {
    let var_0 = false;
    var var_1 = 2147483647i;
    var_1 = 8883i;
    var_1 = -abs(-1i);
    var_1 = -76467i;
    return var_0;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    let var_0 = vec3<u32>(firstTrailingBit(~4294967295u), arg_0.a.b.b.x, firstLeadingBit(_wgslsmith_add_u32(4294967295u, ~u_input.a.x))) ^ firstTrailingBit(vec3<u32>(abs(_wgslsmith_sub_u32(arg_0.a.b.b.x, 1u)), ~abs(arg_0.a.b.b.x), _wgslsmith_div_u32(arg_0.a.b.b.x, ~54673u)));
    let var_1 = -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.c.a.x, arg_1.x, _wgslsmith_clamp_i32(firstLeadingBit(-15680i), arg_1.x, arg_0.a.a.x)), vec3<i32>(-1792i, ~arg_0.a.b.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.a.c.c, arg_0.a.a.x), _wgslsmith_sub_i32(arg_1.x, arg_0.a.c.a.x))));
    let var_2 = 33144i;
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_0.b));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, ~4294967295u, ~u_input.a.x), ~arg_0.a.b.b.zxz), abs(vec3<u32>(var_3, 0u, 1u))) << (1u % 32u);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = func_2() & (firstLeadingBit(~28902u) > func_3(Struct_3(Struct_2(vec4<i32>(1i, 1i, -21901i, 3062i), Struct_1(vec2<i32>(-1i, -2147483647i), vec4<u32>(2392u, 4294967295u, 30254u, u_input.a.x), 34780i), Struct_1(vec2<i32>(-56715i, -2147483647i), vec4<u32>(58531u, u_input.a.x, u_input.a.x, u_input.b.x), 2147483647i)), -1000f, !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec4<i32>(-2147483647i, ~1i, _wgslsmith_mod_i32(0i, 2147483647i), -27303i)));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(~1i >> ((u_input.a.x >> (13024u % 32u)) % 32u)), -58941i, -2147483647i), ~_wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), 1i, -35095i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-13124i, -15747i, 1i), vec3<i32>(-48565i, -1i, -8119i)))), firstLeadingBit(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-1i, -1i, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(1i, 2147483647i, 43225i))), ~reverseBits(vec3<i32>(-1i, 29468i, -1i)))));
    var_0 = arg_0.x;
    var_0 = true;
    let var_2 = vec4<bool>(all(vec2<bool>(arg_0.x, !any(arg_0))), firstLeadingBit(_wgslsmith_dot_vec3_i32(~var_1, min(vec3<i32>(2147483647i, var_1.x, -2147483647i), vec3<i32>(-2147483647i, var_1.x, 9567i)))) <= var_1.x, all(!(!select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, false, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))), arg_0.x != (true & all(arg_0)));
    return -max(select(-31637i, -27100i, false) << (firstLeadingBit(abs(u_input.a.x)) % 32u), i32(-1i) * -abs(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~(i32(-1i) * -1i), ~_wgslsmith_div_i32(-25165i, func_1(vec3<bool>(true, true, true))), min(~1i, -2147483647i));
    let var_1 = abs(65606i);
    let var_2 = Struct_3(Struct_2(-(~vec4<i32>(7290i, var_1, var_0.x, -28469i)) >> (~u_input.b % vec4<u32>(32u)), Struct_1(-(~var_0.xx), ~vec4<u32>(u_input.b.x, 35762u, u_input.b.x, 37775u) | vec4<u32>(12723u, 1u, u_input.b.x, 4294967295u), _wgslsmith_mod_i32(var_0.x, var_0.x) << (22290u % 32u)), Struct_1(vec2<i32>(abs(-49321i), var_1), u_input.b, abs(-31618i))), -302f, select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), true && any(vec3<bool>(true, true, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), select(vec4<bool>(true, any(vec3<bool>(false, false, true)), false, true), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, false, true)), true), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))))), abs(firstLeadingBit(1u)), 85478u, vec3<u32>(~u_input.a.x, ~(~countOneBits(u_input.a.x)), 36473u));
}


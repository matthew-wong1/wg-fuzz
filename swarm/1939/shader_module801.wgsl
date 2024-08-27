struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-946f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1306f, 694f)))) + _wgslsmith_f_op_f32(select(1770f, 1365f, true))), Struct_1(vec2<bool>(true, false)), arg_1.a);
    var var_1 = 31981u;
    var var_2 = 1u;
    var_2 = _wgslsmith_div_u32((u_input.c.x << (1u % 32u)) >> (4294967295u % 32u), 9113u);
    let var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(52956u, u_input.c.x, u_input.c.x, 73445u), vec4<u32>(18862u, u_input.c.x, 1u, 53396u)), abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(1u, 1u, 4294967295u, u_input.c.x)), vec4<u32>(~u_input.c.x, ~30862u, 0u, u_input.c.x >> (22112u % 32u)))), ~(min(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1832u, 29532u, u_input.c.x), vec4<u32>(6544u, 4294967295u, 61108u, 4294967295u)), vec4<u32>(54538u, 0u, u_input.c.x, u_input.c.x) >> (vec4<u32>(18415u, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(~12026u, _wgslsmith_div_u32(u_input.c.x, 28910u), 69566u, u_input.c.x)));
    return var_0.c.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(139f, -1946f)))))));
    let var_1 = vec4<bool>(arg_0.x, u_input.c.x > ~_wgslsmith_clamp_u32(firstLeadingBit(1u), ~0u, _wgslsmith_add_u32(arg_1, 74303u)), !any(vec2<bool>(arg_0.x, all(arg_0))), false);
    var var_2 = Struct_3(Struct_1(vec2<bool>(any(vec4<bool>(true, arg_0.x, arg_0.x, var_1.x)), true)), vec2<i32>(66396i, -1i));
    var var_3 = Struct_3(Struct_1(func_3(-29816i, Struct_3(var_2.a, vec2<i32>(422i, 2147483647i)))), vec2<i32>(~25i, -u_input.a));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1095f))));
    return Struct_2(_wgslsmith_f_op_f32(-1000f - var_4), Struct_1(!var_3.a.a), var_2.a);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> vec4<i32> {
    var var_0 = func_2(vec2<bool>(all(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, false, true, true))), any(select(vec3<bool>(true, arg_0, true), !vec3<bool>(false, arg_0, true), vec3<bool>(false, false, true)))), ~(~(~29862u)));
    var var_1 = -max(~min(_wgslsmith_mult_vec4_i32(vec4<i32>(58775i, -46804i, u_input.b, u_input.a), vec4<i32>(u_input.b, 10696i, 2147483647i, u_input.b)), -vec4<i32>(58833i, u_input.b, -40732i, -13962i)), abs(~(-vec4<i32>(-43057i, 17959i, -13543i, 11916i))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.a - 612f), Struct_1(!(!select(vec2<bool>(arg_0, var_0.b.a.x), vec2<bool>(true, true), vec2<bool>(arg_0, true)))), var_0.c);
    let var_2 = var_0.b;
    var_0 = func_2(var_0.c.a, ~(~countOneBits(~u_input.c.x)));
    return ~(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -53402i, u_input.a) << (arg_1 % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, var_1.x, u_input.a), vec4<i32>(0i, u_input.b, 0i, -2147483647i) & vec4<i32>(-44002i, 2854i, var_1.x, -51755i)), reverseBits(vec4<i32>(2147483647i, -21039i, var_1.x, u_input.a) << (arg_1 % vec4<u32>(32u)))) ^ select(max(~vec4<i32>(-15585i, var_1.x, 2147483647i, u_input.a), vec4<i32>(var_1.x, -1i, -12488i, 2147483647i) | vec4<i32>(-15368i, 0i, var_1.x, 1i)), (vec4<i32>(var_1.x, 1i, 2147483647i, -35192i) >> (arg_1 % vec4<u32>(32u))) ^ vec4<i32>(u_input.b, 34257i, 0i, var_1.x), !select(vec4<bool>(var_2.a.x, var_2.a.x, true, arg_0), vec4<bool>(false, false, false, var_2.a.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1(var_0, ~vec4<u32>(firstTrailingBit(u_input.c.x), u_input.c.x, u_input.c.x >> (0u % 32u), u_input.c.x ^ u_input.c.x) ^ max(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 2102u, u_input.c.x), vec4<u32>(u_input.c.x, 6928u, u_input.c.x, 19395u), vec4<u32>(1u, u_input.c.x, 43116u, u_input.c.x))), ~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u) << (vec4<u32>(7389u, 1u, 0u, 39416u) % vec4<u32>(32u)))), 587f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1115f)), _wgslsmith_f_op_f32(1057f * -523f)), 1188f, any(select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 1303f)))), ~u_input.b < -68283i)));
}


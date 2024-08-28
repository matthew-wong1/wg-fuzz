struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = -max(_wgslsmith_add_vec4_i32(u_input.b, ~(~u_input.b)), _wgslsmith_add_vec4_i32(arg_0.b, min(_wgslsmith_add_vec4_i32(arg_1.b, arg_1.b), _wgslsmith_sub_vec4_i32(arg_0.b, vec4<i32>(arg_0.a, arg_1.c, 67653i, arg_0.b.x)))));
    var var_1 = false;
    var_1 = any(select(!(!vec4<bool>(arg_0.e, true, false, arg_0.d.x)), select(arg_0.d, !arg_1.d, true & all(vec3<bool>(false, arg_1.d.x, arg_1.d.x))), !vec4<bool>(true, arg_0.e, any(vec4<bool>(false, arg_0.d.x, false, true)), false)));
    var var_2 = arg_1;
    var var_3 = arg_1;
    return ~max(~4294967295u, 1u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(~func_3(Struct_1(1i, vec4<i32>(0i, -10096i, 5072i, u_input.a), u_input.a, vec4<bool>(true, true, false, true), true), Struct_1(48633i, vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x), -40351i, vec4<bool>(false, false, false, true), false)) ^ ~(~_wgslsmith_mult_u32(13078u, 6917u)), abs(1u));
    var var_1 = _wgslsmith_add_u32(65429u, 109443u);
    var_1 = var_0;
    var var_2 = min(firstLeadingBit(vec2<u32>(4294967295u << (var_0 % 32u), 4294967295u)), vec2<u32>(~_wgslsmith_clamp_u32(18065u, var_0, 0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 0u, 8423u), vec3<u32>(var_0, var_0, 12713u)))) & firstLeadingBit(vec2<u32>(abs(_wgslsmith_mod_u32(42427u, 36968u)), countOneBits(_wgslsmith_div_u32(0u, 31492u))));
    var_1 = 0u;
    return Struct_1(~1i, u_input.b, -(i32(-1i) * -20147i), vec4<bool>(true, !(u_input.a >= 1i), !(true || all(vec3<bool>(true, false, false))), false), true);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = arg_0.d.wyx;
    let var_1 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(~(~(~(-2147483647i))), -vec4<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.a, u_input.b.x)), u_input.b.x), -2147483647i, !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))), _wgslsmith_f_op_f32(f32(-1f) * -631f));
    var_0 = Struct_1(var_0.a, ~vec4<i32>(reverseBits(-26483i), _wgslsmith_add_i32(abs(-25253i), -8505i), var_0.a ^ 0i, 2147483647i), _wgslsmith_add_i32(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.b.yyz, vec3<i32>(26576i, 19076i, var_0.a)), var_0.b.x), select(-func_2().c, _wgslsmith_div_i32(1i, ~16473i), var_0.e)), vec4<bool>(all(func_2().d), all(!(!var_0.d.xwx)), var_0.d.x, true), !var_0.d.x);
    let var_1 = func_2();
    var var_2 = 1u;
    var_0 = var_1;
    let var_3 = var_1.b;
    let var_4 = min(-_wgslsmith_mult_vec4_i32(-(var_0.b << (vec4<u32>(0u, 0u, 1u, 22472u) % vec4<u32>(32u))), -var_0.b), select(vec4<i32>(firstTrailingBit(var_1.b.x), _wgslsmith_mod_i32(-3961i, -1i), 305i, _wgslsmith_add_i32(-27511i, -43971i)), var_3, vec4<bool>(var_0.e, var_1.d.x, all(vec3<bool>(var_0.d.x, var_1.e, false)), true)) | vec4<i32>(0i, min(u_input.a, u_input.b.x >> (50729u % 32u)), ~(var_0.c & var_1.a), u_input.a));
    var_2 = ~(~abs(26183u));
    var var_5 = func_1(func_1(var_1, -1923f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2945f)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}


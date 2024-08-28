struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    var var_0 = i32(-1i) * -2147483647i;
    var_0 = u_input.a;
    let var_1 = select(vec3<bool>(!all(vec2<bool>(true, global0.x)), true, !(true | arg_0.x)), vec3<bool>(all(arg_0), any(vec2<bool>(true, true)), true), select(!select(select(vec3<bool>(arg_0.x, global0.x, true), vec3<bool>(true, false, false), vec3<bool>(true, false, arg_0.x)), !vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, _wgslsmith_f_op_f32(1085f - arg_1) != arg_1, global0.x), vec3<bool>(false, false, global0.x)));
    let var_2 = 40998u;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(step(arg_1, arg_1)), arg_1) - vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(111f)) + arg_1))));
    return var_2;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_div_i32(-42532i, _wgslsmith_mod_i32(~u_input.a, abs(u_input.a)))) >> (~(~(~func_3(arg_0.xx, 1261f))) % 32u);
    var var_1 = Struct_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, 20333u), vec3<u32>(1u, 20294u, 4294967295u), false), vec3<u32>(4294967295u, 66197u, 13165u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), 1u), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-941f - 637f), ~(-17032i), arg_0);
    global0 = !arg_0.zw;
    var_1 = Struct_1(var_1.b.x, var_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - -938f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, -1946f) + var_1.c)))), _wgslsmith_mult_i32(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(11003i, -1i, -55189i), vec3<i32>(var_1.d, -36705i, -45484i))), -reverseBits(-u_input.a)), vec4<bool>(!(!(false == arg_0.x)), all(select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, false, true), true)), var_1.c > var_1.c, !var_1.e.x));
    let var_2 = Struct_2(Struct_1(57479u, _wgslsmith_add_vec3_u32(abs(~var_1.b), var_1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c, var_1.c))))), firstTrailingBit(~var_1.d >> (223u % 32u)), vec4<bool>(!arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, -1i), vec2<i32>(var_0, 35382i)) > 2147483647i, (u_input.a >> (0u % 32u)) >= var_1.d, false)));
    return Struct_1(7945u, ~abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(var_2.a.b), ~var_2.a.b)), var_2.a.c, firstLeadingBit(1i << (var_1.b.x % 32u)), !var_2.a.e);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(select(select(select(select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global0.x, false, false), true), !vec4<bool>(false, global0.x, false, false), global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, true, false, global0.x)), !global0.x), !select(!vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, false, false), !global0.x), any(vec4<bool>(false | global0.x, global0.x, true, global0.x))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32((~var_0.a >> (arg_2.x % 32u)) >> (1u % 32u), 47384u), ~countOneBits(_wgslsmith_sub_u32(2724u, 7979u & var_0.b.x)), _wgslsmith_div_u32(0u, ~_wgslsmith_add_u32(arg_0.x, 1u | arg_2.x)));
    var var_2 = Struct_2(func_2(select(var_0.e, !vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x), func_2(!vec4<bool>(var_0.e.x, global0.x, global0.x, global0.x)).e)));
    let var_3 = vec3<f32>(var_2.a.c, 780f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1916f))));
    var_2 = Struct_2(var_0);
    return func_2(var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(true, true);
    let var_0 = _wgslsmith_add_vec2_i32((_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(3974i, u_input.a)), vec2<i32>(u_input.a, -2147483647i) | vec2<i32>(0i, u_input.a)) ^ ~vec2<i32>(5893i, u_input.a)) & (_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 2147483647i), vec2<bool>(global0.x, false)), reverseBits(vec2<i32>(u_input.a, 20773i))) >> (vec2<u32>(~28222u, ~4625u) % vec2<u32>(32u))), -(~min(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, 2147483647i))) | _wgslsmith_mult_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-30503i, 48656i)), vec2<i32>(1i, 0i))));
    let var_1 = 1u;
    global0 = vec2<bool>(true, true);
    let var_2 = Struct_2(func_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(40331u, var_1), vec2<u32>(var_1, 4294967295u)), 4294967295u, firstLeadingBit(13750u), 1u), -12675i, vec2<u32>(21849u, var_1)));
    global0 = var_2.a.e.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.a.a), vec3<u32>(40713u, var_2.a.b.x, ~_wgslsmith_div_u32(var_2.a.b.x, 61098u)));
}


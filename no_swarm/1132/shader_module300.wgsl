struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(21506u, 5006u);

var<private> global1: f32 = -432f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -211f), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(-370f - 514f))))));
    let var_1 = arg_1.b.b.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x)));
    let var_3 = _wgslsmith_mod_vec2_u32(~u_input.a.yx, ~select(vec2<u32>(arg_0.a.c.x, arg_1.b.c.x), abs(reverseBits(u_input.c.xy)), vec2<bool>(true, true)));
    let var_4 = arg_0.a.b.yxy;
    return min(-30449i, _wgslsmith_clamp_i32(-(~(~arg_1.b.d.x)), min(-firstLeadingBit(u_input.b.x), -(arg_1.b.d.x | u_input.b.x)), _wgslsmith_sub_i32(abs(-3374i), -1i)));
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = select(u_input.c.zxy, _wgslsmith_div_vec3_u32(~countOneBits(reverseBits(vec3<u32>(global0.x, 0u, 25840u))), vec3<u32>(u_input.d, u_input.a.x, 18358u)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    var var_1 = vec2<u32>(abs(_wgslsmith_sub_u32(0u, ~(~global0.x))), 0u);
    var var_2 = vec2<bool>(~_wgslsmith_mod_i32(4763i, _wgslsmith_div_i32(u_input.b.x, arg_0.x)) <= -2147483647i, any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(false, select(true, false, true), true))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_add_i32(80206i, -18545i) | arg_0.x, firstLeadingBit(u_input.b.x) >> (~0u % 32u), arg_0.x) >> (u_input.c % vec4<u32>(32u)), -reverseBits(abs(max(vec4<i32>(-44110i, -2147483647i, -1062i, u_input.b.x), vec4<i32>(u_input.b.x, arg_0.x, u_input.b.x, 2147483647i)))));
    var var_4 = max(reverseBits(~_wgslsmith_mod_u32(var_0.x, 4294967295u)) | var_1.x, global0.x);
    return Struct_1(vec4<bool>(!var_2.x, true, !var_2.x, false && select(!var_2.x, var_2.x, false)), select(!(!select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), true)), !(!vec4<bool>(false, var_2.x, false, var_2.x)), vec4<bool>(true, any(select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), false)), true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)) && all(vec3<bool>(var_2.x, false, var_2.x)))), countOneBits(~(~u_input.a.yzw)), var_3.wy);
}

fn func_1() -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f - -1047f))));
    let var_0 = func_3(vec3<i32>(i32(-1i) * -func_2(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec3<u32>(global0.x, global0.x, global0.x), vec2<i32>(-26803i, 12161i)), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec3<u32>(global0.x, global0.x, 4294967295u), vec2<i32>(u_input.b.x, u_input.b.x))), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), u_input.a.yxz, vec2<i32>(u_input.b.x, u_input.b.x)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec3<u32>(global0.x, 30036u, 77438u), u_input.b))), u_input.b.x, -u_input.b.x));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, -2147483647i, 1i, -1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.d.x, var_0.d.x, u_input.b.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, -1i, var_0.d.x), vec4<i32>(0i, 2147483647i, var_0.d.x, var_0.d.x)))), abs(min(vec4<i32>(-3096i, 38330i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -1i, -13463i)))), 0i, 1i, var_0.d.x);
    var var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(abs(_wgslsmith_add_i32(-2147483647i, var_0.d.x)), _wgslsmith_div_i32(1i, reverseBits(u_input.b.x))), min(vec2<i32>(_wgslsmith_add_i32(-8068i, max(24540i, var_1.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.d.x, 36845i), firstLeadingBit(41171i))), var_1.wy));
    global0 = vec2<u32>(~firstLeadingBit(var_0.c.x), _wgslsmith_div_u32(abs(u_input.d), ~4294967295u & (20719u & var_0.c.x)) << (reverseBits(~(~4270u)) % 32u));
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1387f * -105f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2938f * 336f) - -331f))))), -882f);
}

fn func_4(arg_0: vec2<f32>) -> u32 {
    let var_0 = !(!vec3<bool>(true, true || any(vec4<bool>(true, false, false, false)), !any(vec4<bool>(true, true, true, false))));
    global1 = arg_0.x;
    global1 = _wgslsmith_f_op_vec2_f32(func_1()).x;
    var var_1 = min(vec3<u32>(1u, ~reverseBits(global0.x), max(u_input.c.x << (0u % 32u), 78509u)), vec3<u32>(~max(41120u, global0.x), u_input.a.x, _wgslsmith_add_u32(1u & global0.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u)))) ^ ~(~vec3<u32>(~0u, global0.x, firstTrailingBit(global0.x)));
    var_1 = ~(~(~u_input.a.wxx));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(_wgslsmith_mult_u32(~u_input.c.x, ~reverseBits(u_input.a.x)), firstTrailingBit(0u));
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1045f, -997f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2272f, 867f)))));
    global0 = _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(var_0, global0.x)), vec2<u32>(1u, var_0 ^ 5767u));
    var var_1 = _wgslsmith_mult_i32(countOneBits(u_input.b.x), -(~u_input.b.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1289f, 819f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -748f), 1f))))), _wgslsmith_f_op_f32(-1f));
    var_1 = 11817i;
    var var_3 = Struct_2(Struct_1(!vec4<bool>(true, global0.x < u_input.c.x, false, all(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(func_3(vec3<i32>(-18834i, u_input.b.x, 2147483647i)).a, vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~(~(~vec3<u32>(var_0, global0.x, global0.x))), vec2<i32>(-2147483647i, (i32(-1i) * -25089i) ^ (u_input.b.x >> (9439u % 32u)))), func_3(~(-(vec3<i32>(1i, u_input.b.x, u_input.b.x) & vec3<i32>(-1i, u_input.b.x, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_3.b.c.x, _wgslsmith_mod_u32(4294967295u, 4294967295u), global0.x & 0u), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), select(~u_input.b | vec2<i32>(0i, u_input.b.x), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, var_3.a.d.x), vec2<i32>(var_3.b.d.x, var_3.b.d.x), vec2<i32>(var_3.b.d.x, 16144i))), var_3.a.a.xy) | (countOneBits(_wgslsmith_mod_vec2_i32(u_input.b, u_input.b)) ^ var_3.b.d));
}


struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = Struct_4(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.d >= -849f))));
    var var_1 = arg_0.b.zyx;
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.wzx, vec3<i32>(arg_0.b.x, -var_1.x, arg_0.c.x >> (2222u % 32u)) << (vec3<u32>(u_input.a.x, u_input.a.x, ~4294967295u) % vec3<u32>(32u))), 8627i, ~var_1.x);
    var_1 = arg_0.c.zzz;
    var var_2 = ~abs(~u_input.a);
    return -531f;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_3(Struct_2(true || (~u_input.a.x <= (u_input.b & 1u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(958f, -1119f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(946f - -662f) * _wgslsmith_f_op_f32(1000f + -711f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1017f, 1000f)))), 2008f), Struct_1(_wgslsmith_f_op_f32(-1807f + _wgslsmith_f_op_f32(max(-354f, -1153f))), arg_0 < _wgslsmith_mult_i32(arg_0, -43549i)), _wgslsmith_add_vec4_i32(select(-vec4<i32>(arg_0, -3997i, 28643i, arg_0), vec4<i32>(1i, -2147483647i, arg_0, arg_0), vec4<bool>(true, true, false, false)), abs(vec4<i32>(20767i, arg_0, 0i, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(vec2<i32>(-42761i, -18974i), vec4<i32>(arg_0, arg_0, 1i, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 2147483647i), -1968f, -1476f))))), !vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, false))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-671f))) - 1149f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-946f + -900f))), -2315f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) * -303f), _wgslsmith_f_op_f32(f32(-1f) * -154f)))));
    var var_1 = Struct_1(_wgslsmith_div_f32(-2650f, _wgslsmith_f_op_f32(f32(-1f) * -266f)), true);
    var var_2 = abs(abs(53149u));
    var_1 = Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_1.a)), true);
    var_2 = ~(~28403u);
    return false & var_1.b;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_div_u32(u_input.a.x, select(u_input.a.x, 0u, func_2(_wgslsmith_mod_i32(14915i, 38611i)) || true));
    var var_1 = 489f;
    var_1 = _wgslsmith_f_op_f32(func_3(Struct_5(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(29136i, 32325i), vec2<i32>(-92146i, 1i)), ~vec2<i32>(-16051i, 28320i), vec2<i32>(1i, -2147483647i) << (u_input.a.xx % vec2<u32>(32u))), -vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-39715i, -32145i, _wgslsmith_div_i32(2147483647i, 2147483647i), abs(-1i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 54722i, -27445i, -13302i), vec4<i32>(18404i, 2147483647i, 2357i, 22425i), vec4<i32>(-1491i, -40176i, 63643i, -23088i)), vec4<bool>(func_2(1i), false, true, any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1930f)), 1f)), -605f)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(583f)), any(select(vec2<bool>(false, any(vec4<bool>(true, true, false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec3<bool>(true, true, true)))));
    var_0 = u_input.a.x;
    return _wgslsmith_f_op_f32(-var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 231f;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-776f, -1859f) + -278f) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(trunc(-1000f)))), var_0));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 - 783f), var_0))));
    var_3 = vec2<f32>(-2294f, _wgslsmith_f_op_f32(-184f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))))));
    let var_4 = ~_wgslsmith_add_vec2_i32(~countOneBits(vec2<i32>(1i, 1i)), firstLeadingBit(abs(~vec2<i32>(8684i, 74874i))));
    var var_5 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, false, false))), false));
    let var_6 = vec2<i32>(countOneBits(-1i), 168i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(Struct_5(countOneBits(vec2<i32>(1i, 1i)), vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, 1i, var_4.x), ~vec4<i32>(-2147483647i, -28486i, var_6.x, 2147483647i) & (vec4<i32>(var_4.x, var_6.x, var_4.x, var_6.x) & vec4<i32>(0i, var_4.x, -9398i, var_6.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, -905f)), -770f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-114f))))))));
}


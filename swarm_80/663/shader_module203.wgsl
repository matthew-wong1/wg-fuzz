struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = !arg_0.a.x;
    var var_1 = all(select(!select(!vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), all(arg_0.a)), vec4<bool>(true, all(vec4<bool>(true, true, arg_0.a.x, arg_0.a.x)) | (arg_0.a.x && arg_0.a.x), ~53716u > _wgslsmith_clamp_u32(6454u, u_input.a.x, arg_1), true), select(select(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, arg_0.a.x, arg_0.a.x, false), vec4<bool>(true, true, arg_0.a.x, false)), !vec4<bool>(false, true, arg_0.a.x, true)), !vec4<bool>(true, arg_0.a.x, true, true), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), select(vec4<bool>(false, arg_0.a.x, false, true), vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, true)))));
    var var_2 = Struct_2(u_input.a ^ ~vec4<u32>(1u, max(arg_2.x, arg_2.x), 1u, 114396u), select(vec2<bool>(any(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), (arg_0.a.x && arg_0.a.x) && (arg_2.x <= arg_1)), arg_0.a.xy, vec2<bool>(true, any(vec2<bool>(true, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, 1261f, arg_0.a.x)), _wgslsmith_f_op_f32(trunc(1079f)), _wgslsmith_f_op_f32(floor(174f))), vec3<f32>(_wgslsmith_f_op_f32(1620f - -205f), _wgslsmith_div_f32(1106f, -754f), -975f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-506f, _wgslsmith_f_op_f32(min(-1360f, -795f)), _wgslsmith_div_f32(-975f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, -1326f, -1065f))))));
    var var_3 = any(vec2<bool>(!arg_0.a.x | false, !(!arg_0.a.x) | arg_0.a.x));
    let var_4 = Struct_4(!select(vec3<bool>(var_2.b.x, arg_0.a.x, true), !arg_0.a, 25072i > u_input.b.x));
    return -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 39113i, u_input.d.x), u_input.d), -18847i), _wgslsmith_sub_i32(min(0i, u_input.d.x), 1106i), -1i);
}

fn func_2() -> Struct_1 {
    var var_0 = select(-(-u_input.b ^ (u_input.d ^ u_input.c)) | ~countOneBits(select(u_input.c, vec3<i32>(-2147483647i, u_input.d.x, 1i), vec3<bool>(false, false, false))), min(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -38821i) ^ u_input.c, u_input.d >> (u_input.a.yzy % vec3<u32>(32u))), vec3<i32>(max(u_input.c.x, -14109i), u_input.d.x ^ 2147483647i, 7152i), firstTrailingBit(u_input.b)), -func_3(Struct_4(vec3<bool>(false, true, true)), ~u_input.a.x, vec4<u32>(u_input.a.x, u_input.e, 23736u, u_input.e))), 1841f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1515f))))));
    let var_1 = Struct_3(true, abs(0i), vec4<bool>(select(true, false & all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, true, true))), !all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), false));
    var_0 = _wgslsmith_mod_vec3_i32(-(~vec3<i32>(_wgslsmith_add_i32(var_0.x, u_input.d.x), _wgslsmith_div_i32(-2147483647i, -2147483647i), i32(-1i) * -1i)), _wgslsmith_add_vec3_i32(countOneBits(abs(reverseBits(u_input.d))), reverseBits(vec3<i32>(var_1.b, ~u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.b, u_input.d)))));
    let var_2 = ~98056u;
    let var_3 = vec3<f32>(695f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-795f, _wgslsmith_f_op_f32(step(530f, _wgslsmith_f_op_f32(-303f - -2084f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(942f)) * _wgslsmith_f_op_f32(sign(1f))));
    return Struct_1(var_1.c.x, -1528f, 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_4 {
    let var_0 = arg_0.a;
    var var_1 = !(false || var_0);
    var_1 = !(!(true & !arg_1.x));
    let var_2 = ~_wgslsmith_div_vec2_u32(u_input.a.xx, ~(~vec2<u32>(arg_0.c, arg_0.c) << ((u_input.a.xy & vec2<u32>(arg_0.c, 1u)) % vec2<u32>(32u))));
    var var_3 = arg_0.b > _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1015f)) + _wgslsmith_f_op_f32(f32(-1f) * -1798f)));
    return Struct_4(vec3<bool>(arg_1.x, !select(arg_0.b >= arg_0.b, arg_0.a, false), arg_0.b > 1f));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = func_4(func_2(), !(!select(arg_1.wx, !arg_1.zx, u_input.b.x >= arg_0.x)), u_input.e);
    var var_1 = u_input.b.x;
    var_1 = arg_0.x;
    let var_2 = true;
    let var_3 = Struct_2(vec4<u32>(4294967295u, 22545u, 14126u, _wgslsmith_dot_vec4_u32(vec4<u32>(func_2().c, ~0u, ~1u, 4294967295u), u_input.a)), func_4(Struct_1(true, 1616f, 59790u), var_0.a.xy, 0u).a.yx, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004f, 1000f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, 2159f, -770f)))) * vec3<f32>(_wgslsmith_f_op_f32(-422f - -941f), 634f, 1f)))));
    return Struct_3(true, u_input.d.x, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(u_input.d.zx);
    var var_1 = func_1(~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, var_0.x), ~(-92627i), -2147483647i), u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, true)), !any(vec2<bool>(true, true)), true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))));
    var var_2 = Struct_4(func_1(_wgslsmith_mod_vec3_i32(select(vec3<i32>(var_1.b, u_input.d.x, -25818i), _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(-36287i, 2147483647i, var_0.x)), true), -(u_input.d | u_input.c)), !var_1.c).c.yxx);
    var_0 = -firstTrailingBit(u_input.d.zy);
    var var_3 = func_1(-reverseBits(u_input.c) ^ u_input.d, select(vec4<bool>(!(!var_1.c.x), true, !all(var_1.c), func_1(vec3<i32>(var_0.x, -1i, u_input.d.x), func_1(u_input.d, var_1.c).c).c.x), !var_1.c, select(vec4<bool>(true, var_2.a.x && var_1.a, true, all(vec2<bool>(var_1.c.x, var_2.a.x))), vec4<bool>(true, true, true, true), var_1.a)));
    var var_4 = Struct_2(~(abs(vec4<u32>(18087u, 60932u, u_input.e, u_input.a.x)) | _wgslsmith_sub_vec4_u32(u_input.a, ~u_input.a)), select(!var_3.c.xx, !(!(!var_3.c.xx)), true), vec3<f32>(1f, -643f, -508f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(1i, -u_input.b.x)), min(_wgslsmith_sub_vec2_i32(vec2<i32>(-62542i, var_0.x), -vec2<i32>(-13627i, -1i)), u_input.b.zz)));
}


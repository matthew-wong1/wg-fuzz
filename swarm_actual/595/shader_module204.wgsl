struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -15820i);

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-48579i, 0i, -1i, 1i), 1i, true);

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_2(vec4<i32>(4418i, 2147483647i, select(17487i << (u_input.d.x % 32u), global1.b << (0u % 32u), u_input.c < u_input.d.x) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 746u, u_input.d.x), vec3<u32>(51462u, 8918u, 113758u) ^ vec3<u32>(4294967295u, 0u, u_input.d.x)) % 32u), 1i), -(~(-u_input.e)), false && all(!select(vec3<bool>(true, true, global1.c), vec3<bool>(arg_0, false, false), false)));
    var var_1 = Struct_3(vec4<bool>(any(arg_1), global1.c, !(!arg_0), !(!(!global1.c))), Struct_2(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global0.x, var_0.b, var_0.a.x), var_0.a)), max(_wgslsmith_clamp_vec4_i32(var_0.a, global1.a, global1.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, global1.a.x, var_0.b, 27283i), vec4<i32>(u_input.b, 28456i, u_input.a, -1121i)))), -2147483647i, arg_1.x && (all(arg_1) | !global1.c)), vec2<i32>(-u_input.a, min(46351i, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1653f));
    global1 = var_1.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(285f, 1458f)), var_1.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -173f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), -563f)));
    let var_3 = Struct_3(select(vec4<bool>(var_1.b.c, false, !all(vec2<bool>(arg_0, true)), !(arg_0 != true)), select(!select(vec4<bool>(global1.c, true, true, var_0.c), var_1.a, vec4<bool>(true, true, arg_0, var_1.a.x)), var_1.a, ~u_input.d.x < select(0u, 1100u, false)), any(!select(vec3<bool>(global1.c, var_0.c, true), arg_1, global1.c))), var_1.b, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(min(0i, 14185i), max(2147483647i, global1.a.x)), ~0i), ~(var_1.b.a.zx ^ global1.a.xx) | ~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_0.b), var_0.a.wx)), _wgslsmith_f_op_f32(max(814f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -542f), -1000f)))));
    return var_3.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> vec4<u32> {
    var var_0 = min(~reverseBits(~vec3<u32>(0u, u_input.c, 1u)), ~abs(~(~vec3<u32>(4294967295u, 5643u, u_input.d.x))));
    let var_1 = Struct_1(!any(select(select(vec2<bool>(true, global1.c), vec2<bool>(true, arg_1), vec2<bool>(arg_1, true)), !vec2<bool>(true, arg_1), select(vec2<bool>(global1.c, false), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true)))), vec2<bool>(true, true), func_3(all(select(!vec4<bool>(arg_1, global1.c, global1.c, false), vec4<bool>(arg_1, true, true, false), select(vec4<bool>(false, true, global1.c, global1.c), vec4<bool>(global1.c, arg_1, global1.c, false), vec4<bool>(true, false, arg_1, global1.c)))), select(!vec3<bool>(global1.c, false, false), vec3<bool>(false, global1.c, true), (global0.x ^ global1.a.x) <= u_input.a)));
    global2 = countOneBits(2147483647i);
    var var_2 = var_1.b;
    let var_3 = ~1u == (_wgslsmith_dot_vec2_u32(select(~var_0.yz, vec2<u32>(u_input.d.x, 1u) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)), vec2<bool>(var_2.x, false)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(0u, var_0.x)), vec2<u32>(var_0.x, 31091u), _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(var_0.x, var_0.x), var_0.yx))) ^ (0u & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(61627u, var_0.x, 4294967295u, 24861u), vec4<u32>(u_input.d.x, 3945u, 21541u, var_0.x)))));
    return _wgslsmith_mod_vec4_u32(abs(~reverseBits(~vec4<u32>(u_input.c, var_0.x, 41794u, u_input.c))), vec4<u32>(4294967295u, u_input.c, var_0.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(min(var_0.x, 15739u), firstTrailingBit(23971u)), reverseBits(~var_0.x))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_u32(arg_0 & ~(~(~arg_0)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(24848u, u_input.d.x, 0u, 83826u), arg_0), func_2(vec3<f32>(563f, -714f, -120f), global1.c)) & vec4<u32>(0u, 0u & u_input.c, 36383u, firstLeadingBit(38144u)), vec4<u32>(_wgslsmith_mod_u32(34192u, ~16187u), ~1u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_0.x, 46536u)), u_input.d.x)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1232f);
    var var_2 = select(global1.a.yyx, global1.a.xxw, func_3(select(all(select(vec3<bool>(global1.c, false, global1.c), vec3<bool>(false, global1.c, global1.c), vec3<bool>(global1.c, false, false))), false, global1.c), !select(!vec3<bool>(false, true, global1.c), select(vec3<bool>(false, false, global1.c), vec3<bool>(false, false, true), vec3<bool>(global1.c, global1.c, false)), all(vec4<bool>(global1.c, true, false, true)))).zwy);
    var_1 = -254f;
    return Struct_2(global1.a, select(_wgslsmith_mult_i32(~select(global1.a.x, global0.x, true), global1.a.x), global0.x >> (~4294967295u % 32u), true), global1.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2869f + 1000f)))) - -1396f));
    let var_1 = Struct_3(vec4<bool>(func_3(func_3(false, !arg_1.c.wyx).x, select(vec3<bool>(global1.c, false, false), vec3<bool>(false, true, arg_0.c), !vec3<bool>(global1.c, false, global1.c))).x, arg_0.c, !arg_0.c, arg_1.c.x | true), arg_0, global1.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -521f)))))));
    global0 = firstTrailingBit(-global1.a.yz);
    let var_2 = !(!any(var_1.a));
    let var_3 = -(var_1.c.x ^ countOneBits(u_input.b | u_input.b)) < select(~19489i, i32(-1i) * -2147483647i, !all(var_1.a.ww));
    return -global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-873f, 1285f)))) - 1009f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(762f)) * _wgslsmith_div_f32(-224f, -101f)))))));
    global0 = firstTrailingBit(vec2<i32>(global1.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(43084u, u_input.c, u_input.d.x), select(vec3<u32>(0u, u_input.d.x, 35590u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<bool>(global1.c, true, global1.c))) % 32u), 2147483647i));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -534f), var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, 853f), vec4<f32>(var_0.x, var_0.x, -457f, 614f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, -477f, 316f))))));
    let var_3 = var_1;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(max(var_2.x, var_0.x)), true)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zx * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, 1580f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(var_2.x)), -2851f), vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, global1.c, global1.c), var_0.x > var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1564f, 784f, 650f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1000f, var_2.x) * vec4<f32>(1151f, -578f, var_2.x, -600f)))))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(min(45758i, u_input.e), -1i, 1i), _wgslsmith_sub_vec3_i32(global1.a.xyy, ~global1.a.ywy), vec3<i32>(1i, 11567i, u_input.b) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 4294967295u, 0u), vec3<u32>(u_input.c, 12913u, 4294967295u), vec3<u32>(0u, 1u, var_3)) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -39612i, 0i), min(global1.a.yyw, vec3<i32>(global1.b, u_input.b, u_input.b))) ^ global1.a.wxx), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(min(36111i, u_input.a), firstTrailingBit(global1.b)), -1i, firstTrailingBit(u_input.e), func_4(func_1(vec4<u32>(1u, 1u, 1u, var_3)), Struct_1(global1.c, vec2<bool>(true, global1.c), vec4<bool>(false, false, true, true)))), -vec4<i32>(global0.x << (u_input.d.x % 32u), ~u_input.a, ~0i, 4594i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1497f, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, 1000f)), _wgslsmith_f_op_f32(abs(-1591f))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 134f), -1352f, _wgslsmith_f_op_f32(629f + -1651f), _wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_sub_vec2_u32(reverseBits(~u_input.d), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 9727u), abs(u_input.d))));
}


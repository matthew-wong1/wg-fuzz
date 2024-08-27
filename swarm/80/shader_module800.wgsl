struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: f32 = 1818f;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_2;
    global0 = arg_2;
    global1 = Struct_1(global0.a);
    global0 = Struct_1(~vec3<u32>(14071u, select(_wgslsmith_dot_vec2_u32(global0.a.yy, var_0.a.yx), 44905u & global1.a.x, true), global0.a.x));
    global2 = 1050f;
    return Struct_1(arg_2.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = ~(~_wgslsmith_add_u32(1u, ~global1.a.x));
    var_0 = _wgslsmith_sub_u32(global0.a.x, arg_1.a.x);
    let var_1 = arg_0;
    let var_2 = abs(_wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.b) ^ vec3<i32>(u_input.a, -2147483647i, -2147483647i), firstTrailingBit(vec3<i32>(0i, -14065i, -1i))), vec3<i32>(~2147483647i << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 100476u), arg_1.a.zy) % 32u), u_input.a, -4754i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-995f * _wgslsmith_f_op_f32(f32(-1f) * -950f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2730f, -330f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(831f, -992f)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(32073i, u_input.b, 21000i, 63345i), vec4<i32>(u_input.b, u_input.b, -228i, arg_2.x), vec4<bool>(false, true, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(-24220i, 18808i, u_input.b, -12038i) << (vec4<u32>(9192u, 1u, 0u, global1.a.x) % vec4<u32>(32u)), vec4<i32>(arg_2.x, u_input.b, 48913i, u_input.a) ^ vec4<i32>(u_input.b, -39179i, u_input.b, u_input.b))) ^ (_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_2.x, 2147483647i, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, u_input.a)), -vec4<i32>(1i, arg_2.x, arg_2.x, -12971i), _wgslsmith_add_vec4_i32(vec4<i32>(-24119i, 1i, u_input.a, -14859i), vec4<i32>(arg_2.x, u_input.b, 37361i, 2147483647i))) & ~(vec4<i32>(arg_2.x, -22010i, -1i, 36827i) ^ vec4<i32>(-64179i, 1i, arg_2.x, u_input.a))));
    return Struct_1(~vec3<u32>(global1.a.x, _wgslsmith_add_u32(~arg_1, ~arg_1), 27905u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = -(~(i32(-1i) * -17199i));
    var var_1 = false;
    global1 = Struct_1(~select(firstLeadingBit(arg_1), vec3<u32>(1u, 4294967295u, global1.a.x) >> (vec3<u32>(1u, global0.a.x, 1u) % vec3<u32>(32u)), select(vec3<bool>(arg_0.x, arg_2.x, arg_0.x), !arg_2.ywx, !arg_0)));
    var var_2 = vec4<i32>(0i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0, _wgslsmith_mult_i32(var_0, var_0))), vec2<i32>(var_0, 1i >> (abs(0u) % 32u))), _wgslsmith_add_i32(max(1673i, ~_wgslsmith_mod_i32(u_input.b, var_0)), -1i), 1i);
    global1 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(func_2(0i, 27689u, Struct_1(global1.a), arg_2.zyy), func_2(-1i, 1u, Struct_1(arg_1), vec3<bool>(arg_0.x, arg_2.x, true)))), arg_3.x, arg_3.x) - vec3<f32>(-201f, _wgslsmith_f_op_f32(ceil(532f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) * _wgslsmith_f_op_f32(arg_3.x - -499f)))), 400u, var_2.zwz, Struct_1(arg_1));
    return func_2(firstTrailingBit(i32(-1i) * -31527i), global1.a.x >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(45915u, arg_1.x, global0.a.x), global0.a), (global0.a | global1.a) ^ arg_1) % 32u), func_4(_wgslsmith_f_op_vec3_f32(-arg_3), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.xz, global0.a.xx >> (vec2<u32>(4294967295u, global1.a.x) % vec2<u32>(32u))), global0.a.yx), -(~var_2.wzz), Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.a.x, arg_1.x), arg_1), vec3<u32>(arg_1.x, 38231u, 0u), ~vec3<u32>(24246u, global1.a.x, global1.a.x)))), select(arg_2.xzx, select(arg_0, vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_2.x, select(arg_0.x, arg_2.x, true), true)), all(arg_0)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = -1320f;
    let var_0 = vec3<bool>(any(vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), true, !(-25705i != u_input.b))), all(vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), true);
    var var_1 = arg_1.a.x != select(_wgslsmith_clamp_u32(~(~arg_2.a.x), 102332u, _wgslsmith_div_u32(arg_0.x & arg_2.a.x, global1.a.x)), arg_2.a.x & ~arg_2.a.x, all(var_0.yx));
    let var_2 = select(vec4<bool>(any(!vec2<bool>(false, var_0.x)), true, all(!(!vec4<bool>(var_0.x, var_0.x, false, false))), true), !vec4<bool>(true, true, var_0.x, true), select(!vec4<bool>(!var_0.x, true, var_0.x && var_0.x, true), vec4<bool>(true, true, select(var_0.x, false, true) & true, !var_0.x), vec4<bool>(!all(vec3<bool>(var_0.x, true, false)), false, true, var_0.x)));
    let var_3 = func_1(select(!var_0, !vec3<bool>(any(var_2), var_2.x, var_0.x), all(vec2<bool>(var_2.x, false))), arg_0, !select(select(var_2, select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, true, var_2.x, false), var_0.x), false), select(!var_2, select(var_2, vec4<bool>(false, var_2.x, true, var_0.x), var_0.x), var_2), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1392f - -873f), 135f, 343f)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec3<u32>(~21780u, reverseBits(0u), global0.a.x), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.a.x, ~16213u, 53406u | global1.a.x), ~(vec3<u32>(global1.a.x, 6572u, 36189u) ^ vec3<u32>(global1.a.x, global1.a.x, global0.a.x))), vec4<bool>(false, true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), !all(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, 2478f, 731f)))), func_1(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), global1.a, !vec4<bool>(false, true, true, 0u < global1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, _wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(-970f + -873f)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-540f + -549f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -667f)))) - 375f));
    let var_0 = _wgslsmith_div_i32(abs(29098i), 1i);
    let var_1 = false && any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1038f, 1172f, -441f) + vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2497f, 781f, 188f)))), 14765u, vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.a, 0i), (-1143i << (global1.a.x % 32u)) | -33548i), -10218i, max(var_0, var_0)), func_5(abs(global1.a) ^ _wgslsmith_clamp_vec3_u32(func_1(vec3<bool>(var_1, true, true), global0.a, vec4<bool>(var_1, false, var_1, var_1), vec3<f32>(-1679f, -504f, 898f)).a, global0.a, global1.a), Struct_1(~vec3<u32>(global0.a.x, 1u, global0.a.x)), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -43292i), vec2<i32>(-1i, -8719i) >> (vec2<u32>(global0.a.x, global0.a.x) % vec2<u32>(32u))), firstLeadingBit(0u), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, -916f, -541f) + vec3<f32>(412f, -1348f, 692f)), ~global0.a.x, vec3<i32>(u_input.b, var_0, var_0), func_1(vec3<bool>(false, true, var_1), global0.a, vec4<bool>(true, var_1, true, false), vec3<f32>(-197f, -1179f, 319f))), vec3<bool>(true, true, true))));
    global0 = var_2;
    global1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1623f, 1000f) - -1000f), _wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1108f)))), _wgslsmith_add_vec3_u32(var_2.a, countOneBits(func_5(countOneBits(vec3<u32>(global0.a.x, 8344u, 14373u)), func_5(global1.a, Struct_1(var_2.a), Struct_1(vec3<u32>(global0.a.x, 45819u, 5103u))), func_2(4110i, 27496u, Struct_1(global0.a), vec3<bool>(true, var_1, false))).a)), vec4<i32>(12700i, _wgslsmith_add_i32(1i, ~(~var_0)), -13618i, i32(-1i) * -2147483647i));
}


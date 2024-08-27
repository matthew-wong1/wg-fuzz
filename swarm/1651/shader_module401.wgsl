struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(146f, 1f)));
    let var_2 = Struct_3(Struct_1(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 37603i), vec2<i32>(2147483647i, 1226i)), !arg_2.b, select(!(!vec2<bool>(var_0, false)), select(vec2<bool>(arg_2.c.x, arg_2.c.x), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), arg_2);
    let var_3 = true;
    var var_4 = vec3<u32>(~_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(~u_input.c.x, _wgslsmith_add_u32(429u, u_input.b.x))), 4294967295u, countOneBits(u_input.b.x & u_input.c.x));
    return var_0 | any(select(!(!vec3<bool>(true, var_0, var_0)), var_2.b.b, true));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, select(vec3<bool>(!func_3(689f, vec3<f32>(global0.x, -908f, 1279f), Struct_1(u_input.a, vec3<bool>(true, false, arg_1.a), vec2<bool>(false, true))), arg_2, any(vec2<bool>(true, true))), !vec3<bool>(arg_1.b, arg_2, true), any(select(vec2<bool>(false, arg_2), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true && arg_2))), select(!vec2<bool>(true, -2812f <= global0.x), select(vec2<bool>(any(vec4<bool>(arg_2, arg_1.b, true, false)), false), select(select(vec2<bool>(arg_2, arg_1.a), vec2<bool>(arg_2, false), arg_1.b), vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.b, arg_1.a)), false || !arg_1.b), arg_2));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-373f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1921f - _wgslsmith_div_f32(-1265f, _wgslsmith_div_f32(global0.x, -138f))) * 2168f), global0.x);
    var var_1 = global0.x;
    var var_2 = ~(~firstTrailingBit(~vec3<i32>(-1i, -2147483647i, -2147483647i)));
    var_1 = -574f;
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = abs(abs(_wgslsmith_mod_u32(1u, countOneBits(u_input.b.x))));
    var var_1 = Struct_2(true, true);
    var var_2 = Struct_1(arg_3.b.a, !select(func_2(_wgslsmith_mult_u32(0u, 30649u), Struct_2(arg_3.b.c.x, false), any(vec3<bool>(true, true, false))).b, !(!vec3<bool>(false, true, var_1.a)), any(arg_0.a.b.zz)), !arg_0.b.b.zy);
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, arg_1.x, 0i), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(func_2(16915u, Struct_2(true, false), arg_0.a.c.x).a, i32(-1i) * -8280i), arg_0.b.a), -5262i, arg_1.x | -27175i, ~(-(u_input.a ^ arg_1.x))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 138f, global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(560f, -404f, -356f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-985f, -375f, -280f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(405f)) * _wgslsmith_f_op_f32(min(132f, _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + global0.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_3 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(375f, 1000f, 533f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global0.x, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 579f, 821f) + vec3<f32>(-1329f, global0.x, arg_0.x))))), vec3<f32>(-590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) - _wgslsmith_f_op_f32(-global0.x)) * arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1028f)))))));
    var var_0 = u_input.a & -14443i;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - global0.x))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(func_4(Struct_3(func_2(u_input.c.x, Struct_2(false, true), false), func_2(u_input.b.x, Struct_2(true, false), true)), firstLeadingBit(arg_2.wzw) >> (firstLeadingBit(u_input.c.wzw) % vec3<u32>(32u)), ~countOneBits(arg_1), Struct_3(Struct_1(-2147483647i, vec3<bool>(true, true, true), vec2<bool>(true, true)), Struct_1(u_input.a, vec3<bool>(true, true, true), vec2<bool>(true, false)))))), arg_0.x);
    var_0 = arg_1.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2171f - arg_0.x)))), arg_0.x, arg_0.x);
    return Struct_3(func_2(firstTrailingBit(0u), Struct_2(false, true), true), func_2(~(~(~1u)), Struct_2(true, false), true & (-12766i <= (arg_2.x & u_input.a))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = select(max(vec2<u32>(4294967295u, 4294967295u), arg_2.zy), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.x, arg_2.x) >> (u_input.c.zx % vec2<u32>(32u)), abs(arg_2.xz), ~u_input.c.wy)), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, -519f))))))), -(~arg_0.zz), vec4<i32>(~_wgslsmith_sub_i32(-36823i, u_input.a), u_input.a, arg_0.x, _wgslsmith_sub_i32(abs(arg_0.x), 1i))).a.c);
    let var_1 = Struct_2(arg_1.a.b.x, arg_1.b.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-266f, 183f, global0.x), vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, global0.x) + vec3<f32>(1000f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1359f, -2622f) * vec3<f32>(750f, global0.x, global0.x)) - vec3<f32>(1042f, 136f, global0.x)), !func_2(0u, Struct_2(false, true), var_1.b).b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_4(Struct_3(arg_1.b, Struct_1(u_input.a, vec3<bool>(var_1.a, true, var_1.b), arg_1.a.c)), vec3<i32>(arg_0.x, u_input.a, -51109i), arg_0.yx, Struct_3(Struct_1(40080i, vec3<bool>(var_1.b, false, true), arg_1.b.b.zz), Struct_1(arg_0.x, arg_1.a.b, vec2<bool>(false, arg_1.b.b.x))))), _wgslsmith_f_op_f32(round(global0.x))))));
    let var_3 = Struct_2(!func_2(~_wgslsmith_mult_u32(u_input.b.x, 1u), var_1, arg_1.b.c.x).b.x, true);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1815f), _wgslsmith_f_op_f32(round(713f)), global0.x), _wgslsmith_f_op_vec3_f32(-var_2)))) + var_2);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1906f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f - var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(u_input.a, vec3<bool>(var_3.b, arg_1.b.b.x, false), arg_1.b.b.yy), arg_1.a), -vec3<i32>(10386i, arg_0.x, u_input.a) & vec3<i32>(-1i, 0i, -30544i), vec2<i32>(min(arg_0.x, u_input.a), u_input.a), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(-countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 11182i), vec3<i32>(u_input.a, -2147483647i, u_input.a))), func_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -398f)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(30547i, 19329i)), -39956i), countOneBits(firstLeadingBit(vec4<i32>(u_input.a, -19047i, -2147483647i, 11419i)))), vec3<u32>(abs(~1u), 4294967295u, u_input.c.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -199f, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), global0.x, 720f)));
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(-3928i, !func_1(vec2<f32>(global0.x, global0.x), vec2<i32>(33150i, 42152i), vec4<i32>(0i, 24110i, u_input.a, 41439i)).a.b, vec2<bool>(true, func_1(global0.xy, vec2<i32>(5458i, 1i), vec4<i32>(1i, -14397i, 2147483647i, u_input.a)).a.c.x)), Struct_1(-12240i, vec3<bool>(func_2(1u, Struct_2(false, true), false).c.x, true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), select(_wgslsmith_add_vec3_i32(vec3<i32>(31996i, 26741i, -16576i) & vec3<i32>(1i, 1i, u_input.a), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(29380i, -51440i, 3257i))), vec3<i32>(15230i, -19518i, 51058i), _wgslsmith_f_op_f32(-global0.x) >= global0.x), _wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(-vec2<i32>(-42338i, -17534i), vec2<i32>(0i, -2987i)), -reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1898i), vec2<i32>(-2147483647i, 8956i)))), Struct_3(Struct_1(abs(u_input.a) >> (select(u_input.b.x, u_input.c.x, true) % 32u), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(431f, 341f) * vec2<f32>(global0.x, 430f)), vec2<i32>(2066i, u_input.a), countOneBits(vec4<i32>(0i, 1i, u_input.a, u_input.a))).a.b, select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a == u_input.a)), func_2(_wgslsmith_mod_u32(~u_input.c.x, 47455u), Struct_2(true, true), func_2(~u_input.c.x, Struct_2(true, true), true).b.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_5(select(vec3<i32>(-2147483647i, ~29784i, min(u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, firstLeadingBit(1i)), false) & reverseBits(-vec3<i32>(-2147483647i, 2147483647i, u_input.a)), Struct_3(Struct_1((-42455i ^ u_input.a) | ~22063i, func_2(abs(u_input.c.x), Struct_2(false, true), -1465f < global0.x).b, select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, false))), Struct_1((u_input.a & 8112i) | -u_input.a, vec3<bool>(true, true, func_3(global0.x, vec3<f32>(486f, global0.x, -153f), Struct_1(-43131i, vec3<bool>(false, false, false), vec2<bool>(true, true)))), func_2(u_input.b.x | u_input.c.x, Struct_2(true, false), true).b.zx)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.c.x, u_input.b.x), 18936u << (u_input.b.x % 32u))), ~(vec3<u32>(4294967295u, u_input.b.x, 1u) | ~vec3<u32>(4294967295u, 115633u, u_input.b.x))))).x;
    var_0 = 1f;
    var var_1 = reverseBits(u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 713f) + vec3<f32>(-509f, global0.x, 2049f)), vec3<f32>(global0.x, 604f, global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1668f, global0.x, global0.x) + vec3<f32>(826f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -626f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-282f, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, global0.x, 543f)))), vec3<f32>(global0.x, -374f, _wgslsmith_f_op_f32(global0.x + 1161f))))));
    let var_2 = u_input.c.x;
    var var_3 = Struct_3(func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1374f)))), vec2<i32>(u_input.a, -1i), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(-39024i, u_input.a, -36867i, u_input.a)))).a, Struct_1(-u_input.a | u_input.a, vec3<bool>(true, true, true & select(true, false, true)), func_2(~35592u, Struct_2(false, false), false).b.zy));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a >> (39152u % 32u), abs(reverseBits(u_input.c.zxw)), min(22277i, _wgslsmith_sub_i32(443i, 43722i)), global0.xx);
}


struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = !all(!vec4<bool>(arg_2.e, all(vec3<bool>(var_0.e, var_0.e, true)), true, arg_2.e));
    var var_2 = firstLeadingBit(-(i32(-1i) * -arg_0.x) ^ -82392i);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(floor(arg_2.d))));
    var_0 = arg_2;
    return firstTrailingBit(firstLeadingBit(~vec4<u32>(arg_2.a.x, 1u, 0u, var_0.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = !select(vec3<bool>(arg_3.d == _wgslsmith_f_op_f32(arg_1.d * 940f), arg_0.d < _wgslsmith_f_op_f32(min(arg_1.d, arg_1.d)), !(!arg_3.e)), !(!select(vec3<bool>(arg_3.e, false, false), vec3<bool>(true, arg_3.e, arg_0.e), vec3<bool>(false, arg_3.e, true))), !select(!vec3<bool>(arg_0.e, arg_3.e, arg_0.e), !vec3<bool>(arg_3.e, false, arg_0.e), true));
    let var_1 = Struct_1(~vec2<u32>(~min(4294967295u, arg_0.a.x), ~3672u), arg_3.b, vec3<i32>(13888i, -2147483647i, -13095i), 307f, arg_1.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f - arg_0.d) * _wgslsmith_f_op_f32(-var_1.d)) - arg_1.d), _wgslsmith_f_op_f32(-arg_0.d), -1194f, _wgslsmith_f_op_f32(round(arg_1.d))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, arg_0.d, 372f, 137f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2014f, 1000f, -1019f, arg_1.d))))))));
    var_0 = select(vec3<bool>(any(!(!vec3<bool>(true, true, var_0.x))), select(arg_1.e, all(!vec4<bool>(arg_0.e, arg_3.e, false, var_0.x)), any(!vec3<bool>(arg_3.e, var_0.x, arg_1.e))), (_wgslsmith_f_op_f32(-arg_1.d) <= _wgslsmith_f_op_f32(sign(-100f))) && all(vec4<bool>(var_1.e, arg_1.e, var_1.e, false))), vec3<bool>(!all(select(var_0.zx, vec2<bool>(false, var_0.x), false)), arg_1.b.x < 74845u, false), vec3<bool>(true, !arg_1.e, false));
    var var_3 = min(arg_2.x, u_input.a);
    return _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, ~countOneBits(0u), arg_0.a.x)), ~arg_3.b.xyz);
}

fn func_2() -> vec2<u32> {
    global0 = _wgslsmith_dot_vec4_u32(~(~(~firstLeadingBit(vec4<u32>(0u, 1u, 1u, 4294967295u)))), abs(_wgslsmith_div_vec4_u32(~(~vec4<u32>(14711u, 4294967295u, 34507u, 1u)), ~(~vec4<u32>(1u, 26709u, 43982u, 53042u)))));
    var var_0 = !vec4<bool>(false, true, !all(vec3<bool>(true, false, false)), u_input.a == _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -1i, 1i), -vec3<i32>(u_input.a, 1i, -10244i)));
    let var_1 = vec2<u32>(115533u, select(1u, 26039u, u_input.a > ~u_input.a));
    global0 = var_1.x;
    let var_2 = ~func_4(Struct_1(var_1, firstTrailingBit(func_3(vec4<i32>(12811i, 65052i, 90760i, u_input.a), vec3<u32>(var_1.x, var_1.x, 68640u), Struct_1(var_1, vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), vec3<i32>(u_input.a, u_input.a, 28121i), -165f, true), u_input.a)), vec3<i32>(~0i, ~u_input.a, -882i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1900f * 1001f))), all(vec3<bool>(true, false, true))), Struct_1(_wgslsmith_sub_vec2_u32(func_3(vec4<i32>(u_input.a, 34229i, u_input.a, u_input.a), vec3<u32>(1u, 0u, 1u), Struct_1(vec2<u32>(var_1.x, 1u), vec4<u32>(0u, 0u, var_1.x, var_1.x), vec3<i32>(7312i, 2147483647i, 2147483647i), -1189f, true), 1i).ww, vec2<u32>(1u, 51500u)), ~(~vec4<u32>(var_1.x, 0u, var_1.x, var_1.x)), select(vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, 36730i), vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(u_input.a, -60500i, u_input.a)), vec3<bool>(true, var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(204f)) * _wgslsmith_div_f32(-1286f, 525f)), !(!var_0.x)), vec2<i32>(0i, abs(u_input.a)), Struct_1(~(~var_1), ~vec4<u32>(4294967295u, 98523u, 63186u, var_1.x), firstLeadingBit(min(vec3<i32>(u_input.a, u_input.a, 26009i), vec3<i32>(u_input.a, -1i, 1i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(320f)))), all(vec3<bool>(var_0.x, true, false))));
    return abs(select(vec2<u32>(var_1.x | var_2.x, ~var_2.x), var_1, select(!vec2<bool>(var_0.x, false), var_0.zy, true)) & (_wgslsmith_mult_vec2_u32(var_2.xy >> (vec2<u32>(var_1.x, 4294967295u) % vec2<u32>(32u)), ~var_1) & select(var_1, var_1, vec2<bool>(true, true))));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    global1 = array<Struct_1, 27>();
    let var_0 = Struct_1(~select(vec2<u32>(arg_0.b.x, 1u), func_2(), select(true, true, false)), arg_0.b, ~firstTrailingBit(firstLeadingBit(abs(vec3<i32>(18518i, -2147483647i, u_input.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, _wgslsmith_f_op_f32(floor(var_0.d))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(458f * var_0.d))) + var_1.x));
    let var_3 = var_0.c.zx;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1012f, -1372f, -1221f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(select(-1000f, 883f, var_0.e)), var_1.x) - vec3<f32>(_wgslsmith_f_op_f32(396f - 554f), -546f, 233f)), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.e, false), vec3<bool>(arg_0.e, var_0.e, false)), !(!vec3<bool>(var_0.e, arg_0.e, arg_0.e)), select(!vec3<bool>(arg_0.e, false, arg_0.e), select(vec3<bool>(false, arg_0.e, arg_0.e), vec3<bool>(arg_0.e, arg_0.e, arg_0.e), vec3<bool>(var_0.e, true, true)), select(vec3<bool>(var_0.e, true, var_0.e), vec3<bool>(true, var_0.e, true), vec3<bool>(arg_0.e, arg_0.e, true)))))));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(~(~1u)), 27u)];
    var var_1 = vec3<bool>(var_0.e, true, var_0.e);
    var var_2 = var_0.e | false;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = ~vec3<u32>(52408u, _wgslsmith_sub_u32(~1u >> (select(34069u, 0u, false) % 32u), 25515u), 4077u);
    var_0 = abs(~4294967295u);
    global0 = func_5(_wgslsmith_f_op_f32(278f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-898f)), _wgslsmith_div_f32(-441f, -175f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-974f, -1476f, 998f) + vec3<f32>(-174f, 2946f, -222f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec2<u32>(var_1.x, var_1.x), vec4<u32>(7534u, var_1.x, var_1.x, var_1.x), vec3<i32>(-1i, u_input.a, u_input.a), 1023f, false))) - vec3<f32>(1402f, 408f, -1074f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1672f)))) << (_wgslsmith_add_u32(var_1.x << (~_wgslsmith_clamp_u32(32540u, var_1.x, 1u) % 32u), ~(~min(1u, 14381u))) % 32u);
    let var_2 = vec3<bool>(true, any(vec2<bool>(true, !any(vec4<bool>(false, false, false, true)))), (true && !any(vec4<bool>(false, true, true, false))) | true);
    global0 = _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(~func_4(Struct_1(vec2<u32>(var_1.x, 0u), vec4<u32>(20291u, var_1.x, 20768u, var_1.x), vec3<i32>(-3527i, 41939i, u_input.a), -1494f, false), Struct_1(vec2<u32>(var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 62337u, 23615u), vec3<i32>(u_input.a, -1i, u_input.a), -239f, true), vec2<i32>(u_input.a, -36980i), global1[_wgslsmith_index_u32(var_1.x, 27u)]).xz << (vec2<u32>(~var_1.x, 68716u) % vec2<u32>(32u)), abs(var_1.xz)), func_4(Struct_1(_wgslsmith_clamp_vec2_u32(var_1.yx, _wgslsmith_div_vec2_u32(vec2<u32>(19736u, var_1.x), vec2<u32>(1u, 79070u)), _wgslsmith_div_vec2_u32(var_1.zz, var_1.zz)), ~abs(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x)), ~max(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -815f) - -1000f), !any(var_2)), Struct_1(vec2<u32>(var_1.x, var_1.x), ~(vec4<u32>(var_1.x, 0u, var_1.x, var_1.x) & vec4<u32>(var_1.x, var_1.x, var_1.x, 47397u)), vec3<i32>(-u_input.a, ~u_input.a, -1i), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1000f * 1048f)), all(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, var_2.x, true, var_2.x)))), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -30794i)), global1[_wgslsmith_index_u32(var_1.x, 27u)]).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(43532u, _wgslsmith_div_u32(26566u, ~_wgslsmith_mod_u32(1u, 1u)), 4294967295u), ~vec3<i32>(u_input.a, 1i, _wgslsmith_mult_i32(0i, u_input.a)) | _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a, -25439i, select(u_input.a, 29555i, var_2.x)), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, -39274i, u_input.a), vec3<i32>(29454i, u_input.a, u_input.a))));
}


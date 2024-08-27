struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 34982u, 95765u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec2<i32> {
    global0 = vec3<u32>(arg_2.x, 90071u, ~arg_1.d.b);
    global0 = ~_wgslsmith_add_vec3_u32(countOneBits(~(~u_input.e.zzx)), select(_wgslsmith_mult_vec3_u32(~u_input.e.xzw, select(arg_2, vec3<u32>(1u, 1u, 0u), vec3<bool>(arg_1.a.x, arg_1.a.x, true))), arg_2, (arg_1.a.x || true) | (arg_0.x != 1i)));
    global0 = u_input.e.wxz;
    global0 = vec3<u32>(0u, max(arg_1.c.b, 88684u), arg_1.c.b);
    let var_0 = arg_1;
    return ~(_wgslsmith_add_vec2_i32(vec2<i32>(abs(0i), arg_1.b.a.x), (vec2<i32>(-19512i, 11936i) ^ vec2<i32>(arg_0.x, arg_0.x)) << (vec2<u32>(var_0.c.b, 121541u) % vec2<u32>(32u))) ^ vec2<i32>(arg_1.d.c.a.x, arg_1.b.a.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = max(24395i, u_input.c.x);
    var var_1 = Struct_3(vec4<bool>(true, arg_0, !(_wgslsmith_mult_i32(u_input.a, 2147483647i) == reverseBits(u_input.a)), any(!select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, false)))), Struct_1(-abs(~u_input.d.wy), vec2<f32>(1f, 1f)), Struct_2(Struct_1(func_3(u_input.c, Struct_3(vec4<bool>(arg_0, true, arg_0, arg_0), Struct_1(vec2<i32>(1i, 45050i), vec2<f32>(-1739f, 574f)), Struct_2(Struct_1(u_input.c.yy, vec2<f32>(863f, -2017f)), global0.x, Struct_1(vec2<i32>(-38622i, u_input.a), vec2<f32>(-198f, 894f)), vec2<f32>(558f, -1445f)), Struct_2(Struct_1(u_input.c.xz, vec2<f32>(936f, 1083f)), 40065u, Struct_1(vec2<i32>(u_input.a, u_input.d.x), vec2<f32>(1672f, -1012f)), vec2<f32>(-591f, -440f))), vec3<u32>(0u, u_input.e.x, 147361u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1000f + -542f))), ~global0.x, Struct_1(vec2<i32>(firstTrailingBit(2147483647i), abs(u_input.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1953f, -236f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 306f) * vec2<f32>(1781f, 323f)), false))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-943f, -1652f), _wgslsmith_f_op_f32(select(-903f, 898f, true)))))), Struct_2(Struct_1(u_input.d.zy ^ select(vec2<i32>(u_input.c.x, 37921i), vec2<i32>(-20140i, u_input.c.x), arg_0), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, 1367f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(144f, 442f) + vec2<f32>(2070f, 870f))))), abs(_wgslsmith_mod_u32(min(44383u, 116u), 30846u)), Struct_1(vec2<i32>(u_input.d.x, -10401i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(952f, 604f), vec2<f32>(1367f, 485f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1091f), vec2<f32>(-704f, 610f)))))));
    global0 = ~(~vec3<u32>(select(~var_1.c.b, abs(23203u), true), ~reverseBits(var_1.d.b), 47762u));
    var var_2 = var_1.c.c;
    var var_3 = var_1.c;
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(-var_3.a.a, vec2<i32>(countOneBits(var_1.c.c.a.x), -33971i)), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.b.x, var_2.b.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1923f, 1186f), var_3.a.b))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    global0 = firstTrailingBit(vec3<u32>(reverseBits(u_input.e.x), ~80884u, firstLeadingBit(u_input.e.x)));
    let var_0 = arg_2;
    let var_1 = -91747i;
    var var_2 = (vec3<i32>(_wgslsmith_sub_i32(u_input.a, -71663i), -40618i, -26800i) << (abs(~(~vec3<u32>(0u, 87040u, u_input.e.x))) % vec3<u32>(32u))) ^ u_input.d.wzx;
    return select(vec4<bool>(arg_0, arg_0, arg_0, all(vec4<bool>(1u != u_input.e.x, true, !arg_0, arg_0))), !(!vec4<bool>(arg_0 || false, !arg_0, arg_0, false)), !any(vec4<bool>(all(vec3<bool>(arg_0, false, arg_0)), any(vec2<bool>(true, false)), false, true)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0.x, -2147483647i), ~arg_0.x, 2147483647i, _wgslsmith_add_i32(u_input.d.x, u_input.a)), u_input.d), i32(-1i) * -u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1088f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(943f * 506f) + _wgslsmith_f_op_f32(f32(-1f) * -993f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(454f, _wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(1000f + -438f), _wgslsmith_f_op_f32(f32(-1f) * -1129f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, -832f, 1128f, -456f) * vec4<f32>(-1000f, 337f, 1571f, -1745f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 188f, 662f, -1000f) * vec4<f32>(262f, -1013f, 1891f, 878f))), vec4<bool>(true, true, true, true))))));
    let var_2 = Struct_3(select(func_4(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -888f)), func_2(false)), vec4<bool>(true, all(vec3<bool>(true, false, false)), !all(vec2<bool>(false, false)), true), !all(func_4(false, 1606f, Struct_1(arg_0.yz, var_1.xw)).zyx)), func_2(false), Struct_2(func_2(false), u_input.e.x, func_2(true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -656f))), Struct_2(Struct_1(abs(u_input.d.xx), _wgslsmith_f_op_vec2_f32(var_1.wy - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(955f, var_1.x))))), ~_wgslsmith_div_u32(u_input.b, global0.x), func_2(true), var_1.xy));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-1023f - 1000f), var_1.x, 114f))))));
    let var_4 = Struct_1(~var_2.c.a.a, func_2(any(var_2.a.zwz)).b);
    return _wgslsmith_mod_u32(global0.x, max(~10871u, ~var_2.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(abs(~u_input.e.x), u_input.e.x, func_1(abs(-u_input.d ^ (u_input.d | u_input.d))));
    var var_1 = any(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), func_4(false, 191f, Struct_1(u_input.d.zx, vec2<f32>(1000f, -801f))).zww)), !(global0.x > 55377u), _wgslsmith_mod_u32(global0.x, 1u) == 56469u, func_4(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-681f, 336f)))), func_2(true)).x));
    var var_2 = _wgslsmith_add_u32(48323u, ~4294967295u);
    let var_3 = u_input.d;
    var var_4 = Struct_4(func_4(true, 740f, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.x, u_input.a), var_3.zy), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1529f, -190f))))).x || func_4(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1914f), _wgslsmith_f_op_f32(step(580f, 1000f)))), Struct_1(vec2<i32>(u_input.c.x, var_3.x), vec2<f32>(-119f, 1766f))).x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-364f, -1000f))));
    let var_5 = Struct_3(vec4<bool>(var_4.a, func_4(!var_4.a, _wgslsmith_f_op_f32(-1702f * var_4.b.x), func_2(var_4.a)).x & true, !var_4.a, false), Struct_1(min(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, -76234i), vec2<i32>(1i, 48643i)), max(var_3.wy, vec2<i32>(var_3.x, var_3.x))), u_input.d.zx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.x, -229f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), -558f)))), Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(-7690i, 2147483647i), -var_3.yx), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_4.b.x, -1151f)))))), (func_1(vec4<i32>(2147483647i, var_3.x, -59902i, u_input.c.x)) | 42722u) & (81584u << (var_0.x % 32u)), func_2(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(721f, -519f), vec2<f32>(1535f, var_4.b.x)), _wgslsmith_f_op_vec2_f32(floor(var_4.b))))), Struct_2(Struct_1(-vec2<i32>(var_3.x, 2147483647i), var_4.b), ~(~(global0.x ^ var_0.x)), func_2(select(true, true, var_4.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_4.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, countOneBits(var_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(var_4.a).b.x, _wgslsmith_f_op_f32(-var_5.c.d.x), var_5.b.b.x) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.d.d.x, 984f, -1165f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(628f, var_5.b.b.x, var_5.c.c.b.x))))) * vec3<f32>(998f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5.c.c.b.x))), -820f)), var_4.b.x, firstTrailingBit(vec4<u32>(~27355u, ~u_input.b, _wgslsmith_mult_u32(24611u, 2248u), _wgslsmith_sub_u32(global0.x, 39245u) >> (~global0.x % 32u))));
}


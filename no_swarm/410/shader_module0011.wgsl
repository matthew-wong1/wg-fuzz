struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> u32 {
    let var_0 = Struct_1(vec2<u32>(min(~1u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x & u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x), ~vec4<u32>(0u, u_input.a.x, 4294967295u, 1u) & (vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) | vec4<u32>(26970u, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(max(-221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) + 278f) - arg_0.a.x))));
    var var_1 = Struct_5(Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.a))))), ~(~var_0.a.x));
    var var_2 = true;
    let var_3 = vec4<i32>(firstTrailingBit(~(-1i)), -1i, _wgslsmith_dot_vec4_i32(~(abs(vec4<i32>(arg_1, -12670i, arg_1, 0i)) << (~vec4<u32>(u_input.a.x, 4294967295u, var_1.b, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(-80421i, u_input.b, -15600i, -32901i)), -vec4<i32>(u_input.b, 6107i, u_input.b, -1i))), 1i);
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_0.a.yx, var_1.a.a.xz))) - arg_0.a.zx))));
    return 0u;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(~reverseBits(u_input.a.yy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * arg_0), _wgslsmith_f_op_f32(arg_0 + 2134f)))), -932f)));
    let var_1 = max(-reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 31464i), vec2<i32>(u_input.b, -10071i))), vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(min(27080i, -2147483647i), ~u_input.b)), abs(_wgslsmith_dot_vec2_i32(min(vec2<i32>(77097i, 2147483647i), vec2<i32>(-1i, -40271i)), ~vec2<i32>(-1i, u_input.b)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, _wgslsmith_div_f32(arg_1.x, 710f)) - -143f), firstTrailingBit(_wgslsmith_add_u32(20645u, 62508u)) != func_3(Struct_4(vec3<f32>(340f, -614f, -1281f)), ~(-27745i)))));
    let var_3 = -2147483647i;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) * var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + 1098f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2584f + 1668f))), arg_1.x))));
    return Struct_1(_wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(71315u, 4294967295u)) & vec2<u32>(_wgslsmith_sub_u32(countOneBits(var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 99956u, 0u, var_0.a.x), vec4<u32>(35194u, 0u, u_input.a.x, var_0.a.x))), var_0.a.x), -730f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 827f, arg_0.b, 1000f)))) - vec4<f32>(-264f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -490f) + arg_1.a.x), -1204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + -181f))));
    let var_1 = Struct_3(Struct_2(func_2(arg_1.a.x, var_0.xz, arg_2.a.e.yy), ~(-vec4<i32>(u_input.b, arg_2.a.b.x, arg_2.a.b.x, -1i)), func_2(arg_0.b, vec2<f32>(1000f, func_2(-811f, vec2<f32>(553f, arg_2.d.x), arg_2.a.e.xw).b), vec2<bool>(all(arg_2.a.e.xy), false)), func_2(-244f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, arg_0.b), vec2<f32>(arg_1.a.x, arg_1.a.x), arg_2.a.e.wz)), vec2<bool>(arg_2.b, arg_2.a.e.x)), arg_2.a.e), any(vec4<bool>(any(select(arg_2.a.e.yzz, vec3<bool>(true, arg_2.b, arg_2.a.e.x), arg_2.a.e.www)), !(!arg_2.b), true, !all(vec2<bool>(true, arg_2.a.e.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.yz, vec2<f32>(-1789f, 609f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -675f, 4190f)), _wgslsmith_f_op_vec3_f32(min(var_0.wwx, var_0.xwz))))));
    var var_2 = arg_2.a;
    var_2 = arg_2.a;
    var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f * _wgslsmith_f_op_f32(-var_0.x)) - var_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.yy) + arg_2.d.zx), vec2<f32>(_wgslsmith_f_op_f32(max(1744f, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -832f)), !(!vec2<bool>(arg_2.b, false)))), !var_1.a.e.wy), countOneBits(vec4<i32>(~35260i, -arg_2.a.b.x, ~(-9018i) ^ (u_input.b | -2147483647i), -var_2.b.x)), var_1.a.a, Struct_1(arg_2.a.c.a, var_1.c.x), vec4<bool>(any(select(select(var_1.a.e.yxx, var_2.e.wyx, arg_2.b), select(var_2.e.wyy, arg_2.a.e.wxz, var_1.a.e.wyz), false | arg_2.b)), var_1.a.e.x, !var_2.e.x, all(select(vec3<bool>(var_1.a.e.x, arg_2.b, false), vec3<bool>(false, true, var_1.a.e.x), vec3<bool>(var_1.a.e.x, true, arg_2.b))) && !arg_2.a.e.x));
    return Struct_2(Struct_1(~(~vec2<u32>(var_2.d.a.x, var_1.a.c.a.x)) | (vec2<u32>(var_2.a.a.x, 87533u) << (~vec2<u32>(arg_0.a.x, arg_0.a.x) % vec2<u32>(32u))), -165f), var_1.a.b & ~(-arg_2.a.b), Struct_1(var_1.a.d.a, _wgslsmith_f_op_f32(ceil(-1118f))), arg_0, select(!var_2.e, select(select(select(vec4<bool>(false, var_2.e.x, false, false), vec4<bool>(arg_2.a.e.x, var_2.e.x, false, var_1.b), true), !vec4<bool>(true, var_1.a.e.x, true, true), select(var_2.e, vec4<bool>(false, false, false, true), true)), select(vec4<bool>(true, true, var_2.e.x, true), !vec4<bool>(true, var_2.e.x, var_1.a.e.x, arg_2.a.e.x), var_2.e.x), all(vec4<bool>(false, var_2.e.x, arg_2.a.e.x, var_2.e.x))), var_2.e.x));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(549f - -1468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)), arg_0.a.c.b)));
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x * -973f), 888f))))));
    return vec2<f32>(-1574f, -1160f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~abs(u_input.a.x), _wgslsmith_sub_u32(firstLeadingBit(0u), u_input.a.x))), -1543f);
    let var_1 = true;
    var var_2 = u_input.a.x & abs(~u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, -440f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-349f, var_0.b))), var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_2(Struct_1(u_input.a.zy, -173f), vec4<i32>(u_input.b, u_input.b, u_input.b, 16989i), Struct_1(vec2<u32>(4294967295u, 16386u), 874f), Struct_1(vec2<u32>(u_input.a.x, var_0.a.x), var_0.b), vec4<bool>(var_1, var_1, var_1, var_1)), false, vec2<f32>(1036f, var_0.b), vec3<f32>(-176f, -1000f, var_0.b)), 1214f, func_1(Struct_1(var_0.a, 1519f), Struct_4(vec3<f32>(var_0.b, var_0.b, 1198f)), Struct_3(Struct_2(Struct_1(var_0.a, 967f), vec4<i32>(-1i, 25131i, u_input.b, -7949i), Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, -1314f), vec4<bool>(var_1, true, var_1, var_1)), true, vec2<f32>(var_0.b, 229f), vec3<f32>(-1355f, var_0.b, 877f)))))), vec2<bool>(false, false))));
    var var_4 = vec4<i32>(-49081i, _wgslsmith_dot_vec2_i32(~func_1(Struct_1(vec2<u32>(47279u, 1u), 151f), Struct_4(vec3<f32>(-287f, var_3.x, -629f)), Struct_3(Struct_2(Struct_1(vec2<u32>(1037u, 39408u), var_3.x), vec4<i32>(u_input.b, -1i, 0i, 17646i), Struct_1(var_0.a, var_3.x), Struct_1(u_input.a.yy, var_0.b), vec4<bool>(var_1, false, true, var_1)), var_1, vec2<f32>(-1000f, var_3.x), vec3<f32>(var_0.b, var_3.x, var_0.b))).b.yw, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, i32(-1i) * -11856i), func_1(Struct_1(var_0.a, 771f), Struct_4(vec3<f32>(var_3.x, -838f, -997f)), Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a.x, 48679u), var_0.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(var_0.a, var_3.x), Struct_1(u_input.a.xz, -1930f), vec4<bool>(var_1, false, true, true)), true, vec2<f32>(var_0.b, -469f), vec3<f32>(var_3.x, -488f, var_3.x))).b.yz)), -2147483647i, -1i);
    var_0 = func_1(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + 103f) * var_3.x), _wgslsmith_f_op_f32(ceil(-1723f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_3.x, -466f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 195f) + var_3), any(vec3<bool>(false, true, var_1)))) - vec2<f32>(_wgslsmith_div_f32(372f, var_0.b), -676f)), !select(!vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), var_1)), Struct_4(vec3<f32>(var_3.x, 214f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-524f * 212f))))), Struct_3(func_1(Struct_1(var_0.a << (u_input.a.zz % vec2<u32>(32u)), _wgslsmith_div_f32(var_0.b, 1639f)), Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(220f, var_3.x, var_0.b)))), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, var_0.a.x), var_0.b), vec4<i32>(1i, 1i, var_4.x, var_4.x), Struct_1(var_0.a, 1269f), Struct_1(vec2<u32>(var_0.a.x, 0u), 2100f), vec4<bool>(var_1, var_1, true, false)), var_1, var_3, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, var_3.x, var_0.b))))), all(select(select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(false, true, false, var_1), vec4<bool>(true, true, var_1, var_1)), vec4<bool>(var_1, true, false, var_1), var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 - var_3))), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(-1347f)), _wgslsmith_f_op_f32(-var_3.x)))).c;
    var var_5 = _wgslsmith_div_f32(var_0.b, -203f);
    var var_6 = vec4<bool>(all(vec3<bool>(true, -var_4.x != _wgslsmith_div_i32(var_4.x, -14668i), var_1)), any(vec4<bool>(true, false, !(!var_1), true || var_1)), all(select(vec4<bool>(!var_1, var_4.x == 1i, !var_1, select(var_1, var_1, true)), !select(vec4<bool>(var_1, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, var_1, false, var_1)), vec4<bool>(all(vec4<bool>(var_1, true, true, var_1)), any(vec3<bool>(var_1, false, false)), true | var_1, var_4.x <= 0i))), var_1);
    var_6 = select(!vec4<bool>(false, var_1, true, false), func_1(func_1(func_2(var_3.x, var_3, var_6.yw), Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.x, -237f, -1091f)))), Struct_3(Struct_2(Struct_1(vec2<u32>(u_input.a.x, 41357u), -162f), vec4<i32>(var_4.x, u_input.b, u_input.b, var_4.x), Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), 827f), Struct_1(vec2<u32>(var_0.a.x, 1u), var_0.b), vec4<bool>(var_6.x, var_6.x, var_1, false)), true, vec2<f32>(var_3.x, var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_3.x, 686f)))).c, Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1043f, -1317f)), vec3<f32>(1234f, -705f, var_3.x))), Struct_3(func_1(Struct_1(vec2<u32>(4294967295u, 1u), var_0.b), Struct_4(vec3<f32>(1206f, var_3.x, -464f)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), -385f), vec4<i32>(var_4.x, u_input.b, 1i, 29306i), Struct_1(vec2<u32>(0u, var_0.a.x), var_3.x), Struct_1(var_0.a, var_0.b), vec4<bool>(true, true, var_6.x, var_6.x)), true, var_3, vec3<f32>(1324f, 1477f, -607f))), var_1, var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 189f, var_3.x))))).e, any(var_6.wzy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-max(var_4.wyy, var_4.zxw), var_4.xzx), ~(-var_4.x)));
}


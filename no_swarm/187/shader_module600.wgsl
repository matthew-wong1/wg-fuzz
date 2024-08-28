struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_5) -> i32 {
    return -1i;
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_1(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(926f * -580f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1156f, -443f))) * _wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(f32(-1f) * -858f)))), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(0u, 1u, 4294967295u)), !(!vec4<bool>(true, true, true, arg_0.x <= arg_0.x)), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, var_0.b.x, 197f, 408f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, -605f, var_0.b.x, var_0.b.x))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.x, -179f, var_0.b.x, -398f)))))), vec4<f32>(_wgslsmith_div_f32(-132f, var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), -2859f), select(select(vec4<bool>(true, var_0.d.x, true, var_0.d.x), vec4<bool>(true, true, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, true, true, true)), vec4<bool>(true, true, var_0.d.x, !var_0.d.x), false)))));
    var var_2 = _wgslsmith_mod_i32(arg_0.x, ~firstTrailingBit(~abs(-31677i)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -469f);
    var_3 = 200f;
    return _wgslsmith_f_op_f32(round(-1694f));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(252f)), -196f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1608f, 105f)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.zx)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f + 1216f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_2 = _wgslsmith_dot_vec2_u32(arg_1, _wgslsmith_mult_vec2_u32(~(vec2<u32>(arg_1.x, arg_1.x) << (vec2<u32>(u_input.b.x, arg_1.x) % vec2<u32>(32u))), vec2<u32>(~countOneBits(u_input.d), _wgslsmith_sub_u32(arg_1.x, arg_1.x) >> (~arg_1.x % 32u))));
    var var_3 = _wgslsmith_f_op_f32(-var_0.x);
    var var_4 = 25211u;
    return Struct_2(arg_0, Struct_1(reverseBits(~1u), var_0, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(u_input.b), ~vec3<u32>(36742u, u_input.b.x, 23776u)), vec3<u32>(abs(13644u), _wgslsmith_dot_vec4_u32(vec4<u32>(15951u, u_input.b.x, 0u, u_input.d), vec4<u32>(u_input.d, 1u, arg_1.x, u_input.b.x)), u_input.b.x << (0u % 32u))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), vec4<bool>(select(false, false, true), true, true, true), vec4<bool>(true, true, true, true)), ~arg_1.x), Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-110f, -214f))), vec2<f32>(505f, 1396f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -188f))), ~u_input.b, select(vec4<bool>(false, all(vec4<bool>(true, true, true, false)), true, all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true))), _wgslsmith_sub_u32(1u, firstTrailingBit(32415u) << (arg_1.x % 32u))), Struct_1(abs(u_input.d), var_0, ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, 19888u, 70499u), u_input.b >> (u_input.b % vec3<u32>(32u))), select(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), vec4<bool>(false, 0i >= u_input.c.x, any(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, true, false))), true), arg_1.x | 11415u), Struct_1(~_wgslsmith_sub_u32(u_input.d, 1u) >> (24631u % 32u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(134f, 731f) + var_0))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.b, u_input.b), vec3<u32>(1u, ~0u, u_input.d), u_input.b), vec4<bool>(true, true, true, true), _wgslsmith_mod_u32(firstTrailingBit(~u_input.b.x), ~u_input.d)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(vec2<u32>(select(max(_wgslsmith_mod_u32(39455u, arg_0), u_input.b.x << (arg_1.e.a % 32u)), ~(arg_1.c.c.x & 24237u), arg_1.b.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 0u, 17112u), vec3<u32>(~6460u, u_input.d, ~arg_1.d.a))), func_2(-_wgslsmith_clamp_i32(arg_1.a, arg_1.a, firstLeadingBit(u_input.c.x)), min(u_input.b.yz, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 4294967295u) & u_input.b.xz, arg_1.d.c.xz))), -2147483647i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.b.x, 516f, -1618f, -568f)))))), func_2(~(-arg_1.a), arg_1.b.c.xy << (vec2<u32>(~u_input.b.x, 4294967295u) % vec2<u32>(32u))));
    var_0 = Struct_4(~countOneBits(var_0.b.c.c.yy), var_0.e, arg_1.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1398f, arg_1.c.b.x, var_0.b.c.b.x, arg_1.c.b.x) - vec4<f32>(arg_1.e.b.x, var_0.b.b.b.x, var_0.b.b.b.x, var_0.b.b.b.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c.b.x, 180f, 142f, arg_1.c.b.x))))))), var_0.d)), Struct_2(~arg_1.a, var_0.e.c, func_2(-25058i, select(countOneBits(arg_1.c.c.yy), _wgslsmith_div_vec2_u32(var_0.e.d.c.xy, vec2<u32>(1u, 0u)), !var_0.b.b.d.x)).e, Struct_1(func_2(81065i, ~u_input.b.yz).e.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.c.b.x, arg_1.e.b.x)))), ~min(arg_1.d.c, arg_1.b.c), arg_1.b.d, arg_1.c.a), var_0.e.c));
    var_0 = Struct_4(firstTrailingBit(arg_1.d.c.zz), arg_1, var_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(-1078f, -519f, arg_1.b.b.x, -1377f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(var_0.d, var_0.d, vec4<bool>(arg_1.e.d.x, false, false, arg_1.e.d.x))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.b.x, 1000f, -721f, arg_1.b.b.x)))))), func_2(var_0.c, abs(arg_1.e.c.xz)));
    var_0 = Struct_4(arg_1.b.c.yz, func_2(-_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -21405i), vec2<u32>(~4294967295u, 1u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.a ^ 2147483647i, -37307i), select(u_input.a.xw, ~u_input.c.yz, true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.d.b.x - var_0.e.e.b.x), -1036f, var_0.e.a < -26407i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.b.x + var_0.e.b.b.x) * _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-606f - 538f), _wgslsmith_f_op_f32(arg_1.d.b.x * _wgslsmith_f_op_f32(trunc(-1345f)))))), var_0.e);
    var_0 = Struct_4(reverseBits(~(var_0.e.d.c.zz >> (~arg_1.c.c.xx % vec2<u32>(32u)))), arg_1, i32(-1i) * -13676i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.d))), var_0.e.b.d.x)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1491f, 1000f, var_0.b.b.b.x, arg_1.d.b.x), _wgslsmith_f_op_vec4_f32(-var_0.d)))))), Struct_2(-u_input.a.x, func_2(-1i, vec2<u32>(41327u, ~u_input.b.x)).d, Struct_1(~u_input.d, var_0.d.xw, reverseBits(vec3<u32>(arg_1.e.e, 0u, 1u)), !arg_1.d.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(46942u, 26428u, 4294967295u), vec3<u32>(u_input.d, 81035u, var_0.a.x))), Struct_1(_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(arg_1.c.b.x * -669f)), ~vec3<u32>(41468u, 80937u, 4294967295u), vec4<bool>(all(vec2<bool>(true, true)), var_0.e.e.d.x || false, !var_0.b.d.d.x, arg_1.e.d.x || var_0.e.d.d.x), ~var_0.e.e.c.x), var_0.b.e));
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(7743u, func_2((u_input.a.x ^ -u_input.a.x) | min(func_1(vec4<bool>(false, true, false, true), false, 272f, Struct_5(32772u, Struct_4(vec2<u32>(u_input.d, 43967u), Struct_2(u_input.c.x, Struct_1(1u, vec2<f32>(-195f, -679f), u_input.b, vec4<bool>(true, false, true, true), u_input.b.x), Struct_1(1u, vec2<f32>(750f, -544f), u_input.b, vec4<bool>(true, true, true, true), u_input.b.x), Struct_1(1u, vec2<f32>(-241f, 1015f), u_input.b, vec4<bool>(false, false, true, true), 29982u), Struct_1(14057u, vec2<f32>(118f, 1000f), u_input.b, vec4<bool>(true, false, true, false), 1u)), u_input.c.x, vec4<f32>(887f, 145f, -355f, 1443f), Struct_2(u_input.c.x, Struct_1(0u, vec2<f32>(-141f, -1139f), u_input.b, vec4<bool>(true, true, false, false), u_input.d), Struct_1(u_input.b.x, vec2<f32>(468f, -370f), u_input.b, vec4<bool>(false, true, true, false), u_input.b.x), Struct_1(82477u, vec2<f32>(-1208f, -398f), u_input.b, vec4<bool>(true, true, false, false), u_input.b.x), Struct_1(0u, vec2<f32>(-238f, 780f), vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec4<bool>(true, false, true, false), u_input.d))), -46695i)), ~u_input.c.x), vec2<u32>(~(u_input.d << (4294967295u % 32u)), firstTrailingBit(4294967295u) >> (max(42764u, u_input.d) % 32u))));
    var var_1 = !(!(false && (countOneBits(0i) >= min(u_input.a.x, 63531i))));
    var_1 = true;
    let var_2 = func_2(u_input.a.x, u_input.b.zy).b.a;
    let var_3 = vec2<i32>(2147483647i ^ -(1i | func_1(var_0.d, var_0.d.x, 1000f, Struct_5(5728u, Struct_4(vec2<u32>(1u, 4294967295u), Struct_2(-2147483647i, Struct_1(0u, var_0.b, u_input.b, var_0.d, var_0.a), var_0, var_0, Struct_1(var_0.a, vec2<f32>(var_0.b.x, var_0.b.x), vec3<u32>(0u, var_2, u_input.d), var_0.d, 26143u)), -2147483647i, vec4<f32>(-1986f, 866f, -1000f, var_0.b.x), Struct_2(-2147483647i, Struct_1(var_0.c.x, var_0.b, var_0.c, var_0.d, var_0.c.x), var_0, Struct_1(var_0.a, var_0.b, vec3<u32>(0u, var_2, var_2), var_0.d, u_input.d), var_0)), u_input.a.x))), ~(~(2147483647i >> (_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(var_0.a, var_2, 59938u)) % 32u))));
    var_1 = !(!var_0.d.x);
    var_1 = -(-countOneBits(var_3.x) & ~var_3.x) >= _wgslsmith_sub_i32(~var_3.x << (1u % 32u), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-741f, 124f, -1678f)))), _wgslsmith_div_vec3_f32(vec3<f32>(321f, _wgslsmith_f_op_f32(f32(-1f) * -723f), 1501f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -1401f) + vec3<f32>(-834f, -1000f, -1690f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(645f, var_0.b.x, var_0.b.x)), all(var_0.d)))), !(!vec3<bool>(var_0.d.x, true, var_0.d.x)))), _wgslsmith_clamp_u32(func_2(-1i, var_0.c.xy).d.c.x ^ u_input.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b, var_0.c), ~var_2), ~(~_wgslsmith_mult_u32(53353u, u_input.d))), func_1(vec4<bool>(var_0.d.x, var_0.d.x && true, var_0.d.x, _wgslsmith_mult_u32(0u, var_2) >= ~1u), true, func_4(~(~68128u), Struct_2(u_input.c.x, var_0, func_4(u_input.b.x, Struct_2(-63099i, Struct_1(var_2, var_0.b, vec3<u32>(var_0.a, var_0.e, u_input.d), var_0.d, 4294967295u), Struct_1(var_2, vec2<f32>(-432f, var_0.b.x), vec3<u32>(u_input.b.x, 1u, 27035u), vec4<bool>(true, true, false, true), u_input.d), Struct_1(var_0.a, var_0.b, u_input.b, vec4<bool>(true, var_0.d.x, var_0.d.x, false), 17333u), Struct_1(0u, var_0.b, var_0.c, vec4<bool>(true, true, var_0.d.x, var_0.d.x), 4294967295u))), Struct_1(56892u, vec2<f32>(833f, var_0.b.x), u_input.b, var_0.d, var_0.a), Struct_1(u_input.b.x, vec2<f32>(-1000f, -1299f), vec3<u32>(2285u, 23365u, var_0.c.x), vec4<bool>(var_0.d.x, false, false, true), var_0.e))).b.x, Struct_5(var_2, Struct_4(_wgslsmith_add_vec2_u32(var_0.c.yx, u_input.b.zx), func_2(-14181i, vec2<u32>(1u, u_input.b.x)), -u_input.a.x, vec4<f32>(168f, 1198f, var_0.b.x, 1328f), Struct_2(34119i, Struct_1(u_input.d, var_0.b, vec3<u32>(var_0.a, u_input.b.x, var_2), var_0.d, u_input.b.x), Struct_1(1u, var_0.b, var_0.c, vec4<bool>(true, var_0.d.x, true, var_0.d.x), u_input.b.x), var_0, var_0)), var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(select(64633i, u_input.c.x, false), countOneBits(vec2<u32>(4294967295u, u_input.d))).e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 806f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(var_3.x, u_input.a.x)))))));
}


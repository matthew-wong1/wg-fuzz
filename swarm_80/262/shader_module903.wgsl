struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_5) -> i32 {
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(1u, 23544u) ^ select(_wgslsmith_mult_u32(9262u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(68778u, 0u), vec2<u32>(0u, 1u)), true), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(34232u, 4294967295u, 71919u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 13485u)), 0u);
    let var_1 = Struct_3(Struct_1(firstLeadingBit(2147483647i), 4294967295u, firstTrailingBit(~vec3<u32>(4294967295u, 4294967295u, 32904u)) >> (~(~vec3<u32>(var_0.x, 73100u, 1u)) % vec3<u32>(32u)), -firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 26600i, -1i), vec4<i32>(1i, u_input.a, 0i, u_input.a)))), u_input.a, ~_wgslsmith_dot_vec3_u32(abs(abs(var_0)), ~(vec3<u32>(var_0.x, 0u, 4294967295u) << (var_0 % vec3<u32>(32u)))), !(!select(select(vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0, true), select(vec4<bool>(false, arg_0.x, arg_2.a.a.c, arg_0.x), vec4<bool>(arg_2.a.a.c, true, true, arg_2.a.a.c), true), true)), arg_1 <= -149f);
    var var_2 = arg_2.a.a;
    var_2 = arg_2.a.a;
    let var_3 = Struct_3(Struct_1(_wgslsmith_mult_i32(max(firstTrailingBit(2147483647i), u_input.a), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, var_1.a.d.x, 2147483647i)), ~_wgslsmith_div_u32(0u ^ var_1.c, 44794u), var_0, abs(abs(var_1.a.d << (vec4<u32>(11129u, 19038u, var_0.x, 82857u) % vec4<u32>(32u))))), -1i, 18420u, !(!select(var_1.d, vec4<bool>(var_2.c, var_1.d.x, true, var_2.c), !vec4<bool>(false, true, arg_0.x, true))), all(select(!arg_0, select(vec4<bool>(var_1.e, arg_2.a.a.c, false, var_2.c), arg_0, vec4<bool>(false, var_1.d.x, var_2.c, true)), any(var_1.d))) & (1i <= (u_input.a << (4294967295u % 32u))));
    return -var_3.b;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_5) -> u32 {
    let var_0 = ~(~(~abs(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = arg_2.a.a.c;
    let var_2 = !vec2<bool>(!(-37250i != func_3(vec4<bool>(false, var_1, true, true), 147f, Struct_5(Struct_4(arg_2.a.a, vec2<f32>(arg_2.a.a.b.x, -548f))))), false);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b.x, 1032f, arg_2.a.a.d) * arg_2.a.a.b.wwx) - arg_2.a.a.b.zxx) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.a.b.zxy * arg_2.a.a.b.wyz) + arg_2.a.a.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2073f, arg_2.a.a.d, -375f) + arg_2.a.a.b.zzy)));
    var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.a.b.zyw - vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(arg_2.a.b.x - arg_2.a.a.a.x), _wgslsmith_f_op_f32(-arg_2.a.a.a.x)))), arg_2.a.a.b.yzw));
    return ~arg_0;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_mult_i32(arg_2.b, u_input.a ^ -2147483647i);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(arg_0, -1000f), arg_0, arg_0))) - vec3<f32>(-108f, 854f, 649f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(478f, arg_0, arg_0, -1435f), vec4<f32>(-197f, 736f, -1228f, arg_0)))))))), true, 936f);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.d)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-313f + -1000f)))))), _wgslsmith_f_op_f32(var_1.a.x + 1060f));
    var var_3 = 1930f;
    var var_4 = -(~(~u_input.a << (~(~arg_2.a.c.x) % 32u)));
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = -arg_0.a.d;
    var var_1 = -11112i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2031f, 324f, 414f))))), vec3<f32>(-1229f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1022f))), 625f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-930f * -973f) + _wgslsmith_f_op_f32(-1076f * -1000f)), 1f, _wgslsmith_f_op_f32(-1157f * 228f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-677f, -638f, _wgslsmith_f_op_f32(972f * -209f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1621f), -1041f, _wgslsmith_f_op_f32(973f - -696f))))));
    return arg_0.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_3(func_5(func_4(_wgslsmith_f_op_f32(step(-1201f, arg_0.a.a.x)), vec4<bool>(false, select(arg_0.a.c, false, arg_0.a.c), true, true), Struct_3(Struct_1(u_input.a, 88283u, arg_1, vec4<i32>(u_input.a, 5646i, u_input.a, -2147483647i)), u_input.a, func_2(arg_1.x, vec4<i32>(1i, -2147483647i, u_input.a, u_input.a), Struct_5(arg_0)), vec4<bool>(arg_0.a.c, true, true, false), arg_0.a.c)), ~(~11254u)), 513i, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(arg_1.x), arg_1.x), arg_1.x, max(0u, 67573u)), _wgslsmith_div_u32(arg_1.x, countOneBits(arg_1.x)), arg_1.x), vec4<bool>(false, false, false, any(select(vec4<bool>(true, arg_0.a.c, true, false), vec4<bool>(false, arg_0.a.c, arg_0.a.c, arg_0.a.c), arg_0.b.x <= -131f))), !(!(u_input.a >= u_input.a)));
    let var_1 = var_0.a.d.ywz;
    var var_2 = Struct_4(Struct_2(arg_0.a.b.yxx, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)), _wgslsmith_f_op_f32(min(arg_0.b.x, -649f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-938f)) + _wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(200f)), arg_0.a.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.zz))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, _wgslsmith_f_op_f32(trunc(arg_0.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(131f, arg_0.b.x) + vec2<f32>(arg_0.b.x, arg_0.b.x)))))));
    var var_3 = vec4<bool>(func_4(-1832f, var_0.d, Struct_3(var_0.a, u_input.a, _wgslsmith_add_u32(0u, var_0.c), vec4<bool>(false, true, false, false), func_4(490f, vec4<bool>(var_0.e, arg_0.a.c, false, true), var_0).e)).c < ~1u, true, any(!func_4(-1470f, vec4<bool>(arg_0.a.c, arg_0.a.c, true, var_0.d.x), var_0).d), !select(var_2.a.c, _wgslsmith_f_op_f32(-1181f - arg_0.b.x) != _wgslsmith_div_f32(var_2.b.x, -1764f), true));
    var var_4 = arg_0.a;
    return var_0.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_5(Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-308f, -542f, 1383f), vec3<f32>(273f, 616f, -684f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, -1624f, 1047f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1294f, 839f, 1144f, -581f))), true, _wgslsmith_f_op_f32(abs(1306f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, -965f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-631f, -516f) - vec2<f32>(-1000f, -304f)))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.a.x + var_0.a.a.d) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f * var_0.a.b.x)), _wgslsmith_f_op_f32(-var_0.a.b.x)))));
    let var_2 = ~arg_0.a.c.xy;
    let var_3 = arg_0;
    let var_4 = vec3<bool>(select(any(!func_4(var_0.a.a.b.x, vec4<bool>(var_0.a.a.c, var_0.a.a.c, var_0.a.a.c, false), var_3).d.zzw), !func_4(_wgslsmith_f_op_f32(-var_0.a.a.a.x), select(var_3.d, arg_0.d, false), var_3).e, true), all(!select(!vec4<bool>(var_0.a.a.c, true, var_0.a.a.c, false), !var_3.d, arg_0.d)), all(var_3.d.yw));
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-115f, -1069f))), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -833f), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true & !(!select(true, true, true));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(416f, -2361f, -305f)), vec3<f32>(-566f, 473f, 1523f)))), _wgslsmith_f_op_vec4_f32(func_6(Struct_3(func_1(Struct_4(Struct_2(vec3<f32>(1345f, -161f, 641f), vec4<f32>(1125f, 252f, 1084f, 2259f), true, 653f), vec2<f32>(1442f, 234f)), vec3<u32>(1u, 5698u, 1u)), u_input.a & u_input.a, ~45760u, select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true), true), vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, -11574i)), Struct_1(u_input.a & u_input.a, abs(69843u), select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 20673u, 12049u), vec3<bool>(true, true, false)), abs(vec4<i32>(u_input.a, 17241i, u_input.a, -30806i))))), false, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(392f, _wgslsmith_f_op_f32(round(-705f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, 590f)), vec2<f32>(-1349f, 345f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - _wgslsmith_f_op_f32(round(var_1.a.b.x)))) - var_1.a.a.x) == _wgslsmith_f_op_f32(-var_1.b.x);
    let var_2 = Struct_1(~_wgslsmith_sub_i32(func_4(var_1.a.d, vec4<bool>(var_1.a.c, true, false, false), func_4(595f, vec4<bool>(var_1.a.c, var_1.a.c, var_1.a.c, var_1.a.c), Struct_3(Struct_1(2147483647i, 4294967295u, vec3<u32>(1u, 0u, 51763u), vec4<i32>(1i, 14892i, 9664i, -12272i)), -2147483647i, 0u, vec4<bool>(var_1.a.c, var_1.a.c, var_1.a.c, var_1.a.c), var_1.a.c))).b, _wgslsmith_div_i32(1i, -2461i) & func_3(vec4<bool>(var_1.a.c, false, var_1.a.c, true), var_1.b.x, Struct_5(Struct_4(var_1.a, vec2<f32>(396f, -1364f))))), (1u ^ _wgslsmith_div_u32(func_5(Struct_3(Struct_1(19574i, 1u, vec3<u32>(1u, 13522u, 91720u), vec4<i32>(0i, u_input.a, -1i, 1i)), u_input.a, 5883u, vec4<bool>(var_1.a.c, var_1.a.c, var_1.a.c, false), var_1.a.c), 12962u).b, reverseBits(37358u))) >> (90586u % 32u), ~firstTrailingBit(vec3<u32>(~1u, ~14473u, abs(31232u))), func_4(var_1.b.x, !select(vec4<bool>(false, var_1.a.c, var_1.a.c, var_1.a.c), vec4<bool>(var_1.a.c, false, var_1.a.c, true), !vec4<bool>(false, false, var_1.a.c, true)), Struct_3(Struct_1(abs(-2147483647i), ~24520u, max(vec3<u32>(266u, 59699u, 4444u), vec3<u32>(58230u, 4294967295u, 4294967295u)), vec4<i32>(1i, 3011i, 2147483647i, u_input.a) >> (vec4<u32>(13199u, 4294967295u, 0u, 143073u) % vec4<u32>(32u))), ~firstLeadingBit(0i), ~0u, !(!vec4<bool>(var_1.a.c, false, var_1.a.c, true)), true)).a.d);
    let var_3 = var_2.d.wyx;
    let x = u_input.a;
    s_output = StorageBuffer(-1387f, ~1u, u_input.a, var_2.c.xx);
}


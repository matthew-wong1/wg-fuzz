struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<f32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = Struct_4(Struct_2(arg_1.a));
    var var_1 = var_0;
    var_1 = Struct_4(arg_1);
    var_1 = var_0;
    let var_2 = vec2<i32>(2147483647i, firstLeadingBit(-(~_wgslsmith_mod_i32(35469i, 30282i))));
    return vec4<u32>(arg_1.a.a & _wgslsmith_div_u32(arg_0, arg_1.a.a), max(abs(firstLeadingBit(0u)) ^ (0u | min(257u, u_input.a)), ~(~(arg_1.a.a >> (var_1.a.a.a % 32u)))), _wgslsmith_mult_u32(var_0.a.a.a, _wgslsmith_sub_u32(var_1.a.a.a, arg_0)), _wgslsmith_div_u32(~var_0.a.a.a, _wgslsmith_sub_u32(reverseBits(4294967295u), countOneBits(arg_0) >> (60426u % 32u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_4(Struct_2(Struct_1(1u)));
    let var_1 = _wgslsmith_sub_vec2_i32(select(countOneBits(vec2<i32>(33622i, reverseBits(1992i))), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-10476i, 0i, 34649i), vec3<i32>(-1i, 14207i, -54788i))) << (~select(vec2<u32>(4294967295u, var_0.a.a.a), u_input.b.yy, false) % vec2<u32>(32u)), 95433u == arg_1.x), -vec2<i32>(-72761i, _wgslsmith_dot_vec2_i32(-vec2<i32>(19390i, 2147483647i), ~vec2<i32>(-4612i, 2147483647i))));
    let var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(var_1.x <= var_1.x, true, true), true), all(vec2<bool>(true, true)));
    var_0 = Struct_4(Struct_2(Struct_1(~var_0.a.a.a ^ u_input.a)));
    return reverseBits(select(vec3<i32>(var_1.x, _wgslsmith_mult_i32(var_1.x, -1i), ~min(-7728i, -1i)), -(~vec3<i32>(var_1.x, var_1.x, var_1.x) >> (arg_1.zwz % vec3<u32>(32u))), !(!vec3<bool>(true, true, var_2.x))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = 1i;
    var var_2 = vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -493f), arg_1.x)) < -602f, true, true);
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 2807f, -564f), vec3<f32>(arg_1.x, 1986f, -631f), vec3<bool>(true, true, var_2.x))), arg_1)) + vec3<f32>(830f, arg_3, -1068f)), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-568f, arg_3)), arg_0))), _wgslsmith_mult_vec4_u32(~func_3(u_input.b.x, Struct_2(arg_2.a.a)) >> (~(vec4<u32>(u_input.b.x, 4294967295u, 1u, 4294967295u) ^ vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), abs(vec4<u32>(~arg_2.a.a.a, arg_2.a.a.a, arg_2.a.a.a, 1u))));
    var_3 = -countOneBits(func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -471f, 1037f))), ~(vec4<u32>(arg_2.a.a.a, 41720u, 0u, 4294967295u) & vec4<u32>(arg_2.a.a.a, 0u, arg_2.a.a.a, arg_2.a.a.a))));
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1490f)) - _wgslsmith_f_op_f32(min(-1264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * _wgslsmith_f_op_f32(f32(-1f) * -372f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(854f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-328f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1128f * 1360f), 669f)))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -385f);
    var_0 = var_1;
    let var_2 = Struct_3(func_2(-468f, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(402f * 762f), var_1) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)))), Struct_4(Struct_2(arg_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) + var_1), 1000f))), select(arg_1, vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_mult_i32(-reverseBits(_wgslsmith_sub_i32(-2147483647i, -13952i)), firstLeadingBit(abs(0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(445f - -692f), 1000f)), var_1));
    var var_3 = var_2;
    return Struct_2(Struct_1(0u >> (var_3.a.a.a % 32u)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2518f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f - -1306f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), Struct_4(Struct_2(Struct_1(13456u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(446f, -1000f, false)), _wgslsmith_f_op_f32(abs(518f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1442f), _wgslsmith_f_op_f32(f32(-1f) * -165f))))), vec2<bool>(false, countOneBits(0u) >= ~(0u << (arg_0.x % 32u))));
    let var_1 = select(!vec4<bool>(true, true, select(true, true, true), (4294967295u == u_input.a) | true), !select(vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true)), true, true), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), any(vec4<bool>(false, true, true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, all(vec2<bool>(true, false)), true), true && any(vec2<bool>(false, true))), vec4<bool>(any(vec2<bool>(true, true)), true, !all(vec3<bool>(false, true, true)), !any(vec3<bool>(false, true, true))), true));
    var var_2 = Struct_4(func_5(Struct_2(var_0.a), !select(var_1.zx, var_1.xy, true)));
    var_0 = Struct_2(var_0.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(467f)), _wgslsmith_f_op_f32(sign(1169f)), _wgslsmith_f_op_f32(ceil(-1325f)), 1991f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, -1004f, -136f, 400f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1258f, -1087f, -503f))))))));
    return Struct_4(Struct_2(var_0.a));
}

fn func_6(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    let var_0 = ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_1), min(vec2<i32>(arg_1, -1i), vec2<i32>(0i, arg_1)))) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-8910i, arg_1), vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1)), select(vec2<i32>(arg_1, -25619i), reverseBits(vec2<i32>(arg_1, 15835i)), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), vec2<i32>(89525i, arg_1), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 31183i), vec2<i32>(28116i, -1i)), vec2<i32>(arg_1, 0i) | vec2<i32>(arg_1, arg_1))));
    var var_1 = -474f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -241f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-497f + 1025f), 1505f))), -330f));
    var var_3 = true == all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), arg_1 < arg_1));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(354f * var_2.x)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-149f * var_2.x), var_2.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(u_input.b.yx), ~_wgslsmith_sub_i32(-1i, i32(-1i) * -25397i));
    let var_1 = u_input.b.x;
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -900f) + 637f)))), -296f);
    let var_4 = func_2(979f, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)) * _wgslsmith_f_op_f32(max(var_3.x, 2025f))), _wgslsmith_f_op_f32(sign(-1584f))) * vec3<f32>(var_3.x, -891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))))), Struct_4(var_0), 756f).a;
    var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_3.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), 306f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) - -979f)), _wgslsmith_div_vec2_f32(vec2<f32>(197f, _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, -543f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1534f, var_3.x)), vec2<bool>(true, false)))), false))));
    var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(795f, var_3.x) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.x, -220f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, var_3.x))))), vec2<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-801f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, var_4.a, 8451u, 4294967295u), (max(func_4(vec3<f32>(-495f, var_3.x, var_3.x), vec4<u32>(var_1, 0u, var_0.a.a, 2826u)).xy, reverseBits(vec2<i32>(-21178i, -32862i))) & (vec2<i32>(1i, 1i) >> (~vec2<u32>(15103u, u_input.a) % vec2<u32>(32u)))) & vec2<i32>(0i, 11653i), var_3.x, u_input.b.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, 1156f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, var_3.x), vec2<f32>(var_3.x, var_3.x))), true))))));
}


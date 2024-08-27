struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = vec3<i32>(u_input.b.x, ~arg_2.b, 4413i) >> (min(~(~arg_1.wzx), vec3<u32>(0u, arg_1.x, firstTrailingBit(~521u))) % vec3<u32>(32u));
    var_0 = -(~firstTrailingBit((u_input.b << (arg_1.ywz % vec3<u32>(32u))) << (vec3<u32>(arg_0, 4294967295u, arg_0) % vec3<u32>(32u))));
    var_0 = u_input.b;
    var_0 = u_input.b;
    let var_1 = arg_2.e;
    return vec2<f32>(-1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-267f))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = 0u;
    var var_1 = Struct_4(Struct_2(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(0u, vec4<u32>(37653u, 0u, 1u, 0u), Struct_1(vec2<f32>(853f, -429f), 1i, 876f, vec4<bool>(false, false, false, false), vec3<f32>(1000f, -1593f, -950f)))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(643f * -124f) - -1364f), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(234f, 399f, 666f)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(859f, -2017f)) * vec2<f32>(465f, 524f)), -21388i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(round(-537f)), -1543f, -1357f))), u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(769f)) * _wgslsmith_div_f32(1000f, -1666f)) + _wgslsmith_f_op_f32(f32(-1f) * -497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(465f, -1582f, false))))), vec2<u32>(_wgslsmith_div_u32(var_0, (var_0 >> (var_0 % 32u)) >> (firstTrailingBit(0u) % 32u)), 5662u));
    var var_2 = _wgslsmith_div_u32(max(_wgslsmith_add_u32(~var_0, var_1.d.x), firstTrailingBit(~var_1.d.x)), ~(firstTrailingBit(firstLeadingBit(1u)) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(26711u, 36365u, 4294967295u))));
    let var_3 = vec3<bool>(true, var_1.a.c.d.x, var_1.a.b.d.x);
    var_2 = var_0;
    return -_wgslsmith_clamp_vec2_i32(min(firstLeadingBit(firstTrailingBit(vec2<i32>(1i, u_input.a))), u_input.b.zx), u_input.b.yy, select(vec2<i32>(u_input.a, -6138i), _wgslsmith_mult_vec2_i32(vec2<i32>(-21537i, 2147483647i), u_input.b.zz), false) >> (var_1.d % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = min(countOneBits(4294967295u), ~4294967295u);
    var var_1 = ~(~func_2());
    var_1 = vec2<i32>(firstTrailingBit(var_1.x), var_1.x);
    let var_2 = ~45325u;
    var_1 = u_input.b.zx;
    return Struct_2(true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), ~1i, 1f, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-609f, 1195f, -1000f), vec3<f32>(726f, 1059f, -630f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), -245f, -1184f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(0u, vec4<u32>(9871u, var_0, var_0, var_0), Struct_1(vec2<f32>(-372f, -668f), var_1.x, 191f, vec4<bool>(true, true, false, false), vec3<f32>(-2624f, -1326f, 106f))))), max(19991i, u_input.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), 523f)), _wgslsmith_f_op_f32(1087f + _wgslsmith_f_op_f32(max(1201f, 2443f))))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))), vec3<f32>(1942f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1394f, -1493f)))), _wgslsmith_div_f32(-116f, _wgslsmith_f_op_f32(f32(-1f) * -531f)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = vec2<u32>(1u, abs(~(~5762u)));
    let var_1 = ~_wgslsmith_add_vec3_u32(min(reverseBits(~vec3<u32>(arg_3.a.d.x, 4294967295u, arg_3.a.d.x)), vec3<u32>(34397u, 34024u, 1u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(4294967295u, var_0.x, arg_2))), _wgslsmith_add_vec3_u32(abs(min(vec3<u32>(arg_2, 0u, var_0.x), vec3<u32>(0u, arg_2, arg_3.a.d.x))), firstTrailingBit(vec3<u32>(48029u, arg_2, 104576u))));
    var var_2 = select(select(arg_0.b.d.zy, vec2<bool>(arg_3.a.a.a, !any(vec2<bool>(true, false))), arg_3.a.a.c.d.x), arg_3.a.a.c.d.xy, arg_0.c.d.zx);
    let var_3 = arg_3;
    var_2 = !(!vec2<bool>(true, _wgslsmith_mod_u32(0u, var_3.a.d.x) > 4294967295u));
    return vec2<f32>(_wgslsmith_div_f32(1000f, -518f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(step(var_3.a.c.x, 633f)))) - _wgslsmith_f_op_f32(-401f * _wgslsmith_f_op_f32(-var_3.a.c.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(!(!any(vec4<bool>(false, false, arg_1.d.x, arg_1.d.x))), func_1().c, func_1().c), _wgslsmith_div_i32(max(arg_1.b & _wgslsmith_mod_i32(6415i, -2147483647i), _wgslsmith_dot_vec2_i32(-u_input.b.xy, _wgslsmith_sub_vec2_i32(u_input.b.yx, vec2<i32>(arg_1.b, u_input.b.x)))), -5539i), arg_1.e, vec2<u32>(abs(1u), 0u));
    let var_1 = vec4<i32>(u_input.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(func_2().x, u_input.a), -(i32(-1i) * -1i)), -2147483647i, 53992i) ^ select(vec4<i32>(u_input.a | u_input.b.x, _wgslsmith_clamp_i32(var_0.b & arg_1.b, arg_1.b, ~2147483647i), _wgslsmith_sub_i32(-7317i, arg_1.b) & (i32(-1i) * -1i), -(2147483647i << (var_0.d.x % 32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.c.b, arg_1.b, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -43636i, -19663i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))), select(select(vec4<i32>(var_0.a.b.b, var_0.b, 2147483647i, arg_1.b), vec4<i32>(var_0.b, u_input.b.x, var_0.b, var_0.a.b.b), vec4<bool>(arg_1.d.x, false, var_0.a.c.d.x, false)), ~vec4<i32>(3579i, 1i, 2147483647i, 0i), arg_1.d)), true | (1531f >= arg_0));
    var var_2 = _wgslsmith_clamp_vec4_i32(~select(-vec4<i32>(arg_1.b, var_1.x, var_1.x, -1i), var_1, var_0.a.c.d), select(vec4<i32>(var_0.b << (49151u % 32u), var_1.x, _wgslsmith_add_i32(var_0.a.c.b, arg_1.b), ~1i), vec4<i32>(0i, -arg_1.b, ~(-36702i), ~var_1.x), vec4<bool>(arg_1.d.x, true, !arg_1.d.x, arg_1.d.x)), var_1) & abs(var_1);
    var var_3 = -7809i;
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(56841u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.d.x, var_0.d.x, 93212u), vec3<u32>(47189u, 4294967295u, 15416u) << (vec3<u32>(var_0.d.x, var_0.d.x, 1u) % vec3<u32>(32u)))), _wgslsmith_sub_u32(var_0.d.x, ~(var_0.d.x << (var_0.d.x % 32u)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(79682u, var_0.d.x)), ~vec2<u32>(925u, ~4294967295u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(1182f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(), 934f, 1u, Struct_5(Struct_4(Struct_2(false, Struct_1(vec2<f32>(171f, 1000f), 0i, 963f, vec4<bool>(true, true, false, false), vec3<f32>(910f, 185f, -483f)), Struct_1(vec2<f32>(402f, 854f), 1i, -164f, vec4<bool>(false, false, true, false), vec3<f32>(697f, 1000f, -1684f))), -63526i, vec3<f32>(259f, -1000f, -480f), vec2<u32>(58908u, 4294967295u))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(1u, vec4<u32>(41679u, 1u, 1u, 46179u), Struct_1(vec2<f32>(-563f, -1526f), 1i, 667f, vec4<bool>(true, false, false, true), vec3<f32>(-662f, 957f, -642f))))))), -1i, _wgslsmith_f_op_f32(-func_1().c.a.x), select(select(func_1().b.d, vec4<bool>(true, true, true, true), u_input.a < u_input.a), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1218f * -1128f), _wgslsmith_f_op_f32(max(-1318f, -1380f)), _wgslsmith_f_op_vec2_f32(func_3(25207u, vec4<u32>(1u, 0u, 41991u, 1u), Struct_1(vec2<f32>(-2062f, -1457f), -20022i, -1000f, vec4<bool>(false, true, false, true), vec3<f32>(133f, -997f, -515f)))).x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-987f, 954f, 551f)))));
    let var_1 = Struct_3(vec2<i32>(-(~(-16600i)), ~var_0.a.b.b), !var_0.a.c.d.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1814f, var_0.c.x, var_0.a.c.a.x, -208f), _wgslsmith_div_vec4_f32(vec4<f32>(1170f, 408f, var_0.a.c.e.x, var_0.c.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.a.b.e.x, var_0.c.x)))))))));
    let var_2 = var_0.d.x;
    let var_3 = _wgslsmith_clamp_vec3_i32(-u_input.b, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2479i, -var_1.a.x, 1i), vec3<i32>(~2147483647i, ~u_input.a, 21455i)), u_input.b), -firstLeadingBit(u_input.b));
    var var_4 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), var_0.a.c).a;
    let var_5 = abs(u_input.b) | var_3;
    var_4 = var_0.a;
    let var_6 = !(!func_1().a);
    let var_7 = vec2<bool>(_wgslsmith_mod_i32(abs(var_1.a.x ^ var_3.x), -_wgslsmith_mod_i32(var_0.a.b.b, 0i)) >= countOneBits(reverseBits(12673i & var_3.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_0.a.b.b, -max(-var_5.x, 2147483647i), ~select(var_5.x, var_1.a.x, false) & ~(i32(-1i) * -2147483647i), ~(_wgslsmith_dot_vec3_i32(var_5, var_3) ^ -1i)));
}


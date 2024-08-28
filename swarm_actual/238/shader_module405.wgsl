struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: bool) -> f32 {
    var var_0 = arg_1.a.c.c;
    let var_1 = arg_1;
    var var_2 = var_1.a.a;
    var_0 = firstLeadingBit(_wgslsmith_mult_u32(~(~(4294967295u | u_input.c)), select(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(12917u, var_1.d, u_input.a, 4294967295u)), ~vec4<u32>(4294967295u, u_input.a, 72607u, var_1.d)), arg_1.d >> ((var_1.a.c.c & arg_1.a.c.c) % 32u), true)));
    let var_3 = arg_1.a.c;
    return var_1.b;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(u_input.c, 1u);
    var_0 = 4294967295u;
    var var_1 = Struct_4(Struct_2(vec4<i32>(1i, reverseBits(_wgslsmith_mod_i32(u_input.b, u_input.b)), abs(u_input.b), 1i), -(~(-vec2<i32>(2147483647i, -20900i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1131f, -2244f, arg_0.x, arg_0.x)))), vec2<bool>(false, select(true, false, false)), 1u, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, Struct_5(Struct_2(vec4<i32>(43094i, u_input.b, u_input.b, 0i), vec2<i32>(u_input.b, -25712i), Struct_1(vec4<f32>(arg_0.x, arg_0.x, -398f, arg_0.x), vec2<bool>(false, false), u_input.a, vec4<bool>(true, true, true, true), arg_0.x), vec4<bool>(false, true, false, false), vec4<f32>(arg_0.x, arg_0.x, -1893f, 206f)), arg_0.x, vec4<f32>(480f, 525f, arg_0.x, arg_0.x), 67010u), true)) - arg_0.x)), select(vec4<bool>(any(vec4<bool>(true, true, false, false)), false, true, any(vec3<bool>(false, false, true))), vec4<bool>(true, false, select(true, true, true), all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -2118f, _wgslsmith_div_f32(arg_0.x, arg_0.x)))), u_input.b, Struct_3(-166f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, -1107f, 644f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -827f, -1229f, arg_0.x) - vec4<f32>(707f, -1079f, 654f, arg_0.x))), vec2<bool>(false, select(false, false, true)), ~reverseBits(4294967295u), vec4<bool>(-15457i >= u_input.b, true, true, true), arg_0.x), Struct_2(countOneBits(vec4<i32>(1i, u_input.b, 1i, u_input.b) | vec4<i32>(-2147483647i, u_input.b, 32792i, 17027i)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-26232i, u_input.b), vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(24096i, u_input.b) ^ vec2<i32>(u_input.b, 1i)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(654f, 1000f, 875f, arg_0.x) * vec4<f32>(-535f, arg_0.x, arg_0.x, -202f)), vec2<bool>(true, false), 13860u, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), -1534f), vec4<bool>(true, true, true, true), vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(u_input.b, u_input.b)) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(46165i, u_input.b), vec2<i32>(u_input.b, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(-25220i, 16624i))), max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(u_input.b, u_input.b)))), ~reverseBits(1i));
    var_1 = Struct_4(var_1.c.c, firstLeadingBit(4544i), Struct_3(arg_0.x, var_1.c.b, var_1.c.c, var_1.c.c.b), firstTrailingBit(_wgslsmith_add_i32(-var_1.a.b.x, -43155i) << (70607u % 32u)));
    let var_2 = var_1.a.c.a.xxw;
    return var_1.a;
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = vec4<u32>(~(~u_input.c), _wgslsmith_mod_u32(u_input.a >> (~select(39069u, 75351u, true) % 32u), _wgslsmith_sub_u32(firstLeadingBit(u_input.c) & ~1u, abs(30200u))), u_input.c, 1u);
    var var_1 = Struct_4(Struct_2(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(-12064i, u_input.b, -2147483647i)), u_input.b, u_input.b, 2147483647i), vec2<i32>(1i << (1u % 32u), u_input.b), func_1(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(min(arg_0, -648f)))).c, vec4<bool>(true, true, !any(vec4<bool>(false, false, false, false)), false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, arg_0, 298f, -497f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -325f, 344f, arg_0) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_0, -174f, 740f)))), any(vec3<bool>(true, true, true))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), -vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -24587i), vec2<i32>(-27621i, 2147483647i)), select(0i, u_input.b, true), i32(-1i) * -2147483647i)), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + _wgslsmith_f_op_f32(sign(-894f))))), Struct_1(vec4<f32>(func_1(vec2<f32>(arg_0, 351f)).e.x, arg_0, _wgslsmith_f_op_f32(step(arg_0, -660f)), _wgslsmith_f_op_f32(f32(-1f) * -1152f)), vec2<bool>(func_1(vec2<f32>(arg_0, arg_0)).d.x, any(vec2<bool>(true, false))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(92491u, var_0.x), 1u), vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), true), -183f), func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(447f, 1378f))), vec2<f32>(-1455f, -271f)))), abs(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(18878i, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)), -vec2<i32>(-1i, 41460i)))), abs(u_input.b));
    var var_2 = _wgslsmith_add_vec4_u32(var_0, var_0);
    var_1 = Struct_4(Struct_2(var_1.c.c.a, -vec2<i32>(var_1.c.d.x, var_1.d), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.e.x * arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(min(279f, 786f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(var_1.a.d.yw, var_1.c.b.b, !vec2<bool>(var_1.a.c.d.x, var_1.c.b.b.x)), 1u, var_1.a.c.d, -1000f), var_1.a.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-605f, _wgslsmith_f_op_f32(-var_1.a.e.x), arg_0, _wgslsmith_div_f32(var_1.c.a, 444f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -567f, arg_0, 1231f))))), 0i, var_1.c, -20020i);
    let var_3 = Struct_5(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.a - var_1.a.e.x), arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.a.c.e) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0)))))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.e.x * -1713f), -1378f, -143f, _wgslsmith_f_op_f32(444f + 864f)))), ~78839u);
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(var_3.c.x)) == 539f, var_3.a.d.x, var_3.a.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(-select(u_input.b, -2147483647i, all(vec3<bool>(true, false, false))), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(-48681i, -2147483647i, u_input.b)), 2147483647i);
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(-1145f, _wgslsmith_f_op_f32(abs(203f)), true)), -859f))));
    var_0 = select(_wgslsmith_mult_vec3_i32(var_1.a.zyy, func_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.e)), 669f)).a.wyz), ~(~(~var_1.a.zww)), any(var_1.c.d.zz));
    var_0 = ~(~var_1.a.wyy);
    let var_2 = var_1.c;
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(628f, 1068f) + var_2.a.zx))).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(countOneBits(u_input.c), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_3.c, var_3.c)), vec3<u32>(41365u, 19788u, var_3.c))), ~(~func_1(vec2<f32>(-1517f, var_1.c.e)).c.c), 68831u & var_2.c), _wgslsmith_mod_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -19692i, var_0.x), vec3<i32>(var_0.x, 10384i, 0i)), ~(~var_1.a.wyy), func_3(var_1.c.a.x)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, 1241f))).a.yxw));
}


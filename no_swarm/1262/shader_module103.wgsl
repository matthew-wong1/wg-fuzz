struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    global0 = Struct_3(!(!vec4<bool>(all(global0.a.xyz), all(global0.a), true, true)), 0i);
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)));
    let var_1 = global0.a.x == any(!global0.a.wyw);
    var var_2 = Struct_2(vec3<bool>(all(global0.a.wyz), true, any(select(vec4<bool>(var_1, true, false, var_1), global0.a, true))));
    global0 = Struct_3(!global0.a, _wgslsmith_add_i32(global0.b >> (~arg_1 % 32u), _wgslsmith_dot_vec3_i32(reverseBits(max(vec3<i32>(-1i, arg_0, arg_0), u_input.c.wxz)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(global0.b, arg_0, 37854i), u_input.c.wxz)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(614f, _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    global0 = Struct_3(vec4<bool>(arg_0.a.x, select(true, all(!global0.a.zzw), _wgslsmith_sub_i32(42812i, global0.b) < 1i), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-39922i, 0i), vec2<i32>(-1i, -7509i)), 4294967295u)) != _wgslsmith_f_op_f32(round(-772f)), true), u_input.d.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-108f, 1322f, -1176f), vec3<f32>(-1562f, 963f, 865f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) * vec3<f32>(_wgslsmith_f_op_f32(-1455f + -782f), -1421f, 388f)));
    global0 = Struct_3(!(!vec4<bool>(true, all(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)), true, true)), -10418i);
    var var_1 = _wgslsmith_mod_u32(~18037u, ~7353u);
    let var_2 = abs(abs(vec4<i32>(1i, reverseBits(global0.b ^ global0.b), 79037i, -2147483647i ^ -u_input.c.x)));
    return Struct_3(!global0.a, firstLeadingBit(~17749i));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<bool>) -> i32 {
    global0 = Struct_3(vec4<bool>(arg_0.a.x, all(arg_0.a), arg_2.x, true), u_input.a.x);
    global0 = func_2(Struct_2(!func_2(Struct_2(vec3<bool>(global0.a.x, global0.a.x, false))).a.xyx));
    global0 = func_2(Struct_2(!vec3<bool>(arg_2.x, arg_0.a.x || true, global0.a.x)));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1989f + 389f), _wgslsmith_f_op_f32(395f - -170f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-600f, 1022f)), _wgslsmith_f_op_f32(min(1224f, 949f)))))));
    let var_1 = -73747i;
    return _wgslsmith_mod_i32(-global0.b, _wgslsmith_sub_i32(11873i, (-2147483647i << (0u % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, arg_1.x), select(arg_1.x, arg_1.x, global0.a.x)) % 32u)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(!select(!select(global0.a.yww, global0.a.wxy, global0.a.wwz), vec3<bool>(true, true, !global0.a.x), vec3<bool>(global0.a.x, global0.a.x & false, u_input.d.x > u_input.c.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(157f + -2800f), _wgslsmith_f_op_f32(401f + -214f)) * 1f) + 153f), -708f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f) - _wgslsmith_f_op_f32(f32(-1f) * -609f)) * _wgslsmith_div_f32(957f, -1000f)), -1000f));
    global0 = Struct_3(!select(!select(global0.a, global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)), !vec4<bool>(true, false, true, global0.a.x), false), _wgslsmith_div_i32(u_input.b.x, func_4(func_2(var_0), ~vec4<u32>(1u, 1u, 1u, 1u), !vec2<bool>(global0.a.x, var_0.a.x))));
    let var_2 = _wgslsmith_sub_vec3_i32(u_input.c.xyx, vec3<i32>(0i, firstTrailingBit(reverseBits(-1i) & (global0.b << (4294967295u % 32u))), global0.b));
    global0 = func_2(Struct_2(vec3<bool>(false, !select(false, false, var_0.a.x), all(!vec2<bool>(true, var_0.a.x)))));
    return 836f;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = -u_input.e;
    var var_1 = vec4<i32>(82339i, arg_1.a, -63552i, -arg_1.a);
    global0 = func_2(Struct_2(global0.a.wxx));
    let var_2 = Struct_4(func_2(Struct_2(global0.a.wwy)), vec3<i32>(min(var_0, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.b, var_1.x, 0i), ~var_1.x)), 4775i, countOneBits(u_input.c.x)), global0.a.wz);
    global0 = Struct_3(!vec4<bool>(true, var_2.a.a.x, any(select(var_2.c, vec2<bool>(global0.a.x, true), false)), var_2.a.a.x), ~arg_1.a);
    return Struct_4(Struct_3(var_2.a.a, -(select(2147483647i, 21993i, var_2.c.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, arg_1.c.x, arg_1.d.x), arg_1.c.wzy) % 32u))), select(reverseBits(var_1.xzy), _wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(var_2.b, vec3<i32>(u_input.e, -18294i, arg_1.a)), var_2.b), !vec3<bool>(!var_2.c.x, any(var_2.a.a), arg_1.c.x < 60104u)), var_2.a.a.wx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(719f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f * 425f)));
    let var_1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(sign(560f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(835f, 2151f)), -551f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-305f, _wgslsmith_f_op_f32(f32(-1f) * -964f), !global0.a.x))))), Struct_1(44882i, reverseBits(vec3<u32>(15430u, 0u, 5400u)) ^ select(max(vec3<u32>(21570u, 30008u, 47541u), vec3<u32>(46734u, 75203u, 1u)), vec3<u32>(4294967295u, 33305u, 4294967295u), !global0.a.xwx), vec4<u32>(firstTrailingBit(0u), 1u, ~4294967295u, select(4294967295u, 42582u, global0.a.x)) & vec4<u32>(1u, 1u, 1u, 1u), countOneBits(~vec4<u32>(0u, 8146u, 0u, 36822u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1704f - 914f) - _wgslsmith_f_op_f32(func_3(u_input.a.x, 1u))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -100f), -1662f)))));
    global0 = func_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(263f, 317f, -735f, 1207f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-599f, 808f, 629f, -659f), vec4<f32>(1570f, -792f, 202f, -102f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1061f, -1631f, -120f, 357f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, 218f, -815f, 422f) - vec4<f32>(-354f, -563f, 698f, -353f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-982f, 1000f, -1381f, 1612f)))))))), Struct_1(27828i, vec3<u32>(1u, ~(~25424u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 3461u, 13008u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8020u), vec2<u32>(4294967295u, 33439u))), ~(~92039u), 1u, 33309u), ~vec4<u32>(1u, 1u, 1u, 1u)), -1334f).a;
    var var_2 = ~(countOneBits(~vec3<u32>(1u, 1u, 1u)) << ((vec3<u32>(~23666u, select(42193u, 0u, global0.a.x), min(0u, 0u)) | ~vec3<u32>(8719u, 5695u, 1u)) % vec3<u32>(32u)));
    let var_3 = ~(~_wgslsmith_mod_vec3_i32(select(_wgslsmith_sub_vec3_i32(var_1.b, u_input.c.xxw), _wgslsmith_mult_vec3_i32(var_1.b, vec3<i32>(u_input.b.x, u_input.a.x, global0.b)), all(vec4<bool>(global0.a.x, true, var_1.a.a.x, global0.a.x))), -vec3<i32>(var_1.b.x, -2147483647i, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.x, ~(~(var_2.x << (4294967295u % 32u))), var_2.x), _wgslsmith_mult_u32(max(~var_2.x, 45767u), ~41786u) | 4294967295u, reverseBits(~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 8894u, var_2.x, var_2.x), vec4<u32>(0u, 1u, 1425u, 39777u)))), min(_wgslsmith_dot_vec4_i32(~u_input.d, _wgslsmith_sub_vec4_i32(u_input.d, u_input.d)) | firstTrailingBit(u_input.e), _wgslsmith_mult_i32(reverseBits(-1i), _wgslsmith_sub_i32(0i, abs(global0.b)))));
}


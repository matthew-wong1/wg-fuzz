struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> f32 {
    var var_0 = -countOneBits(vec3<i32>(-1i) * -vec3<i32>(arg_0.a.a, u_input.a.x, 28032i)) >> (~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.x, 17685u, 4294967295u), firstTrailingBit(arg_3.yzz)) >> (vec3<u32>(arg_1.x, _wgslsmith_mult_u32(arg_3.x, arg_0.c.a), arg_0.b.b) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = arg_0.b.d.zx;
    var_0 = vec3<i32>(~(-44589i), 13572i, 54842i);
    var var_1 = firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(arg_0.b.c), 4294967295u));
    var var_2 = arg_0.a;
    return var_2.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> bool {
    global1 = array<vec2<bool>, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.x, global0.x, -2303f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(868f, 734f, global0.x, -466f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.x, arg_0.x, 474f)))))));
    var var_1 = Struct_1(arg_2, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f * arg_0.x) - _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(arg_1, 86557u, 1u, vec4<f32>(-2366f, var_0.x, arg_0.x, arg_0.x), Struct_1(arg_2, vec4<f32>(-520f, -493f, arg_0.x, var_0.x), vec4<bool>(true, false, false, false))), Struct_2(arg_1, 4294967295u, arg_2, vec4<f32>(global0.x, 1983f, -636f, arg_0.x), Struct_1(29846u, vec4<f32>(arg_0.x, 1309f, -624f, var_0.x), vec4<bool>(false, false, true, true))), Struct_1(90040u, vec4<f32>(-659f, global0.x, 1296f, -559f), vec4<bool>(false, true, true, true))), vec2<u32>(76519u, 1u), vec4<bool>(true, true, false, true), vec4<u32>(arg_2, arg_2, 4294967295u, 4294967295u)))), -1037f)), 1217f, arg_0.x), select(vec4<bool>(false, true, select(true, true, true), true), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), _wgslsmith_f_op_f32(200f * _wgslsmith_f_op_f32(var_0.x - 712f)) >= _wgslsmith_f_op_f32(trunc(-435f))));
    let var_2 = var_1.c.wzw;
    global1 = array<vec2<bool>, 3>();
    return true;
}

fn func_4(arg_0: u32, arg_1: bool) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_sub_u32(select(abs(_wgslsmith_mod_u32(118535u, arg_0) ^ 58199u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 1u, 1u, 79031u), vec4<u32>(arg_0, arg_0, 4294967295u, var_0)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(-2147483647i, arg_0, 12920u, vec4<f32>(global0.x, global0.x, global0.x, 453f), Struct_1(4294967295u, vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, true, false))), Struct_2(u_input.a.x, 0u, arg_0, vec4<f32>(global0.x, global0.x, 1713f, global0.x), Struct_1(arg_0, vec4<f32>(global0.x, global0.x, 383f, 1397f), vec4<bool>(arg_1, true, arg_1, arg_1))), Struct_1(arg_0, vec4<f32>(-355f, 483f, 923f, -400f), vec4<bool>(false, true, true, true))), _wgslsmith_clamp_vec2_u32(vec2<u32>(6619u, arg_0), vec2<u32>(var_0, 18203u), vec2<u32>(arg_0, var_0)), !vec4<bool>(false, arg_1, true, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 53598u, 4294967295u), vec4<u32>(4294967295u, 1u, var_0, 0u), vec4<u32>(var_0, 26827u, 1u, 4294967295u)))) < global0.x), min(~arg_0, 4294967295u));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x)))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(func_4(~_wgslsmith_mod_u32(~(~10765u), 4294967295u), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, 174f, global0.x))))), i32(-1i) * -41653i, 1u)));
    let var_0 = Struct_2(_wgslsmith_mult_i32(-28280i, u_input.a.x), 3962u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 22604u), vec4<u32>(1u, 18139u, 101929u, 10018u), vec4<u32>(15615u, 18533u, 0u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, 252f), arg_0.x, _wgslsmith_f_op_f32(round(-723f)), _wgslsmith_f_op_f32(trunc(-762f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1406f, global0.x, arg_0.x, global0.x))))), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1373f))))), vec4<bool>(true, false | (arg_0.x == global0.x), func_2(vec3<f32>(148f, global0.x, 1019f), u_input.a.x, ~2677u), all(global1[_wgslsmith_index_u32(60017u, 3u)]) & all(vec3<bool>(false, false, true)))));
    let var_1 = vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(reverseBits(1524i), -44134i) & _wgslsmith_add_i32(~0i ^ _wgslsmith_mod_i32(u_input.a.x, 22210i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-19423i, 25051i, var_0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_0.a, -53623i), vec3<i32>(-22493i, 1i, -10465i), vec3<i32>(var_0.a, var_0.a, var_0.a)))), var_0.a);
    var var_2 = Struct_3(var_0, var_0, var_0.e);
    var var_3 = ~firstTrailingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_0.a, 2147483647i, var_2.b.a), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.a.a, u_input.a.x, var_0.a), vec4<i32>(-17136i, -3106i, 50777i, 44212i))));
    return _wgslsmith_div_f32(3115f, 1028f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(func_1(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(343f))), _wgslsmith_f_op_f32(trunc(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), true)))));
    var var_1 = true;
    global1 = array<vec2<bool>, 3>();
    let var_2 = vec3<i32>(-1i, -2147483647i, firstTrailingBit(abs(-23534i)));
    var var_3 = 1i & var_2.x;
    let var_4 = Struct_4(Struct_3(Struct_2(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(53603u, 15929u, 4294967295u, 4294967295u), vec4<u32>(70719u, 9939u, 0u, 4294967295u)) & ~42302u, max(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 53110u), vec3<u32>(1u, 1u, 0u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1150f, var_0.x, var_0.x, -1364f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, 441f, global0.x, 341f)), vec4<bool>(true, true, true, true))), Struct_1(56432u, vec4<f32>(global0.x, -177f, var_0.x, var_0.x), vec4<bool>(true, true, true, true))), Struct_2(~(-14381i), firstTrailingBit(1u), ~0u, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_1(var_0.zwx)), 1173f, global0.x), Struct_1(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -636f, -1710f) * vec4<f32>(-650f, var_0.x, var_0.x, global0.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))), Struct_1(72341u, vec4<f32>(-225f, -543f, var_0.x, var_0.x), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(countOneBits(min(61363u, 34642u)), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-816f)), _wgslsmith_f_op_f32(exp2(var_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 532f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1006f, global0.x), 1f), -162f, _wgslsmith_f_op_f32(518f - _wgslsmith_f_op_f32(-673f + _wgslsmith_div_f32(704f, var_4.a.c.b.x))), _wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a) | max(u_input.a, vec2<i32>(var_4.a.b.a, 0i)), reverseBits(select(vec2<i32>(4766i, -2147483647i), vec2<i32>(var_2.x, u_input.a.x), var_4.a.a.e.c.x))), _wgslsmith_dot_vec2_i32((_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(var_2.x, -1i)) ^ min(u_input.a, u_input.a)) & vec2<i32>(abs(var_4.a.a.a), min(var_2.x, 5573i)), vec2<i32>(-(-9661i & var_2.x), _wgslsmith_mod_i32(var_4.a.a.a << (4294967295u % 32u), max(var_2.x, var_2.x)))));
}


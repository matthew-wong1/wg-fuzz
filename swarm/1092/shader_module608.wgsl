struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(44504u, 4294967295u, 4294967295u, 1u, 25395u, 47982u, 4294967295u, 30348u, 4294967295u, 47485u, 18283u, 0u, 12471u, 1u, 1u, 1u, 0u, 1u, 6246u, 0u, 20243u);

var<private> global1: array<i32, 3>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(678f, vec2<u32>(48089u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 21u)], 21u)], arg_2.x) << (vec4<u32>(16349u, 4294967295u, global0[_wgslsmith_index_u32(19204u, 21u)], 21508u) % vec4<u32>(32u)), abs(max(vec4<u32>(arg_2.x, global0[_wgslsmith_index_u32(arg_2.x, 21u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), vec4<u32>(arg_2.x, 31550u, 44813u, 29799u))))), false, arg_0, arg_2.x);
    let var_2 = Struct_1(~((vec3<u32>(arg_2.x, 42633u, 0u) >> (vec3<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(68623u, 21u)], 73429u) % vec3<u32>(32u))) << (select(vec3<u32>(13601u, arg_2.x, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 0u, 44447u), var_1.d) % vec3<u32>(32u))) ^ (vec3<u32>(reverseBits(1u), firstTrailingBit(1u), arg_2.x) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(13992u, 21u)], 44541u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, var_1.e, 9520u), vec3<u32>(global0[_wgslsmith_index_u32(23061u, 21u)], var_1.e, global0[_wgslsmith_index_u32(13591u, 21u)])))));
    var_0 = false;
    return -274f;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global1 = array<i32, 3>();
    global1 = array<i32, 3>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-255f, 453f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(232f, -677f)) * _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec2<u32>(91160u, 4294967295u))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f - _wgslsmith_f_op_f32(sign(410f))))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-694f)) - _wgslsmith_f_op_f32(-1424f * -1015f)), 103f) - 1000f);
    global0 = array<u32, 21>();
    var_0 = true;
    return Struct_2(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), min(arg_1.a.zz & arg_1.a.xz, vec2<u32>(min(global0[_wgslsmith_index_u32(10652u, 21u)], arg_1.a.x), _wgslsmith_clamp_u32(arg_1.a.x, 4294967295u, 1u))))), ~arg_1.a.zx, true, !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), _wgslsmith_mod_u32(0u, 6411u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = min(0i, global1[_wgslsmith_index_u32(arg_1.b.x, 3u)]);
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_1.e, 21452u), _wgslsmith_mod_u32(10116u, arg_1.e));
    var var_2 = Struct_1(~(vec3<u32>(func_2(-2147483647i, Struct_1(arg_0)).e, ~0u, ~var_1) >> (vec3<u32>(~arg_1.b.x, ~arg_0.x, ~var_1) % vec3<u32>(32u))));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(arg_0.x, 98702u), _wgslsmith_dot_vec2_u32(~select(arg_0.zy, var_2.a.zz, arg_1.c), ~abs(vec2<u32>(1u, 16428u))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.e, arg_1.e, 3177u), vec4<u32>(0u, var_2.a.x, 1u, 24647u)), ~101064u), 21u)], var_2.a.x) >> (reverseBits(vec4<u32>(arg_0.x << (0u % 32u), 74494u, 64903u, arg_0.x) ^ vec4<u32>(~0u, ~var_1, 67544u, 98265u)) % vec4<u32>(32u));
    var var_4 = -(select(select(vec4<i32>(global1[_wgslsmith_index_u32(1u, 3u)], u_input.a.x, 33134i, global1[_wgslsmith_index_u32(arg_0.x, 3u)]) | vec4<i32>(0i, u_input.a.x, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), -vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 3u)], global1[_wgslsmith_index_u32(var_2.a.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i), arg_1.d.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2628i, u_input.a.x, -13753i), vec4<i32>(1i, u_input.a.x, 13559i, -1i)), true) >> (_wgslsmith_add_vec4_u32(vec4<u32>(abs(0u), var_1, global0[_wgslsmith_index_u32(33209u, 21u)] >> (arg_1.b.x % 32u), ~global0[_wgslsmith_index_u32(40658u, 21u)]), var_3) % vec4<u32>(32u)));
    return ~max(_wgslsmith_div_vec2_u32(arg_1.b, vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), global0[_wgslsmith_index_u32(max(4294967295u, var_1), 21u)])), ~(var_2.a.zx ^ vec2<u32>(1u, 90281u)) << (abs(_wgslsmith_sub_vec2_u32(var_2.a.xy, arg_1.b)) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = arg_0.zy << (~(func_4(countOneBits(arg_0.yzw), func_2(global1[_wgslsmith_index_u32(1u, 3u)], Struct_1(arg_0.xwx))) >> (~func_4(arg_0.wxz, Struct_2(arg_3, vec2<u32>(18385u, global0[_wgslsmith_index_u32(1u, 21u)]), arg_1, vec3<bool>(false, arg_1, arg_1), 0u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = arg_0.yx;
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_dot_vec4_i32(-firstTrailingBit(~arg_2), vec4<i32>(arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a.x, 1i), vec2<i32>(max(var_1, arg_2.x), -11530i)), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(global1[_wgslsmith_index_u32(0u, 3u)], u_input.a.x)), -firstTrailingBit(vec2<i32>(var_1, var_1))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, countOneBits(var_1), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 3u)], 1i)), _wgslsmith_clamp_vec3_i32(arg_2.wyy, arg_2.zyw, vec3<i32>(var_1, -15137i, 983i)))));
    var var_3 = Struct_2(1000f, vec2<u32>(global0[_wgslsmith_index_u32(~var_0.x, 21u)], max(0u, ~var_0.x)), var_1 != -(~0i), vec3<bool>(false, true, arg_0.x < 40111u), var_0.x);
    return Struct_1(~vec3<u32>(~34905u, ~countOneBits(global0[_wgslsmith_index_u32(arg_0.x, 21u)]), var_0.x));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<i32, 3>();
    var var_0 = all(select(vec4<bool>(true, true, true, true), !vec4<bool>(func_2(u_input.a.x, Struct_1(arg_1.a)).c, true, true, all(vec2<bool>(true, true))), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(440f, 817f), vec2<f32>(-241f, -401f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, 680f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(157f, 169f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, 232f)), vec2<f32>(-1810f, -1613f)) - vec2<f32>(_wgslsmith_f_op_f32(floor(136f)), _wgslsmith_f_op_f32(sign(860f)))))));
    return ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, global0[_wgslsmith_index_u32(1u, 21u)], arg_1.a.x, 68971u), vec4<u32>(1u, arg_0, 31340u, 8809u), vec4<u32>(53229u, 54348u, 79329u, arg_1.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(44056u, arg_0, arg_1.a.x, 4294967295u), vec4<u32>(18158u, arg_1.a.x, 83158u, arg_1.a.x)))) & _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 53525u, arg_0, arg_1.a.x), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 21u)], arg_0, global0[_wgslsmith_index_u32(60361u, 21u)])), select(vec4<u32>(arg_0, arg_1.a.x, 22134u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], arg_0, 58485u, global0[_wgslsmith_index_u32(arg_1.a.x, 21u)]), vec4<bool>(true, false, true, true))), vec4<u32>(_wgslsmith_div_u32(abs(arg_0), ~51860u), 0u, 24108u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(98154u, 21u)], global0[_wgslsmith_index_u32(~5736u, 21u)], 67030u), 4294967295u, 1u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 21u)], global0[_wgslsmith_index_u32(~0u, 21u)]), 21u)]));
    let var_1 = -848f;
    global1 = array<i32, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(957f * var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 521f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f + -630f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, var_1, var_1, _wgslsmith_f_op_f32(var_1 + var_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, -1499f, var_1, 503f))))));
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(6064u), ~var_0.x, ~abs(var_0.x), ~_wgslsmith_mult_u32(21455u, 44056u)) << (_wgslsmith_add_vec4_u32(func_5(abs(31398u), func_1(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.x, 21u)], var_0.x, 58006u), true, vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 3u)], -23782i, 0i), var_1)), var_0) % vec4<u32>(32u)), ~vec4<u32>(var_0.x ^ global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(50425u, 21u)], 1u, global0[_wgslsmith_index_u32(32998u, 21u)]), vec4<u32>(var_0.x, var_0.x, 1u, 1u)), _wgslsmith_mod_u32(0u, 4294967295u), ~global0[_wgslsmith_index_u32(55926u, 21u)]) >> (abs(var_0) % vec4<u32>(32u)));
    let var_4 = func_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, global1[_wgslsmith_index_u32(6692u, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 21u)], 3u)]), vec3<i32>(u_input.a.x, -15666i, global1[_wgslsmith_index_u32(30998u, 3u)]))), ~(vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(var_3.x, 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 21u)], 21u)], 3u)], -2220i))), func_1(~(~(~var_0)), all(vec2<bool>(true, true)), vec4<i32>((i32(-1i) * -1i) & (-1i >> (var_0.x % 32u)), _wgslsmith_div_i32(76115i, -64765i) | (-47224i ^ global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 21u)], 3u)]), 1i, 12970i), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1)), 871f, var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f))), var_5.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-897f)) * _wgslsmith_f_op_f32(exp2(var_4.a))) - _wgslsmith_f_op_f32(375f - _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_5.x + 1701f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, -331f, -1000f, -1085f))))), min(~1u, ~var_3.x) << (4294967295u % 32u), max(vec4<i32>(global1[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 3u)], 0i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11827u, 21u)], 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24362u, 21u)], 3u)]), vec2<i32>(-2841i, 11036i))), -28277i), (vec4<i32>(-26329i, global1[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a.x, 31485i) << (~vec4<u32>(4294967295u, 4294967295u, 5294u, var_4.e) % vec4<u32>(32u))) ^ -vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i, u_input.a.x)));
}


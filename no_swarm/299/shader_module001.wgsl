struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = ~vec4<u32>(1u, arg_2.b.x, arg_2.b.x, ~24600u);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1598f, arg_1.b.d, arg_2.d, arg_1.b.a.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.d * _wgslsmith_f_op_f32(f32(-1f) * -140f)), 1000f, arg_2.d, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(176f, arg_2.d), -399f))))));
    let var_2 = abs(u_input.a.x >> (_wgslsmith_sub_u32(min(1u, arg_0 >> (arg_0 % 32u)), 22006u) % 32u));
    global0 = array<Struct_2, 21>();
    var var_3 = true;
    return arg_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_0 = min(countOneBits(countOneBits(_wgslsmith_mult_i32(arg_0.a.x, abs(arg_0.a.x)))), arg_0.a.x);
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(arg_0.a.xz), ~select(abs(arg_0.a.yx), vec2<i32>(-39310i, -1i), !arg_1.c.xz)), ~reverseBits(u_input.a.zz));
    let var_2 = max(select(select(firstLeadingBit(vec3<u32>(40788u, 5500u, arg_1.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(113538u, arg_1.b.x, arg_1.b.x), vec3<u32>(17820u, arg_1.b.x, arg_1.b.x)), -2147483647i <= u_input.a.x), ~vec3<u32>(77122u, 25634u, 51090u), var_0 != _wgslsmith_mod_i32(-9917i, var_0)) & vec3<u32>(~select(10297u, 57794u, true), ~33333u >> (arg_0.b.b.x % 32u), _wgslsmith_mod_u32(15425u, arg_1.b.x) >> (0u % 32u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(arg_1.b.x, 4294967295u, arg_0.b.b.x)), vec3<u32>(arg_0.b.b.x, ~69769u, 4294967295u)), countOneBits(countOneBits(vec3<u32>(arg_1.b.x, arg_0.b.b.x, 1u)))));
    return reverseBits(firstLeadingBit(~(arg_0.b.b.x >> (37355u % 32u))) << (~select(var_2.x, arg_1.b.x, true) % 32u));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = 4294967295u;
    let var_1 = 0u;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    return func_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u >> (1u % 32u), _wgslsmith_mod_u32(~4294967295u, 9789u) ^ ~select(var_0, 28626u, arg_0)), 21u)], Struct_1(vec2<f32>(-1914f, _wgslsmith_f_op_f32(f32(-1f) * -802f)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_0, 4294967295u)), ~(~vec2<u32>(95918u, 40u))), func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, var_0), vec3<u32>(var_0, var_0, 1u)), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, -1i, -3281i)), Struct_1(vec2<f32>(246f, -142f), vec2<u32>(35491u, var_1), vec3<bool>(false, true, true), -428f, false)), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1298f, -1020f), vec2<f32>(442f, -1000f))), vec2<u32>(0u, 24619u) | vec2<u32>(var_1, var_1), vec3<bool>(true, arg_0, false), -1000f, !arg_0)), 1000f, arg_0));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_2, 21>();
    let var_0 = Struct_2(u_input.a.xww, arg_2);
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(arg_3.zx));
    return Struct_2(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(var_0.a.x, u_input.a.x | 7447i)), var_0.a.x), var_0.b);
}

fn func_1() -> f32 {
    var var_0 = func_5(countOneBits(27698u), !(true || (true & any(vec4<bool>(false, true, true, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1384f, -957f)))), firstTrailingBit(vec2<u32>(func_2(true), 0u)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), 1757f, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(263f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -451f))), _wgslsmith_f_op_f32(f32(-1f) * -537f), 1464f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(769f, -1554f, -409f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(280f, -1459f, 101f), vec3<f32>(-135f, -500f, -152f))))))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    var_0 = global0[_wgslsmith_index_u32(func_4(Struct_2(var_0.a, var_0.b), var_0.b), 21u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.d, _wgslsmith_f_op_f32(abs(-657f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.a.x + var_1.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2752f) - _wgslsmith_f_op_f32(-167f - -581f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.a.x))), 235f, _wgslsmith_f_op_f32(ceil(-358f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1294f, -609f, var_0.b.a.x))))))));
    global0 = array<Struct_2, 21>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-2574f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1468f - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(585f)) * 294f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_div_f32(111f, 295f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2169f))), _wgslsmith_f_op_f32(func_1()))));
    var var_1 = vec4<bool>(true, true, !(!all(vec4<bool>(true, true, true, true))), true);
    let var_2 = vec2<bool>(true, all(var_1.wx));
    var var_3 = (firstTrailingBit(countOneBits(select(u_input.a, u_input.a, vec4<bool>(var_1.x, var_2.x, false, false)))) ^ select(select(u_input.a, ~u_input.a, select(vec4<bool>(var_2.x, var_1.x, false, var_2.x), vec4<bool>(var_1.x, true, false, var_2.x), vec4<bool>(var_1.x, false, true, var_2.x))), vec4<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x, 2147483647i), !var_1.x)) >> (select(reverseBits(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u))), ~(~(~vec4<u32>(4294967295u, 38221u, 11865u, 72698u))), !(!vec4<bool>(var_2.x, true, var_1.x, false))) % vec4<u32>(32u));
    let var_4 = func_5(_wgslsmith_div_u32(1u, 1u), true, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -827f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -412f))), firstLeadingBit(select(vec2<u32>(1u, 4294967295u), vec2<u32>(19467u, 0u), true)) | (_wgslsmith_mod_vec2_u32(vec2<u32>(73002u, 0u), vec2<u32>(77757u, 93314u)) | select(vec2<u32>(1844u, 30987u), vec2<u32>(4294967295u, 33211u), false)), var_1.zyy, _wgslsmith_f_op_f32(func_1()), var_1.x), vec3<f32>(var_0.x, var_0.x, var_0.x));
    var var_5 = select(vec3<bool>(true, var_4.b.e, true), var_1.ywx, var_1.zzx);
    var var_6 = func_5(var_4.b.b.x, all(vec4<bool>(var_5.x, var_2.x, all(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_1.x, var_4.b.e, false, true), vec4<bool>(var_5.x, var_2.x, true, var_2.x))), true)), Struct_1(var_4.b.a, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 55403u) >> (var_4.b.b % vec2<u32>(32u)), vec2<u32>(37341u, var_4.b.b.x) | vec2<u32>(0u, var_4.b.b.x)) ^ _wgslsmith_mult_vec2_u32(~var_4.b.b, ~var_4.b.b), func_5(~select(48485u, 4294967295u, var_2.x), (var_1.x && var_2.x) != all(vec4<bool>(false, var_2.x, false, var_5.x)), func_5(var_4.b.b.x | 4294967295u, all(vec3<bool>(var_4.b.c.x, false, true)), var_4.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(101f, 1787f, var_4.b.d)))).b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 * var_0), _wgslsmith_f_op_vec3_f32(var_0 * vec3<f32>(-844f, var_4.b.d, -408f)))).b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-260f * _wgslsmith_f_op_f32(var_4.b.d + var_0.x)))), false), _wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_6.a.x, 1897f, 2147483647i);
}


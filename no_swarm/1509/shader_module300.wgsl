struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(19445u, ~_wgslsmith_add_u32(arg_3.c, 0u)), u_input.c.x));
    let var_1 = -8624i;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1046f, global1.x, 1502f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1501f, -685f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1791f, -244f, -222f))))))));
    var var_2 = select(vec2<bool>(true, true), select(!(!vec2<bool>(arg_3.d.x, global0[_wgslsmith_index_u32(arg_3.c, 2u)])), select(select(arg_1.zy, select(vec2<bool>(arg_1.x, false), arg_1.yx, arg_1.zx), arg_1.zy), !vec2<bool>(true, arg_1.x), any(vec4<bool>(true, arg_3.d.x, arg_3.a.a, false))), false), !all(arg_3.d.xw));
    return ~vec3<u32>(~(~_wgslsmith_div_u32(50071u, arg_3.c)), 4294967295u, ~47874u);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(670f, -1000f), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-441f)))), select(vec2<bool>(arg_1.b.x, global0[_wgslsmith_index_u32(abs(~u_input.d), 2u)]), !vec2<bool>(arg_3.a, true), arg_1.b.xw)));
    let var_1 = Struct_2(Struct_1(select(!arg_1.b.x, false, false) | false, u_input.c.zyx), max(~firstTrailingBit(min(u_input.a, u_input.a)), ~_wgslsmith_sub_i32(arg_1.c.x, arg_1.c.x) | (-arg_1.c.x << (arg_1.a % 32u))), min(~arg_3.b.x, _wgslsmith_sub_u32(~arg_3.b.x, u_input.d)) | ~abs(_wgslsmith_div_u32(4294967295u, 4294967295u)), arg_1.b, ~(-u_input.a));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1228f, var_0.x, -702f))))), vec3<f32>(-1429f, _wgslsmith_f_op_f32(-var_0.x), -986f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-897f, -1178f, -818f), vec3<f32>(1627f, -471f, var_0.x))))))));
    global0 = array<bool, 2>();
    let var_2 = !(var_1.d.x & arg_3.a);
    return -1i;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(~2147483647i, 2147483647i);
    var_0 = -4240i;
    var_0 = firstLeadingBit(func_4(-662f, Struct_3(u_input.c.x, select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), vec4<bool>(arg_0.b.x, false, true, true), true), _wgslsmith_div_vec3_i32(u_input.b, arg_0.c) & _wgslsmith_sub_vec3_i32(vec3<i32>(-20523i, 1i, 80639i), vec3<i32>(arg_0.c.x, 1i, 14413i))), ~arg_0.c.x, Struct_1(all(!arg_0.b.xwx), vec3<u32>(0u, arg_0.a, 1u) << (func_3(-41948i, arg_0.b, u_input.b, Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_0.a, 2u)], u_input.c.xyz), arg_0.c.x, arg_0.a, vec4<bool>(false, false, true, true), arg_0.c.x)) % vec3<u32>(32u)))));
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1717f, 2222f, 473f)), vec3<f32>(global1.x, -2430f, _wgslsmith_div_f32(global1.x, -1000f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1000f, global1.x)))))));
    var_0 = u_input.b.x ^ ~(-9628i);
    return Struct_2(Struct_1(true, firstTrailingBit(countOneBits(~vec3<u32>(35974u, u_input.d, arg_0.a)))), -(i32(-1i) * -(~(-1i))), abs(_wgslsmith_div_u32(23615u, max(arg_0.a << (arg_0.a % 32u), 4294967295u))), !select(select(!arg_0.b, arg_0.b, !arg_0.b.x), !vec4<bool>(true, arg_0.b.x, true, global0[_wgslsmith_index_u32(54843u, 2u)]), arg_0.b), _wgslsmith_sub_i32(1i | _wgslsmith_div_i32(countOneBits(arg_0.c.x), max(u_input.b.x, -1i)), ~u_input.a));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = arg_1.d.xwy;
    var var_1 = Struct_1(var_0.x, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_mod_u32(17972u, u_input.d) | _wgslsmith_mod_u32(1u, u_input.c.x), ~13633u), vec3<u32>(~_wgslsmith_div_u32(u_input.c.x, arg_1.a.b.x), _wgslsmith_mult_u32(u_input.c.x | 8593u, 41236u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 0u), vec2<u32>(97193u, arg_2.a)) | (arg_2.a >> (4472u % 32u)))));
    let var_2 = _wgslsmith_div_u32(42156u, min(40916u, firstLeadingBit(countOneBits(~22093u))));
    var_1 = arg_1.a;
    var var_3 = func_2(arg_2);
    return countOneBits(vec4<i32>(-_wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.c.xy), u_input.b.yy >> (u_input.c.xz % vec2<u32>(32u))), func_2(arg_2).e | firstTrailingBit(-1i), ~_wgslsmith_dot_vec2_i32(arg_2.c.yz, arg_2.c.yy), 18925i));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-20137i, _wgslsmith_add_i32(u_input.a & -26625i, u_input.a) ^ -46011i, max(-30140i | (40719i ^ u_input.b.x), _wgslsmith_div_i32(36554i, -28018i)), _wgslsmith_mod_i32(u_input.b.x, 2147483647i)), func_5(select(-37072i, u_input.a, !all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 2u)], true, global0[_wgslsmith_index_u32(u_input.d, 2u)]))), func_2(Struct_3(select(1u, arg_0.x, global0[_wgslsmith_index_u32(u_input.d, 2u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 2u)], true, false), u_input.b)), Struct_3(max(~4294967295u, _wgslsmith_div_u32(u_input.c.x, 49245u)), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 2u)], false, true, global0[_wgslsmith_index_u32(u_input.d, 2u)])), -vec3<i32>(u_input.a, 9289i, u_input.a))));
    var_0 = firstTrailingBit(-vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(-42490i, 5319i)), u_input.a, u_input.a, ~(var_0.x << (5648u % 32u))));
    var_0 = _wgslsmith_mult_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(-28903i, var_0.x, 1i, -54044i)) ^ ~(vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x) >> (u_input.c % vec4<u32>(32u)))), -countOneBits(vec4<i32>(1i, i32(-1i) * -13743i, -2147483647i, u_input.a)));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-1f);
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    var var_0 = _wgslsmith_mod_vec3_u32(u_input.c.zxz, reverseBits(u_input.c.zxx));
    var_0 = vec3<u32>(~var_0.x, u_input.d >> (4294967295u % 32u), ~1u & var_0.x);
    let var_1 = Struct_3(~74156u, !vec4<bool>(global0[_wgslsmith_index_u32(~30188u, 2u)], global0[_wgslsmith_index_u32(func_1(~u_input.c.yzw), 2u)], false, true | global0[_wgslsmith_index_u32(1u, 2u)]), ~_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(2147483647i, u_input.a, countOneBits(2147483647i))));
    var var_2 = _wgslsmith_div_vec2_u32(var_0.yx, vec2<u32>(70912u, var_1.a));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-456f, 1315f, global1.x)))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(959f, global1.x, global1.x), vec3<f32>(global1.x, global1.x, global1.x), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(593f, global1.x, -636f) - vec3<f32>(483f, -1226f, -1625f)) * vec3<f32>(-519f, global1.x, global1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, global1.x))))));
    let var_3 = select(global0[_wgslsmith_index_u32(func_2(var_1).a.b.x, 2u)], _wgslsmith_f_op_f32(-global1.x) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-738f + _wgslsmith_f_op_f32(-global1.x)))), !all(var_1.b));
    global0 = array<bool, 2>();
    let var_4 = Struct_1(var_1.b.x, u_input.c.wyx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -494f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -258f), global1.x) - vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 588f, global1.x, _wgslsmith_f_op_f32(exp2(global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(726f, global1.x, -1000f, 610f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -153f) + vec4<f32>(144f, -473f, 652f, global1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1143f, 820f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 408f, -788f) + vec4<f32>(global1.x, global1.x, global1.x, 706f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -605f, global1.x, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(838f, -1769f, -833f, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, global1.x))))), abs(u_input.c.wx), var_1.c, var_1.c.x);
}


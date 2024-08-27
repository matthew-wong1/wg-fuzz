struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(27769u, 60148u, 0u, 4294967295u, 277u, 1u, 4294967295u, 3069u, 4294967295u, 4294967295u, 0u, 31013u, 17060u, 1u, 62966u);

var<private> global1: array<bool, 18>;

var<private> global2: vec3<u32>;

var<private> global3: f32 = -1000f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> bool {
    var var_0 = Struct_4(true, 680f);
    global2 = (~vec3<u32>(~global2.x, 1u, abs(global2.x)) & arg_2.a) ^ select(max(~vec3<u32>(global2.x, arg_2.a.x, 4294967295u), ~vec3<u32>(77164u, 36642u, 45446u) & vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 15u)], global2.x)), _wgslsmith_clamp_vec3_u32(arg_2.a, vec3<u32>(firstTrailingBit(4184u), ~arg_2.a.x, ~arg_2.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2.a, vec3<u32>(global0[_wgslsmith_index_u32(34019u, 15u)], u_input.a, u_input.a)), ~vec3<u32>(0u, 1u, arg_2.a.x))), select(vec3<bool>(true, true, var_0.a | false), select(select(vec3<bool>(arg_1, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 15u)], 18u)]), vec3<bool>(true, false, arg_1), vec3<bool>(false, true, var_0.a)), !vec3<bool>(true, arg_1, false), select(vec3<bool>(arg_1, global1[_wgslsmith_index_u32(1u, 18u)], false), vec3<bool>(var_0.a, true, arg_1), var_0.a)), true || (350f == var_0.b)));
    let var_1 = 0u;
    global3 = var_0.b;
    let var_2 = arg_2;
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_5) -> f32 {
    var var_0 = arg_2.a.x;
    var var_1 = abs(1i);
    var var_2 = Struct_2(Struct_1(vec3<i32>(countOneBits(i32(-1i) * -14995i), arg_0.d, min(arg_2.d.x, arg_2.b.a.x >> (arg_2.b.b.x % 32u))), vec4<u32>(countOneBits(~75819u), ~52010u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(6199u, 15u)]), arg_2.b.b.xx), max(0u, 961u) << (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2223f, arg_1.x, arg_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.yxy)))), true, abs(vec4<u32>(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_2.b.b.x, arg_2.b.b.x), global2.x), max(0u, select(arg_0.a.b.x, global2.x, arg_0.b)), 29477u)), arg_0.d);
    let var_3 = arg_2.d.x;
    var var_4 = Struct_3(min(_wgslsmith_add_vec3_u32(~(~arg_0.a.b.zxz), ~var_2.c.wyz), _wgslsmith_div_vec3_u32(~arg_0.a.b.wxx, _wgslsmith_add_vec3_u32(var_2.a.b.wzx ^ vec3<u32>(41836u, arg_2.b.b.x, 6636u), ~var_2.c.xyy))), abs(47536i >> (~arg_2.b.b.x % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.d.x + -191f) + 1428f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f - arg_2.a.x))) - arg_1.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.d.x, -658f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-855f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) + -1000f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec3<i32>(6695i, -60212i, -71941i), arg_0.b, arg_0.d.x, arg_0.d), func_3(-4345i, false, Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 15u)], 45660u, 1u), arg_0.a.x)), vec4<u32>(global2.x, 13219u, 2285u, global0[_wgslsmith_index_u32(9665u, 15u)]), 1i), arg_0.d.xy, Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.d.x, 842f, arg_0.c)), Struct_1(arg_0.a, vec4<u32>(global2.x, 26753u, u_input.a, arg_0.b.x), arg_0.c, arg_0.d), _wgslsmith_f_op_vec2_f32(-arg_0.d.zz), ~arg_0.a))), arg_0.c, true)));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, -1i >> (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)]) % 32u)), -((arg_0.a.yx ^ -arg_0.a.xx) << (global2.xz % vec2<u32>(32u))));
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    return arg_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3.a;
    global0 = array<u32, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), -1010f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.c, 668f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.a.c, _wgslsmith_div_f32(arg_2.d.x, -1443f), func_2(Struct_1(vec3<i32>(var_0.a.x, 2147483647i, -1i), vec4<u32>(var_0.b.x, 1352u, 1u, u_input.a), arg_3.a.c, arg_2.d)).c))), _wgslsmith_f_op_vec3_f32(-arg_2.d))));
    let var_2 = vec3<bool>(arg_3.b, true, false);
    let var_3 = !(-912f == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -747f))));
    return Struct_3(min(max(firstTrailingBit(arg_3.a.b.ywx), vec3<u32>(abs(47759u), ~arg_0.x, ~arg_0.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(57634u, 4294967295u, 73452u), ~vec3<u32>(u_input.a, arg_2.b.x, 44690u) | ~var_0.b.wzw)), arg_3.d);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_5(~firstTrailingBit(global2.yx), true, func_2(Struct_1(~vec3<i32>(0i, -2147483647i, 26777i) << (~vec3<u32>(4294967295u, 53777u, global2.x) % vec3<u32>(32u)), vec4<u32>(840u, ~10533u, 75705u, firstLeadingBit(13273u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2008f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-241f, -1281f, -670f) + vec3<f32>(505f, -1000f, -921f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1169f, 882f, 189f) * vec3<f32>(1119f, -401f, 1593f)), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 18u)], global1[_wgslsmith_index_u32(global2.x, 18u)], global1[_wgslsmith_index_u32(30438u, 18u)]))))), Struct_2(Struct_1(select(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 8372i, arg_0), vec3<i32>(2147483647i, arg_0, 20592i)), func_2(Struct_1(vec3<i32>(2147483647i, arg_0, 2147483647i), vec4<u32>(0u, 10846u, global0[_wgslsmith_index_u32(26460u, 15u)], 1u), 1000f, vec3<f32>(393f, 1367f, -544f))).a, select(vec3<bool>(true, global1[_wgslsmith_index_u32(2355u, 18u)], global1[_wgslsmith_index_u32(35904u, 18u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 18u)], false), global1[_wgslsmith_index_u32(34493u, 18u)])), abs(vec4<u32>(4294967295u, 0u, 58995u, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-169f, 1880f, global1[_wgslsmith_index_u32(u_input.a, 18u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1698f, 1752f, 708f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1205f, 1844f, -442f) * vec3<f32>(-829f, 513f, -270f)))), -167f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -848f))), _wgslsmith_div_vec4_u32(~(vec4<u32>(global2.x, global2.x, u_input.a, 0u) >> (vec4<u32>(u_input.a, global2.x, 17434u, global0[_wgslsmith_index_u32(u_input.a, 15u)]) % vec4<u32>(32u))), abs(vec4<u32>(31372u, 0u, 1u, u_input.a)) << ((vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], 58613u, 1u) ^ vec4<u32>(0u, u_input.a, 0u, 58692u)) % vec4<u32>(32u))), arg_0));
    let var_1 = Struct_2(Struct_1(abs(max(vec3<i32>(1i, 48769i, var_0.b), vec3<i32>(-5398i, 0i, arg_0)) << (~vec3<u32>(4294967295u, global2.x, 77271u) % vec3<u32>(32u))), vec4<u32>(~firstLeadingBit(u_input.a), u_input.a, ~0u, 4294967295u), 1000f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1527f)), 1f)), !(u_input.a <= var_0.a.x), _wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.a.x, u_input.a, var_0.a.x, 4294967295u), func_2(Struct_1(vec3<i32>(-1032i, arg_0, var_0.b), vec4<u32>(var_0.a.x, var_0.a.x, 1u, global0[_wgslsmith_index_u32(var_0.a.x, 15u)]), 204f, vec3<f32>(1254f, 311f, -1221f))).b, vec4<u32>(11888u, 0u, 1u, 19092u)), ~(vec4<u32>(u_input.a, 4294967295u, u_input.a, var_0.a.x) & vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 15u)], global2.x, 1u, u_input.a)), global1[_wgslsmith_index_u32(0u, 18u)]), ~abs(vec4<u32>(var_0.a.x, 1u, 0u, var_0.a.x)) & countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 1u, global2.x, global0[_wgslsmith_index_u32(64699u, 15u)]))), ~(-1i << (u_input.a % 32u)));
    global0 = array<u32, 15>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f - _wgslsmith_div_f32(-242f, var_1.a.d.x)) - var_1.a.c)));
    let var_3 = var_1.a;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(~vec3<u32>(9090u, u_input.a, global0[_wgslsmith_index_u32(~4294967295u, 15u)])), -2698i);
    var var_1 = func_1(((1i ^ var_0.b) | _wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(2147483647i, var_0.b))) & -var_0.b);
    var var_2 = Struct_4(global1[_wgslsmith_index_u32(~func_1(~(~var_0.b)).b.x, 18u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.c, -654f, false)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-591f, 868f) + _wgslsmith_f_op_f32(round(var_1.c))))));
    var_2 = Struct_4(true, var_2.b);
    var var_3 = -1657i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(400f, 371f)) - _wgslsmith_f_op_f32(abs(var_1.d.x))))), ~(-4019i ^ _wgslsmith_add_i32(~12135i, var_1.a.x)), -2179i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-778f * var_2.b), var_1.c), vec3<f32>(-1000f, -1336f, _wgslsmith_f_op_f32(f32(-1f) * -630f))) - var_1.d), var_0.a.x);
}


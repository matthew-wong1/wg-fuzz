struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -702f, var_0.a.c)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-293f)), _wgslsmith_f_op_f32(arg_1 + arg_0.a.a), _wgslsmith_div_f32(-131f, arg_1))))) + var_0.c.yzw);
    global0 = min(~(~arg_0.a.d.x | var_0.a.d.x), _wgslsmith_mod_i32(abs(arg_0.a.d.x), -2147483647i));
    var var_2 = min(arg_3.x, -11072i);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1), 0u, -1872f, arg_0.a.d), vec2<f32>(var_1.x, _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - arg_0.c.x))));
    return var_0;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_3 {
    global0 = func_2(Struct_3(func_2(arg_1, arg_1.c.x, reverseBits(1257i), -vec3<i32>(-2147483647i, arg_2.x, -2147483647i) & ~arg_3).a, arg_1.a.b >> (arg_1.a.b % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.a - arg_1.c.x), arg_1.d, _wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(-arg_1.a.c))), _wgslsmith_f_op_f32(round(arg_1.a.a))), arg_1.c.x, -2147483647i, vec3<i32>(u_input.a.x, 24357i, arg_2.x)).a.d.x;
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.c.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1239f, arg_1.d))), arg_1.d >= _wgslsmith_f_op_f32(max(arg_1.a.a, arg_1.a.a)))) * arg_1.c.yw), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.a)) * _wgslsmith_f_op_f32(floor(-1137f))), abs(~77599u), arg_1.d, vec3<i32>(-31978i, -u_input.a.x, 37695i)), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48432u, arg_1.b, 4294967295u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 96734u)), firstLeadingBit(u_input.b.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.a.b, u_input.b.x, 1u), ~vec3<u32>(arg_1.b, 1u, 33354u))), _wgslsmith_f_op_vec4_f32(arg_1.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-853f, arg_1.d, 1789f, -857f)) + vec4<f32>(arg_1.d, 512f, arg_1.d, arg_1.c.x))), -1433f), 497f);
    var var_1 = select(~vec4<u32>(var_0.b.a.b, _wgslsmith_add_u32(22984u, u_input.b.x), abs(25693u), arg_1.a.b), ~(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 34238u)) ^ reverseBits(vec4<u32>(15314u, 4294967295u, var_0.b.a.b, u_input.b.x)), any(vec3<bool>(true, -292f >= var_0.c, true))) | (vec4<u32>(abs(abs(25906u)), 4294967295u, 4294967295u, u_input.b.x) << (abs(reverseBits(~vec4<u32>(arg_1.a.b, var_0.b.a.b, 16359u, 4294967295u))) % vec4<u32>(32u)));
    var var_2 = vec2<bool>(!(0u >= max(_wgslsmith_dot_vec3_u32(vec3<u32>(8644u, 73374u, 1u), var_1.wyz), var_0.b.a.b)), !(!(0u >= var_0.b.a.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, var_0.b.a.c) + func_2(Struct_3(Struct_1(365f, var_0.b.a.b, arg_1.a.a, var_0.b.a.d), 0u, var_0.b.c, 299f), arg_1.d, 29409i, vec3<i32>(-2147483647i, arg_0, arg_0)).c.zw) - vec2<f32>(-473f, _wgslsmith_f_op_f32(ceil(var_0.b.a.c))))));
    return var_0.b;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> i32 {
    global0 = ~reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(6966i, -58252i), u_input.a.yx), vec2<i32>(1i, 2147483647i) >> (vec2<u32>(arg_0.b.b, arg_1.x) % vec2<u32>(32u))), arg_0.b.a.d.x));
    let var_0 = arg_0.b.a.d.xz;
    global0 = -(2147483647i ^ (i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-43989i, 44450i), u_input.a.xx)));
    var var_1 = Struct_2(func_2(arg_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.c.x, 176f)))), -737i, _wgslsmith_clamp_vec3_i32(func_3(~arg_0.b.a.d.x, func_2(Struct_3(arg_0.b.a, u_input.b.x, arg_0.b.c, arg_0.a.x), -1020f, 9646i, vec3<i32>(-1i, 24182i, u_input.a.x)), _wgslsmith_mod_vec3_i32(arg_0.b.a.d, vec3<i32>(20283i, -61810i, var_0.x)), vec3<i32>(arg_0.b.a.d.x, 0i, -1i)).a.d, _wgslsmith_sub_vec3_i32(u_input.a | arg_0.b.a.d, u_input.a ^ vec3<i32>(arg_0.b.a.d.x, u_input.a.x, arg_0.b.a.d.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-20i, -52306i, var_0.x), -vec3<i32>(1440i, u_input.a.x, -1i), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(arg_0.b.a.d.x, arg_0.b.a.d.x, arg_0.b.a.d.x))))).a, vec2<f32>(arg_0.a.x, arg_0.b.a.a));
    var var_2 = 0i;
    return ~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.a.d.x, u_input.a.x), select(u_input.a.xx, var_0, vec2<bool>(false, true)) & (vec2<i32>(arg_0.b.a.d.x, var_1.a.d.x) << (arg_1.yy % vec2<u32>(32u)))) ^ 10384i;
}

fn func_1() -> StorageBuffer {
    global0 = 8773i;
    global0 = _wgslsmith_div_i32(u_input.a.x, func_4(Struct_4(vec2<f32>(-260f, -338f), func_3(-u_input.a.x, func_2(Struct_3(Struct_1(927f, u_input.b.x, 454f, vec3<i32>(-2147483647i, 0i, 2147483647i)), 4294967295u, vec4<f32>(283f, -654f, 2111f, 854f), 770f), -1281f, u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(27454i, u_input.a.x, -52738i), -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1102f, -240f, false)) * _wgslsmith_f_op_f32(max(1000f, 1260f)))), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, _wgslsmith_mod_u32(4294967295u, u_input.b.x)))));
    var var_0 = vec3<f32>(-127f, -700f, _wgslsmith_f_op_f32(-func_2(Struct_3(func_3(27254i, Struct_3(Struct_1(-108f, u_input.b.x, 555f, u_input.a), 24307u, vec4<f32>(608f, -1000f, 1659f, -848f), -422f), vec3<i32>(u_input.a.x, -42917i, -2147483647i), u_input.a).a, ~34115u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 999f, 995f, 444f)), _wgslsmith_f_op_f32(-918f * -1176f)), _wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_div_i32(abs(336i), -u_input.a.x), vec3<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 1i)).c.x));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -960f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(var_0.x, 345f, -453f)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1960f, -208f, all(vec4<bool>(true, true, false, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1028f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)))), var_0.x, _wgslsmith_f_op_f32(max(506f, _wgslsmith_f_op_f32(-var_0.x)))));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(func_3(u_input.a.x | 2147483647i, func_3(-64939i, Struct_3(Struct_1(var_0.x, 56471u, var_0.x, vec3<i32>(-3923i, 1i, -1i)), 69786u, vec4<f32>(-399f, var_0.x, var_0.x, var_0.x), 1274f), u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(u_input.a, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), false), -vec3<i32>(12600i, -11228i, u_input.a.x)).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(251f, -828f) - -1195f)), -656f), vec3<u32>(func_2(Struct_3(func_3(51074i, Struct_3(Struct_1(var_0.x, u_input.b.x, var_0.x, u_input.a), 7356u, vec4<f32>(1404f, -317f, var_0.x, 1833f), -1354f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 20843i)).a, 31102u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, 940f, var_0.x, var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x, u_input.a.x, -countOneBits(u_input.a)).b, ~((u_input.b.x >> (60827u % 32u)) | ~u_input.b.x), select(0u, ~(~u_input.b.x), all(vec2<bool>(true, true)))), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1312f, 581f)))) - -409f), ~u_input.b.x, _wgslsmith_f_op_f32(abs(1000f)), u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -2891f), -1320f) + vec2<f32>(-714f, -1672f)))));
    global0 = 2147483647i;
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.a.d, min(vec3<i32>(6362i, var_0.a.d.x, var_0.a.d.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.a.b, 42287u), vec3<u32>(0u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, var_0.a.d.x)), -u_input.a), vec3<i32>(-1i) * -((u_input.a & u_input.a) >> (vec3<u32>(var_0.a.b, u_input.b.x, 4294967295u) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_div_i32(-12391i, ~var_0.a.d.x);
    let x = u_input.a;
    s_output = func_1();
}


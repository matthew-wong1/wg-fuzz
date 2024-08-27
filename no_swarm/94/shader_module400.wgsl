struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-477f, 2099f, 1000f, -141f), i32(-2147483648), 16727u), vec2<i32>(2147483647i, 45050i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1670f, -788f, -3203f, 1373f), 4826i, 111187u), vec2<i32>(12234i, -37662i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-2504f, 370f, 2295f, 227f), i32(-2147483648), 4294967295u), vec2<i32>(-85871i, -30701i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(1228f, 641f, -2425f, 505f), -609i, 26642u), vec2<i32>(1i, 0i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(519f, 486f, -489f, -1596f), 7156i, 0u), vec2<i32>(-32163i, -9167i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(337f, 283f, -1305f, -382f), i32(-2147483648), 1u), vec2<i32>(i32(-2147483648), -1i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-621f, 1147f, -1349f, -1181f), 2147483647i, 22818u), vec2<i32>(49502i, 2147483647i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(534f, -794f, 517f, 1277f), 0i, 0u), vec2<i32>(26340i, -7139i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(437f, -293f, -347f, -843f), 8333i, 1u), vec2<i32>(28892i, -24665i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(970f, -815f, 1714f, -783f), 30450i, 4294967295u), vec2<i32>(0i, 2147483647i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(1237f, 311f, -1136f, 594f), 17105i, 1u), vec2<i32>(i32(-2147483648), -1i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-974f, 1050f, -513f, 640f), 2147483647i, 4294967295u), vec2<i32>(-20920i, -58909i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(593f, -1402f, 168f, 3051f), 0i, 4294967295u), vec2<i32>(-8402i, -463i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-104f, 350f, -301f, -1212f), -1i, 0u), vec2<i32>(2147483647i, 14405i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(772f, -821f, 1104f, 200f), -1i, 33693u), vec2<i32>(-34719i, 30745i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1702f, 458f, 1665f, 1367f), 0i, 4294967295u), vec2<i32>(-8103i, -7845i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(339f, -162f, 624f, 238f), 2147483647i, 78866u), vec2<i32>(25487i, 16825i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-144f, 772f, -1663f, -955f), -55261i, 1u), vec2<i32>(-29473i, 1i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(585f, -1589f, -636f, 801f), -1i, 4294967295u), vec2<i32>(1i, -24999i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(701f, -450f, -433f, 340f), -33080i, 1u), vec2<i32>(521i, 2147483647i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(115f, -1256f, 208f, -328f), -7173i, 1u), vec2<i32>(29711i, -35347i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(1110f, 121f, 561f, 1298f), 2874i, 4294967295u), vec2<i32>(17408i, i32(-2147483648))), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1145f, -435f, 177f, 849f), i32(-2147483648), 31664u), vec2<i32>(-62652i, 25103i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-816f, -1083f, 2446f, 451f), i32(-2147483648), 1u), vec2<i32>(49517i, -17502i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(131f, -1537f, 299f, 405f), 0i, 104838u), vec2<i32>(0i, -10061i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(1671f, -935f, 530f, -488f), -1i, 4294967295u), vec2<i32>(-39366i, 0i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(-1583f, 1000f, -1262f, 1000f), -9751i, 4294967295u), vec2<i32>(0i, -32372i)));

var<private> global1: Struct_1;

var<private> global2: array<bool, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> bool {
    global1 = arg_1;
    let var_0 = arg_1;
    var var_1 = ~((u_input.c.x ^ _wgslsmith_div_i32(-global1.c, abs(-24381i))) >> (abs(4294967295u) % 32u));
    let var_2 = select(vec2<bool>(!global2[_wgslsmith_index_u32(83u, 3u)], arg_0.b.c == 1i), vec2<bool>(!(!arg_2.x || all(var_0.a.zx)), arg_0.b.a.x), !select(arg_0.b.a.zy, !(!vec2<bool>(global2[_wgslsmith_index_u32(40216u, 3u)], true)), true));
    let var_3 = Struct_5(vec3<f32>(-319f, var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(-arg_3)))))), -(vec4<i32>(-1i) * -vec4<i32>(arg_0.b.c, 2147483647i, var_0.c, u_input.b.x)), !(!arg_1.a.x));
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> bool {
    let var_0 = global1.a.x;
    global1 = Struct_1(global1.a, global1.b, -2147483647i, global1.d);
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1875f, arg_0.x, _wgslsmith_f_op_f32(abs(-422f))), global1.b.xxw, vec3<bool>(global1.a.x, false || all(vec4<bool>(true, true, true, false)), true))), vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(global1.c & -19991i, ~global1.c)), select(2147483647i, 0i, func_3(Struct_3(global1.d, Struct_1(global1.a, vec4<f32>(-680f, global1.b.x, arg_0.x, 1000f), -30891i, global1.d), u_input.a), Struct_1(global1.a, vec4<f32>(651f, -1364f, arg_0.x, arg_0.x), u_input.c.x, 4294967295u), global1.a.xy, _wgslsmith_f_op_f32(-arg_0.x))), ~(~(~(-12912i))), _wgslsmith_div_i32(reverseBits(~11040i), global1.c)), !(global1.a.x & global1.a.x));
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(6749u, _wgslsmith_clamp_u32(u_input.a, 63231u, global1.d), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 19570u), vec4<u32>(33158u, 0u, 4294967295u, global1.d)))) ^ ~(~(~vec4<u32>(u_input.a, global1.d, global1.d, 30441u))), countOneBits(~(~vec4<u32>(global1.d, u_input.a, global1.d, 4294967295u))));
    var var_1 = Struct_4(Struct_2(Struct_1(vec3<bool>(1137f >= global1.b.x, !arg_1.x, false), _wgslsmith_f_op_vec4_f32(ceil(global1.b)), -3036i ^ u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d, u_input.a, 3522u, 4294967295u), vec4<u32>(14270u, u_input.a, global1.d, 0u))), _wgslsmith_div_vec2_i32(-u_input.c.zx, firstLeadingBit(vec2<i32>(u_input.c.x, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -437f));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u), ~global1.d, ~var_1.a.a.d), ~(vec3<u32>(37379u, 63603u, 15358u) | (vec3<u32>(u_input.a, 4058u, var_1.a.a.d) ^ vec3<u32>(59642u, u_input.a, global1.d)))), var_1.a.a, 0u);
    var var_3 = select(reverseBits(vec2<u32>(abs(var_2.b.d), var_2.a & 7988u)), _wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(74140u, 46368u)) >> (countOneBits(~vec2<u32>(var_1.a.a.d, 27280u)) % vec2<u32>(32u)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(18961u, global1.d) | vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, 1u)))), select(!select(vec2<bool>(true, false), vec2<bool>(var_1.a.a.a.x, false), arg_1.x), arg_1.yy, any(vec2<bool>(all(vec2<bool>(var_1.a.a.a.x, arg_2)), func_3(var_2, var_1.a.a, vec2<bool>(arg_0, false), global1.b.x)))));
    let var_4 = global1.c;
    return Struct_1(var_2.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a.b + vec4<f32>(global1.b.x, var_1.b, -462f, var_2.b.b.x)))), global1.c, countOneBits((global1.d | max(4294967295u, u_input.a)) >> (_wgslsmith_mult_u32(u_input.a, var_1.a.a.d) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: f32) -> vec3<bool> {
    global2 = array<bool, 3>();
    global2 = array<bool, 3>();
    var var_0 = abs(vec4<i32>(arg_1.b.x, 1i, 28760i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.c, 9455i), u_input.c.x & u_input.c.x, _wgslsmith_mult_i32(47998i, arg_1.b.x))) ^ u_input.c);
    let var_1 = firstLeadingBit(vec4<i32>(func_4(arg_0.a.x, arg_0.a, !(!global1.a.x)).c, -3064i, 82672i, ~(-(4230i ^ u_input.c.x))));
    let var_2 = var_1.wzw;
    return func_4(func_3(Struct_3(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_div_u32(32209u, 17690u)), func_4(global1.a.x | arg_0.a.x, arg_1.a.a, false), abs(0u)), Struct_1(!select(arg_1.a.a, vec3<bool>(true, true, true), vec3<bool>(arg_2.x, arg_0.a.x, false)), arg_1.a.b, 27162i, global1.d), select(vec2<bool>(true, false), func_4(var_0.x < 3501i, select(vec3<bool>(false, true, arg_0.a.x), arg_1.a.a, vec3<bool>(arg_1.a.a.x, global1.a.x, true)), select(arg_2.x, arg_1.a.a.x, false)).a.zy, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(arg_3 - arg_1.a.b.x)))), arg_0.a, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.d, _wgslsmith_mod_u32(abs(1u), ~u_input.a) | ~func_4(false, arg_0.a, true).d), 3u)]).a;
}

fn func_1() -> u32 {
    var var_0 = u_input.b.x;
    let var_1 = select(func_5(func_4(true, vec3<bool>(func_2(global1.b.yx, u_input.c.wyy), global2[_wgslsmith_index_u32(firstTrailingBit(31281u), 3u)], false && global1.a.x), !(!global1.a.x)), Struct_2(func_4(global2[_wgslsmith_index_u32(u_input.a, 3u)] | global2[_wgslsmith_index_u32(u_input.a, 3u)], global1.a, all(vec3<bool>(global1.a.x, global1.a.x, false))), vec2<i32>(1i, 36812i)), !vec2<bool>(true, false || global2[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))) - _wgslsmith_f_op_f32(-global1.b.x))), !vec3<bool>(false, true, any(!global1.a)), func_5(func_4(!(global1.b.x <= 296f), global1.a, true), global0[_wgslsmith_index_u32(~(~abs(4294967295u)), 27u)], !global1.a.xx, _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f * global1.b.x)))));
    var var_2 = vec4<u32>(~13218u, _wgslsmith_div_u32(~17042u, 1u), abs(0u), ~global1.d);
    let var_3 = global1.a.x;
    var var_4 = global1.c;
    return _wgslsmith_mult_u32(global1.d, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_1(), u_input.a), ~(~vec2<u32>(u_input.a, 1u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global1.d, u_input.a))), vec2<u32>(~(1217u << (global1.d % 32u)), 4294967295u)));
    global2 = array<bool, 3>();
    var var_1 = vec4<bool>(false, true, global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -515f) <= _wgslsmith_f_op_f32(-global1.b.x));
    var_1 = !vec4<bool>(true, func_5(func_4(true, global1.a, true), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.d, u_input.a), 27u)], !(!var_1.yw), global1.b.x).x, all(vec4<bool>(func_3(Struct_3(global1.d, Struct_1(global1.a, global1.b, u_input.b.x, u_input.a), global1.d), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(global1.d, 3u)], true, var_1.x), global1.b, u_input.c.x, u_input.a), vec2<bool>(false, false), global1.b.x), global1.b.x < -154f, false, global1.a.x)), global1.b.x > _wgslsmith_f_op_f32(ceil(global1.b.x)));
    let var_2 = func_4(func_2(global1.b.yy, abs(u_input.c.wyx) ^ u_input.c.yyz), select(var_1.wyw, global1.a, func_5(Struct_1(select(var_1.xww, vec3<bool>(false, true, var_1.x), var_1.wyy), _wgslsmith_f_op_vec4_f32(-global1.b), -2147483647i, ~63121u), Struct_2(Struct_1(var_1.wyz, global1.b, u_input.c.x, 4294967295u), select(vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(global1.c, u_input.b.x), vec2<bool>(var_1.x, var_1.x))), select(var_1.zy, func_4(false, vec3<bool>(false, global1.a.x, true), global1.a.x).a.zz, true), global1.b.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global1.b.zyy + var_2.b.xyy), var_2.b, vec3<u32>(1u, global1.d, u_input.a));
}


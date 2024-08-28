struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(22182u, vec4<i32>(i32(-2147483648), 0i, -89594i, 1i)), Struct_2(1u, vec4<i32>(-8662i, 517i, 2147483647i, 4173i)), Struct_2(18690u, vec4<i32>(16750i, 7615i, i32(-2147483648), -23313i)));

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-143f, -266f, -887f), vec3<f32>(485f, 573f, 104f), vec3<f32>(714f, 1687f, -2242f), vec3<f32>(1004f, -444f, 1730f), vec3<f32>(-1039f, -1940f, -1108f), vec3<f32>(-670f, 443f, 1000f), vec3<f32>(158f, -754f, 1399f), vec3<f32>(695f, 1732f, -134f), vec3<f32>(-177f, -1000f, -726f), vec3<f32>(-762f, -351f, -678f), vec3<f32>(-1215f, -1351f, 439f), vec3<f32>(732f, -2161f, -1534f), vec3<f32>(-971f, 920f, 1296f), vec3<f32>(1000f, -1110f, 1228f), vec3<f32>(1376f, 653f, -192f));

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(0u, 58576u, 4294967295u), 15105i, vec3<i32>(0i, -14712i, 2147483647i));

var<private> global4: vec2<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    global4 = ~global3.a.yx;
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * -1473f)), 517f));
    global0 = array<Struct_2, 3>();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(global1[_wgslsmith_index_u32(0u, 15u)]));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_0.x, var_1.x);
    return select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), !(!all(vec3<bool>(true, false, true)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec2<bool>(false, false))), select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), true), vec3<bool>(false, true, true)), select(false, false, true));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_2, 3>();
    var var_0 = select(func_3(), !(!vec3<bool>(arg_0.x, true, true)), select(!select(arg_0, arg_0, arg_0), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, false, true)));
    var_0 = select(!select(vec3<bool>(true, true, true), !arg_0, select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0, all(arg_0))), arg_0, vec3<bool>(all(func_3().xz), !all(vec2<bool>(true, var_0.x)), all(!select(arg_0, vec3<bool>(false, false, arg_0.x), arg_0))));
    global0 = array<Struct_2, 3>();
    let var_1 = _wgslsmith_mod_u32(global3.a.x, min(global4.x, ~global4.x)) > ~min(_wgslsmith_dot_vec2_u32(max(global3.a.yx, global3.a.xz), ~vec2<u32>(4294967295u, arg_1)), countOneBits(arg_1 << (1u % 32u)));
    return Struct_1(min(vec3<u32>(~arg_1, global3.a.x << (u_input.a % 32u), _wgslsmith_div_u32(4294967295u, global4.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(global2.a, u_input.a, global2.a), vec3<u32>(u_input.a, u_input.a, u_input.a) << (global3.a % vec3<u32>(32u)))) | abs(select(vec3<u32>(100737u, global2.a, 64954u), ~vec3<u32>(arg_1, 25694u, 0u), var_0.x)), -min(1i, _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec4_i32(global2.b, global2.b))), select(vec3<i32>(global3.b, -4069i, 25961i), select(max(vec3<i32>(global3.c.x, 24400i, global2.b.x), vec3<i32>(-2147483647i, -17966i, u_input.b)), -vec3<i32>(1i, global2.b.x, u_input.b) ^ (global3.c >> (vec3<u32>(0u, 41650u, 1u) % vec3<u32>(32u))), arg_0), !(!func_3())));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: bool) -> i32 {
    var var_0 = ~global3.c.x << (~global2.a % 32u);
    let var_1 = Struct_2(min(1u, ~global2.a), vec4<i32>(-2629i, global3.b, arg_0.c.x, 2147483647i));
    let var_2 = ~arg_2.x ^ ~abs(1u);
    var var_3 = !(!arg_3 && true) != false;
    var var_4 = Struct_1(abs(firstTrailingBit(global3.a)), _wgslsmith_add_i32(reverseBits(_wgslsmith_mult_i32(u_input.b & arg_0.b, arg_0.b)), abs(_wgslsmith_dot_vec3_i32(arg_0.c, vec3<i32>(var_1.b.x, -40810i, u_input.b)))), firstLeadingBit(countOneBits(abs(vec3<i32>(u_input.b, -1i, -3419i)))));
    return abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(58879i, var_4.c.x), -vec2<i32>(u_input.b, var_1.b.x)), -1i)) << (arg_1 % 32u);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = global2.b.x;
    let var_1 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(3403u, abs(reverseBits(18674u)), 1u, ~_wgslsmith_dot_vec2_u32(global3.a.yx, vec2<u32>(arg_2.a, 4294967295u))), ~countOneBits(vec4<u32>(26629u, u_input.a, u_input.a, 15604u))));
    global3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~abs(var_1.zw), global3.a.yx), _wgslsmith_mod_u32(41101u | abs(global2.a), _wgslsmith_mod_u32(global3.a.x, select(1u, 10770u, arg_0.x))), 0u), arg_3.x, countOneBits(vec3<i32>(_wgslsmith_add_i32(0i, u_input.b), -u_input.b, (7083i >> (global3.a.x % 32u)) | func_2(vec3<bool>(arg_1.x, false, arg_0.x), 1u).b)));
    global0 = array<Struct_2, 3>();
    var var_2 = global0[_wgslsmith_index_u32(4201u, 3u)];
    return Struct_1(var_1.yzy, _wgslsmith_clamp_i32(global2.b.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global3.c.x, global3.b, arg_3.x), global2.b.x, _wgslsmith_dot_vec3_i32(var_2.b.wyy, arg_2.b.yww)) << (((48462u & global4.x) ^ _wgslsmith_clamp_u32(global4.x, global2.a, 57181u)) % 32u), ~firstLeadingBit(i32(-1i) * -2147483647i)), -abs(func_2(!vec3<bool>(arg_0.x, true, false), arg_2.a).c));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(vec3<bool>(false, true, !(0u > u_input.a)), select(vec2<bool>((-6485i != global3.c.x) && true, all(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), Struct_2(~u_input.a, countOneBits(global2.b)), vec2<i32>(countOneBits(~(u_input.b << (0u % 32u))), func_4(func_2(vec3<bool>(false, true, true), ~4996u), 40132u, (vec2<u32>(0u, u_input.a) & vec2<u32>(33766u, global3.a.x)) << (global3.a.yy % vec2<u32>(32u)), true)));
    var var_1 = func_2(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), true && any(vec2<bool>(false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1285f)) * _wgslsmith_div_f32(194f, 1000f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1400f) * _wgslsmith_f_op_f32(step(1631f, -164f)))), ~reverseBits(firstTrailingBit(1u)));
    let var_2 = firstTrailingBit(_wgslsmith_div_vec4_i32(global2.b, global2.b));
    var var_3 = -142f;
    var var_4 = func_5(!select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true))), false), Struct_2(global3.a.x & (min(global3.a.x, global2.a) & _wgslsmith_sub_u32(53154u, global2.a)), global2.b), -_wgslsmith_clamp_vec2_i32(select(-var_1.c.yx, vec2<i32>(36947i, var_1.b), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), countOneBits(firstLeadingBit(vec2<i32>(23247i, -2147483647i))), _wgslsmith_mult_vec2_i32(var_1.c.zz, global3.c.zz) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 34467u), var_0.a.zy) % vec2<u32>(32u))));
    return Struct_1(vec3<u32>(countOneBits(0u), 4294967295u, global4.x), _wgslsmith_sub_i32(~_wgslsmith_div_i32(var_1.b, 2147483647i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(reverseBits(2147483647i), u_input.b, 1i), -1i)), vec3<i32>(-_wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec2_i32(var_2.wz, global3.c.yy)), -_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(var_4.b, 1i, var_2.x, 19612i)), global3.c.x & ~(~79837i)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global4 = _wgslsmith_add_vec2_u32(min(global3.a.yz, vec2<u32>(84070u, ~(~global2.a))), arg_0.a.xx);
    global2 = global0[_wgslsmith_index_u32(1u, 3u)];
    global2 = global0[_wgslsmith_index_u32(11245u, 3u)];
    var var_0 = !vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1282f) == _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(686f, 254f, true))));
    let var_1 = global2.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(max(global2.a, 1u), max(countOneBits(_wgslsmith_clamp_vec4_i32(global2.b, vec4<i32>(u_input.b, -25992i, u_input.b, global2.b.x), vec4<i32>(-1i, global3.b, global3.b, global2.b.x))) ^ vec4<i32>(global2.b.x, -u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b), global3.b), global2.b));
    global3 = func_6(func_1());
    var var_1 = -vec3<i32>(_wgslsmith_clamp_i32(u_input.b, ~(-global3.b), reverseBits(func_4(Struct_1(global3.a, 67720i, vec3<i32>(global2.b.x, u_input.b, -25252i)), global3.a.x, global3.a.zz, true))), u_input.b, var_0.b.x | _wgslsmith_mod_i32(func_1().b, _wgslsmith_add_i32(global3.c.x, 0i)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(33405u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(111519u, u_input.a, 1u), vec3<u32>(32749u, u_input.a, 8156u)) << (global3.a % vec3<u32>(32u)), global3.a)), 3u)];
    var var_2 = abs(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a, 4294967295u, var_0.a, 9880u), vec4<u32>(min(0u, u_input.a), ~20258u, ~4313u, ~global3.a.x)), vec4<u32>(_wgslsmith_div_u32(global2.a, 50885u & u_input.a), u_input.a, ~var_0.a, ~global4.x ^ func_6(Struct_1(global3.a, u_input.b, vec3<i32>(u_input.b, global3.c.x, -36644i))).a.x), true));
    var var_3 = ~(-2147483647i);
    var var_4 = vec4<i32>(var_1.x, 0i, -21618i, -1i);
    let var_5 = Struct_2(u_input.a, abs(reverseBits(~vec4<i32>(var_0.b.x, global3.b, var_0.b.x, var_1.x) ^ min(global2.b, vec4<i32>(-80421i, global3.b, -34077i, var_4.x)))));
    global2 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1i), min(global3.a.zx, func_2(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), firstTrailingBit(1u)).a.xz), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-7567i, abs(u_input.b) >> ((84908u ^ global3.a.x) % 32u)), 26622i), max(func_2(!func_3(), countOneBits(var_5.a)).a.x, 1u));
}


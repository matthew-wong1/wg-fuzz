struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<i32, 24> = array<i32, 24>(21795i, -1i, 1i, 0i, -24941i, i32(-2147483648), 929i, -5320i, 1i, 2147483647i, 2147483647i, 0i, 2147483647i, 1i, 20011i, -81460i, -1i, 2147483647i, -1i, 18947i, -1i, 14959i, i32(-2147483648), -429i);

var<private> global3: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = max(abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d.x, 0u, u_input.b.x), vec3<u32>(1u, 0u, 11863u), _wgslsmith_mult_vec3_u32(vec3<u32>(64759u, arg_0, 81701u), vec3<u32>(80450u, 1u, 51723u))), ~(~vec3<u32>(global0.a, global3.c.d.x, global0.d.x)))), vec3<u32>(~global0.d.x >> (~1u % 32u), ~arg_0 & 1u, 1u) >> ((max(~vec3<u32>(arg_0, 13180u, u_input.b.x), ~vec3<u32>(arg_0, global0.d.x, 0u)) << ((vec3<u32>(1u, 30038u, global3.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.d.x, global0.d.x, global3.b)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) * -513f), 223f)))));
    var var_1 = global3.c;
    var_0 = _wgslsmith_add_vec3_u32(min(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, 27467u, global0.a), ~vec3<u32>(4294967295u, 34875u, var_1.d.x)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, global0.d.x, global3.b), vec3<u32>(1u, var_0.x, global0.d.x)), abs(select(~vec3<u32>(60966u, global3.b, 0u), ~vec3<u32>(u_input.c, 1u, 4294967295u), false))), ~(~vec3<u32>(abs(62737u), 4294967295u, _wgslsmith_dot_vec2_u32(var_1.d, global0.d))));
    let var_2 = vec4<bool>(true, !select(global3.c.b.x, any(vec3<bool>(global0.b.x, false, global0.b.x)), (global0.d.x >> (arg_0 % 32u)) > 78008u), !(global3.c.b.x == true), any(select(global0.b.zz, vec2<bool>(true, false), true)));
    return _wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(281f)), 576f), 393f, var_1.b.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(411f));
    var var_1 = Struct_3(true, !(!vec3<bool>(!global0.b.x, global3.c.b.x | arg_1.a.x, true)), global3.b, reverseBits(~arg_1.d.a), global3.c);
    global0 = Struct_1(~46695u, var_1.e.b, 1i, ~(~(~(arg_0 | arg_0))));
    global2 = array<i32, 24>();
    var var_2 = arg_1.b.b;
    return true & !(global0.b.x || !global0.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(global0.d, Struct_5(vec4<bool>(select(arg_0.c >= 13074i, !global3.c.b.x, false), false, all(select(vec4<bool>(arg_0.b.x, global3.a, arg_0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, global0.b.x, global3.c.b.x), vec4<bool>(true, true, global0.b.x, global3.a))), arg_0.b.x), Struct_2(vec4<i32>(-arg_0.c, -50507i, -15209i, ~(-1i)), ~_wgslsmith_add_vec4_u32(vec4<u32>(22652u, 4294967295u, 1u, 43232u), vec4<u32>(1136u, global0.a, arg_0.a, global3.c.d.x)), _wgslsmith_f_op_f32(func_3(~global3.b))), vec3<f32>(181f, -127f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(351f, -158f))), Struct_2(min(u_input.a, abs(vec4<i32>(-25719i, global0.c, -8641i, 0i))), _wgslsmith_mult_vec4_u32(~vec4<u32>(33352u, arg_0.a, 37051u, u_input.c), ~vec4<u32>(45767u, 82747u, global0.d.x, 44331u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -178f))))), vec3<f32>(1f, 1f, 1f), firstLeadingBit(2147483647i) ^ _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.c, -2147483647i) << (_wgslsmith_mod_u32(68979u, 1u) % 32u), countOneBits(0i)));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(abs(u_input.a) ^ vec4<i32>(-4790i, -336i, reverseBits(arg_1), firstLeadingBit(-19072i)), vec4<i32>(_wgslsmith_mod_i32(1i, global0.c), select(_wgslsmith_dot_vec3_i32(u_input.a.xwz, u_input.a.xwz), global2[_wgslsmith_index_u32(74914u, 24u)], true), ~(arg_0.c | -2147483647i), global0.c)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.d.x, 43591u), ~arg_0.d.x, 50183u), ~_wgslsmith_add_u32(0u, 4294967295u)), 14822u ^ (global3.b | global0.d.x), 46284u, ~arg_0.a), -209f);
    var var_2 = Struct_3((arg_0.a & global0.a) != reverseBits(countOneBits(u_input.d.x)), vec3<bool>(true, any(select(select(vec3<bool>(global0.b.x, false, false), global0.b, global3.a), vec3<bool>(arg_0.b.x, global0.b.x, global3.c.b.x), true)), var_1.a.x < ~(arg_1 ^ u_input.a.x)), max(0u, _wgslsmith_clamp_u32((1u << (global0.a % 32u)) << (max(global3.c.a, var_1.b.x) % 32u), u_input.c, 20543u)), var_1.a, arg_0);
    var var_3 = u_input.a.x;
    var var_4 = Struct_5(vec4<bool>(!(!var_2.e.b.x), !(_wgslsmith_f_op_f32(-var_1.c) >= _wgslsmith_f_op_f32(f32(-1f) * -2444f)), !(!var_2.e.b.x), func_4(vec2<u32>(0u, 1135u), Struct_5(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), Struct_2(vec4<i32>(var_1.a.x, 2147483647i, var_1.a.x, arg_0.c), var_1.b, var_1.c), vec3<f32>(var_1.c, -198f, 991f), Struct_2(var_1.a, vec4<u32>(var_1.b.x, u_input.b.x, global3.c.d.x, 4294967295u), var_1.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.c, -1323f, 1370f))), arg_0.c << (global0.a % 32u)) & true), var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, var_1.c, var_1.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, var_1.c, 338f)))))), var_1);
    return Struct_1(max(~_wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.b.xxw), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.e.d.x, global0.a, 61005u), var_4.d.b.wxw)), var_4.b.b.x), vec3<bool>(var_4.a.x, true, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.d, u_input.b), 22283u) != 4294967295u), arg_0.c, arg_0.d);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5) -> vec3<bool> {
    global0 = func_2(Struct_1(46165u, arg_1.a.wxz, 1i, vec2<u32>(arg_1.b.b.x, arg_1.d.b.x)), 0i);
    global2 = array<i32, 24>();
    let var_0 = Struct_5(!arg_1.a, Struct_2(vec4<i32>(i32(-1i) * -global2[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_mod_i32(select(global3.c.c, 1i, global3.c.b.x), 2147483647i), _wgslsmith_sub_i32(global3.c.c, _wgslsmith_dot_vec3_i32(u_input.a.zww, u_input.a.wwz)), _wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.a.zzw) | countOneBits(-2147483647i)), min(firstLeadingBit(~vec4<u32>(u_input.c, global3.c.a, arg_0.c.d.x, 3812u)), arg_1.b.b), _wgslsmith_f_op_f32(f32(-1f) * -681f)), _wgslsmith_f_op_vec3_f32(sign(arg_1.c)), Struct_2(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), firstLeadingBit(arg_1.d.b), -346f));
    var var_1 = arg_0.c;
    global1 = 990f;
    return !vec3<bool>(!arg_1.a.x, any(select(func_2(Struct_1(arg_0.c.a, arg_0.c.b, global3.c.c, arg_1.b.b.yw), var_0.b.a.x).b, select(arg_1.a.zyw, vec3<bool>(global0.b.x, arg_1.a.x, arg_1.a.x), global3.c.b.x), global0.b)), !global3.c.b.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    var var_0 = func_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.a, 1u), 69888u), ~1u), vec3<bool>(all(!global0.b.xy), false, true), u_input.a.x, firstLeadingBit(vec2<u32>(97820u, max(arg_0.x, 103556u)))), global0.c);
    global3 = Struct_4(true, ~1u, global3.c);
    var var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.c, ~abs(u_input.a.x), -66852i), arg_2.d.yzy & vec3<i32>(i32(-1i) * -29753i, abs(global0.c), -arg_2.e.c));
    let var_2 = Struct_3(false, global0.b, _wgslsmith_add_u32(global3.b, firstLeadingBit(_wgslsmith_mod_u32(33051u, global3.c.a) & (global3.b & 74771u))), select(u_input.a, abs(~arg_2.d & vec4<i32>(u_input.a.x, 17092i, 37916i, u_input.a.x)), true | !arg_1.x), Struct_1(~(4294967295u | global0.a), vec3<bool>(true, reverseBits(var_0.a) == 25052u, false), ~(arg_2.e.c & var_1.x), (vec2<u32>(global0.a, u_input.b.x) << (~global3.c.d % vec2<u32>(32u))) >> (vec2<u32>(~arg_0.x, ~4294967295u) % vec2<u32>(32u))));
    global0 = Struct_1(18329u, func_2(func_2(func_2(var_2.e, 0i), u_input.a.x), ~_wgslsmith_sub_i32(-17671i, 25664i)).b, 6747i, global0.d);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.c;
    let var_0 = select(u_input.d.x, ~_wgslsmith_add_u32(global3.b, reverseBits(_wgslsmith_mult_u32(u_input.b.x, 4294967295u))), !(!func_5(abs(vec4<u32>(global3.b, 0u, 1u, 52246u)), func_1(Struct_4(true, u_input.b.x, Struct_1(u_input.d.x, global0.b, -1i, vec2<u32>(1u, 70398u))), Struct_5(vec4<bool>(true, global3.a, true, global3.a), Struct_2(vec4<i32>(global0.c, global2[_wgslsmith_index_u32(u_input.c, 24u)], 9244i, 39148i), vec4<u32>(1u, global0.d.x, 0u, 26127u), -425f), vec3<f32>(1952f, -1173f, -1283f), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, 0i, global3.c.c), vec4<u32>(21287u, global3.c.d.x, u_input.c, u_input.c), 1077f))), Struct_3(global3.c.b.x, vec3<bool>(global0.b.x, global0.b.x, global3.a), global3.b, vec4<i32>(3582i, global0.c, -41334i, u_input.a.x), global3.c))));
    let var_1 = Struct_3(false, select(global3.c.b, global0.b, true), var_0, ~(vec4<i32>(0i, global0.c, u_input.a.x, min(global2[_wgslsmith_index_u32(20290u, 24u)], global2[_wgslsmith_index_u32(global0.d.x, 24u)])) << ((vec4<u32>(global3.b, 3122u, 4294967295u, u_input.c) << (abs(vec4<u32>(1u, 8449u, var_0, var_0)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(max(_wgslsmith_div_u32(36305u, min(u_input.d.x, 1u)), ~_wgslsmith_div_u32(88974u, 1u)), select(vec3<bool>(true, func_4(vec2<u32>(global3.c.d.x, 11175u), Struct_5(vec4<bool>(true, true, false, global3.c.b.x), Struct_2(vec4<i32>(u_input.a.x, 43404i, -1i, -2147483647i), vec4<u32>(global0.a, 20216u, 41577u, 4294967295u), 1376f), vec3<f32>(261f, 1940f, 1000f), Struct_2(u_input.a, vec4<u32>(global3.c.a, 1u, var_0, global3.c.d.x), 593f)), vec3<f32>(205f, -874f, 181f), global3.c.c), !global0.b.x), global0.b, global0.b), 18528i, vec2<u32>(~29640u << ((global3.c.a << (global0.a % 32u)) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, 0u, u_input.c, 1u), vec4<u32>(30413u, 1u, global0.d.x, 0u)))));
    var var_2 = Struct_4(!all(global0.b), var_1.e.a, global3.c);
    var var_3 = var_2.c;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f) - _wgslsmith_f_op_f32(f32(-1f) * -327f)) - _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(f32(-1f) * -775f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1373f - -1047f), _wgslsmith_f_op_f32(f32(-1f) * -978f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(306f, -563f))))));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -942f)) * -158f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(-27191i, global2[_wgslsmith_index_u32(4294967295u, 24u)]) & firstLeadingBit(-2147483647i)), countOneBits(select(-u_input.a.x, abs(2147483647i), true))));
}


struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<bool, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec2<i32> {
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(~(~(~vec3<u32>(4294967295u, 84183u, u_input.a))) | ~(~(~vec3<u32>(4294967295u, var_0, 47876u))));
    let var_2 = false;
    let var_3 = arg_1;
    var_1 = Struct_2(max(vec3<u32>(u_input.a, 9381u, ~51827u), var_1.a | max(_wgslsmith_mult_vec3_u32(vec3<u32>(21251u, 1u, var_1.a.x), vec3<u32>(u_input.a, 28671u, var_0)), vec3<u32>(var_1.a.x, 1715u, 0u))));
    return vec2<i32>(-_wgslsmith_sub_i32(~arg_1, arg_1), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_0, var_3, -11819i, -11282i)), -abs(~vec4<i32>(var_3, 2147483647i, var_3, 11639i))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = -(func_3(-48286i, firstTrailingBit(u_input.e) << (_wgslsmith_mult_u32(16278u, 1u) % 32u)) >> ((vec2<u32>(u_input.d.x, 0u) | ~(~vec2<u32>(u_input.c.x, 4294967295u))) % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1520f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + arg_0), vec3<bool>(false, (0i == var_0.x) | true, global0[_wgslsmith_index_u32(21008u, 1u)]), reverseBits(firstLeadingBit(8833i)) >> (abs(u_input.c.x) % 32u), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(79730u, 1u)], global0[_wgslsmith_index_u32(2995u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global1[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(16787u, 1u)], global1[_wgslsmith_index_u32(1u, 20u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)], false)), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)])), select(var_0.x < var_0.x, global1[_wgslsmith_index_u32(abs(35095u), 20u)], false))), _wgslsmith_f_op_f32(arg_0 - arg_0), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), true), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(76198u, 20u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 20u)]), global1[_wgslsmith_index_u32(u_input.a, 20u)]), false && global0[_wgslsmith_index_u32(u_input.c.x, 1u)])));
    var var_2 = Struct_1(var_1.a.e.wy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(140f - -710f), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(select(-433f, _wgslsmith_f_op_f32(arg_0 + arg_0), any(vec2<bool>(var_1.c.x, true)))))))), !var_1.a.e.wwx, 2147483647i, !select(var_1.a.e, !(!var_1.a.e), var_1.c.x));
    var_2 = var_1.a;
    let var_3 = Struct_3(Struct_1(var_2.c.yx, _wgslsmith_f_op_f32(-var_2.b), !vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a, 20u)], arg_0 == -1441f, var_1.a.a.x), ~(~countOneBits(-1i)), !select(select(var_2.e, var_2.e, vec4<bool>(global1[_wgslsmith_index_u32(45627u, 20u)], true, global1[_wgslsmith_index_u32(23177u, 20u)], var_2.c.x)), select(var_1.a.e, var_2.e, false), var_2.e)), -1480f, !var_2.e.xyw);
    return Struct_1(!vec2<bool>(any(var_1.a.c), any(var_1.a.e)), 497f, !vec3<bool>(select(select(false, var_1.c.x, var_1.a.e.x), var_2.e.x, true), any(vec4<bool>(false, true, false, false)), false), 1621i, !(!select(var_3.a.e, var_1.a.e, any(vec4<bool>(true, true, false, var_2.e.x)))));
}

fn func_1() -> u32 {
    global0 = array<bool, 1>();
    global1 = array<bool, 20>();
    var var_0 = u_input.e & ((i32(-1i) * -u_input.e) >> (u_input.c.x % 32u));
    var var_1 = func_2(-1000f);
    var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -2382f));
    return ~_wgslsmith_sub_u32(~max(35786u, countOneBits(u_input.a)), ~(81049u ^ u_input.d.x));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(vec3<u32>(46776u, u_input.c.x, ~countOneBits(3521u | arg_0)));
    var var_1 = vec2<u32>(0u, arg_0 >> (1u % 32u));
    var var_2 = arg_1.a.d;
    let var_3 = func_2(_wgslsmith_f_op_f32(abs(arg_1.a.b))).a.x;
    var_1 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, func_1()), var_0.a.x), _wgslsmith_sub_u32(~1u, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0, 4294967295u, 49526u), ~1u)));
    return arg_1.a;
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    global1 = array<bool, 20>();
    let var_0 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * 2129f), _wgslsmith_f_op_f32(f32(-1f) * -564f)))) <= _wgslsmith_f_op_f32(trunc(arg_0.b)));
    global0 = array<bool, 1>();
    let var_1 = arg_0;
    let var_2 = arg_0;
    return Struct_2(firstLeadingBit(vec3<u32>(1u, 1u, reverseBits(~u_input.c.x))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 467f;
    global1 = array<bool, 20>();
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.a.x ^ 5107u), vec3<u32>(22721u, 19781u << (arg_0.a.x % 32u), abs(u_input.a))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 41091u, 16129u, arg_0.a.x), ~vec4<u32>(561u, u_input.c.x, u_input.a, u_input.c.x)), 19846u), 1u), vec4<u32>(~1u, 4294967295u, 4294967295u, ~(~firstLeadingBit(4294967295u))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-func_4(62187u, Struct_3(Struct_1(arg_1.e.zx, arg_1.b, arg_1.e.zyx, 2147483647i, arg_1.e), arg_1.b, arg_1.c)).b)))), _wgslsmith_f_op_f32(133f - 467f)));
    let var_2 = !(!vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.wy, u_input.c), 1u)] & true, var_1.x == var_1.x, true));
    return Struct_1(vec2<bool>(false, arg_1.c.x), arg_1.b, !func_4(var_1.x, Struct_3(func_2(arg_1.b), _wgslsmith_f_op_f32(arg_1.b + arg_1.b), vec3<bool>(var_2.x, arg_1.c.x, arg_1.c.x))).e.zzx, abs(_wgslsmith_mult_i32(-arg_1.d, ~15248i)), arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -510f;
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    var var_1 = Struct_2(reverseBits(vec3<u32>(~101890u, u_input.a, 1u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(32542u, u_input.a, 4294967295u))));
    let var_2 = func_6(func_5(Struct_3(func_4(func_1(), Struct_3(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(11687u, 1u)], global0[_wgslsmith_index_u32(34408u, 1u)]), 183f, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(var_1.a.x, 20u)]), u_input.b, vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.a.x, 1u)], true, global1[_wgslsmith_index_u32(45323u, 20u)])), 612f, vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 1u)], false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(104f)) + _wgslsmith_f_op_f32(1396f * 1000f)), !(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], false, false))), global1[_wgslsmith_index_u32(u_input.d.x, 20u)]), Struct_1(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), select(func_2(-1013f).a, vec2<bool>(global0[_wgslsmith_index_u32(1370u, 1u)], false), func_2(1428f).c.x), !(!global1[_wgslsmith_index_u32(var_1.a.x, 20u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(628f * -580f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(672f * 1139f) + _wgslsmith_f_op_f32(trunc(1277f)))), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(28874u, 1u)], false, false)), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], true)), select(select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 20u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(107502u, 20u)], false)), vec3<bool>(true, global0[_wgslsmith_index_u32(88718u, 1u)], global0[_wgslsmith_index_u32(28868u, 1u)]), func_2(837f).e.yyw)), firstLeadingBit(_wgslsmith_mult_i32(-21074i >> (u_input.a % 32u), _wgslsmith_sub_i32(15053i, u_input.b))), func_2(-1023f).e));
    let var_3 = func_6(Struct_2(reverseBits(_wgslsmith_div_vec3_u32(max(vec3<u32>(28348u, var_1.a.x, 4294967295u), var_1.a), vec3<u32>(u_input.a, var_1.a.x, 0u)))), Struct_1(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1552f, 349f)) - var_2.b), var_2.c, u_input.e ^ (u_input.b ^ (var_2.d ^ 1i)), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 1u)], global0[_wgslsmith_index_u32(1488u, 1u)], var_2.e.x, false))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -607f);
    var var_4 = func_5(Struct_3(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -610f), 565f, false))), _wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1413f)))), !var_3.e.zyy), !(!all(select(var_2.c, vec3<bool>(global0[_wgslsmith_index_u32(64677u, 1u)], global0[_wgslsmith_index_u32(50906u, 1u)], true), vec3<bool>(true, false, var_2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-min(-48283i, -2147483647i), reverseBits(var_3.d), _wgslsmith_div_i32(-1i, var_3.d), func_6(func_5(Struct_3(Struct_1(vec2<bool>(false, false), 1335f, var_2.e.yyw, u_input.e, var_2.e), -722f, var_3.c), false), var_2).d), _wgslsmith_sub_i32(var_2.d, 16852i ^ _wgslsmith_mult_i32(-u_input.b, countOneBits(33310i))), _wgslsmith_add_u32((~u_input.a & ~27129u) & 0u, abs(u_input.c.x) & ~1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.b, var_2.b))))) + vec2<f32>(-1116f, 773f)));
}


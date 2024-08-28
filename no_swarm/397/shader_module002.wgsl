struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    let var_0 = vec3<i32>(-_wgslsmith_dot_vec2_i32(-(vec2<i32>(13291i, -3594i) << (u_input.a.xx % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(2147483647i, -51065i))), -10192i >> (_wgslsmith_clamp_u32(~(~u_input.a.x), _wgslsmith_div_u32(u_input.b, ~4294967295u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, 1u, 0u, u_input.a.x)), vec4<u32>(30540u, u_input.a.x, 1u, u_input.a.x) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, 29789u) % vec4<u32>(32u)))) % 32u), min(-33390i, 1i));
    return -reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, -1i, -2147483647i), vec3<i32>(var_0.x, -45546i, -84189i) | vec3<i32>(-8213i, var_0.x, -16911i)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(select(~u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u) >> (vec4<u32>(arg_0.x, 1283u, u_input.a.x, 80731u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, arg_0.x, 29564u), vec4<u32>(u_input.a.x, 1u, 0u, arg_0.x))), true), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -481i, -1i, -4955i), ~vec3<i32>(1i, -2147483647i, -45868i)), -(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -31649i), vec2<i32>(-30356i, 3431i)) & firstTrailingBit(vec2<i32>(-1i, -5689i)))), reverseBits(u_input.b) <= ~18307u);
    let var_1 = var_0.b;
    var_0 = Struct_3(1u, Struct_1(abs(~vec3<i32>(var_1.a.x, -47851i, var_0.b.a.x) ^ func_3()), _wgslsmith_div_vec2_i32(~select(var_1.a.xx, vec2<i32>(1i, var_0.b.a.x), var_0.c), reverseBits(var_0.b.b))), !var_0.c || any(!(!vec4<bool>(var_0.c, true, var_0.c, true))));
    var var_2 = Struct_2(var_0.b, select(select(select(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), !vec3<bool>(true, var_0.c, var_0.c)), select(!vec3<bool>(true, var_0.c, var_0.c), select(vec3<bool>(false, false, false), vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.c, false, var_0.c)), var_0.c | true), select(select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(any(vec2<bool>(true, false)) != true, true, all(select(vec3<bool>(false, false, var_0.c), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(var_0.c, true, var_0.c)))), vec3<bool>(!select(false, true, var_0.c), false | var_0.c, false)), i32(-1i) * -1i);
    var_0 = Struct_3(arg_0.x, Struct_1(vec3<i32>(~_wgslsmith_mod_i32(-1i, 47892i), ~var_1.b.x, ~firstLeadingBit(39650i)), ~_wgslsmith_clamp_vec2_i32(var_2.a.a.zz, vec2<i32>(var_1.b.x, var_2.a.a.x), _wgslsmith_mult_vec2_i32(var_0.b.b, var_2.a.a.zy))), all(vec3<bool>(var_1.b.x < var_0.b.b.x, false, var_2.b.x || false)));
    return Struct_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.b.b.x, var_0.b.b.x), var_1.b.x), -min(-15882i, var_2.a.b.x), abs(var_2.c)), vec2<i32>(~14957i, _wgslsmith_clamp_i32(~0i, var_1.b.x, 0i))), !(!vec3<bool>(false, var_2.b.x, var_2.c > var_1.b.x)), _wgslsmith_sub_i32(var_0.b.b.x, var_1.b.x) >> (_wgslsmith_clamp_u32(1u, ~(~0u), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, 4294967295u), 1u)) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    var var_0 = !arg_0.b;
    let var_1 = func_2(u_input.a.zx).a;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1610f, -1000f, 115f, 681f), vec4<f32>(1482f, 626f, 1413f, 327f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-614f, 838f, 1022f, -1000f), vec4<f32>(-178f, -135f, -477f, -2009f))))))));
    let var_3 = Struct_2(Struct_1(~(-vec3<i32>(arg_0.a.b.x, arg_3.b.b.x, -2147483647i)), vec2<i32>(abs(arg_3.b.b.x), 0i)), arg_0.b, abs(~abs(-1i)));
    var var_4 = _wgslsmith_f_op_f32(-1055f + var_2.x);
    return arg_0.a;
}

fn func_1() -> i32 {
    let var_0 = ~(-6964i | ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-34332i, -1i, -70573i, -1i), vec4<i32>(1i, 47836i, 5519i, -9290i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)), 1f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(ceil(var_1.x)));
    let var_3 = -967f;
    let var_4 = Struct_2(func_4(func_2(vec2<u32>(~u_input.a.x, 61548u | u_input.b)), firstLeadingBit(_wgslsmith_sub_i32(var_0 << (36833u % 32u), 1i)), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), Struct_3(22714u, Struct_1(vec3<i32>(-2147483647i, 4016i, -1i), select(vec2<i32>(-2559i, var_0), vec2<i32>(var_0, 16172i), false)), true)), !select(vec3<bool>(select(true, true, false), true, false), vec3<bool>(true, true, false), true), func_2(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(u_input.b, 14836u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 120537u, u_input.b, 42662u), vec4<u32>(u_input.a.x, 60953u, u_input.b, 1u)), 100695u))).c);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(0i, 29083i) | func_1(), ~(i32(-1i) * -8479i), ~abs(-1i)), _wgslsmith_add_vec3_i32(vec3<i32>(-47880i, ~(~(-23619i)), firstLeadingBit(~(-16421i))), abs(vec3<i32>(-54943i, ~0i, 1i))));
    var var_1 = func_2(vec2<u32>(~(u_input.a.x << ((u_input.b >> (u_input.b % 32u)) % 32u)), u_input.b));
    var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c, -1i, var_0.x), abs(func_2(vec2<u32>(u_input.b, u_input.b)).a.a)), -vec2<i32>(1i | var_1.a.b.x, 49500i)), var_1.b, ~0i);
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(select(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 1u), min(vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(54967u, u_input.a.x, u_input.a.x, 1u)), !vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true))), ~vec4<u32>(~13156u, _wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(u_input.b, 4294967295u), ~u_input.b)), ~vec4<u32>(abs(60622u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 21567u), ~u_input.b), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u), 1u), 31144u), _wgslsmith_div_vec4_u32(~vec4<u32>(abs(1u), u_input.a.x, 19979u, ~u_input.b), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u), u_input.b), 4294967295u, u_input.a.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(41282u, var_2.x, var_2.x, var_2.x) | abs(vec4<u32>(~u_input.b, u_input.b >> (0u % 32u), 4294967295u, _wgslsmith_mult_u32(44709u, 20781u))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u & u_input.b, 1u), ~vec2<u32>(64604u, 2986u) & _wgslsmith_clamp_vec2_u32(var_2.zw, u_input.a.xx, var_2.xw), vec2<u32>(~u_input.a.x, _wgslsmith_mult_u32(var_2.x, u_input.b))), u_input.a.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-858f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1307f * 688f) * _wgslsmith_div_f32(758f, 2815f)))));
}


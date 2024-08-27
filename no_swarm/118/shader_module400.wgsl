struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = arg_0.a;
    var var_1 = false;
    var_1 = arg_0.a.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.c))), -2234f)) + arg_1.a.c));
    var_1 = true;
    return firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 0u << (u_input.a % 32u)), abs(countOneBits(vec3<u32>(27350u, u_input.a, u_input.a))))) >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 4294967295u))) % vec3<u32>(32u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_2(any(vec3<bool>(true, true, true)) & false, min(1i, select(1i, select(u_input.b.x, 0i, true), all(vec2<bool>(true, true)))), -2147483647i, func_3(Struct_4(Struct_1(vec2<bool>(true, true), false, -334f, vec3<bool>(false, true, false), vec2<bool>(false, false))), Struct_4(Struct_1(vec2<bool>(true, false), false, -143f, vec3<bool>(false, false, false), vec2<bool>(false, false)))) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 5906u, 0u), vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u))), vec2<u32>(1u, 1u), (select(_wgslsmith_sub_vec2_u32(vec2<u32>(31035u, 3578u), vec2<u32>(39792u, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 97292u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)), any(vec4<bool>(false, true, true, true))) ^ countOneBits(vec2<u32>(u_input.a, u_input.a))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(36332u, 5479u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 12540u, 10833u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 34959u), u_input.a)), select(_wgslsmith_mod_u32(min(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(9239u, 22217u, 1u) ^ vec3<u32>(4294967295u, 7787u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, u_input.a))), 251u, true), ~firstTrailingBit(max(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(4225u, u_input.a, 0u))));
    var var_1 = u_input.b.zwx;
    let var_2 = Struct_2(true, 1i, -var_0.a.b, countOneBits(abs(vec3<u32>(~var_0.d, _wgslsmith_sub_u32(4294967295u, u_input.a), countOneBits(1u)))));
    var_1 = ~(vec3<i32>(firstTrailingBit(firstTrailingBit(2147483647i)), max(var_1.x, ~(-33630i)), countOneBits(reverseBits(u_input.b.x))) | min(u_input.b.xyw, u_input.b.zwy));
    var var_3 = var_0.a;
    return Struct_1(vec2<bool>(true, !any(vec3<bool>(var_2.a, true, false))), any(select(vec4<bool>(all(vec3<bool>(var_2.a, var_2.a, false)), any(vec3<bool>(true, false, var_2.a)), true, true), select(!vec4<bool>(var_2.a, var_0.a.a, false, var_3.a), select(vec4<bool>(true, true, var_3.a, false), vec4<bool>(false, var_0.a.a, true, true), true), vec4<bool>(var_3.a, false, var_0.a.a, var_0.a.a)), vec4<bool>(any(vec2<bool>(var_3.a, false)), !var_3.a, all(vec4<bool>(var_2.a, var_3.a, true, true)), all(vec3<bool>(var_2.a, var_0.a.a, var_3.a))))), -594f, vec3<bool>(true, all(select(vec2<bool>(var_2.a, var_2.a), select(vec2<bool>(false, var_0.a.a), vec2<bool>(true, var_3.a), vec2<bool>(false, false)), !vec2<bool>(var_0.a.a, false))), false && var_2.a), vec2<bool>(var_3.a, true));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = func_2();
    let var_1 = Struct_2(true, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(0i, u_input.c, 35451i, -5083i) | vec4<i32>(33451i, u_input.b.x, -61340i, u_input.b.x), u_input.b), ~select(u_input.b, u_input.b, false)), _wgslsmith_mult_vec4_i32(abs(u_input.b), vec4<i32>(reverseBits(u_input.b.x), -25398i, u_input.b.x, abs(u_input.b.x)))), 0i, select(select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, 84183u, arg_0.x), vec3<u32>(u_input.a, 0u, 1u)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 18003u, arg_0.x), vec3<u32>(arg_0.x, 21137u, u_input.a), vec3<u32>(4294967295u, u_input.a, 1u))), func_2().a.x), ~max(~vec3<u32>(arg_0.x, 18827u, 1u), vec3<u32>(arg_0.x, 15717u, 1896u) & vec3<u32>(4294967295u, u_input.a, arg_0.x)), true));
    let var_2 = true;
    var var_3 = -vec4<i32>(u_input.c, ~var_1.b, _wgslsmith_dot_vec3_i32(u_input.b.xxx, u_input.b.wzx), var_1.c);
    var var_4 = func_2();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -190f, 401f, 1566f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(617f, 559f, -1000f, -1755f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1178f - 1362f), -386f, _wgslsmith_div_f32(758f, 385f), _wgslsmith_f_op_f32(661f * 1432f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1926f, -1380f, 1815f, -1218f))), select(true, all(vec3<bool>(true, false, true)), func_1(vec2<u32>(104746u, u_input.a)))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-348f)) - _wgslsmith_f_op_f32(f32(-1f) * -868f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-513f)), _wgslsmith_div_f32(856f, -1000f))), -470f, _wgslsmith_f_op_f32(f32(-1f) * -789f)))));
    let var_1 = _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.a, 396u, 1u, 0u) & vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))) ^ select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 2943u, 74429u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, _wgslsmith_mult_u32(1u, u_input.a), u_input.a, 22242u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), 1i <= select(u_input.b.x, u_input.c, true)), max(vec4<u32>(min(u_input.a, 13285u), _wgslsmith_div_u32(u_input.a, 85524u), 51241u, 22087u), ~(vec4<u32>(u_input.a, 9305u, 1u, 4294967295u) >> (vec4<u32>(u_input.a, 0u, 0u, 4294967295u) % vec4<u32>(32u))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1620f))))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_div_f32(-642f, 578f), var_0.x, _wgslsmith_div_f32(1819f, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_0.x, 1124f, 311f)))), !any(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -1144f, 120f, -264f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -262f, var_0.x, 1435f) - vec4<f32>(var_0.x, var_0.x, 241f, var_0.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, 910f))))))));
    let var_2 = ~firstLeadingBit(vec4<u32>(var_1, 0u, reverseBits(countOneBits(54371u)), var_1 ^ 1u));
    var var_3 = Struct_5(Struct_2(true, ~(i32(-1i) * -14911i) & abs(~u_input.c), select(_wgslsmith_mult_i32(u_input.b.x, -89623i), _wgslsmith_clamp_i32(u_input.b.x, countOneBits(2652i), _wgslsmith_sub_i32(50716i, u_input.c)), any(vec2<bool>(true, true))), vec3<u32>(func_3(Struct_4(Struct_1(vec2<bool>(false, false), false, var_0.x, vec3<bool>(false, true, false), vec2<bool>(false, false))), Struct_4(Struct_1(vec2<bool>(false, false), true, var_0.x, vec3<bool>(true, false, false), vec2<bool>(true, true)))).x, _wgslsmith_sub_u32(1u, u_input.a), var_1)));
    var var_4 = select(!select(select(select(vec4<bool>(true, var_3.a.a, var_3.a.a, var_3.a.a), vec4<bool>(true, var_3.a.a, var_3.a.a, var_3.a.a), true), !vec4<bool>(var_3.a.a, false, var_3.a.a, var_3.a.a), !vec4<bool>(false, var_3.a.a, false, var_3.a.a)), select(vec4<bool>(false, var_3.a.a, var_3.a.a, true), !vec4<bool>(false, false, var_3.a.a, var_3.a.a), vec4<bool>(var_3.a.a, false, var_3.a.a, var_3.a.a)), select(!vec4<bool>(true, var_3.a.a, var_3.a.a, true), select(vec4<bool>(true, var_3.a.a, true, var_3.a.a), vec4<bool>(false, var_3.a.a, var_3.a.a, var_3.a.a), vec4<bool>(true, var_3.a.a, false, false)), select(vec4<bool>(var_3.a.a, true, var_3.a.a, var_3.a.a), vec4<bool>(var_3.a.a, var_3.a.a, false, var_3.a.a), vec4<bool>(var_3.a.a, false, var_3.a.a, true)))), !(!vec4<bool>(true, var_3.a.a, any(vec3<bool>(true, var_3.a.a, true)), any(vec3<bool>(var_3.a.a, true, var_3.a.a)))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-35571i, 0i), var_3.a.c) < 24461i);
    var_4 = !(!(!select(select(vec4<bool>(true, false, var_4.x, true), vec4<bool>(false, true, false, true), var_4.x), !vec4<bool>(var_4.x, false, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~var_3.a.c, -2147483647i));
}


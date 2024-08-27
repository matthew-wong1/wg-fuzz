struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = 1u;
    global0 = select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(any(vec2<bool>(true, u_input.a.x > -79642i)), true), all(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)))));
    global0 = select(!select(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), vec2<bool>(!global0.x, false), false), vec2<bool>(true, !(!(50892u >= var_0))), true);
    return true;
}

fn func_2() -> Struct_1 {
    global0 = select(vec2<bool>((4294967295u ^ select(0u, 4745u, global0.x)) >= firstLeadingBit(0u), !(-215f >= _wgslsmith_f_op_f32(round(550f)))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(true, true), vec2<bool>(false, global0.x)), !vec2<bool>(global0.x, global0.x)), select(!vec2<bool>(global0.x, true), vec2<bool>(true, true), !vec2<bool>(true, global0.x))), vec2<bool>(true, func_3(-u_input.a.x)), true));
    var var_0 = Struct_2(~vec4<i32>(14836i, _wgslsmith_mult_i32(u_input.a.x, -67534i) ^ ~u_input.a.x, 0i, u_input.a.x), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1506f)), -146f) - vec2<f32>(-433f, 1228f))), !(!vec3<bool>(false, !global0.x, any(vec4<bool>(false, global0.x, false, true)))), select(-countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 51301i, u_input.a.x) & vec4<i32>(0i, 17020i, -93472i, -39442i)), (-vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x) << (reverseBits(vec4<u32>(1u, 4294967295u, 81463u, 0u)) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(41592i, -2147483647i, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(-1i, -42411i, u_input.a.x, u_input.a.x))), select(vec4<bool>(true, global0.x, global0.x, global0.x), select(!vec4<bool>(false, false, global0.x, true), !vec4<bool>(global0.x, global0.x, false, global0.x), !global0.x), !vec4<bool>(true, false, global0.x, global0.x))));
    let var_1 = ~max(vec4<u32>(countOneBits(4294967295u), countOneBits(0u), countOneBits(0u), ~0u), ~vec4<u32>(1u, 1u, 1u, 1u)) ^ (vec4<u32>(~1u, firstLeadingBit(1u), 45688u, _wgslsmith_dot_vec4_u32(vec4<u32>(1581u, 78853u, 4294967295u, 1u), vec4<u32>(37462u, 1485u, 3887u, 0u))) >> (vec4<u32>(_wgslsmith_mod_u32(~0u, ~1u), _wgslsmith_clamp_u32(4294967295u, 0u, firstLeadingBit(15770u)), 1u, 1u) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.c.x)), -1000f)) * var_0.c.x);
    let var_3 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(select(959u, var_1.x, global0.x), 0u, _wgslsmith_dot_vec2_u32(var_1.zx, var_1.zw)), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, 4294967295u, 32150u), var_1.wxz & vec3<u32>(40275u, var_1.x, 4294967295u))));
    return Struct_1(~var_1.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    global0 = vec2<bool>(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-242f)))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-200f, -645f)))), !any(vec3<bool>(true, true, global0.x)));
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-u_input.a, -u_input.a), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -32447i, firstLeadingBit(u_input.a.x), u_input.a.x), -((min(u_input.a.x, u_input.a.x) ^ 1i) << (_wgslsmith_mod_u32(var_0.a & 1u, _wgslsmith_sub_u32(35341u, 5268u)) % 32u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(660f, _wgslsmith_f_op_f32(-988f * _wgslsmith_f_op_f32(floor(-1061f)))))), !(!vec3<bool>(true, false, !global0.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, min(u_input.a.x, 2147483647i), ~0i, u_input.a.x), vec4<i32>(-3648i, ~u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, -42424i, u_input.a.x, -26391i)))), u_input.a.x, 24978i, u_input.a.x));
    global0 = vec2<bool>(any(select(vec4<bool>(var_1.d.x, arg_0, false, arg_0), !vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, global0.x, false, false))) & ((all(var_1.d) | !var_1.d.x) | var_1.d.x), all(var_1.d));
    global0 = select(var_1.d.xy, vec2<bool>(select(any(vec4<bool>(arg_0, var_1.d.x, global0.x, arg_0)), all(!vec3<bool>(arg_0, global0.x, global0.x)), ~var_0.a > ~56499u), false), vec2<bool>(global0.x, true));
    return Struct_2(vec4<i32>(~_wgslsmith_sub_i32(0i, var_1.e.x), -(-2147483647i << (select(1u, 8352u, arg_0) % 32u)), -_wgslsmith_div_i32(_wgslsmith_sub_i32(15539i, u_input.a.x), countOneBits(u_input.a.x)), _wgslsmith_div_i32(i32(-1i) * -var_1.b, max(-27424i, -18365i >> (var_0.a % 32u)))), -2147483647i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) * _wgslsmith_f_op_vec2_f32(var_1.c * var_1.c)) * vec2<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(step(1701f, -228f)))), var_1.c, vec2<bool>(false, true))), var_1.d, _wgslsmith_mult_vec4_i32(firstTrailingBit(var_1.e) ^ var_1.e, ~vec4<i32>(-15845i, var_1.a.x, 12520i, var_1.a.x)) ^ (vec4<i32>(-1i) * -select(var_1.e, var_1.e, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true & !((4294967295u >> (0u % 32u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22468u, 0u, 76584u), vec4<u32>(1u, 1u, 71792u, 4294967295u))));
    var_0 = func_1(true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), 1f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(564f, 293f) - _wgslsmith_f_op_vec2_f32(var_0.c + var_0.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(764f, var_0.c.x)))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_0.c.x), _wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(var_1.x, var_0.c.x))) - var_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1190f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -354f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, -108f)), var_1, true))))));
    var var_3 = ~(_wgslsmith_mod_vec3_i32(max(u_input.a << (vec3<u32>(1u, 0u, 13626u) % vec3<u32>(32u)), var_0.e.wwy | vec3<i32>(var_0.b, 5722i, u_input.a.x)), select(~var_0.a.yyy, firstLeadingBit(var_0.a.xzx), all(var_0.d))) | -vec3<i32>(1i, _wgslsmith_div_i32(-2147483647i, u_input.a.x), max(0i, -2147483647i)));
    let var_4 = func_1(true);
    var_3 = ~vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, var_4.a.x), var_0.e.x, (var_4.b << (75559u % 32u)) << (firstLeadingBit(46566u) % 32u)) << (vec3<u32>(1u, 21011u, ~47201u) % vec3<u32>(32u));
    var var_5 = -59i;
    let var_6 = vec3<i32>((-(~0i) | (0i | (u_input.a.x << (0u % 32u)))) ^ abs(-27883i), -var_4.e.x, -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-var_0.a.wyw, firstTrailingBit(vec3<i32>(u_input.a.x, var_4.e.x, 0i))), ~vec3<i32>(27732i, -2147483647i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(14188u, ~_wgslsmith_add_u32(53694u, 23540u)), ~1u, firstLeadingBit(~(~1u))), ~reverseBits(select(vec3<u32>(36240u, 13526u, 4294967295u), vec3<u32>(1u, 1u, 1u), true)));
}


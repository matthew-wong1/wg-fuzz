struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec4<bool> {
    return select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(false, 634f <= arg_0.x, true, true), !all(vec3<bool>(true, true, false))), vec4<bool>(false, select(false, true, true) && true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !all(vec2<bool>(false, true))), countOneBits(26219u) >= _wgslsmith_dot_vec3_u32(arg_2 >> (arg_2 % vec3<u32>(32u)), ~vec3<u32>(arg_2.x, arg_2.x, arg_2.x))), !select(vec4<bool>(false, true, true, select(false, true, true)), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), true), true));
}

fn func_2() -> f32 {
    let var_0 = -min(abs(~1i), ~countOneBits(_wgslsmith_sub_i32(-53844i, -22195i)));
    let var_1 = select(!vec3<bool>(true, true, select(all(vec3<bool>(true, false, true)), true, false)), vec3<bool>(true | all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), true), vec3<bool>(!(!(var_0 < 21572i)), true, !any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))));
    var var_2 = Struct_3(select(!select(!vec4<bool>(var_1.x, true, var_1.x, false), func_3(vec4<f32>(-288f, -248f, 274f, -574f), vec2<i32>(u_input.a.x, u_input.a.x), vec3<u32>(1u, 1u, 4294967295u)), !vec4<bool>(var_1.x, var_1.x, false, var_1.x)), select(select(vec4<bool>(var_1.x, false, var_1.x, false), select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec4<bool>(true, all(var_1), all(vec4<bool>(true, true, var_1.x, true)), true), vec4<bool>(var_1.x || var_1.x, !var_1.x, true, true)), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-615f, 249f, 188f, -1305f) + vec4<f32>(851f, 116f, -197f, 1497f)), max(vec2<i32>(1i, -1i), u_input.a.xy) | vec2<i32>(-2147483647i, u_input.a.x), max(vec3<u32>(15393u, 1u, 1u), vec3<u32>(1u, 1u, 28325u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))).x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-104f, -870f)) - -924f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-565f * 474f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(974f, -216f))), _wgslsmith_f_op_f32(abs(2498f)), !all(vec4<bool>(var_1.x, true, false, true))))), Struct_1(all(!(!vec3<bool>(var_1.x, var_1.x, true)))));
    let var_3 = -848f;
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * -393f)) - var_2.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(-172f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1635f, -582f)))))));
}

fn func_1() -> u32 {
    let var_0 = ~(-vec2<i32>(~(-u_input.a.x), u_input.a.x));
    let var_1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1315f)), -215f) > _wgslsmith_f_op_f32(func_2()), false, true);
    var var_2 = var_1.zx;
    let var_3 = select(select(vec2<bool>(true, var_1.x), var_1.zz, any(vec3<bool>(2147483647i > var_0.x, true, select(var_2.x, true, var_2.x)))), var_1.zz, !any(vec4<bool>(any(var_1), all(vec2<bool>(var_2.x, false)), var_1.x != true, var_1.x)));
    let var_4 = Struct_2(-827f, Struct_1(!(!any(var_1))), vec3<bool>(!var_1.x, !var_3.x | (var_3.x || (var_3.x != var_2.x)), select(!(var_3.x != var_3.x), all(!var_1), var_1.x)), Struct_1(!(!any(vec3<bool>(var_1.x, true, false)))));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~abs(reverseBits(vec2<u32>(4294967295u, 74974u))), ~vec2<u32>(4294967295u, 0u) >> (select(firstLeadingBit(vec2<u32>(125966u, 83687u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 58677u)), var_4.b.a) % vec2<u32>(32u))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) << (vec4<u32>(34669u, _wgslsmith_div_u32(func_1(), ~4294967295u), ~40367u, ~countOneBits(29666u)) % vec4<u32>(32u)));
    let var_1 = -abs(vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.a.x, u_input.a.x), u_input.a), var_0.a.x ^ u_input.a.x), reverseBits(~u_input.a.x), 28868i));
    var_0 = Struct_5(abs(abs(vec4<i32>(~85614i, ~u_input.a.x, var_0.a.x >> (10862u % 32u), ~var_0.a.x))));
    var_0 = Struct_5(max(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i & u_input.a.x, 1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), var_0.a), vec4<i32>(var_0.a.x, ~1i, -var_1.x, select(i32(-1i) * -18477i, u_input.a.x, var_0.a.x <= -1i))));
    var var_2 = _wgslsmith_div_i32(var_1.x, var_1.x);
    var_2 = select(_wgslsmith_sub_i32(select(u_input.a.x, _wgslsmith_sub_i32(var_1.x, -1i), var_1.x == var_1.x) >> ((4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(30213u, 1u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u))) % 32u), ~(~_wgslsmith_clamp_i32(u_input.a.x, 19394i, u_input.a.x))), ~countOneBits(~2147483647i) ^ _wgslsmith_sub_i32(var_0.a.x, max(var_0.a.x, ~var_0.a.x)), func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -681f), 1132f, _wgslsmith_f_op_f32(-269f + 1207f), -1561f), countOneBits(u_input.a.xy), _wgslsmith_clamp_vec3_u32(vec3<u32>(62118u, 46396u, 37763u), ~vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(60281u, 0u, 28427u))).x || false);
    var_2 = -9617i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-453f + -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -121f)) * -959f))), var_1);
}


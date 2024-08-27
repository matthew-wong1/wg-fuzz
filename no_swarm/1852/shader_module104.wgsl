struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-680f + 458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.a.x, arg_1.b.a.x)) + _wgslsmith_f_op_f32(arg_1.b.a.x + -1801f))), _wgslsmith_f_op_f32(-arg_1.b.a.x))), arg_1.b.a.x);
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(5096u, arg_1.a.a.x, 49446u)), arg_1.b.b.a.xxy), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 86998u, arg_1.b.c.a.x), arg_1.c.a)), 1u));
    var_1 = ~(~(~(~43958u ^ _wgslsmith_add_u32(arg_1.a.a.x, arg_1.b.d.x))));
    var_1 = arg_1.c.a.x;
    var_1 = arg_1.c.a.x;
    return !arg_0;
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = ~1u;
    var var_1 = select(select(vec2<bool>(arg_0, true), !select(!vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), true), false), select(select(vec2<bool>(!arg_0, u_input.c.x != u_input.b.x), vec2<bool>(true, func_3(arg_0, Struct_3(Struct_1(vec4<u32>(22386u, 1u, 4294967295u, 1u)), Struct_2(vec2<f32>(527f, 747f), Struct_1(vec4<u32>(0u, var_0, 0u, var_0)), Struct_1(vec4<u32>(12243u, 1u, 24839u, 96608u)), vec4<u32>(4294967295u, 21241u, var_0, var_0)), Struct_1(vec4<u32>(57365u, 1u, var_0, var_0)), var_0))), true), vec2<bool>(820f <= _wgslsmith_f_op_f32(select(362f, -1653f, arg_0)), ~var_0 >= max(0u, var_0)), false), arg_1);
    var_1 = !(!(!vec2<bool>(true, arg_0)));
    var var_2 = ~(~vec3<u32>(var_0 | 0u, var_0, var_0) << (select(~firstTrailingBit(vec3<u32>(50589u, 103095u, 0u)), ~vec3<u32>(var_0, 19881u, var_0), !select(vec3<bool>(true, true, false), vec3<bool>(false, arg_0, arg_1), false)) % vec3<u32>(32u)));
    var_2 = vec3<u32>(reverseBits(_wgslsmith_clamp_u32(~var_0, ~0u, ~4294967295u) & ~22341u), 61319u, var_2.x);
    return var_2.x;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = -1039i;
    var var_1 = (arg_0 & arg_0) ^ ~func_2(!all(vec2<bool>(true, false)), false);
    var var_2 = vec3<u32>(func_2(true, false), firstTrailingBit(~4294967295u), arg_0);
    let var_3 = max(vec2<u32>(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, 136613u), vec3<u32>(40307u, arg_0, var_2.x)), reverseBits(var_2.x)), ~arg_0), vec2<u32>(_wgslsmith_add_u32(~countOneBits(arg_0), ~15973u), _wgslsmith_sub_u32(56212u, var_2.x)));
    var_1 = 4294967295u;
    return Struct_3(Struct_1(~(abs(vec4<u32>(arg_0, 0u, 0u, var_2.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_3.x, 37165u, arg_0), vec4<u32>(0u, 0u, 19516u, 30407u)) % vec4<u32>(32u)))), Struct_2(vec2<f32>(1f, 1f), Struct_1(vec4<u32>(max(var_3.x, 1u), var_2.x, ~4294967295u, 9827u)), Struct_1(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, arg_0, var_3.x, var_2.x), vec4<u32>(var_2.x, arg_0, var_2.x, var_2.x), vec4<u32>(var_3.x, arg_0, var_3.x, arg_0)), vec4<u32>(arg_0, 1u, var_3.x, var_2.x))), ~abs(vec4<u32>(15614u, 1u, 1u, 19103u))), Struct_1(max(vec4<u32>(var_3.x, 60163u, 0u, 30478u) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_3.x, 71420u, var_3.x), vec4<u32>(var_3.x, var_2.x, arg_0, var_2.x)), vec4<u32>(firstTrailingBit(var_2.x), var_2.x, _wgslsmith_clamp_u32(var_2.x, var_2.x, 75942u), 4294967295u))), abs(arg_0) >> (arg_0 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    var var_1 = vec4<bool>(false, false, (1u == firstTrailingBit(1u)) || any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), true);
    var var_2 = 1u;
    var var_3 = func_1(~1u);
    var_3 = Struct_3(Struct_1(vec4<u32>(~var_3.c.a.x, ~var_3.c.a.x, firstLeadingBit(41177u), var_3.a.a.x) & (vec4<u32>(var_3.d, 37868u, 63300u, var_3.c.a.x) | ~vec4<u32>(1u, var_3.c.a.x, 26963u, var_3.d))), func_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_3.d) ^ _wgslsmith_mult_u32(46747u, var_3.b.b.a.x), ~min(1u, var_3.d))).b, var_3.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(17972u, var_3.c.a.x, var_3.c.a.x, var_3.a.a.x), _wgslsmith_add_vec4_u32(var_3.c.a, var_3.c.a)), vec4<u32>(var_3.a.a.x, 40897u | var_3.b.b.a.x, ~var_3.c.a.x, ~1u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(16931u, var_3.b.d.x) | _wgslsmith_sub_u32(21790u, var_3.d), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d, 0u, 4294967295u, var_3.c.a.x), var_3.a.a))), 248u));
    let var_4 = 6332u;
    var_1 = !(!vec4<bool>(var_1.x & (213f == var_3.b.a.x), !(u_input.a.x > u_input.c.x), !all(vec4<bool>(false, false, false, var_1.x)), true));
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a.x, 1334f, _wgslsmith_f_op_f32(round(var_3.b.a.x)), var_3.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(434f, _wgslsmith_f_op_f32(ceil(var_5.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1394f, -1791f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b.a.x - -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a.x + var_5.x)), _wgslsmith_f_op_f32(exp2(func_1(40781u).b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1058f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x + var_5.x)))), ~(-max(u_input.c.wzw, vec3<i32>(-9281i, u_input.b.x, 0i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(10970i, -39315i, -39141i), vec3<i32>(reverseBits(u_input.a.x), u_input.b.x, 1i)), ~2147483647i, u_input.b.x, _wgslsmith_div_i32(6009i, u_input.b.x)));
}


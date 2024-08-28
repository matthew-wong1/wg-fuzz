struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = ~u_input.e;
    let var_1 = Struct_5(Struct_1(max(1i, -(~(-21196i))), ~var_0, select(vec4<u32>(var_0, var_0, 8481u, 24469u), select(vec4<u32>(40002u, var_0, 4294967295u, u_input.e), vec4<u32>(1u, 81844u, u_input.e, 72357u), true), vec4<bool>(true, false, true, false)) & countOneBits(~vec4<u32>(17829u, 111231u, u_input.b, u_input.b))), _wgslsmith_div_i32(u_input.d, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1605f) * -309f), Struct_3(Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.a, firstTrailingBit(u_input.c)), var_0, vec4<u32>(var_0, 57600u, 27441u, ~var_0)), Struct_1(13104i, 28056u, ~abs(vec4<u32>(15496u, 23146u, 1u, var_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, -1242f, 260f, -1000f) * vec4<f32>(-804f, -1434f, -2321f, -842f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 816f, -132f, -426f) * vec4<f32>(-1506f, 149f, -186f, 647f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(420f, 1136f, -126f, -961f))))))), 0u);
    return ~49268u;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = u_input.a & 1i;
    var var_1 = countOneBits(vec4<u32>(func_3(), 1u, u_input.e, arg_0.a.b));
    var_1 = _wgslsmith_sub_vec4_u32(max(~vec4<u32>(25069u >> (var_1.x % 32u), var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.e, arg_0.d.b.c.x)), 4294967295u), arg_0.a.c), vec4<u32>(33932u, ~_wgslsmith_clamp_u32(4294967295u, var_1.x, _wgslsmith_dot_vec2_u32(var_1.xy, arg_0.a.c.wx)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_1.zxz, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_0.a.b, var_1.x), var_1.xzw)), 0u), 42953u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.d.c)) + arg_0.d.c);
    let var_3 = Struct_4(arg_1, ~arg_0.d.a.b, 1u >> (((1u << (var_1.x % 32u)) & 48261u) % 32u), Struct_2(vec4<i32>(var_0, _wgslsmith_div_i32(arg_1.a.x, arg_0.d.b.a), 1i, abs(i32(-1i) * -29755i))), arg_0.a.a);
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = select(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, !any(vec4<bool>(true, false, true, true))), select(vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec2<bool>(true, false))), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), true), true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), func_2(Struct_5(Struct_1(0i, 33780u, vec4<u32>(u_input.e, 86178u, 1u, 1u)), -69978i, -1000f, Struct_3(Struct_1(u_input.a, 17432u, vec4<u32>(34585u, u_input.b, 0u, u_input.b)), Struct_1(u_input.a, u_input.b, vec4<u32>(u_input.e, 42818u, 102436u, 105497u)), vec4<f32>(2231f, 1011f, -418f, 795f)), u_input.e), Struct_2(vec4<i32>(u_input.c, -48284i, u_input.d, -1i)), 2704f), select(false, false, true)), false)), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-726f)) + _wgslsmith_f_op_f32(-729f * 743f)) >= _wgslsmith_f_op_f32(-701f + 900f), any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), vec3<bool>(true, true, false));
    var_0 = select(!vec3<bool>(var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, true)) & !var_0.x, var_0.x), select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, true)), select(!vec3<bool>(false, true, var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, true, var_0.x), var_0.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), select(!vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), any(vec3<bool>(var_0.x, false, var_0.x)))), select(!(!vec3<bool>(false, var_0.x, true)), !(!vec3<bool>(false, var_0.x, true)), !(!var_0.x)), true && var_0.x), any(vec3<bool>(false, (var_0.x && var_0.x) | (true & var_0.x), var_0.x)));
    var_0 = vec3<bool>(var_0.x, var_0.x, all(select(vec3<bool>(true, !var_0.x, any(vec2<bool>(false, var_0.x))), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, var_0.x)), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(true, var_0.x, var_0.x)), any(vec2<bool>(false, var_0.x)))));
    var var_1 = Struct_1(13174i, min(_wgslsmith_mod_u32(~1u, ~(~15739u)), ~0u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(44337u, u_input.e, u_input.b, 21007u), vec4<u32>(59945u, 22418u, 31392u, u_input.b)) >> (abs(20833u) % 32u)) % 32u)), abs(vec4<u32>(u_input.e, u_input.e, u_input.b, firstLeadingBit(u_input.e))));
    var var_2 = var_0.x;
    return Struct_1(1i, var_1.b, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(-17948i, 1i);
    var var_1 = Struct_3(func_1(), func_1(), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(432f, 380f, false)), _wgslsmith_f_op_f32(f32(-1f) * -323f), _wgslsmith_div_f32(-428f, 485f), _wgslsmith_f_op_f32(ceil(-1253f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, 3036f, 449f, 247f)))), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true, func_2(Struct_5(Struct_1(-20012i, u_input.e, vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b)), var_0, -318f, Struct_3(Struct_1(var_0, u_input.e, vec4<u32>(u_input.e, u_input.b, 54218u, u_input.e)), Struct_1(u_input.a, 0u, vec4<u32>(u_input.e, u_input.b, u_input.b, u_input.b)), vec4<f32>(-649f, 145f, -247f, -700f)), u_input.b), Struct_2(vec4<i32>(var_0, -20108i, -2147483647i, 0i)), -1231f)))));
    var var_2 = Struct_2(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.b.a, var_1.a.a, var_1.a.a), vec4<i32>(-2147483647i, u_input.a, 0i, 2147483647i) >> (vec4<u32>(u_input.e, 4294967295u, var_1.b.c.x, var_1.b.b) % vec4<u32>(32u))) << (~var_1.b.c % vec4<u32>(32u)), -reverseBits(abs(vec4<i32>(var_1.b.a, var_1.b.a, -14998i, -20882i)))));
    var_1 = Struct_3(Struct_1(_wgslsmith_sub_i32(1i & -var_2.a.x, _wgslsmith_clamp_i32(min(var_2.a.x, var_2.a.x), var_2.a.x, firstTrailingBit(u_input.c))), max(_wgslsmith_clamp_u32(u_input.b | u_input.e, 4294967295u >> (var_1.a.b % 32u), _wgslsmith_sub_u32(u_input.e, 8226u)), ~1u), var_1.a.c), Struct_1(~2147483647i, ~1u, firstTrailingBit(vec4<u32>(u_input.e, var_1.b.c.x, _wgslsmith_mult_u32(var_1.b.b, var_1.a.c.x), 0u))), var_1.c);
    var_1 = Struct_3(Struct_1(_wgslsmith_sub_i32(4889i, firstLeadingBit(var_2.a.x)) ^ ~(~(-1i)), _wgslsmith_dot_vec4_u32(max(var_1.a.c, var_1.a.c), ~vec4<u32>(u_input.b, 62130u, 10603u, var_1.a.b) ^ var_1.b.c), var_1.a.c >> (firstTrailingBit(max(vec4<u32>(var_1.b.c.x, 8129u, 90370u, 64482u), var_1.b.c)) % vec4<u32>(32u))), Struct_1(var_0, var_1.a.b, var_1.b.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -995f), -794f, _wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1976f), 1f)) * _wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.c, vec4<f32>(421f, var_1.c.x, 1000f, var_1.c.x), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_2.a.x, 2147483647i, _wgslsmith_mult_i32(14482i, var_2.a.x), var_2.a.x), var_1.a.c.ww, vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x)))), -639f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(select(-708f, var_1.c.x, true)))))), 0i);
}


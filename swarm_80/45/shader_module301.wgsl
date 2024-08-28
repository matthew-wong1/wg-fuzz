struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec3<i32> {
    let var_0 = u_input.b;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(985f + -296f) - _wgslsmith_f_op_f32(abs(1353f))), -345f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f * 1610f)))), _wgslsmith_dot_vec3_u32(u_input.a.xzx, u_input.a.xwz), arg_0.x, u_input.b.yzx, u_input.c);
    var_1 = Struct_1(vec4<f32>(1039f, var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)), ~(~_wgslsmith_mult_u32(var_1.b, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), -1264f, arg_0.x)) >= 532f, _wgslsmith_sub_vec3_i32(u_input.b.wxw, vec3<i32>(var_1.d.x, countOneBits(_wgslsmith_mult_i32(var_1.d.x, arg_1)), ~var_1.d.x)), ~_wgslsmith_sub_u32(firstLeadingBit(~u_input.c), 52665u));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(var_1.a)))), ~0u, true, u_input.b.zxw, 4294967295u);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 355f, var_1.a.x, 459f)), _wgslsmith_f_op_vec4_f32(floor(var_1.a)), !arg_0.x & all(vec2<bool>(false, var_1.c)))))), select(~u_input.c >> (78247u % 32u), var_1.e, !any(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, var_1.c, true), false))), true, _wgslsmith_add_vec3_i32((vec3<i32>(var_1.d.x, 2147483647i, var_1.d.x) & abs(var_1.d)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, var_1.e, var_1.b), firstTrailingBit(u_input.a.ywx)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-51167i, var_1.d.x >> (64263u % 32u), select(var_0.x, -1i, var_1.c)), -(vec3<i32>(u_input.b.x, u_input.b.x, -1i) << (vec3<u32>(39710u, 0u, 15094u) % vec3<u32>(32u))))), _wgslsmith_dot_vec4_u32(~u_input.a | u_input.a, vec4<u32>(5748u, abs(_wgslsmith_sub_u32(var_1.e, 0u)), 35121u, u_input.c)));
    return vec3<i32>(34943i, ~(-2147483647i & (_wgslsmith_mod_i32(var_0.x, -28560i) ^ _wgslsmith_add_i32(2147483647i, arg_1))), firstTrailingBit((u_input.b.x | arg_1) >> (_wgslsmith_clamp_u32(min(u_input.d.x, var_1.e), select(var_1.b, 2614u, var_1.c), max(4294967295u, 0u)) % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.d.a.wzz;
    let var_1 = Struct_2(arg_0.a, ~(arg_3.d.b << (abs(~29717u) % 32u)), arg_3.c, arg_3.a, arg_3.a.d.x);
    var var_2 = vec4<bool>(arg_0.a.c, !(!(true == arg_3.a.c)), any(!select(select(vec4<bool>(false, false, true, var_1.a.c), vec4<bool>(var_1.d.c, arg_0.a.c, arg_3.a.c, arg_0.d.c), vec4<bool>(var_1.d.c, false, true, false)), select(vec4<bool>(true, arg_3.a.c, true, false), vec4<bool>(true, arg_3.a.c, var_1.a.c, arg_0.d.c), true), vec4<bool>(var_1.d.c, true, arg_0.d.c, false))), (firstTrailingBit(var_1.a.b) ^ u_input.e) != ~1u);
    var var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1646f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(arg_0.d.a.x))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(select(-586f, 102f, arg_3.d.c))), _wgslsmith_div_f32(-822f, _wgslsmith_f_op_f32(-arg_2))), var_1.d.b, var_1.a.c, -func_3(!vec2<bool>(var_2.x, var_1.a.c), ~(-1i)), firstTrailingBit(firstLeadingBit(21062u))), arg_0.a.b, firstLeadingBit(arg_3.c), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_0.x, arg_2, -1000f))))), arg_3.b, true, u_input.b.wyy, 27615u), u_input.b.x);
    let var_4 = ~var_3.e;
    return ~1u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<f32> {
    var var_0 = select(~vec2<u32>(arg_2.x, _wgslsmith_clamp_u32(arg_2.x, ~arg_1.b, func_2(arg_1, vec2<f32>(arg_1.d.a.x, 1204f), -285f, Struct_2(arg_1.a, 45628u, arg_2, Struct_1(arg_1.a.a, 4294967295u, arg_1.a.c, vec3<i32>(u_input.b.x, -2927i, 45947i), arg_0), 23512i)))), vec2<u32>(~u_input.a.x, 0u), select(vec2<bool>(arg_1.a.c, arg_1.d.c), vec2<bool>(true, true), !select(vec2<bool>(false, arg_1.d.c), vec2<bool>(true, arg_1.d.c), select(vec2<bool>(arg_1.a.c, arg_1.d.c), vec2<bool>(true, arg_1.d.c), vec2<bool>(true, arg_1.d.c)))));
    var var_1 = arg_1;
    var var_2 = 87315u;
    var var_3 = arg_1;
    let var_4 = any(!vec2<bool>(!(var_1.a.c && true), true && (arg_1.d.c & var_1.d.c)));
    return vec4<f32>(var_3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(-var_3.d.a.x)))) * arg_1.a.a.x), _wgslsmith_f_op_f32(1881f * var_1.d.a.x), _wgslsmith_f_op_f32(round(var_1.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i ^ (1i ^ _wgslsmith_add_i32(-(u_input.b.x << (u_input.e % 32u)), 0i));
    var var_1 = _wgslsmith_mult_u32(~u_input.c, _wgslsmith_sub_u32(39098u << (0u % 32u), 23118u));
    let var_2 = u_input.b.xyw;
    let var_3 = false;
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(select(~(~u_input.c), u_input.e & ~u_input.d.x, true), ~u_input.a.x), ~firstLeadingBit(1u), ~_wgslsmith_add_u32(65488u, u_input.e));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -106f))), 1756f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(455f, -514f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(563f)), _wgslsmith_f_op_f32(1649f + -2632f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(u_input.c >> (u_input.a.x % 32u), Struct_2(Struct_1(vec4<f32>(1062f, 1000f, -845f, 202f), u_input.a.x, false, vec3<i32>(u_input.b.x, var_2.x, -2147483647i), u_input.c), 0u, u_input.a.yy, Struct_1(vec4<f32>(-1699f, -775f, -264f, 168f), 0u, var_3, var_2, u_input.e), -66012i), u_input.d)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-461f, 885f, -850f, -1995f))))) + _wgslsmith_f_op_vec4_f32(func_1(abs(~1u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, 1000f, -353f, 382f) - vec4<f32>(153f, -796f, -1185f, 480f)), func_2(Struct_2(Struct_1(vec4<f32>(955f, 177f, -751f, -466f), u_input.e, true, var_2, u_input.a.x), u_input.e, vec2<u32>(u_input.c, 4294967295u), Struct_1(vec4<f32>(-913f, 1816f, 1228f, 1300f), 1u, var_3, u_input.b.yxx, u_input.c), var_2.x), vec2<f32>(774f, 1651f), 324f, Struct_2(Struct_1(vec4<f32>(-278f, -383f, -1705f, -1145f), 47121u, true, u_input.b.yzx, u_input.a.x), u_input.e, u_input.d, Struct_1(vec4<f32>(1097f, -299f, -2165f, -117f), u_input.c, var_3, u_input.b.zxz, u_input.d.x), var_0)), -2147483647i < var_2.x, vec3<i32>(5131i, u_input.b.x, var_2.x), reverseBits(22937u)), 53657u, vec2<u32>(u_input.c, ~35658u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2095f, 1381f, -429f, 864f)), _wgslsmith_mod_u32(u_input.c, u_input.d.x), true, vec3<i32>(-7480i, var_0, var_2.x), 1u), var_0), ~u_input.a.yx)));
    var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1805f, var_4.x, -1000f, -234f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1833f, var_4.x, -634f))))), vec4<f32>(1000f, _wgslsmith_f_op_f32(375f + _wgslsmith_f_op_f32(-var_4.x)), -1749f, -296f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-129f, 970f, var_4.x, var_4.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(round(var_4.x)), -1003f, _wgslsmith_div_f32(1237f, -624f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-237f, -1438f, var_4.x, var_4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, -123f, 1377f))))));
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(178f - 377f))), vec3<f32>(_wgslsmith_div_f32(-343f, _wgslsmith_div_f32(-128f, 590f)), -992f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.x - -1002f), _wgslsmith_f_op_f32(-1144f * -1000f))))), var_2.x, ~max(~(~u_input.c), _wgslsmith_add_u32(u_input.e, 4294967295u) | firstTrailingBit(u_input.e)), ~(~vec2<i32>(~u_input.b.x, abs(736i))), -242f);
}


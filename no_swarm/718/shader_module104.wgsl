struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = ~(~arg_0.x);
    let var_1 = Struct_1(-8296i ^ _wgslsmith_sub_i32(_wgslsmith_clamp_i32(select(-1i, -14020i, true), ~27804i, ~2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(-1i, -36386i, -17280i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(max(-175f, _wgslsmith_f_op_f32(-258f * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(max(-1002f, 2336f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1353f, -526f), _wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_div_f32(202f, -528f), _wgslsmith_f_op_f32(floor(-307f)))))), ~(~vec2<i32>(min(1i, -2147483647i), 10854i)));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_i32(select(-13263i, -5703i, true), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + var_1.c)), var_1.b, var_1.d), 890f), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 30575i);
    var var_3 = Struct_2(var_2.a.a, 1213f);
    let var_4 = ~vec4<u32>(9470u & u_input.c.x, u_input.a.x, u_input.c.x, arg_0.x);
    return -2147483647i;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<bool>(true, select(true, any(vec3<bool>(arg_0.x != u_input.b.x, true, false)), false), !(~(3129u ^ u_input.a.x) <= ~select(arg_0.x, 0u, true)), (_wgslsmith_mult_u32(39156u, u_input.a.x) & u_input.c.x) < 1u);
    let var_1 = ~2147483647i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(-(~var_1), func_3(select(vec4<u32>(0u, arg_0.x, 0u, u_input.b.x), vec4<u32>(u_input.a.x, 18527u, 1u, arg_0.x), vec4<bool>(false, true, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1059f, 462f, -1948f, 425f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-903f, -579f, 587f, 1589f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, -272f, 204f, -901f) + vec4<f32>(430f, -1587f, 1250f, 481f))), vec2<i32>(_wgslsmith_mod_i32(-var_1, 1i), abs(min(-2147483647i, 27411i)))), _wgslsmith_f_op_f32(min(-622f, -2663f)));
    var var_3 = var_2.a.b.x;
    var var_4 = var_2.b;
    return Struct_2(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -519f));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -844f);
    var var_1 = Struct_2(func_2(u_input.a).a, _wgslsmith_f_op_f32(max(923f, -578f)));
    var var_2 = var_1.a.d;
    var var_3 = Struct_3(Struct_2(func_2(countOneBits(~u_input.b.zwy)).a, _wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-801f)), 1547f)))), !select(vec2<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), -var_1.a.a);
    var_2 = vec2<i32>(i32(-1i) * -1i, -1i);
    return !(var_3.b.x || all(!select(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x), vec4<bool>(true, var_3.b.x, true, var_3.b.x), vec4<bool>(var_3.b.x, true, var_3.b.x, true))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_add_u32(~(~33248u), ~arg_1.x);
    var var_1 = _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(~(u_input.b | u_input.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(35293u, u_input.c.x, u_input.c.x, 46283u), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(arg_1.x, 4294967295u, 4294967295u, 4294967295u))))), select(select(abs(u_input.b), u_input.b, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)))), u_input.b >> (u_input.b % vec4<u32>(32u)), func_4(func_2(u_input.b.ywz))));
    let var_2 = Struct_3(func_2(var_1.wxz), vec2<bool>(true, any(vec3<bool>(arg_0.a.d.x >= arg_0.a.a, arg_0.a.d.x <= -3227i, true))), 1i ^ _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, arg_0.a.d.x) | arg_0.a.d.x, ~1i));
    var_1 = u_input.b | vec4<u32>(max(~max(arg_1.x, 0u), ~u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.x, 0u), u_input.c.x), 66889u), ~(~arg_1.x), var_1.x);
    var_1 = reverseBits(u_input.b);
    return -19736i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(vec4<i32>(28364i, 1i, ~15070i, ~0i) << (u_input.b % vec4<u32>(32u))));
    var_0 = -max(vec4<i32>(~var_0.x << (_wgslsmith_div_u32(u_input.b.x, 4294967295u) % 32u), var_0.x, -1i, 1i), ~(min(vec4<i32>(3180i, var_0.x, -2147483647i, -51243i), vec4<i32>(2147483647i, var_0.x, 23237i, var_0.x)) >> (~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 46159u) % vec4<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, var_0.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(28902i, 6865i, var_0.x, var_0.x), vec4<i32>(-5925i, var_0.x, var_0.x, 2147483647i))), 1i, abs(-1i), var_0.x), vec4<i32>(2147483647i, -var_0.x, _wgslsmith_mult_i32(func_1(Struct_2(Struct_1(0i, vec4<f32>(1189f, 475f, 1067f, -997f), vec4<f32>(-338f, -231f, -1716f, -1195f), vec2<i32>(0i, 1i)), -1040f), vec2<u32>(u_input.a.x, 0u)), var_0.x), ~45002i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, -684f, 306f, 167f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1631f, 191f, -1213f, 1126f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1043f, -624f, -261f, _wgslsmith_f_op_f32(f32(-1f) * -391f))))), vec2<i32>(var_0.x, max(1i << (max(87385u, u_input.b.x) % 32u), select(func_1(Struct_2(Struct_1(-2147483647i, vec4<f32>(1720f, -515f, -1932f, -494f), vec4<f32>(676f, -292f, 1000f, 617f), vec2<i32>(-34608i, -9538i)), -802f), u_input.a.yx), var_0.x, true))));
    var var_2 = all(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), vec3<bool>(select(true, any(vec3<bool>(false, false, false)), true), true, u_input.c.x == _wgslsmith_clamp_u32(11857u, u_input.b.x, 4294967295u))));
    var var_3 = any(vec4<bool>(!(u_input.b.x < 15312u), true, true, func_4(Struct_2(var_1, var_1.b.x)))) | (any(vec2<bool>(true, true)) != all(vec3<bool>(true, true, true)));
    var_3 = (var_0.x & -(~var_0.x)) < (~(_wgslsmith_sub_i32(var_1.d.x, var_0.x) | -43057i) | ~42014i);
    var var_4 = Struct_3(Struct_2(Struct_1(~_wgslsmith_mod_i32(-25641i, -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-226f + var_1.c.x), _wgslsmith_div_f32(-397f, -1022f), var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -583f, var_1.c.x, var_1.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 838f, 601f, 193f))), vec2<i32>(_wgslsmith_mod_i32(72328i, 12171i), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x))))), select(select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), var_0.x < -2147483647i), vec2<bool>(true, true)), vec2<bool>(true, true), true), _wgslsmith_mult_i32(_wgslsmith_div_i32(5645i, (var_0.x | var_0.x) & reverseBits(var_1.d.x)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~(select(~u_input.a.zy, vec2<u32>(u_input.b.x, 4294967295u), true) | firstTrailingBit(u_input.b.zz)));
}


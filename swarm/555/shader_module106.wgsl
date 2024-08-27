struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, vec3<f32>(-118f, 527f, -1365f), vec3<i32>(1i, -23493i, 5960i)), Struct_1(false, vec3<f32>(1964f, -224f, 1000f), vec3<i32>(-3797i, 0i, -1i)), Struct_1(true, vec3<f32>(-201f, 1329f, 811f), vec3<i32>(2147483647i, -52772i, -67521i)), Struct_1(false, vec3<f32>(1442f, -552f, 1000f), vec3<i32>(28051i, 2555i, -1699i)), Struct_1(false, vec3<f32>(-1902f, -159f, 315f), vec3<i32>(20215i, 26615i, 19666i)), Struct_1(false, vec3<f32>(563f, 1000f, -1512f), vec3<i32>(7243i, -1i, -1i)), Struct_1(true, vec3<f32>(-625f, -746f, 1682f), vec3<i32>(-5442i, -1i, 1i)), Struct_1(false, vec3<f32>(-819f, -714f, -473f), vec3<i32>(11952i, -46695i, 2147483647i)), Struct_1(true, vec3<f32>(1825f, 457f, 464f), vec3<i32>(32403i, -1i, -60879i)), Struct_1(true, vec3<f32>(-1653f, -490f, -291f), vec3<i32>(0i, 1i, -18077i)), Struct_1(true, vec3<f32>(-490f, 635f, 294f), vec3<i32>(0i, 0i, 2147483647i)), Struct_1(false, vec3<f32>(1120f, 703f, -421f), vec3<i32>(-20868i, -23450i, -17574i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    return _wgslsmith_div_f32(197f, arg_1);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec3<f32> {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(94720u, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2464f)))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, 797f) * arg_0);
    let var_2 = select(u_input.b, u_input.b, true);
    var var_3 = _wgslsmith_f_op_f32(691f * _wgslsmith_f_op_f32(-arg_0.x));
    var var_4 = vec2<u32>(u_input.a, ~59374u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.zwy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, -966f, var_1.x))));
}

fn func_1() -> bool {
    global1 = array<Struct_1, 12>();
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-309f)))))), 131f), _wgslsmith_f_op_f32(1231f * 1000f), -127f);
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(var_0.x, var_0.x, -597f, var_0.x), 34528i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -1162f), vec3<f32>(var_0.x, 549f, 385f), vec3<bool>(global0.x, global0.x, global0.x))), u_input.b.x <= u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x))) + vec3<f32>(110f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x)))), var_0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-624f, var_0.x, -398f))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(-1688f, -624f)), 1f)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-718f, var_0.x)), var_0.x)), var_0.x, _wgslsmith_f_op_f32(max(2049f, 959f)))))));
    let var_1 = Struct_1(select(any(!vec4<bool>(global0.x, false, false, global0.x)), global0.x || true, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -497f, var_0.x, var_0.x)), 26217i)).x > _wgslsmith_f_op_f32(min(-1039f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -286f, var_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1618f, 1822f, var_0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -327f, var_0.x)))), !vec3<bool>(true, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, 1302f, _wgslsmith_f_op_f32(-var_0.x)))), abs(-abs(-vec3<i32>(-2147483647i, -17414i, 1i))));
    global0 = vec3<bool>(true, var_1.a, false);
    return !(!var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    var var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(1u, 1u), ~vec2<u32>(65549u, 16290u)), ~(vec2<u32>(u_input.a, 56896u) | vec2<u32>(0u, u_input.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, 40486u), ~0u), ~(~vec2<u32>(u_input.a, u_input.a))));
    var var_1 = vec3<f32>(-349f, _wgslsmith_f_op_f32(select(1603f, _wgslsmith_f_op_f32(-969f + _wgslsmith_f_op_f32(486f - -254f)), global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1283f + 675f)), _wgslsmith_f_op_f32(-181f - _wgslsmith_f_op_f32(1444f + -948f))), -269f, func_1())));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1172f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(abs(-540f)), _wgslsmith_f_op_f32(trunc(var_1.x)))), ~2147483647i ^ (u_input.c << (u_input.a % 32u)))).x));
    var_0 = abs(~_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(var_0.x, u_input.a)), ~select(vec2<u32>(0u, u_input.a), vec2<u32>(3170u, u_input.a), global0.yx), vec2<u32>(1u, ~u_input.a)));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(-381f, var_2, -1635f, -261f), -1i)).x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(171f, var_2)))))));
    let var_3 = Struct_1(false, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 1649f) + _wgslsmith_f_op_f32(min(1059f, var_2))), var_2, -795f)), -select(vec3<i32>(79474i, -7653i, u_input.d) | vec3<i32>(3573i, 2147483647i, -2147483647i), reverseBits(vec3<i32>(u_input.c, u_input.b.x, u_input.b.x)), !vec3<bool>(global0.x, false, global0.x)) << (abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 27809u), vec2<u32>(72650u, 42792u)), u_input.a, min(u_input.a, 0u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<i32>(reverseBits(u_input.d | (var_3.c.x | -2147483647i)), (_wgslsmith_dot_vec2_i32(var_3.c.zz, var_3.c.xy) >> (max(102572u, 31962u) % 32u)) ^ countOneBits(24885i), -80149i << (var_0.x % 32u)), ~((i32(-1i) * -5423i) ^ var_3.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.b.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) + var_1.zy)));
}


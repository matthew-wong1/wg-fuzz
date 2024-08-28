struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75451u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = u_input.b.x;
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(990f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -792f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f + -795f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(222f, -558f))))))));
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, -36094i, 40235i);
    global0 = u_input.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - var_1))) + 1000f)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.wzw, ~vec3<u32>(4294967295u, 1u, arg_0.x)), ~vec3<u32>(arg_0.x ^ u_input.b.x, max(u_input.b.x, 1u), ~arg_0.x)) << (~u_input.b.x % 32u);
    global0 = arg_0.x;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(1677f, 1703f)), 963f, _wgslsmith_f_op_f32(round(-779f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1463f, 1020f, 210f, -1000f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1346f, -482f, -2011f, -431f))))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(640f))), _wgslsmith_f_op_f32(1243f - 1693f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1357f)), _wgslsmith_div_f32(-696f, -428f)))), select(select(vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(true, true, false, true)), false)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(true, true, true)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), vec3<bool>(false, true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f * _wgslsmith_f_op_f32(ceil(1789f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f - -661f)))), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, ~58777u), reverseBits(u_input.b.x), abs(arg_0.x | ~59619u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-352f, 1648f, 772f, -1199f) - vec4<f32>(436f, 1055f, -1518f, 1253f)), vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(482f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -247f), -1026f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-480f, -495f, 140f, 1686f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-407f, -803f, -932f, -1492f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, -1256f, 1033f, -1163f) + vec4<f32>(166f, 474f, 216f, -1060f))), vec4<bool>(true, true, true, true))), vec4<bool>(_wgslsmith_div_i32(u_input.d, u_input.a) < (i32(-1i) * -1i), true, !select(true, true, true), !(u_input.b.x != arg_0.x)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.c.x));
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(32732i, -189i), vec2<i32>(u_input.c.x, -1i)), firstTrailingBit(0i), u_input.c.x << (_wgslsmith_mult_u32(arg_0.x, u_input.b.x) % 32u)), vec3<i32>(u_input.c.x, min(u_input.d, ~(-4007i)), _wgslsmith_div_i32(~0i, u_input.d))), vec3<i32>(~_wgslsmith_mod_i32(~(-2147483647i), u_input.a), 1i, _wgslsmith_div_i32(2147483647i, firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.c.wzz, vec3<i32>(u_input.c.x, u_input.a, -49456i))))));
    return u_input.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: f32) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = reverseBits(arg_0.d.x & ~_wgslsmith_dot_vec2_u32(arg_2.xz, var_0.d.yz)) >> (arg_1.x % 32u);
    let var_2 = vec2<u32>(~u_input.b.x << (arg_2.x % 32u), select(4294967295u, arg_0.d.x, true));
    var_0 = Struct_1(arg_0.e, arg_0.b, var_0.e.zx, vec3<u32>(~_wgslsmith_add_u32(61517u, arg_1.x), arg_1.x, 23434u), vec4<f32>(_wgslsmith_div_f32(arg_0.e.x, arg_3), 1142f, _wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(abs(var_0.e.x))), _wgslsmith_f_op_f32(829f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_div_f32(arg_3, 610f)))));
    global0 = func_2(select(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_2.x, var_1, 54920u), ~arg_2 >> (vec4<u32>(52630u, arg_2.x, var_1, u_input.b.x) % vec4<u32>(32u))), arg_2, !((u_input.a & u_input.c.x) >= u_input.d)));
    return _wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(var_0.e, arg_0.a)))), var_0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.x, arg_0.c.x, arg_0.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<f32>(-388f, -843f, -385f, 738f), vec3<bool>(false, true, false), vec2<f32>(-790f, 481f), vec3<u32>(18253u, u_input.b.x, 17898u), vec4<f32>(-516f, -335f, -782f, -1418f)), vec3<u32>(7007u, u_input.b.x, 0u), vec4<u32>(9532u, 4294967295u, 4294967295u, u_input.b.x), 982f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(216f, 1125f, 1314f, -816f), vec4<f32>(627f, 271f, 2342f, -850f))))))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(true, select(all(vec3<bool>(true, false, false)), all(vec2<bool>(false, true)), true), any(vec3<bool>(true, false, true)) && true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-392f, 265f)))) + vec2<f32>(-427f, -1462f)), vec2<f32>(1f, 1f), false)), select(~_wgslsmith_clamp_vec3_u32(u_input.b.yyy, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), ~vec3<u32>(1u, 44543u, u_input.b.x)), u_input.b.yyy, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<f32>(-1000f, -526f, -1850f, _wgslsmith_div_f32(-152f, 381f)), vec3<bool>(any(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, -926f)), u_input.b.ywy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1416f, -439f, -1000f) + vec4<f32>(1344f, -1195f, -837f, 734f)) + vec4<f32>(297f, -929f, -1081f, -2479f))), vec3<u32>(select(u_input.b.x & u_input.b.x, u_input.b.x, true), _wgslsmith_sub_u32(u_input.b.x >> (7239u % 32u), ~u_input.b.x), u_input.b.x), countOneBits(max(u_input.b | u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 42763u, 14624u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) - 1f))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(exp2(var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(var_0.e.x + -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))), select(var_0.b, vec3<bool>(var_0.b.x, false, true), var_0.b.x), var_0.a.zx, _wgslsmith_add_vec3_u32(~u_input.b.yzz, abs(u_input.b.xyx)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.a));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, 1454f, var_0.a.x) + var_0.e))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_0.e, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.c, vec3<u32>(u_input.b.x, var_0.d.x, 79589u), var_0.a), var_0.d, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 39647u), var_0.e.x)).x, _wgslsmith_f_op_f32(-614f + -536f), var_0.c.x, _wgslsmith_f_op_f32(var_0.e.x * 1468f)), false))), !(!vec3<bool>(var_0.e.x < var_0.e.x, all(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)), any(vec4<bool>(false, true, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, var_0.a.x)) - _wgslsmith_f_op_vec2_f32(-var_0.a.wx)), !var_0.b.x))), vec3<u32>(var_0.d.x, ~min(~7866u, var_0.d.x), abs(1u)), vec4<f32>(_wgslsmith_f_op_f32(floor(756f)), var_0.a.x, var_0.e.x, _wgslsmith_f_op_f32(func_3())));
    var var_1 = _wgslsmith_sub_i32(-9495i, u_input.a) > _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 2147483647i), u_input.c.ww)), ((u_input.c.yyw ^ u_input.c.yyz) >> (~vec3<u32>(1u, var_0.d.x, 69764u) % vec3<u32>(32u))) ^ ~(-u_input.c.yxx));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1243f, -561f, -561f, _wgslsmith_div_f32(-604f, 312f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.e.x)))), var_0.a), vec3<bool>(var_0.b.x, !all(!var_0.b), !any(!var_0.b.yx)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2207f, -690f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1757f, var_0.e.x) + vec2<f32>(var_0.e.x, -356f))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -1204f)))), vec3<u32>(countOneBits(var_0.d.x), _wgslsmith_clamp_u32(1u, 1u, ~(var_0.d.x << (u_input.b.x % 32u))), u_input.b.x >> ((~u_input.b.x & ~var_0.d.x) % 32u)), var_0.e);
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.e.xw)))), firstLeadingBit(vec3<i32>(28847i, max(u_input.d, -56038i), u_input.a >> (var_2.d.x % 32u))) | -vec3<i32>(u_input.c.x, i32(-1i) * -1i, u_input.d));
}


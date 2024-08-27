struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(1i, 2147483647i, -1i, 12080i), vec4<i32>(-26702i, 1i, -47182i, 2147483647i), vec4<i32>(2147483647i, -1i, 12525i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -14622i), vec4<i32>(29907i, 0i, 2147483647i, 1i), vec4<i32>(1i, -1i, 1i, 0i), vec4<i32>(7222i, 0i, i32(-2147483648), 4782i), vec4<i32>(51321i, -1700i, -24644i, -9441i), vec4<i32>(-15212i, 37847i, 0i, -1047i), vec4<i32>(2147483647i, -1i, -1i, 37521i), vec4<i32>(-950i, 47253i, -12690i, 2147483647i), vec4<i32>(0i, 39136i, 14999i, 1i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i), vec4<i32>(-61545i, 37255i, i32(-2147483648), 49099i), vec4<i32>(31086i, 3883i, 26211i, i32(-2147483648)), vec4<i32>(2147483647i, -33583i, 0i, -27472i), vec4<i32>(i32(-2147483648), 49576i, 35291i, 2147483647i), vec4<i32>(27424i, -7582i, -24600i, i32(-2147483648)), vec4<i32>(1i, 1i, 1i, 2147483647i), vec4<i32>(-55501i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(-70014i, 1i, 1i, 32257i), vec4<i32>(-15255i, -8359i, -1i, -37628i), vec4<i32>(17294i, 0i, 0i, -16360i), vec4<i32>(0i, 5942i, -1i, 33715i), vec4<i32>(-15382i, -1i, 2147483647i, -1i), vec4<i32>(-1i, i32(-2147483648), -17545i, -11885i));

var<private> global1: array<vec3<bool>, 22>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec4<i32>, 26>();
    var var_0 = Struct_1(min(u_input.d.zy, min(vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, u_input.d.x)), abs(min(vec2<u32>(4294967295u, 1u), u_input.d.yz)))), 20528u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f + -1218f) + 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1041f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(675f - _wgslsmith_f_op_f32(floor(-700f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1175f - 333f), _wgslsmith_f_op_f32(-630f * -335f)))), _wgslsmith_f_op_f32(502f * _wgslsmith_f_op_f32(abs(-1372f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f)))));
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(458f)), var_0.d), var_0.e.yy, vec2<bool>(false, true)));
    return !(!select(vec2<bool>(all(vec2<bool>(true, false)), u_input.b.x >= 0i), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), false));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<i32>, 26>();
    var var_0 = Struct_1(~vec2<u32>(~(u_input.d.x & arg_0.x), arg_1.a.x), ~1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2190f, arg_1.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, arg_1.c.x) + arg_1.e.xy))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, 409f)), _wgslsmith_div_vec2_f32(arg_1.e.xz, arg_1.c))))), select(func_3(), !vec2<bool>(arg_2, arg_2), !(!arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e.x - -870f), _wgslsmith_f_op_f32(abs(arg_1.d)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)) + arg_1.e.x), 1185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x)))));
    let var_1 = ~(~(~abs(u_input.e)));
    let var_2 = 2147483647i;
    let var_3 = Struct_1(~max(~vec2<u32>(4294967295u, 10490u), min(~arg_0.wx, ~vec2<u32>(1u, arg_0.x))), ~(~_wgslsmith_div_u32(~arg_0.x, ~4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + arg_1.e.x)))), 501f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.e.x, 195f)), _wgslsmith_f_op_f32(max(var_0.d, -626f)), _wgslsmith_f_op_f32(step(1387f, arg_1.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)), var_0.c.x, -855f))));
    return arg_1;
}

fn func_1() -> f32 {
    global1 = array<vec3<bool>, 22>();
    global0 = array<vec4<i32>, 26>();
    let var_0 = func_2(u_input.d, Struct_1(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.d.yw, vec2<u32>(4294967295u, 0u))), _wgslsmith_add_u32(u_input.d.x, max(u_input.d.x, 69487u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1540f - 802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f) * _wgslsmith_f_op_f32(trunc(384f)))), -465f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-419f, -362f, 396f), vec3<f32>(379f, -682f, 1876f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, 488f, 1416f)), 0i >= u_input.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-960f, 908f, 2626f) - vec3<f32>(-1044f, 976f, -1100f)) + vec3<f32>(-946f, 771f, -162f)))), true);
    global1 = array<vec3<bool>, 22>();
    global0 = array<vec4<i32>, 26>();
    return var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 22>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), 954f)))), 1636f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, _wgslsmith_div_f32(-641f, 1000f), 877f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -1334f, 475f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(275f, -744f, 604f))))))));
    var var_1 = u_input.d.x << (firstTrailingBit(u_input.d.x) % 32u);
    var var_2 = Struct_2(Struct_1(func_2(~_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(0u, u_input.d.x, 0u, 0u)), func_2(vec4<u32>(u_input.e, 1u, u_input.a, u_input.d.x), Struct_1(u_input.d.zz, u_input.e, vec2<f32>(-1210f, 662f), var_0.x, vec3<f32>(214f, -1234f, -709f)), true), all(vec3<bool>(true, true, true))).a, ~min(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 1u), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -143f))))), Struct_1(select(vec2<u32>(28373u, 1u ^ u_input.a), func_2(select(u_input.d, u_input.d, false), func_2(u_input.d, Struct_1(u_input.d.yy, 27667u, vec2<f32>(var_0.x, -551f), var_0.x, vec3<f32>(-1534f, -739f, 110f)), false), any(global1[_wgslsmith_index_u32(u_input.a, 22u)])).a, vec2<bool>(all(vec4<bool>(true, false, true, true)), select(true, true, false))), ~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-1000f * 2220f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1188f * 407f)))), -1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-171f, -528f, 730f), vec3<f32>(-1099f, var_0.x, var_0.x))), func_2(u_input.d, Struct_1(u_input.d.wz, 76449u, var_0.yx, var_0.x, vec3<f32>(var_0.x, 143f, var_0.x)), true).e)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(981f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 470f), true)))))));
    global0 = array<vec4<i32>, 26>();
    var var_3 = select(select(vec3<bool>(true, func_3().x, select(false, u_input.b.x >= u_input.c, true)), vec3<bool>(true, all(vec2<bool>(true, true)), true), true), !vec3<bool>(_wgslsmith_f_op_f32(trunc(var_2.a.c.x)) == _wgslsmith_f_op_f32(965f - 1099f), !(var_2.b.c.x != -364f), func_3().x), -411f == _wgslsmith_f_op_f32(-var_2.b.d));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x - 2101f), 1412f));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xx + var_2.b.e.zz) - vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.a.d)), _wgslsmith_div_f32(var_2.b.d, -943f)));
    let var_6 = vec2<i32>(select(firstLeadingBit(i32(-1i) * -10360i) >> (func_2(vec4<u32>(u_input.e, 69507u, var_2.a.b, u_input.d.x), Struct_1(vec2<u32>(u_input.a, 0u), 4294967295u, vec2<f32>(-476f, var_2.a.e.x), var_5.x, vec3<f32>(1261f, 825f, var_4.x)), true).a.x % 32u), 1i, true), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(873f, 359f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(2502f * -408f))), _wgslsmith_f_op_f32(-var_5.x)))));
}


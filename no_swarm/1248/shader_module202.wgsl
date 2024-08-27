struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = select(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), true, any(select(vec4<bool>(true, all(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(452f, 630f, 1000f, 543f), vec4<f32>(-451f, -1000f, 1080f, 272f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1294f, -767f, 1418f, 1005f), vec4<f32>(-195f, -1444f, 394f, 1096f), vec4<bool>(var_0, true, true, var_0))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1242f, -1438f, -263f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2067f, -265f, 579f, 906f)), var_0 != var_0)))));
    var_1 = Struct_1(vec4<f32>(-1584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1837f, -1000f) * var_1.a.x)), -246f, _wgslsmith_f_op_f32(584f - _wgslsmith_f_op_f32(abs(var_1.a.x)))));
    let var_2 = ~_wgslsmith_sub_u32(~(~_wgslsmith_div_u32(arg_0, arg_0)), 4294967295u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.a))));
    return vec3<u32>(~(var_2 << (u_input.e.x % 32u)), u_input.c, 0u);
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = arg_0.zz;
    var_0 = u_input.e.yy;
    return func_3(1u);
}

fn func_1() -> vec3<u32> {
    global0 = 18764u;
    global0 = 1u;
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(808f, -335f, 631f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-108f, 1762f, -849f))))) + vec3<f32>(596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(948f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = _wgslsmith_dot_vec3_u32(u_input.e, ~u_input.e);
    return u_input.e << (_wgslsmith_mod_vec3_u32(func_2(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(14221u, u_input.d, 1u, u_input.e.x), vec4<u32>(1u, 12803u, 0u, u_input.e.x)))), ~(~u_input.e)) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32) -> vec3<bool> {
    global0 = u_input.d;
    var var_0 = vec2<u32>(_wgslsmith_add_u32(4294967295u, 10174u >> (~u_input.e.x % 32u)), ~_wgslsmith_mod_u32(1236u, max(34730u, min(1u, 416u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(926f, -1475f, -782f, -923f), vec4<f32>(586f, -139f, 752f, 745f)))), vec4<f32>(-946f, _wgslsmith_f_op_f32(min(1539f, -1747f)), _wgslsmith_f_op_f32(min(1072f, 612f)), _wgslsmith_f_op_f32(f32(-1f) * -1206f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1440f, 1199f, 516f, -160f))) - vec4<f32>(-509f, 2004f, -393f, -158f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, -1667f, 1000f, 896f)), vec4<f32>(674f, 595f, -288f, -246f)))))));
    var_0 = arg_0.xy;
    var_0 = abs(func_1().xx);
    return select(!vec3<bool>(u_input.d > u_input.c, true, true), select(vec3<bool>(!all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)) || (var_1.a.x < _wgslsmith_div_f32(var_1.a.x, -1080f))), select(!vec3<bool>(arg_0.x == u_input.d, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(select(all(vec2<bool>(true, false)), false, any(vec2<bool>(true, true))), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), !any(vec4<bool>(false, true, true, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<i32>) -> StorageBuffer {
    global0 = 1u;
    global0 = u_input.c;
    global0 = min(~(~_wgslsmith_add_u32(u_input.c, u_input.d)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(13935u, firstTrailingBit(u_input.e.x), u_input.e.x), vec3<u32>(5237u, 4294967295u, 20808u) & max(vec3<u32>(1229u, u_input.e.x, 42985u), vec3<u32>(u_input.c, u_input.c, 0u))) % 32u), ~func_3(select(56062u >> (u_input.c % 32u), _wgslsmith_mod_u32(26218u, 1u), !arg_2.x)).x);
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, 141f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_0.a.x) - vec2<f32>(arg_1.a.x, -243f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.yw)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x * -696f)), arg_2.x))));
    let var_1 = arg_1.a.yzy;
    return StorageBuffer(_wgslsmith_f_op_f32(-arg_0.a.x), u_input.a.yzy, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -480f))), -714f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f))), _wgslsmith_clamp_i32(reverseBits(arg_3.x), -(~_wgslsmith_mult_i32(arg_3.x, -29580i)), arg_3.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2049f))), 1f, _wgslsmith_f_op_f32(1305f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1578f * 519f) + _wgslsmith_f_op_f32(-arg_0.a.x))), -118f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u << (u_input.c % 32u);
    global0 = ~(~firstLeadingBit(~1u));
    global0 = _wgslsmith_sub_u32(77932u, 1u);
    global0 = reverseBits(~(43572u ^ min(~u_input.e.x, 4294967295u)));
    global0 = 4294967295u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1315f)), 398f)) - -916f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(488f, -1058f) - vec2<f32>(-1000f, -438f)), vec2<f32>(_wgslsmith_f_op_f32(max(2483f, -527f)), _wgslsmith_f_op_f32(-1259f * 1063f)), -1i <= -u_input.a.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 171f, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = func_5(Struct_1(_wgslsmith_div_vec4_f32(var_2, vec4<f32>(_wgslsmith_f_op_f32(floor(-564f)), var_2.x, var_1.x, var_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_2))), !func_4(countOneBits(func_1()), countOneBits(1i)), vec2<i32>(0i, ~(-40886i)));
}


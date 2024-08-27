struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-1298f, 256f, 153f), vec3<f32>(278f, -1103f, 258f), vec3<f32>(1760f, 221f, -568f), vec3<f32>(501f, -450f, -866f), vec3<f32>(1000f, 1150f, -198f), vec3<f32>(1378f, -1424f, -432f), vec3<f32>(637f, -1030f, 362f), vec3<f32>(-1262f, 979f, -260f), vec3<f32>(-823f, -508f, -674f), vec3<f32>(1398f, -645f, -923f), vec3<f32>(776f, 895f, 1108f), vec3<f32>(-169f, -1471f, -1592f), vec3<f32>(-489f, -583f, 322f), vec3<f32>(1000f, -875f, -1501f), vec3<f32>(2173f, 286f, -1084f), vec3<f32>(464f, -188f, 2762f), vec3<f32>(-1000f, 376f, 1163f), vec3<f32>(-1000f, -1988f, 1595f));

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(4294967295u, 28373u, 14961u, 43871u), vec4<u32>(1u, 4294967295u, 1u, 54219u), vec4<u32>(71481u, 0u, 1u, 4294967295u), vec4<u32>(33329u, 12139u, 4294967295u, 62736u), vec4<u32>(4294967295u, 63656u, 33214u, 63709u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(1u, 1u, 81684u, 4294967295u), vec4<u32>(4294967295u, 1u, 35418u, 30572u), vec4<u32>(49682u, 38480u, 1u, 0u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(4620u, 19639u, 0u, 49294u), vec4<u32>(20759u, 9919u, 43048u, 8158u), vec4<u32>(0u, 0u, 0u, 26685u), vec4<u32>(4294967295u, 37206u, 0u, 62856u), vec4<u32>(33939u, 30883u, 43851u, 46518u), vec4<u32>(21258u, 59813u, 1u, 16164u), vec4<u32>(12112u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 961u, 0u, 26391u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(32962u, 24511u, 4294967295u, 4294967295u), vec4<u32>(1u, 53059u, 0u, 0u), vec4<u32>(1u, 1u, 46040u, 1u), vec4<u32>(4294967295u, 866u, 1u, 1u), vec4<u32>(9059u, 0u, 1u, 0u), vec4<u32>(4294967295u, 18228u, 5271u, 89421u), vec4<u32>(0u, 0u, 1u, 10489u), vec4<u32>(40107u, 0u, 31983u, 24681u), vec4<u32>(1u, 59989u, 0u, 30328u), vec4<u32>(65190u, 4294967295u, 85184u, 29238u), vec4<u32>(100092u, 4294967295u, 22910u, 4294967295u), vec4<u32>(9336u, 0u, 4639u, 4294967295u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(-2384i, arg_1.b, arg_1.c);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-452f)), _wgslsmith_f_op_f32(min(944f, -678f))), -582f, true)) - 1f);
    var var_3 = Struct_1(4294967295u, ~(i32(-1i) * -14139i) << (1u % 32u));
    global1 = array<vec3<f32>, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(895f, _wgslsmith_div_f32(865f, -1174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)), (4294967295u | arg_3.a) <= 4294967295u)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f) * _wgslsmith_f_op_f32(421f - 2534f)), 190f)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(415f, 1055f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-281f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(func_2(Struct_3(0u), Struct_2(global0.a, global0.b, global0.c), vec3<bool>(global0.b, global0.b, global0.b), Struct_3(22961u))))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(step(-773f, -627f))))));
    var_0 = _wgslsmith_div_f32(133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)) - -189f));
    let var_1 = u_input.c.x;
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) - -961f)))));
    return Struct_3(12509u);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.c.x & ~(arg_1.a | 40375u), 74095u), -2147483647i);
    var var_1 = _wgslsmith_clamp_u32(arg_1.a, u_input.c.x, 52776u) & _wgslsmith_sub_u32(37038u, _wgslsmith_dot_vec2_u32(~(~u_input.c.zz), u_input.c.xx | u_input.c.yz));
    let var_2 = Struct_2(var_0.b, !(!(u_input.b.x > abs(global0.c.x))), -global0.c);
    global2 = array<vec4<u32>, 31>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)))), func_1());
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1602f)) * -1772f) + _wgslsmith_f_op_f32(f32(-1f) * -1036f));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(110658u, 31u)], ~(~(vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) ^ vec4<u32>(u_input.c.x, var_0.a, 0u, 4294967295u)))), ~_wgslsmith_dot_vec3_i32(reverseBits(global0.c.zwz), ~global0.c.xyw) | (global0.a >> (var_0.a % 32u)));
    var var_3 = true;
    var var_4 = true;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -750f), _wgslsmith_f_op_f32(f32(-1f) * -155f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1155f, 1089f)))))) - -656f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-12776i) >> (abs(1u) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(832f)), _wgslsmith_f_op_f32(step(295f, 419f)))))), vec4<i32>(firstLeadingBit(2147483647i), ~var_2.b, _wgslsmith_clamp_i32(var_2.b, -reverseBits(0i), 17539i), ~var_2.b | (i32(-1i) * -u_input.a)));
}


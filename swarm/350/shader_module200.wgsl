struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(42516u, 1i, Struct_1(vec4<f32>(-1000f, -487f, 1309f, -316f), 4294967295u, vec3<bool>(false, false, false)), 256f, vec2<f32>(1337f, -456f)), Struct_2(13251u, 27693i, Struct_1(vec4<f32>(333f, 1949f, 457f, 777f), 18827u, vec3<bool>(false, false, true)), -476f, vec2<f32>(-556f, -844f)), Struct_2(4988u, 3344i, Struct_1(vec4<f32>(-1691f, -118f, 2133f, 115f), 74993u, vec3<bool>(true, false, true)), -1358f, vec2<f32>(751f, -1470f)), Struct_2(1u, 0i, Struct_1(vec4<f32>(-1000f, -1879f, 119f, -308f), 48576u, vec3<bool>(true, true, false)), -311f, vec2<f32>(558f, 626f)), Struct_2(58138u, 1i, Struct_1(vec4<f32>(-470f, -462f, 936f, -739f), 36027u, vec3<bool>(true, false, false)), 1752f, vec2<f32>(202f, 849f)), Struct_2(1u, -8153i, Struct_1(vec4<f32>(-1333f, -1982f, -1000f, -408f), 0u, vec3<bool>(true, false, true)), 684f, vec2<f32>(629f, 732f)), Struct_2(0u, -56384i, Struct_1(vec4<f32>(-937f, -1000f, 242f, 992f), 43080u, vec3<bool>(false, false, true)), -559f, vec2<f32>(-1061f, 106f)), Struct_2(72965u, 50849i, Struct_1(vec4<f32>(-1088f, 442f, 1149f, 560f), 12403u, vec3<bool>(false, false, true)), -704f, vec2<f32>(1315f, 416f)), Struct_2(74320u, 2147483647i, Struct_1(vec4<f32>(-369f, 263f, -766f, -440f), 65764u, vec3<bool>(false, false, false)), 1263f, vec2<f32>(-391f, -211f)), Struct_2(25569u, -1i, Struct_1(vec4<f32>(1297f, -1076f, -406f, 1283f), 49275u, vec3<bool>(false, false, true)), 304f, vec2<f32>(893f, -425f)), Struct_2(4294967295u, -1i, Struct_1(vec4<f32>(2191f, -1000f, -460f, -189f), 0u, vec3<bool>(false, false, false)), -1595f, vec2<f32>(458f, -1000f)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(1251f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * -176f)))));
    global0 = vec3<bool>(false, all(!select(!vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), false)), global0.x);
    var var_1 = var_0;
    let var_2 = true;
    global0 = vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -1400f) * _wgslsmith_f_op_f32(f32(-1f) * -1385f)))) < _wgslsmith_f_op_f32(abs(1211f)), all(vec2<bool>(true, true)), false);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(-890f);
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(484f, var_0.a) * _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, 37788u, u_input.b), Struct_3(var_0.a))))) * 532f));
    let var_1 = global0.xx;
    global0 = select(!vec3<bool>(global0.x, !var_1.x || true, true), select(vec3<bool>(!any(vec4<bool>(var_1.x, var_1.x, var_1.x, global0.x)), any(select(global0.xy, vec2<bool>(global0.x, global0.x), false)), any(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, false, var_1.x), vec3<bool>(false, true, true)))), select(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, true, false)), vec3<bool>(!global0.x, true, var_1.x), true), 25046u != u_input.b), vec3<bool>(!select(all(vec2<bool>(global0.x, false)), true, true), var_1.x, var_1.x));
    let var_2 = countOneBits(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 83437u), vec2<u32>(29707u, u_input.b)) & vec2<u32>(32255u, u_input.b)));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1522f), _wgslsmith_f_op_f32(sign(-366f)))))))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2()), ~u_input.b, !vec3<bool>(true, all(select(global0.yy, vec2<bool>(true, true), vec2<bool>(true, false))), global0.x));
    var var_1 = countOneBits(firstLeadingBit(_wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(u_input.b, 1u)), vec2<u32>(var_0.b, 1u))));
    let var_2 = Struct_3(-715f);
    var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(62606u, 0u), vec2<u32>(~(4294967295u ^ _wgslsmith_clamp_u32(var_0.b, var_0.b, 1u)), ~_wgslsmith_mod_u32(var_1.x ^ var_0.b, abs(var_1.x))));
    let var_3 = var_2;
    return Struct_3(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.x);
    global0 = select(vec3<bool>(!global0.x, global0.x, false), select(!select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, global0.x), global0.x)), vec3<bool>(global0.x, any(!global0.zz), true), all(global0.yx)), select(vec3<bool>(any(!vec2<bool>(false, global0.x)), true, global0.x), vec3<bool>(true, global0.x & true, true & any(vec3<bool>(global0.x, global0.x, global0.x))), !select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, true), global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, true, global0.x)))));
    global0 = select(!vec3<bool>(global0.x, !(global0.x || global0.x), global0.x), !vec3<bool>(any(select(vec2<bool>(global0.x, global0.x), global0.zx, global0.x)), global0.x, -u_input.a.x != -u_input.c.x), !vec3<bool>(!(!global0.x), all(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), true)), global0.x));
    var var_1 = true;
    var_0 = func_1(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - -747f) * _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), var_0.a)))));
}


struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec3<bool>(true, true, false), 33582u, vec2<f32>(-1219f, 1000f)), Struct_4(vec3<bool>(true, false, false), 4294967295u, vec2<f32>(994f, 157f)), Struct_4(vec3<bool>(false, false, false), 29678u, vec2<f32>(-265f, -327f)), Struct_4(vec3<bool>(true, false, false), 4294967295u, vec2<f32>(-2045f, 1000f)), Struct_4(vec3<bool>(false, false, true), 4294967295u, vec2<f32>(-973f, 968f)), Struct_4(vec3<bool>(false, false, true), 4294967295u, vec2<f32>(1286f, 973f)), Struct_4(vec3<bool>(true, false, false), 0u, vec2<f32>(-2386f, -1240f)), Struct_4(vec3<bool>(true, true, false), 10998u, vec2<f32>(384f, -314f)), Struct_4(vec3<bool>(true, false, true), 4294967295u, vec2<f32>(-459f, -1312f)), Struct_4(vec3<bool>(true, false, true), 27584u, vec2<f32>(808f, 1635f)), Struct_4(vec3<bool>(false, false, true), 4294967295u, vec2<f32>(1000f, 306f)), Struct_4(vec3<bool>(true, false, false), 23210u, vec2<f32>(375f, 1141f)), Struct_4(vec3<bool>(true, true, true), 4294967295u, vec2<f32>(-1277f, -613f)), Struct_4(vec3<bool>(false, false, true), 26716u, vec2<f32>(1309f, -1000f)), Struct_4(vec3<bool>(false, false, true), 29078u, vec2<f32>(-856f, 1643f)), Struct_4(vec3<bool>(true, false, true), 4294967295u, vec2<f32>(-558f, -1381f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec4<bool>(false, false, true, false))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec2<bool>(false, all(vec4<bool>(true, true, true, false))));
    let var_1 = var_0.a;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-626f))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> vec3<bool> {
    global0 = array<Struct_4, 16>();
    var var_0 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) > _wgslsmith_f_op_f32(-arg_2.x)) && !any(vec4<bool>(false, false, false, false)));
    var var_1 = vec2<i32>(abs(i32(-1i) * -u_input.a.x), arg_0);
    let var_2 = ~(~(-1i));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) - _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), -1082f, arg_2.x);
    return !vec3<bool>(select(false, firstTrailingBit(var_2) > var_2, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(true, all(vec2<bool>(true, true)) & (var_3.x >= 526f), true));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(select(func_2(abs(i32(-1i) * -22984i), ~reverseBits(27371u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1148f)), vec3<bool>(true, false, !select(true, true, false)), !vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true)), 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, 363f) + vec2<f32>(-123f, -621f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1692f, -720f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1355f, 265f) - vec2<f32>(-296f, 478f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2187f, -791f), vec2<f32>(-1000f, 142f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1940f, -551f) - vec2<f32>(-536f, -383f)))))));
    var_0 = Struct_4(select(select(vec3<bool>(!var_0.a.x, all(vec2<bool>(var_0.a.x, true)), var_0.a.x), var_0.a, false), !vec3<bool>(false, var_0.a.x & var_0.a.x, -45007i <= u_input.a.x), !var_0.a), var_0.b | 4294967295u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(var_0.c)))), var_0.c)));
    var var_1 = vec3<bool>(any(select(var_0.a, vec3<bool>(all(var_0.a.zz), !var_0.a.x, any(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x))), vec3<bool>(true, any(vec3<bool>(true, var_0.a.x, var_0.a.x)), var_0.a.x))), true | var_0.a.x, true);
    var_1 = vec3<bool>((u_input.a.x <= u_input.a.x) && true, false, !all(var_0.a));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x) + _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), var_0.c.x, all(vec2<bool>(var_1.x, true)))), 568f), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 524f, -1649f, -2190f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, 448f, -806f, 465f)))), firstTrailingBit(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(1u, 15146u, 13230u)), ~(~vec3<u32>(40740u, 68246u, 87793u)))));
    var var_2 = true;
    var_0 = -653f;
    var_0 = _wgslsmith_f_op_f32(1697f - _wgslsmith_f_op_f32(round(-1861f)));
    var_0 = _wgslsmith_f_op_f32(floor(1505f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_sub_u32(20981u, 0u), _wgslsmith_add_u32(1u, ~1u)), ~_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(113647u, 10917u)), max(vec2<u32>(var_1.b, var_1.b), vec2<u32>(4294967295u, var_1.b))) ^ max(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 37706u), vec2<u32>(4294967295u, var_1.b)), reverseBits(~vec2<u32>(92535u, var_1.b))), u_input.a.x, countOneBits(_wgslsmith_add_vec4_u32(min(vec4<u32>(18488u, var_1.b, var_1.b, 4294967295u), vec4<u32>(var_1.b, var_1.b, 360u, var_1.b)), firstTrailingBit(vec4<u32>(var_1.b, var_1.b, var_1.b, 18827u)))) >> (~vec4<u32>(20813u, 1u, var_1.b, 1u) % vec4<u32>(32u)), -828f);
}


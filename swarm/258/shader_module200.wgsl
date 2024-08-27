struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec3<u32> {
    global0 = array<vec2<i32>, 3>();
    var var_0 = -(~(-1i) ^ u_input.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0)) - 652f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1241f, 960f)), _wgslsmith_f_op_f32(748f * -1385f)))))), !any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), arg_2.yyx, false, !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), u_input.c == 22654i), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)));
    return firstTrailingBit(vec3<u32>(arg_1.x & _wgslsmith_add_u32(0u, abs(var_1.c.x)), u_input.a.x, max(19752u, countOneBits(~0u))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, ~u_input.a.x >> (u_input.b % 32u)), vec3<u32>(18806u, 0u, _wgslsmith_div_u32(1u, abs(u_input.b)))) & vec3<u32>(1u, u_input.a.x, ~(~47452u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1314f + -952f)), arg_0)), !(false | (var_0.x >= var_0.x)), min(vec3<u32>(0u, ~u_input.b, u_input.b), vec3<u32>(var_0.x, 1u, var_0.x << (u_input.b % 32u))), true, vec2<bool>(any(vec4<bool>(true, true, true, true)), (u_input.c << (u_input.b % 32u)) > u_input.c)));
    let var_2 = Struct_2(var_1.a);
    let var_3 = Struct_3(Struct_1(var_2.a.a, all(var_1.a.e), vec3<u32>(var_0.x, u_input.a.x, select(43610u >> (var_0.x % 32u), u_input.a.x << (u_input.a.x % 32u), var_2.a.b)), !all(!var_1.a.e), var_2.a.e), var_2);
    var_0 = ~(~abs(func_3(var_2.a.a, var_3.a.c.yx, vec4<u32>(var_0.x, var_1.a.c.x, 46163u, u_input.a.x))));
    return var_3.b.a;
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_2(func_2(-458f));
    global0 = array<vec2<i32>, 3>();
    var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(round(var_0.a.a))));
    return ~firstLeadingBit(vec3<u32>(49213u, var_0.a.c.x, 5897u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1975f - 1608f)) * -539f), false, func_1(), true, select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false)), vec2<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false))), func_2(1066f).e)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(663f)), true, _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.a.x, 85371u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 74636u, 1u), vec3<u32>(u_input.b, 2708u, 0u), vec3<u32>(u_input.b, u_input.a.x, 0u))), all(vec3<bool>(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -1712f, -162f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, 179f, var_0.a.a) + vec3<f32>(686f, 1559f, -1409f)), vec3<f32>(893f, var_0.b.a.a, var_0.a.a))))), 67244u, max(_wgslsmith_clamp_u32(u_input.a.x, ~(~var_0.a.c.x), _wgslsmith_mod_u32(25531u, var_0.b.a.c.x)), ~u_input.a.x), u_input.c);
}


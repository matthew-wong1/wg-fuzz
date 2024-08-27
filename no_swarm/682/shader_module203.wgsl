struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> i32 {
    let var_0 = !(!global0.a);
    return 52781i;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = firstLeadingBit(vec4<i32>(14924i, max(5206i, _wgslsmith_mod_i32(-2147483647i, 2147483647i) << (arg_0 % 32u)), arg_2, ~firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, arg_2))));
    let var_1 = global0.a.wyw;
    let var_2 = Struct_1(select(!vec4<bool>(any(vec3<bool>(var_1.x, true, true)), true, true, any(arg_3.a.ywy)), select(!select(vec4<bool>(false, arg_1, var_1.x, arg_3.a.x), arg_3.a, arg_3.a), !(!global0.a), select(select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(global0.a.x, true, arg_3.a.x, global0.a.x), arg_1), vec4<bool>(arg_3.a.x, arg_3.a.x, true, true), any(vec3<bool>(true, true, global0.a.x)))), global0.a), _wgslsmith_add_vec3_u32(u_input.a, reverseBits(vec3<u32>(3826u, ~1u, max(arg_3.b.x, arg_3.b.x)))));
    let var_3 = vec3<bool>(any(var_2.a.yy), var_1.x, !var_1.x);
    var var_4 = Struct_1(var_2.a, ~firstTrailingBit(~vec3<u32>(var_2.b.x, global0.b.x, 95922u)));
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(!(!vec4<bool>(true, arg_2.a.x, true, true)), vec3<u32>(arg_0.b.x, ~min(4294967295u << (global0.b.x % 32u), arg_2.b.x), (~global0.b.x ^ countOneBits(arg_2.b.x)) & ~arg_1.b.x));
    let var_1 = arg_1.a.x;
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.b.x, 61760u, 4294967295u), vec3<u32>(0u, 12u, arg_1.b.x)), vec3<u32>(51886u, u_input.c, 2527u) & firstTrailingBit(vec3<u32>(32627u, 0u, arg_1.b.x)), _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, 4294967295u, 1u), arg_1.b), min(var_0.b, vec3<u32>(arg_1.b.x, arg_1.b.x, arg_0.b.x) >> (global0.b % vec3<u32>(32u))))), global0.b);
    let var_3 = Struct_1(vec4<bool>(func_3(~countOneBits(var_0.b.x), true, 1i, arg_1).x, arg_0.a.x, !(!any(vec4<bool>(false, var_0.a.x, false, false))), arg_1.a.x), arg_1.b);
    let var_4 = !all(!var_3.a.wyw);
    return ~reverseBits(vec2<u32>(u_input.b, global0.b.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> StorageBuffer {
    var var_0 = Struct_1(vec4<bool>(!(!arg_1.x) || global0.a.x, all(vec4<bool>(false, arg_1.x, true, false)), global0.a.x, u_input.b <= _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 11740u, arg_0.x), select(global0.b, arg_0, global0.a.zwx))), firstTrailingBit(~(~vec3<u32>(29223u, arg_0.x, 20876u))));
    var var_1 = 48994u;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-150f, -470f, 289f, -310f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, 306f, 507f, -973f)))), vec4<f32>(_wgslsmith_div_f32(-1782f, _wgslsmith_f_op_f32(f32(-1f) * -1761f)), _wgslsmith_f_op_f32(f32(-1f) * -192f), -1761f, 777f), all(!var_0.a.yxy)))));
    var var_3 = -73491i;
    var_3 = func_2();
    return StorageBuffer(func_4(Struct_1(func_3(4294967295u, !arg_1.x, 29513i, Struct_1(vec4<bool>(var_0.a.x, false, true, true), arg_0)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, var_0.b.x), vec3<u32>(u_input.a.x, var_0.b.x, 51944u)), vec3<u32>(arg_0.x, 1u, arg_0.x) | vec3<u32>(20897u, var_0.b.x, var_0.b.x))), Struct_1(vec4<bool>(arg_1.x || false, !var_0.a.x, false, all(global0.a.yz)), arg_0), Struct_1(!global0.a, ~(~vec3<u32>(17992u, global0.b.x, 22460u))), -(~vec3<i32>(0i, -63278i, 4702i))), vec3<f32>(605f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -432f), var_2.x, all(vec3<bool>(true, arg_1.x, false)))), var_2.x), ~1i, i32(-1i) * -1i, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0.b.x, 22054u), u_input.a)), !select(!global0.a.xwy, !global0.a.xwx, any(global0.a.zy)));
}


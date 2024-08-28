struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = arg_2.c;
    var var_1 = arg_2.c;
    let var_2 = select(select(max(vec3<u32>(arg_2.d.x, u_input.b, 41274u) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, arg_0, 6521u), vec3<u32>(u_input.b, 1u, 43508u)), ~max(vec3<u32>(1u, arg_2.d.x, 0u), vec3<u32>(arg_0, 20519u, arg_0))), ~(vec3<u32>(u_input.a, 4294967295u, arg_2.d.x) | vec3<u32>(3946u, 4294967295u, 0u)) & vec3<u32>(countOneBits(arg_0), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, u_input.b, arg_0), vec4<u32>(0u, arg_2.d.x, 1u, 4130u))), any(arg_2.a.wyy)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(~4294967295u, u_input.b), arg_0), max(abs(vec3<u32>(arg_2.d.x, 0u, 1u)), vec3<u32>(arg_2.d.x, 1u, ~arg_0))), arg_2.a.wzx);
    var_1 = Struct_1(439f, var_1.b);
    var var_3 = Struct_3(vec4<u32>(arg_2.d.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, arg_2.d.x, u_input.b, 22487u), vec4<u32>(41915u, u_input.a, 39472u, 9133u) >> (vec4<u32>(20744u, 18236u, 22906u, var_2.x) % vec4<u32>(32u))), max(arg_0, countOneBits(arg_2.d.x)) & min(~arg_0, 0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(36039u, 1u, _wgslsmith_sub_u32(arg_0, 1u)), _wgslsmith_sub_u32(arg_2.d.x, _wgslsmith_mult_u32(u_input.a, 0u)))));
    return abs(var_3.a | ~abs(var_3.a ^ vec4<u32>(1u, 23052u, arg_0, 18580u)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = Struct_3(~(~func_3(0u, false, Struct_4(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), Struct_1(-125f, vec3<f32>(996f, arg_1, arg_1)), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(arg_0, false)))) << (vec4<u32>(u_input.b, u_input.b, 0u, ~(~u_input.b)) % vec4<u32>(32u)));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(var_0.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(-382f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, 566f, arg_1)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 393f, arg_1) - vec3<f32>(181f, 1026f, -2419f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1727f, arg_1, 306f), vec3<f32>(arg_1, arg_1, -838f)))))))));
    let var_2 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~(~(-62042i)), i32(-1i) * -1i)));
    return Struct_4(select(!select(!vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false), !vec4<bool>(true, arg_0, arg_0, true)), !select(vec4<bool>(true, true, arg_0, true), !vec4<bool>(arg_0, arg_0, arg_0, false), arg_0), !vec4<bool>(!arg_0, true, any(vec3<bool>(false, arg_0, arg_0)), arg_0)), select(!(!(!vec3<bool>(arg_0, true, false))), select(!(!vec3<bool>(true, arg_0, false)), vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, false)), arg_0), arg_0), all(vec4<bool>(true, true, all(vec2<bool>(arg_0, true)), false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_f_op_f32(-1107f * arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.b - var_1.b), var_1.b, select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, true), arg_0))))), ~(~var_0.a.zz), !select(vec2<bool>(false || arg_0, true), vec2<bool>(arg_0, any(vec2<bool>(arg_0, arg_0))), all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1516f)) - 410f), 1155f));
    var var_1 = func_2((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) >= var_0) & all(vec2<bool>(any(vec2<bool>(true, false)), false)), var_0);
    let var_2 = !(!(!select(!var_1.a.ywz, var_1.b, true)));
    var var_3 = (all(vec2<bool>(var_2.x, var_2.x)) || true) || var_2.x;
    let var_4 = func_2(var_1.b.x, var_1.c.b.x);
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b, ~(~u_input.a), _wgslsmith_div_u32(~abs(62953u), u_input.a), 3919u) << (~(~vec4<u32>(u_input.b, _wgslsmith_mod_u32(u_input.a, u_input.b), ~0u, u_input.a)) % vec4<u32>(32u));
    var var_1 = !any(vec2<bool>(true, true));
    var_1 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, false)), true & (u_input.a != 0u), all(vec3<bool>(true, true, true)), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), func_1())));
    var_1 = 17388u <= u_input.a;
    var var_2 = func_2(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))) | true, _wgslsmith_f_op_f32(350f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(146f * 645f)))))).c;
    var var_3 = 0i;
    var var_4 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(411f, -1310f, -695f, 425f))) + vec4<f32>(226f, var_2.b.x, var_2.a, -704f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, var_2.a, 794f, -343f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, var_2.b.x, 1000f, 510f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-904f, var_2.b.x, var_2.a, -1000f) - vec4<f32>(var_2.a, -586f, var_2.a, -498f)))))), u_input.a, ~u_input.b, vec3<u32>(var_0.x, _wgslsmith_sub_u32(~var_0.x, firstTrailingBit(30057u | var_0.x)), _wgslsmith_dot_vec4_u32(var_0, var_0)));
}


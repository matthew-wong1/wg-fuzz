struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_2(~((max(vec4<u32>(1646u, 74469u, 1u, u_input.b), vec4<u32>(u_input.b, 15853u, u_input.b, u_input.b)) << ((vec4<u32>(u_input.b, u_input.b, 1u, 53445u) >> (vec4<u32>(6791u, 47570u, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<u32>(u_input.b << (u_input.b % 32u), u_input.b, ~1u, 63649u)));
    let var_1 = Struct_1(!((all(vec4<bool>(true, true, false, true)) || false) && (_wgslsmith_f_op_f32(136f * arg_0) >= _wgslsmith_f_op_f32(-630f - arg_0))));
    var_0 = Struct_2(vec4<u32>(0u, var_0.a.x, ~28669u, var_0.a.x));
    let var_2 = Struct_2(var_0.a);
    var_0 = Struct_2(vec4<u32>(firstTrailingBit(40509u), _wgslsmith_sub_u32(u_input.b, 64745u), ~(~1u) | var_2.a.x, 4294967295u << (~(1u ^ var_0.a.x) % 32u)));
    return firstTrailingBit(_wgslsmith_mod_vec4_u32(reverseBits(~firstTrailingBit(vec4<u32>(3822u, var_2.a.x, var_0.a.x, 42897u))), var_2.a));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = countOneBits(arg_0.wwx);
    var var_1 = Struct_2(_wgslsmith_add_vec4_u32(firstLeadingBit(arg_0), arg_0));
    var var_2 = false;
    let var_3 = vec3<bool>(select(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(u_input.c.x < u_input.d.x, true, any(vec3<bool>(true, false, false)), true)), !(var_0.x < arg_0.x)), (1i != (min(-2147483647i, u_input.c.x) << (_wgslsmith_div_u32(4294967295u, 71313u) % 32u))) | true, true);
    let var_4 = Struct_1(all(vec2<bool>(true, any(!vec3<bool>(var_3.x, true, var_3.x)))));
    return vec4<bool>(!(abs(4294967295u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_0.x, 0u, arg_0.x), vec4<u32>(36801u, arg_0.x, arg_0.x, u_input.b))), var_4.a, (_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, u_input.d.x)), vec2<i32>(-1i, u_input.a)) >> (~(~4294967295u) % 32u)) >= ~select(u_input.c.x, -1i ^ u_input.c.x, true), var_3.x);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(269f)), -256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-183f + 1402f) - _wgslsmith_f_op_f32(ceil(-1104f))))));
    let var_1 = !func_3(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_0.a, var_0.a, _wgslsmith_div_vec4_u32(var_0.a, var_0.a)), ~var_0.a));
    var var_2 = 23678u;
    return !(!var_1.yzy);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~abs(vec2<u32>(u_input.b, 4294967295u)) ^ vec2<u32>(1u, 47542u << (u_input.b % 32u))) << (vec2<u32>(38127u, select(u_input.b, u_input.b, any(vec2<bool>(true, true)))) % vec2<u32>(32u));
    var var_1 = true;
    let var_2 = firstTrailingBit(vec2<i32>(16133i, 1i));
    var var_3 = func_4(true, Struct_1(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true))), any(func_1(any(vec3<bool>(true, true, true)), ~(~4654u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(~26462u) ^ _wgslsmith_mult_u32(var_0.x, 0u)), var_0.x);
}


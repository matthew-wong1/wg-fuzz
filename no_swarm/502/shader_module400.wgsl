struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> f32 {
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = vec2<bool>(!(0u >= (~0u ^ arg_1)), false);
    var var_1 = var_0;
    var_1 = !(!vec2<bool>(!arg_0, var_0.x));
    return i32(-1i) * -(~(~(-32313i)));
}

fn func_3() -> i32 {
    var var_0 = 858f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(522f)))))));
    let var_1 = min(~u_input.b.x, u_input.b.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2509f)))));
    var var_2 = (~reverseBits(~vec4<u32>(var_1, 4294967295u, u_input.b.x, 37457u)) >> (firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, var_1, var_1, u_input.b.x), vec4<u32>(57878u, 11993u, 0u, 1u), vec4<u32>(var_1, 5555u, 18692u, 1u)), vec4<u32>(var_1, var_1, var_1, u_input.b.x), vec4<bool>(true, true, true, true))) % vec4<u32>(32u))) ^ countOneBits(reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 81232u, 13398u), u_input.b), _wgslsmith_mod_u32(38585u, 1u), u_input.b.x, ~0u)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = !(!all(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(reverseBits(-2147483647i), _wgslsmith_f_op_f32(ceil(413f)), Struct_3(var_0, 1035f, Struct_2(Struct_1(665f, vec3<i32>(26787i, -16135i, u_input.a), var_0, -1i), Struct_1(600f, vec3<i32>(2147483647i, u_input.a, 0i), 11665u, u_input.a), vec2<bool>(var_1, var_1), Struct_1(-672f, vec3<i32>(u_input.a, 2147483647i, u_input.a), var_0, 35652i), vec2<i32>(43069i, 37576i)), vec2<i32>(0i, 2147483647i))))), _wgslsmith_f_op_f32(f32(-1f) * -286f), true)), -vec3<i32>(u_input.a << (30012u % 32u), func_2(var_1, 4294967295u, Struct_2(Struct_1(430f, vec3<i32>(12975i, u_input.a, -36244i), var_0, 46198i), Struct_1(-473f, vec3<i32>(5339i, 0i, 16880i), 31431u, u_input.a), vec2<bool>(false, false), Struct_1(1610f, vec3<i32>(-20137i, u_input.a, -24492i), var_0, -29174i), vec2<i32>(0i, u_input.a)), 574f), func_3()) & max(max(vec3<i32>(u_input.a, 34054i, 1i), vec3<i32>(-2147483647i, 16122i, u_input.a)), select(countOneBits(vec3<i32>(1i, -21228i, u_input.a)), select(vec3<i32>(u_input.a, -1i, -2147483647i), vec3<i32>(-22676i, u_input.a, u_input.a), vec3<bool>(var_1, true, var_1)), any(vec4<bool>(var_1, var_1, true, var_1)))), reverseBits(~abs(0u)) & u_input.b.x, abs(1i) << (_wgslsmith_sub_u32(var_0 >> (7729u % 32u), reverseBits(70129u)) % 32u));
    var var_3 = var_1;
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(var_2.b, var_2.b, select(vec3<i32>(-37477i, u_input.a, u_input.a), var_2.b, !vec3<bool>(var_1, true, var_1))));
}


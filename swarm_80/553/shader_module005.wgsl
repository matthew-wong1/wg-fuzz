struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(min(9889u, abs(2204u)), ~arg_0.x, 68006u), 4294967295u & ~min(arg_0.x, arg_0.x), arg_0.x, 29442u));
    var_0 = Struct_1(var_0.a & reverseBits(~(~vec4<u32>(0u, 2875u, 4294967295u, 2675u))));
    var_0 = Struct_1(var_0.a);
    return StorageBuffer(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = Struct_1(vec4<u32>(var_0, 43000u << (_wgslsmith_div_u32(35768u >> (var_0 % 32u), select(4294967295u, 1u, false)) % 32u), 0u, ~1u));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(~(var_1.a.x & var_1.a.x), var_0) >> (reverseBits(~22331u) % 32u), ~var_1.a.x, abs(var_0 | 0u), var_1.a.x);
    var_1 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(select(var_1.a, var_2, false), vec4<u32>(~34191u, 20838u | var_2.x, var_2.x | 0u, var_2.x), ~(vec4<u32>(4294967295u, 4294967295u, var_1.a.x, 15796u) ^ var_2)), var_1.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1328f, -429f)) + -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f - _wgslsmith_f_op_f32(max(1590f, -764f)))) - -1118f));
    var var_4 = max(1i, ~_wgslsmith_mod_i32(u_input.a.x, ~(~u_input.b.x)));
    let x = u_input.a;
    s_output = func_1(var_1.a.zz);
}


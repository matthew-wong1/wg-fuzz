struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: bool) -> Struct_1 {
    return Struct_1(min(1i, -41203i), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_1), _wgslsmith_sub_vec2_u32(u_input.c.yx, ~vec2<u32>(4294967295u, arg_1))), select(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(0u, arg_0)), u_input.c.yy, vec2<bool>(true, arg_2 > arg_2))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.wz >> (u_input.c.yy % vec2<u32>(32u));
    var var_1 = ~u_input.c.x;
    var_1 = 4294967295u;
    let var_2 = ~var_0.x;
    var_1 = ~4294967295u >> (u_input.b.x % 32u);
    return func_2(1u, 71776u, 1f, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(u_input.a.x | -4900i), firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, abs(u_input.c.x), 0u), ~4294967295u)));
    var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(floor(1000f));
    let var_2 = true;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-410f);
}


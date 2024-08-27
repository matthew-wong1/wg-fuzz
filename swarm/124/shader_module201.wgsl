struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    let var_0 = u_input.a;
    var var_1 = u_input.e.wyz;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.zx);
    var_2 = _wgslsmith_div_vec2_u32(var_0.xx, _wgslsmith_mult_vec2_u32(arg_0.zx, ~arg_0.zy));
    var_2 = ~(~vec2<u32>(_wgslsmith_clamp_u32(~8567u, u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 36248u, var_2.x)), 0u ^ reverseBits(arg_0.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec2<u32>(u_input.a.x, u_input.a.x)) ^ u_input.a.xy, u_input.a.xy, !select(var_0.xy, var_0.zz, func_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false, Struct_2(vec2<i32>(13131i, 54987i), false, 2147483647i), u_input.b.zy))), 857f, ~u_input.a.xz);
}


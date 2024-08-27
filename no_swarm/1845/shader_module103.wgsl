struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec3<i32>(7685i, (59633i | _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.b), ~u_input.b)) << (u_input.c.x % 32u), u_input.d.x);
    var_0 = false;
    var var_2 = ~(-20724i);
    var_0 = true;
    var_2 = -9650i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (((u_input.e & 60707u) << (~1u % 32u)) % 32u), _wgslsmith_clamp_u32(12884u, ~u_input.a, 19430u) ^ 4294967295u, ~u_input.c, -112f, reverseBits(~(~(-2147483647i)) & _wgslsmith_mod_i32(-39769i, u_input.b << (u_input.e % 32u))));
}


struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.e, max(-u_input.a, -(~reverseBits(-49927i))));
    var_0 = firstTrailingBit(vec2<i32>(~u_input.a, ~52381i) & (~vec2<i32>(var_0.x, var_0.x) << (~(~vec2<u32>(81742u, u_input.d.x)) % vec2<u32>(32u))));
    var_0 = -(~vec2<i32>(23638i, ~var_0.x));
    let var_1 = 0u;
    var var_2 = ~((~(-34173i) ^ _wgslsmith_div_i32(-1i, u_input.a)) ^ 2147483647i) & u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-434f, ~max(-vec4<i32>(44436i, u_input.a, var_0.x, 1i), vec4<i32>(var_0.x, -2147483647i, -1i, -27939i) >> (vec4<u32>(var_1, 127614u, u_input.d.x, 86208u) % vec4<u32>(32u))) & abs(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -33216i, u_input.e), vec4<i32>(var_0.x, 8250i, u_input.e, 0i)))));
}


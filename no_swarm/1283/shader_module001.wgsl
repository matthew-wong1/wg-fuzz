struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~reverseBits(~u_input.c.x & _wgslsmith_div_u32(u_input.c.x, 41553u)));
    var var_1 = u_input.c.zx;
    var_1 = abs(u_input.c.zz);
    let var_2 = vec2<i32>(u_input.d.x, _wgslsmith_add_i32(u_input.b.x, ~(-2147483647i) & u_input.d.x));
    let var_3 = u_input.c;
    var var_4 = !(firstTrailingBit(~(~1i)) >= (i32(-1i) * -_wgslsmith_mod_i32(0i, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(countOneBits(-var_2.x), u_input.b.x), u_input.b.yy);
}


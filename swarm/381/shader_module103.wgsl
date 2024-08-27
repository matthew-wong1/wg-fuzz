struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<i32, 24> = array<i32, 24>(40819i, 1i, 0i, 1i, -27193i, i32(-2147483648), 1i, i32(-2147483648), 1i, 2147483647i, i32(-2147483648), 1i, -38700i, -11546i, i32(-2147483648), 24459i, 61306i, 0i, -1i, 51692i, -33466i, 12752i, -1i, 2147483647i);

var<private> global2: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 24>();
    var var_0 = abs(u_input.e);
    var var_1 = -(abs(vec2<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(31900u, 24u)]), ~0i)) | u_input.b);
    var_1 = countOneBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.c, 24u)], -3206i), ~31375i), _wgslsmith_mult_i32(-12629i, u_input.b.x)), ~(~vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(23543u, 24u)] << (1u % 32u), u_input.d)), 800f, u_input.b);
}


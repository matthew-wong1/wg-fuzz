struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(2147483647i, 2147483647i, 50438i, 1i), vec4<i32>(-5760i, -53218i, 3554i, 4086i), vec4<i32>(11205i, i32(-2147483648), -19189i, 1i), vec4<i32>(1i, 1i, 2147483647i, -46819i), vec4<i32>(20017i, i32(-2147483648), i32(-2147483648), 1984i), vec4<i32>(-22854i, i32(-2147483648), 0i, 1i), vec4<i32>(1i, -44599i, -1i, -1i), vec4<i32>(2147483647i, 0i, -22513i, i32(-2147483648)), vec4<i32>(1i, 0i, 35311i, 0i), vec4<i32>(i32(-2147483648), -24384i, -11925i, -40463i), vec4<i32>(24254i, -21419i, -1i, 0i), vec4<i32>(-15558i, 27934i, 63273i, -60699i), vec4<i32>(1i, 2147483647i, 2147483647i, 14343i), vec4<i32>(-14411i, i32(-2147483648), 0i, -69450i), vec4<i32>(-1i, -44210i, 1i, -24337i), vec4<i32>(1i, 3610i, 53024i, 61908i), vec4<i32>(-16670i, -16959i, 0i, 11081i), vec4<i32>(1i, 0i, 9707i, 1i), vec4<i32>(2147483647i, 2147483647i, 0i, -1i), vec4<i32>(-9791i, 14711i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 0i, -1i, -15914i), vec4<i32>(-30320i, -1i, -64336i, 42047i), vec4<i32>(i32(-2147483648), -16072i, -35872i, 0i), vec4<i32>(-6151i, 12685i, 0i, -1i), vec4<i32>(52947i, 45572i, 1i, 51111i), vec4<i32>(42393i, i32(-2147483648), -33567i, 7919i));

var<private> global1: array<vec4<bool>, 14>;

var<private> global2: array<Struct_2, 3>;

var<private> global3: Struct_2 = Struct_2(4294967295u, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(38080u, global3.b);
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    var var_1 = _wgslsmith_mult_u32(1u, global3.a) ^ ((~(~4294967295u) ^ _wgslsmith_sub_u32(23338u & var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, global3.a), vec4<u32>(35447u, 24828u, 1u, u_input.d)))) >> (~var_0.a % 32u));
    var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | (-(u_input.a ^ 30819i) & -(-16672i ^ u_input.c)), abs(vec3<u32>(select(~1u, ~var_0.a, 2147483647i >= u_input.c), u_input.b, u_input.d)), 3881i);
}


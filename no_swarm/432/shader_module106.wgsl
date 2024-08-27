struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 1u, 7752u, 1u, 4294967295u, 2442u, 0u, 0u, 4294967295u, 5848u, 0u, 4294967295u, 11608u, 22817u, 0u, 0u, 58238u, 0u, 1u, 95272u, 0u, 35036u, 34673u, 24646u, 23762u, 0u, 1u);

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(true, false)), Struct_3(vec2<i32>(-8031i, i32(-2147483648)), vec2<bool>(true, true)), Struct_3(vec2<i32>(1i, 1i), vec2<bool>(false, false)), Struct_3(vec2<i32>(7768i, 1i), vec2<bool>(false, true)), Struct_3(vec2<i32>(16648i, -1i), vec2<bool>(true, false)), Struct_3(vec2<i32>(39073i, 18386i), vec2<bool>(false, true)), Struct_3(vec2<i32>(i32(-2147483648), 0i), vec2<bool>(false, false)), Struct_3(vec2<i32>(1i, 0i), vec2<bool>(true, false)), Struct_3(vec2<i32>(i32(-2147483648), 1234i), vec2<bool>(true, false)), Struct_3(vec2<i32>(0i, 26324i), vec2<bool>(false, false)), Struct_3(vec2<i32>(-18425i, 37682i), vec2<bool>(false, false)), Struct_3(vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)), Struct_3(vec2<i32>(-38836i, -25649i), vec2<bool>(true, true)), Struct_3(vec2<i32>(30245i, 16885i), vec2<bool>(false, true)), Struct_3(vec2<i32>(-39588i, 34770i), vec2<bool>(false, true)), Struct_3(vec2<i32>(-3035i, 19219i), vec2<bool>(true, false)), Struct_3(vec2<i32>(35952i, i32(-2147483648)), vec2<bool>(true, true)), Struct_3(vec2<i32>(1i, 3295i), vec2<bool>(true, false)), Struct_3(vec2<i32>(2147483647i, 53840i), vec2<bool>(false, true)), Struct_3(vec2<i32>(-10874i, 1i), vec2<bool>(true, true)));

var<private> global2: u32 = 1u;

var<private> global3: array<i32, 29> = array<i32, 29>(24271i, -29323i, 1i, -87979i, 2400i, 7389i, 2147483647i, -27604i, -29375i, -41769i, 2147483647i, 0i, -59517i, 0i, -21875i, i32(-2147483648), 8457i, -12455i, i32(-2147483648), -1i, 2147483647i, i32(-2147483648), 13599i, 46432i, 31228i, 2147483647i, -1i, 2147483647i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> u32 {
    let var_0 = ~_wgslsmith_sub_i32(1i & u_input.c, reverseBits(2147483647i));
    global1 = array<Struct_3, 20>();
    let var_1 = 0u >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) | _wgslsmith_add_vec2_u32(u_input.e.xx, u_input.e.zx), ~vec2<u32>(u_input.e.x, global0[_wgslsmith_index_u32(u_input.d, 27u)]) | vec2<u32>(u_input.e.x, 4294967295u)) ^ u_input.d) % 32u);
    return global0[_wgslsmith_index_u32(0u, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 20>();
    var var_0 = abs(106302u);
    var_0 = global0[_wgslsmith_index_u32(func_1(), 27u)] >> ((~u_input.d ^ global0[_wgslsmith_index_u32(u_input.d, 27u)]) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zyx);
}


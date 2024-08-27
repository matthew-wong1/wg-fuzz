struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 42914u, 1u, 1u, 62909u, 1u, 4294967295u, 2592u, 0u, 9403u, 46478u, 54843u, 39391u, 46200u, 4294967295u, 25062u, 4294967295u, 0u, 0u, 0u, 1u, 36572u, 11211u, 4294967295u, 1u, 0u, 51988u, 4294967295u, 4294967295u, 0u);

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(356f), Struct_2(-451f), Struct_2(1776f), Struct_2(-682f), Struct_2(286f), Struct_2(-1451f), Struct_2(-373f), Struct_2(818f), Struct_2(2617f), Struct_2(-1180f), Struct_2(1713f), Struct_2(-217f), Struct_2(-968f), Struct_2(-770f), Struct_2(-416f), Struct_2(-345f), Struct_2(-2338f));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-1288f), Struct_2(1000f), Struct_2(215f), Struct_2(1195f), Struct_2(1461f), Struct_2(122f), Struct_2(-845f), Struct_2(515f), Struct_2(-1000f), Struct_2(2312f), Struct_2(-603f), Struct_2(-2139f), Struct_2(1835f), Struct_2(-105f), Struct_2(799f), Struct_2(-2456f), Struct_2(747f), Struct_2(595f), Struct_2(1191f), Struct_2(1829f), Struct_2(277f), Struct_2(273f), Struct_2(-1000f));

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~max(~(-47513i), i32(-1i) * -20229i), 2147483647i, _wgslsmith_sub_i32(abs(abs(2147483647i)), firstLeadingBit(_wgslsmith_add_i32(1i, -2147483647i)))));
}


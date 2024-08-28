struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1108f, 0i, 0u, -71064i, vec2<u32>(11491u, 54830u)), Struct_1(1221f, -4418i, 1u, 0i, vec2<u32>(0u, 1100u)), Struct_1(1249f, 2147483647i, 0u, 0i, vec2<u32>(1u, 1u)), Struct_1(-2662f, -50682i, 106980u, i32(-2147483648), vec2<u32>(0u, 27382u)), Struct_1(281f, 2147483647i, 4294967295u, -1i, vec2<u32>(0u, 1u)), Struct_1(124f, i32(-2147483648), 4294967295u, 27300i, vec2<u32>(96604u, 1u)), Struct_1(-816f, 1i, 99116u, 14481i, vec2<u32>(72468u, 25197u)), Struct_1(1432f, -30955i, 1u, -24119i, vec2<u32>(0u, 4294967295u)), Struct_1(-996f, 52609i, 1u, 21423i, vec2<u32>(9524u, 1u)), Struct_1(654f, i32(-2147483648), 1u, -9729i, vec2<u32>(23358u, 7465u)), Struct_1(-1771f, 2147483647i, 7000u, i32(-2147483648), vec2<u32>(19325u, 4294967295u)), Struct_1(-1635f, i32(-2147483648), 4294967295u, 36102i, vec2<u32>(41542u, 0u)), Struct_1(-1000f, 2147483647i, 75573u, i32(-2147483648), vec2<u32>(24811u, 4294967295u)), Struct_1(1000f, 0i, 1u, -30626i, vec2<u32>(22865u, 1u)), Struct_1(1127f, 33954i, 1u, -5892i, vec2<u32>(57809u, 20386u)), Struct_1(-224f, -61672i, 0u, -1i, vec2<u32>(3549u, 31126u)), Struct_1(843f, -35740i, 4294967295u, 1i, vec2<u32>(0u, 49010u)), Struct_1(-180f, -17216i, 1u, 2147483647i, vec2<u32>(0u, 50974u)), Struct_1(-124f, 2147483647i, 41290u, 0i, vec2<u32>(0u, 4294967295u)), Struct_1(-623f, 20119i, 0u, 16422i, vec2<u32>(1u, 1u)), Struct_1(-253f, 47092i, 25253u, 1i, vec2<u32>(20196u, 1u)), Struct_1(1295f, 16046i, 43905u, i32(-2147483648), vec2<u32>(45547u, 42822u)), Struct_1(151f, -5234i, 55760u, i32(-2147483648), vec2<u32>(80152u, 27340u)), Struct_1(2691f, -20812i, 4294967295u, 12929i, vec2<u32>(57983u, 1u)), Struct_1(1279f, 0i, 4294967295u, 21603i, vec2<u32>(21856u, 4294967295u)), Struct_1(-899f, 1i, 27397u, 2147483647i, vec2<u32>(110219u, 4294967295u)), Struct_1(2182f, -27600i, 1u, 15808i, vec2<u32>(1u, 20975u)), Struct_1(1035f, 4728i, 0u, 2147483647i, vec2<u32>(4294967295u, 93963u)), Struct_1(885f, -1i, 0u, 2147483647i, vec2<u32>(4294967295u, 41422u)), Struct_1(-1272f, 14545i, 4294967295u, -49487i, vec2<u32>(33038u, 1u)), Struct_1(-766f, 2147483647i, 88948u, 4392i, vec2<u32>(0u, 92086u)), Struct_1(-222f, 9864i, 4294967295u, 25080i, vec2<u32>(1u, 70053u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-347f - -261f));
}


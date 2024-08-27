struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(112366u), true, Struct_1(0u), Struct_1(0u), 0u), Struct_2(Struct_1(10788u), false, Struct_1(24653u), Struct_1(29005u), 113970u), Struct_2(Struct_1(4294967295u), true, Struct_1(4294967295u), Struct_1(0u), 0u), Struct_2(Struct_1(12040u), false, Struct_1(40230u), Struct_1(0u), 27708u), Struct_2(Struct_1(48151u), false, Struct_1(1u), Struct_1(4294967295u), 1u), Struct_2(Struct_1(0u), true, Struct_1(0u), Struct_1(43709u), 19881u), Struct_2(Struct_1(56678u), true, Struct_1(1u), Struct_1(4294967295u), 0u), Struct_2(Struct_1(1u), false, Struct_1(19505u), Struct_1(0u), 4294967295u), Struct_2(Struct_1(4294967295u), true, Struct_1(1u), Struct_1(22753u), 1u), Struct_2(Struct_1(55327u), false, Struct_1(0u), Struct_1(0u), 17220u), Struct_2(Struct_1(4333u), true, Struct_1(11165u), Struct_1(0u), 25829u), Struct_2(Struct_1(0u), true, Struct_1(1u), Struct_1(12666u), 21286u), Struct_2(Struct_1(77530u), true, Struct_1(9644u), Struct_1(0u), 88604u), Struct_2(Struct_1(4294967295u), true, Struct_1(27216u), Struct_1(4294967295u), 4294967295u), Struct_2(Struct_1(4294967295u), false, Struct_1(14784u), Struct_1(32911u), 24417u), Struct_2(Struct_1(1u), false, Struct_1(4294967295u), Struct_1(109477u), 0u), Struct_2(Struct_1(22093u), true, Struct_1(26845u), Struct_1(43437u), 14624u), Struct_2(Struct_1(67691u), true, Struct_1(39499u), Struct_1(66071u), 4294967295u), Struct_2(Struct_1(0u), false, Struct_1(1u), Struct_1(0u), 8197u), Struct_2(Struct_1(1u), false, Struct_1(19220u), Struct_1(41964u), 23228u), Struct_2(Struct_1(104322u), true, Struct_1(1u), Struct_1(15072u), 46723u), Struct_2(Struct_1(0u), true, Struct_1(38482u), Struct_1(1u), 1u), Struct_2(Struct_1(0u), true, Struct_1(34228u), Struct_1(64413u), 0u), Struct_2(Struct_1(4294967295u), true, Struct_1(1u), Struct_1(0u), 1u), Struct_2(Struct_1(5574u), false, Struct_1(40617u), Struct_1(4294967295u), 0u), Struct_2(Struct_1(0u), true, Struct_1(1u), Struct_1(5977u), 0u), Struct_2(Struct_1(4294967295u), true, Struct_1(0u), Struct_1(0u), 0u), Struct_2(Struct_1(24464u), false, Struct_1(21220u), Struct_1(4294967295u), 4294967295u), Struct_2(Struct_1(0u), false, Struct_1(4294967295u), Struct_1(25622u), 38159u), Struct_2(Struct_1(91625u), true, Struct_1(4294967295u), Struct_1(0u), 97812u));

var<private> global1: Struct_2;

var<private> global2: array<u32, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(global1.a.a, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.d.a) >> (global1.a.a % 32u));
}


struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<u32>(85888u, 67977u, 15857u, 31434u), vec2<u32>(1u, 9789u), vec4<i32>(0i, 0i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 1i, 0i, 1i), -1388f), Struct_1(vec4<u32>(32494u, 0u, 1u, 20016u), vec2<u32>(1u, 4294967295u), vec4<i32>(0i, 43335i, 2147483647i, -1i), vec4<i32>(1i, 2147483647i, 4069i, 34158i), -958f), Struct_1(vec4<u32>(34505u, 4294967295u, 8006u, 40340u), vec2<u32>(6421u, 47530u), vec4<i32>(24013i, 57317i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, -38837i, -5797i, 50759i), 479f), Struct_1(vec4<u32>(444u, 4294967295u, 107504u, 1u), vec2<u32>(17078u, 25446u), vec4<i32>(14607i, i32(-2147483648), 1i, -9188i), vec4<i32>(2147483647i, 0i, -15950i, 6065i), -1000f), Struct_1(vec4<u32>(1u, 4758u, 15118u, 0u), vec2<u32>(4294967295u, 62973u), vec4<i32>(-38629i, -7349i, 1i, -64581i), vec4<i32>(8618i, 1i, 2147483647i, 12077i), 762f), Struct_1(vec4<u32>(31989u, 20624u, 4294967295u, 4294967295u), vec2<u32>(13535u, 16677u), vec4<i32>(-18723i, -13989i, 0i, -1i), vec4<i32>(13265i, -11118i, i32(-2147483648), -20691i), 1000f), Struct_1(vec4<u32>(68131u, 4294967295u, 15878u, 69154u), vec2<u32>(0u, 4294967295u), vec4<i32>(-1i, 1i, 55565i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -13440i, -17135i), 434f), Struct_1(vec4<u32>(56848u, 20227u, 1u, 0u), vec2<u32>(0u, 39964u), vec4<i32>(-26712i, 1i, 2147483647i, 2147483647i), vec4<i32>(1i, -1i, 0i, -38242i), -1026f), Struct_1(vec4<u32>(0u, 9221u, 52204u, 1u), vec2<u32>(1u, 38802u), vec4<i32>(11884i, -8513i, 2147483647i, 22012i), vec4<i32>(-3606i, 15282i, -1i, 0i), 842f), Struct_1(vec4<u32>(30199u, 134370u, 4294967295u, 31604u), vec2<u32>(63407u, 1u), vec4<i32>(-15090i, 1i, -8752i, 1i), vec4<i32>(96203i, -14713i, 2147483647i, i32(-2147483648)), -1260f), Struct_1(vec4<u32>(38825u, 1u, 33902u, 0u), vec2<u32>(13442u, 4294967295u), vec4<i32>(8063i, 11084i, 16359i, 5246i), vec4<i32>(-37681i, -16240i, 24994i, 0i), -175f), Struct_1(vec4<u32>(4294967295u, 45594u, 0u, 1u), vec2<u32>(37726u, 46148u), vec4<i32>(i32(-2147483648), 44566i, -1i, 0i), vec4<i32>(i32(-2147483648), 12273i, 11258i, -1i), 286f), Struct_1(vec4<u32>(1u, 32909u, 0u, 4294967295u), vec2<u32>(76134u, 0u), vec4<i32>(i32(-2147483648), 2147483647i, -5638i, 55727i), vec4<i32>(-1i, 42170i, -1i, 0i), -889f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 5346u, 10041u), vec2<u32>(66638u, 91044u), vec4<i32>(-43620i, i32(-2147483648), -1i, -1i), vec4<i32>(1i, 8928i, -12428i, i32(-2147483648)), 2403f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-847f, -1000f))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1083f - -779f)))))));
}


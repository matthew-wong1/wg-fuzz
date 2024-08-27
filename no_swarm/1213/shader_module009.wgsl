struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global1: array<i32, 21>;

var<private> global2: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(259f, 3702i), Struct_2(vec2<i32>(-32859i, i32(-2147483648)), Struct_1(-1665f, 0i)), vec2<bool>(false, true), false), Struct_3(Struct_1(-1000f, 2682i), Struct_2(vec2<i32>(-21451i, -22034i), Struct_1(-1556f, 1i)), vec2<bool>(true, false), false), Struct_3(Struct_1(1228f, 1i), Struct_2(vec2<i32>(-14378i, i32(-2147483648)), Struct_1(-809f, i32(-2147483648))), vec2<bool>(false, true), true), Struct_3(Struct_1(371f, -1i), Struct_2(vec2<i32>(7978i, 1i), Struct_1(765f, -12623i)), vec2<bool>(true, true), false), Struct_3(Struct_1(-359f, -9879i), Struct_2(vec2<i32>(64694i, 30916i), Struct_1(-604f, -18318i)), vec2<bool>(false, true), true), Struct_3(Struct_1(412f, -28097i), Struct_2(vec2<i32>(2147483647i, -16661i), Struct_1(337f, 7707i)), vec2<bool>(false, false), true), Struct_3(Struct_1(-437f, i32(-2147483648)), Struct_2(vec2<i32>(-85662i, i32(-2147483648)), Struct_1(1511f, i32(-2147483648))), vec2<bool>(false, true), false), Struct_3(Struct_1(376f, 0i), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(-1941f, 2147483647i)), vec2<bool>(true, true), true), Struct_3(Struct_1(276f, -37834i), Struct_2(vec2<i32>(i32(-2147483648), -1i), Struct_1(-863f, 33980i)), vec2<bool>(true, false), false), Struct_3(Struct_1(118f, 9199i), Struct_2(vec2<i32>(-1i, -1i), Struct_1(2473f, 1i)), vec2<bool>(false, true), true), Struct_3(Struct_1(906f, -6617i), Struct_2(vec2<i32>(0i, -54728i), Struct_1(-1396f, -1997i)), vec2<bool>(false, true), false), Struct_3(Struct_1(-602f, 2147483647i), Struct_2(vec2<i32>(-1i, 20371i), Struct_1(-1291f, -32487i)), vec2<bool>(true, false), true), Struct_3(Struct_1(-368f, 26391i), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(1430f, 2147483647i)), vec2<bool>(false, false), true), Struct_3(Struct_1(-2651f, 739i), Struct_2(vec2<i32>(19155i, 0i), Struct_1(-1407f, 79347i)), vec2<bool>(false, false), true), Struct_3(Struct_1(-468f, 36936i), Struct_2(vec2<i32>(30200i, i32(-2147483648)), Struct_1(-1827f, 2147483647i)), vec2<bool>(false, false), false), Struct_3(Struct_1(1000f, 3600i), Struct_2(vec2<i32>(-1i, 50936i), Struct_1(664f, 24201i)), vec2<bool>(false, true), true), Struct_3(Struct_1(-1191f, 21444i), Struct_2(vec2<i32>(0i, 0i), Struct_1(112f, -58052i)), vec2<bool>(true, true), false), Struct_3(Struct_1(1001f, -48773i), Struct_2(vec2<i32>(2147483647i, -5299i), Struct_1(1604f, 2147483647i)), vec2<bool>(true, false), true), Struct_3(Struct_1(-1452f, -24130i), Struct_2(vec2<i32>(-1i, 1i), Struct_1(949f, -62622i)), vec2<bool>(true, true), false), Struct_3(Struct_1(-108f, 20836i), Struct_2(vec2<i32>(37246i, 1203i), Struct_1(309f, -1i)), vec2<bool>(false, false), true), Struct_3(Struct_1(544f, 2147483647i), Struct_2(vec2<i32>(-29222i, 7608i), Struct_1(-409f, 1752i)), vec2<bool>(false, true), true), Struct_3(Struct_1(-119f, i32(-2147483648)), Struct_2(vec2<i32>(-61487i, 0i), Struct_1(-1000f, 2147483647i)), vec2<bool>(false, true), true), Struct_3(Struct_1(-1589f, 2147483647i), Struct_2(vec2<i32>(16779i, i32(-2147483648)), Struct_1(-196f, -1i)), vec2<bool>(true, true), true), Struct_3(Struct_1(287f, 0i), Struct_2(vec2<i32>(24961i, -1i), Struct_1(216f, 20945i)), vec2<bool>(true, true), true), Struct_3(Struct_1(1820f, 1i), Struct_2(vec2<i32>(2147483647i, -24153i), Struct_1(2705f, 0i)), vec2<bool>(true, false), false), Struct_3(Struct_1(-907f, 0i), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(-841f, 1i)), vec2<bool>(false, true), false), Struct_3(Struct_1(-646f, 2147483647i), Struct_2(vec2<i32>(2147483647i, -21757i), Struct_1(-1000f, -28745i)), vec2<bool>(true, false), false), Struct_3(Struct_1(502f, -7454i), Struct_2(vec2<i32>(-1i, 2507i), Struct_1(-297f, i32(-2147483648))), vec2<bool>(true, true), false), Struct_3(Struct_1(-376f, 1i), Struct_2(vec2<i32>(-51550i, 1i), Struct_1(-307f, -1i)), vec2<bool>(false, true), false), Struct_3(Struct_1(254f, 1i), Struct_2(vec2<i32>(-27266i, 0i), Struct_1(438f, 2147483647i)), vec2<bool>(false, false), false));

var<private> global3: array<bool, 18> = array<bool, 18>(true, true, false, false, false, true, false, false, true, false, false, false, false, true, true, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(22302u, vec3<i32>(-1i) * -(vec3<i32>(-76996i, -49455i, u_input.c.x) >> (~vec3<u32>(u_input.a.x, 1u, 4294967295u) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(116701u, u_input.a.x), vec2<u32>(11011u, 4294967295u)), firstTrailingBit(~u_input.a))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1527f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1509f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1273f)), -1019f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(910f, 540f, -1205f))))));
}


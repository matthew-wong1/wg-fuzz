struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, vec2<f32>(-445f, -1050f), vec3<u32>(1u, 4294967295u, 8655u), vec3<u32>(0u, 1u, 4294967295u)), 2147483647i, vec2<u32>(4294967295u, 1443u), true), Struct_2(Struct_1(vec4<bool>(true, true, true, false), true, vec2<f32>(1013f, 1832f), vec3<u32>(34421u, 1u, 1u), vec3<u32>(1u, 1u, 0u)), -23803i, vec2<u32>(1u, 59791u), true), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true, vec2<f32>(581f, -806f), vec3<u32>(4294967295u, 80818u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u)), 2147483647i, vec2<u32>(4294967295u, 1u), false), Struct_2(Struct_1(vec4<bool>(true, true, true, true), true, vec2<f32>(-2348f, 1726f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(24498u, 1u, 27594u)), 0i, vec2<u32>(1u, 14036u), true), Struct_2(Struct_1(vec4<bool>(true, true, false, false), false, vec2<f32>(2388f, -464f), vec3<u32>(0u, 23567u, 0u), vec3<u32>(1u, 56247u, 49514u)), -1i, vec2<u32>(26530u, 4294967295u), false), Struct_2(Struct_1(vec4<bool>(false, false, false, false), false, vec2<f32>(2772f, -510f), vec3<u32>(1u, 16824u, 3501u), vec3<u32>(47481u, 1u, 4294967295u)), 2147483647i, vec2<u32>(0u, 1u), true), Struct_2(Struct_1(vec4<bool>(false, false, false, true), true, vec2<f32>(664f, 1900f), vec3<u32>(122541u, 0u, 44097u), vec3<u32>(27088u, 78925u, 35864u)), -16347i, vec2<u32>(4294967295u, 0u), true), Struct_2(Struct_1(vec4<bool>(false, false, true, false), true, vec2<f32>(781f, -106f), vec3<u32>(4294967295u, 4294967295u, 54928u), vec3<u32>(46761u, 0u, 0u)), -1i, vec2<u32>(1u, 2872u), true), Struct_2(Struct_1(vec4<bool>(false, true, false, true), false, vec2<f32>(-749f, 732f), vec3<u32>(1u, 34906u, 1u), vec3<u32>(1u, 4294967295u, 74672u)), -48768i, vec2<u32>(4294967295u, 4294967295u), true), Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, vec2<f32>(1128f, -1143f), vec3<u32>(9218u, 39577u, 30045u), vec3<u32>(4294967295u, 0u, 0u)), 16024i, vec2<u32>(0u, 56448u), true), Struct_2(Struct_1(vec4<bool>(true, true, false, true), true, vec2<f32>(1000f, -1483f), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 29458u, 0u)), -1i, vec2<u32>(38807u, 18602u), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false), false, vec2<f32>(521f, -103f), vec3<u32>(1u, 19241u, 4294967295u), vec3<u32>(1u, 31435u, 27831u)), -10838i, vec2<u32>(30718u, 6119u), true), Struct_2(Struct_1(vec4<bool>(false, true, true, true), true, vec2<f32>(-210f, 1337f), vec3<u32>(260u, 17959u, 4294967295u), vec3<u32>(4294967295u, 3458u, 29904u)), i32(-2147483648), vec2<u32>(49310u, 1u), true), Struct_2(Struct_1(vec4<bool>(true, false, true, true), true, vec2<f32>(-1691f, 1027f), vec3<u32>(1u, 15082u, 9037u), vec3<u32>(0u, 23924u, 0u)), i32(-2147483648), vec2<u32>(0u, 26628u), true), Struct_2(Struct_1(vec4<bool>(true, false, true, true), false, vec2<f32>(1037f, -1016f), vec3<u32>(0u, 13024u, 27974u), vec3<u32>(44826u, 55056u, 0u)), -1i, vec2<u32>(43925u, 72981u), true), Struct_2(Struct_1(vec4<bool>(false, false, false, true), false, vec2<f32>(855f, -598f), vec3<u32>(72387u, 35804u, 1u), vec3<u32>(0u, 5389u, 4294967295u)), -24268i, vec2<u32>(22725u, 12880u), false), Struct_2(Struct_1(vec4<bool>(true, false, false, true), true, vec2<f32>(-1102f, 677f), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(33898u, 49251u, 1u)), 9544i, vec2<u32>(4294967295u, 31193u), false), Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, vec2<f32>(-110f, 414f), vec3<u32>(9637u, 36244u, 111270u), vec3<u32>(46262u, 9427u, 42049u)), 0i, vec2<u32>(4294967295u, 1u), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false), false, vec2<f32>(-367f, -388f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 4459u, 21457u)), -31744i, vec2<u32>(13289u, 33135u), true));

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: vec4<f32>;

var<private> global3: f32 = 1523f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(828f)), _wgslsmith_f_op_f32(trunc(-186f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1966f - global2.x) * _wgslsmith_f_op_f32(-global2.x)), 1727f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zz), _wgslsmith_f_op_vec2_f32(global2.yw - global2.xy)), global2.zw))), -793f);
}


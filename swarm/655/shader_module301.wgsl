struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1023f, -565f, 710f, 471f), vec4<f32>(273f, -1058f, 1292f, 2085f), vec4<f32>(692f, 727f, -1268f, -582f), vec4<f32>(421f, 1000f, -144f, -1203f), vec4<f32>(-270f, 865f, 188f, -1716f), vec4<f32>(-727f, -656f, -742f, 366f), vec4<f32>(1181f, 501f, 870f, 1000f), vec4<f32>(514f, -1296f, -1000f, -642f), vec4<f32>(-946f, 1000f, -608f, -593f), vec4<f32>(139f, -144f, -420f, 948f), vec4<f32>(-1352f, -1000f, 150f, 355f), vec4<f32>(-920f, 1567f, 1171f, 1022f), vec4<f32>(-184f, 907f, -635f, -176f), vec4<f32>(293f, -802f, 2395f, -904f), vec4<f32>(-1823f, -1181f, 174f, 203f), vec4<f32>(805f, 354f, 573f, 1000f), vec4<f32>(1000f, -1629f, 1269f, 156f), vec4<f32>(1437f, 1369f, 1518f, 1734f), vec4<f32>(-1711f, 560f, -217f, -636f), vec4<f32>(-1000f, 750f, 1867f, 315f), vec4<f32>(1015f, 350f, 1358f, -799f), vec4<f32>(-1187f, -395f, -349f, -517f));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(0i, -69991i, i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 0u, 576u, 0u), 1u, true, vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-49595i, 1i, 57446i, 12325i), vec4<u32>(4294967295u, 36498u, 14382u, 39984u), 22357u, true, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(0i, -11714i, -1i, -17072i), vec4<u32>(1u, 0u, 4294967295u, 40737u), 14631u, false, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(20693i, 22811i, i32(-2147483648), -1i), vec4<u32>(25563u, 14691u, 4294967295u, 10366u), 4294967295u, false, vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-19321i, -40632i, 2147483647i, 20977i), vec4<u32>(18006u, 21048u, 4294967295u, 19525u), 22454u, true, vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-1i, -9534i, 5518i, 1i), vec4<u32>(89403u, 5005u, 0u, 53713u), 0u, false, vec3<bool>(true, false, true)));

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-1i, 32293i, 1i, -214i), vec4<i32>(1i, -1i, -1i, -1i), vec4<i32>(19744i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(38785i, 1i, -1i, -1i), vec4<i32>(-23333i, 66995i, 22301i, -13238i), vec4<i32>(40750i, -1i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), -9052i, 37001i, 1i), vec4<i32>(-18209i, 25332i, -1i, 0i), vec4<i32>(i32(-2147483648), 14539i, 2147483647i, 1i), vec4<i32>(-1i, -5426i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, 6248i, 1i, -1i), vec4<i32>(-15363i, 1i, 2147483647i, 1i), vec4<i32>(-51470i, -61498i, 0i, 0i), vec4<i32>(-1i, -1i, -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, -14088i, -39866i), vec4<i32>(-17959i, 28845i, 1i, -1i), vec4<i32>(i32(-2147483648), 2560i, 2147483647i, -59916i), vec4<i32>(39724i, 0i, 19739i, -1i), vec4<i32>(-12775i, 29392i, 1i, -1377i), vec4<i32>(-27172i, 1i, 62843i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -3411i, -18305i), vec4<i32>(-32980i, 2147483647i, -720i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, min(abs(4294967295u) | u_input.d.x, _wgslsmith_mod_u32(0u, u_input.a.x)), ~58333u, u_input.d.x), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-223f + -145f)), ~1u, _wgslsmith_sub_i32(i32(-1i) * -1i, u_input.b.x));
}


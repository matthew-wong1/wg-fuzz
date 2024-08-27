struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(533f, -630f, -736f, 781f), vec4<f32>(-1272f, 1226f, 885f, -669f), vec4<f32>(1280f, 699f, -1061f, 1046f), vec4<f32>(-1227f, -1366f, 1000f, -465f), vec4<f32>(485f, -406f, -788f, -1165f), vec4<f32>(-729f, 1779f, -543f, 1114f), vec4<f32>(-942f, -244f, 1007f, -109f), vec4<f32>(199f, 862f, -1045f, -782f), vec4<f32>(384f, -1168f, 1367f, -1562f), vec4<f32>(765f, -891f, -853f, -1454f), vec4<f32>(-654f, -416f, 143f, 203f), vec4<f32>(658f, -920f, -1050f, -1000f), vec4<f32>(-1051f, -633f, -403f, -156f), vec4<f32>(1000f, 719f, 537f, 151f), vec4<f32>(1398f, 269f, -607f, -555f), vec4<f32>(1000f, 1444f, 1424f, -360f));

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 30935u, 1u, 54808u), vec4<u32>(1u, 1u, 0u, 10563u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(0i, 0i, -1i, 15382i), vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 0i, 72095i), vec4<u32>(1u, 26113u, 0u, 1u), 898f), Struct_1(vec4<i32>(-1i, -61548i, 1i, 4935i), vec3<bool>(true, true, false), vec3<i32>(1i, 1i, 0i), vec4<u32>(42452u, 73297u, 0u, 4294967295u), 1249f), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, 2147483647i), vec3<bool>(true, false, false), vec3<i32>(10630i, -9293i, -34119i), vec4<u32>(24822u, 1u, 93927u, 1u), -493f), Struct_1(vec4<i32>(-4900i, i32(-2147483648), 31073i, 1i), vec3<bool>(true, true, true), vec3<i32>(1i, 0i, -1i), vec4<u32>(23102u, 0u, 22618u, 32023u), 494f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -3667i, -22923i), vec3<bool>(false, false, true), vec3<i32>(-1i, 55175i, i32(-2147483648)), vec4<u32>(0u, 1u, 1u, 70394u), 1343f), Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 60901i), vec3<bool>(true, false, true), vec3<i32>(18210i, 49942i, -19609i), vec4<u32>(1u, 16129u, 0u, 1u), 132f), Struct_1(vec4<i32>(1i, 0i, 25159i, 0i), vec3<bool>(false, false, false), vec3<i32>(-51011i, -29284i, -14524i), vec4<u32>(0u, 0u, 4294967295u, 98735u), -811f), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -33294i, 2034i), vec3<bool>(true, false, false), vec3<i32>(1i, 54309i, 25054i), vec4<u32>(43259u, 0u, 1u, 1u), -344f), Struct_1(vec4<i32>(2147483647i, -1i, -1i, 619i), vec3<bool>(false, true, false), vec3<i32>(-1i, -19304i, 0i), vec4<u32>(42284u, 1u, 66111u, 49601u), 2128f), Struct_1(vec4<i32>(-1i, -1i, 2147483647i, 1i), vec3<bool>(false, true, true), vec3<i32>(2147483647i, -1i, 0i), vec4<u32>(4294967295u, 24458u, 5016u, 0u), 170f), Struct_1(vec4<i32>(2147483647i, 30496i, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, true), vec3<i32>(58498i, 53026i, i32(-2147483648)), vec4<u32>(87807u, 37000u, 67172u, 48113u), -120f), Struct_1(vec4<i32>(2147483647i, -38989i, 20979i, -10668i), vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<u32>(0u, 85572u, 86108u, 4930u), -234f), Struct_1(vec4<i32>(-12813i, i32(-2147483648), -3744i, -4761i), vec3<bool>(false, false, true), vec3<i32>(1i, 1049i, -35533i), vec4<u32>(49548u, 20955u, 28372u, 4023u), -110f), Struct_1(vec4<i32>(1i, 2147483647i, -27102i, -27926i), vec3<bool>(false, true, true), vec3<i32>(-68519i, 0i, 40738i), vec4<u32>(22026u, 1u, 2790u, 4294967295u), 1294f), Struct_1(vec4<i32>(-1i, 0i, 0i, 1i), vec3<bool>(true, true, true), vec3<i32>(-24893i, -41848i, 51167i), vec4<u32>(4294967295u, 16593u, 0u, 5271u), 2007f), Struct_1(vec4<i32>(-7958i, -1i, -20722i, -18241i), vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 32158i, -5355i), vec4<u32>(841u, 7875u, 4294967295u, 1u), 105f), Struct_1(vec4<i32>(-32943i, 41617i, i32(-2147483648), -6774i), vec3<bool>(true, false, true), vec3<i32>(-1616i, -7221i, 14444i), vec4<u32>(15771u, 0u, 0u, 0u), -1322f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 79788i, -1i), vec3<bool>(false, false, false), vec3<i32>(2147483647i, 1i, 0i), vec4<u32>(4294967295u, 11847u, 4294967295u, 49278u), -1435f), Struct_1(vec4<i32>(-65726i, -11684i, 0i, 0i), vec3<bool>(true, false, false), vec3<i32>(0i, 1i, i32(-2147483648)), vec4<u32>(24763u, 0u, 15110u, 0u), 1580f), Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), 2147483647i), vec3<bool>(false, false, false), vec3<i32>(36692i, 1i, 46i), vec4<u32>(11820u, 4294967295u, 0u, 13103u), 104f), Struct_1(vec4<i32>(-12229i, -26896i, 48588i, 46720i), vec3<bool>(false, false, false), vec3<i32>(-1i, 2147483647i, 1i), vec4<u32>(43620u, 0u, 37347u, 1u), 320f), Struct_1(vec4<i32>(1i, 19446i, 26326i, -71047i), vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), -25095i, 757i), vec4<u32>(4294967295u, 1u, 1u, 13573u), -764f), Struct_1(vec4<i32>(1i, 0i, -1i, 1i), vec3<bool>(true, true, false), vec3<i32>(17912i, -15899i, 15020i), vec4<u32>(1u, 0u, 0u, 4294967295u), -817f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(u_input.d.x, 16u)]));
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    let var_1 = vec2<bool>(any(vec2<bool>(true, false)), false);
    global2 = array<Struct_1, 23>();
    global1 = array<vec4<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(232f);
}


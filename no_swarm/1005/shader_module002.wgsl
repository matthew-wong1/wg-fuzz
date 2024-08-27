struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
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

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<f32>(-563f, -2662f, -1084f, -966f), Struct_1(0u, 950f), Struct_3(Struct_2(vec4<f32>(847f, 374f, -765f, -1535f)), vec2<u32>(0u, 18741u), 0i, Struct_1(56278u, 2373f))), Struct_4(vec4<f32>(1968f, -189f, -876f, 1148f), Struct_1(52991u, -1233f), Struct_3(Struct_2(vec4<f32>(1619f, 795f, 1071f, 495f)), vec2<u32>(0u, 5892u), -31592i, Struct_1(4294967295u, -1230f))), Struct_4(vec4<f32>(228f, -1824f, -1026f, -301f), Struct_1(0u, -1309f), Struct_3(Struct_2(vec4<f32>(359f, -1798f, -474f, 705f)), vec2<u32>(1u, 1815u), 25880i, Struct_1(182u, 763f))), Struct_4(vec4<f32>(-311f, 1001f, -1089f, -331f), Struct_1(1u, -1491f), Struct_3(Struct_2(vec4<f32>(-504f, -1053f, -488f, -1245f)), vec2<u32>(28748u, 4294967295u), 1i, Struct_1(0u, 1041f))), Struct_4(vec4<f32>(-425f, 1451f, -1096f, -764f), Struct_1(0u, -427f), Struct_3(Struct_2(vec4<f32>(213f, 942f, -1523f, -1556f)), vec2<u32>(4294967295u, 11992u), 2147483647i, Struct_1(1u, -2037f))), Struct_4(vec4<f32>(2153f, 1555f, -1450f, 425f), Struct_1(1u, -668f), Struct_3(Struct_2(vec4<f32>(-390f, -308f, -299f, 1982f)), vec2<u32>(0u, 21317u), i32(-2147483648), Struct_1(4294967295u, 1503f))), Struct_4(vec4<f32>(1000f, -768f, -318f, -570f), Struct_1(34848u, 3126f), Struct_3(Struct_2(vec4<f32>(-598f, 674f, -2071f, 2032f)), vec2<u32>(1u, 27638u), i32(-2147483648), Struct_1(1u, -727f))), Struct_4(vec4<f32>(-1000f, -2099f, 793f, -276f), Struct_1(0u, 987f), Struct_3(Struct_2(vec4<f32>(1705f, -476f, -1299f, -553f)), vec2<u32>(29224u, 4294967295u), -54901i, Struct_1(16831u, 1417f))), Struct_4(vec4<f32>(-418f, -1271f, 589f, -2080f), Struct_1(46464u, 128f), Struct_3(Struct_2(vec4<f32>(1000f, -181f, 1000f, 186f)), vec2<u32>(63206u, 1u), -4155i, Struct_1(0u, -728f))), Struct_4(vec4<f32>(540f, -654f, -1710f, 234f), Struct_1(6600u, 118f), Struct_3(Struct_2(vec4<f32>(-993f, -1000f, 694f, 1495f)), vec2<u32>(26477u, 40495u), 0i, Struct_1(22371u, -713f))));

var<private> global1: array<vec4<f32>, 13>;

var<private> global2: i32;

var<private> global3: u32 = 4294967295u;

var<private> global4: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2020f * -446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)))), _wgslsmith_f_op_f32(446f + _wgslsmith_f_op_f32(-1f)))));
}


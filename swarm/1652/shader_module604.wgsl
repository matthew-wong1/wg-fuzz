struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 32> = array<u32, 32>(0u, 4294967295u, 1u, 4294967295u, 16811u, 0u, 1u, 1u, 18490u, 1u, 10198u, 44054u, 0u, 34607u, 28095u, 1u, 0u, 0u, 5745u, 0u, 12667u, 0u, 75783u, 448u, 4294967295u, 13622u, 56057u, 38181u, 4294967295u, 32670u, 4294967295u, 52694u);

var<private> global2: f32 = -1437f;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(-30513i, -18267i, 0i, 2147483647i), 18682u, vec2<f32>(509f, 670f), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(-10451i, 2147483647i, 1i, 0i), 18778u, vec2<f32>(317f, -584f), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(1i, -1i, -1i, -1i), 10947u, vec2<f32>(-827f, -1000f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-7374i, -21829i, 8037i, -28786i), 0u, vec2<f32>(-1000f, 224f), vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, 3211i), 6695u, vec2<f32>(-981f, -1000f), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(13610i, -6624i, 0i, i32(-2147483648)), 29358u, vec2<f32>(-301f, -2345f), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(i32(-2147483648), -1309i, -258i, 0i), 54643u, vec2<f32>(-140f, 315f), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(2147483647i, -14470i, 38011i, 24463i), 28293u, vec2<f32>(-600f, -1000f), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(2147483647i, 1i, -30433i, -11549i), 5457u, vec2<f32>(1072f, -292f), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(0i, -8037i, -1i, -10181i), 0u, vec2<f32>(461f, 869f), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(-7390i, 18501i, 26473i, i32(-2147483648)), 5669u, vec2<f32>(-260f, -1010f), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-1i, 6566i, 2147483647i, -18821i), 1u, vec2<f32>(1806f, -733f), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-79176i, -1i, 1i, 0i), 0u, vec2<f32>(1314f, -182f), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -15377i), 4294967295u, vec2<f32>(-1352f, -450f), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 71076i, -16476i), 0u, vec2<f32>(435f, -205f), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(1i, 14828i, -3312i, 1i), 1u, vec2<f32>(-825f, 554f), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-316i, -48872i, 21920i, -43728i), 38705u, vec2<f32>(475f, 839f), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(1i, -1i, -17870i, -8072i), 1u, vec2<f32>(109f, 1062f), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -13799i), 1u, vec2<f32>(-1000f, -338f), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(0i, -59442i, 19813i, 0i), 37497u, vec2<f32>(-1177f, 1767f), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-43529i, 0i, 4573i, -135i), 89132u, vec2<f32>(-1610f, 187f), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(0i, 23542i, -1i, -19785i), 1u, vec2<f32>(961f, -723f), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(34263i, -38235i, 9019i, -3289i), 42867u, vec2<f32>(536f, -1369f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-6685i, 25713i, 1i, 79i), 0u, vec2<f32>(-421f, -468f), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(70189i, 6803i, 71089i, -65i), 38941u, vec2<f32>(910f, -800f), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(2147483647i, -5847i, i32(-2147483648), -1i), 4294967295u, vec2<f32>(597f, 1256f), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(-8411i, -17272i, -6559i, -104440i), 1u, vec2<f32>(2458f, -1334f), vec4<bool>(true, true, true, true)));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstLeadingBit(-abs(vec4<i32>(-2147483647i, u_input.a.x, u_input.c, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(381f, _wgslsmith_f_op_f32(global0.x * global0.x)), -207f, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)))));
}


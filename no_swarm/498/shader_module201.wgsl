struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-518i, -1i, 1i), vec3<i32>(-3182i, 27744i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-1i, 12555i, 46873i), vec3<i32>(22110i, 1i, i32(-2147483648)), vec3<i32>(-13809i, 1035i, -1i), vec3<i32>(0i, -57642i, 2147483647i), vec3<i32>(9622i, -1i, -17971i), vec3<i32>(-18884i, 29753i, i32(-2147483648)), vec3<i32>(819i, i32(-2147483648), 6053i), vec3<i32>(10782i, i32(-2147483648), 373i), vec3<i32>(0i, -57897i, -36075i), vec3<i32>(0i, i32(-2147483648), -37001i), vec3<i32>(-31473i, 1i, -6510i), vec3<i32>(-10189i, 2147483647i, 3567i), vec3<i32>(-35795i, 31748i, -21080i), vec3<i32>(-6954i, -259i, 50997i), vec3<i32>(0i, 0i, 28512i), vec3<i32>(0i, 6414i, -1i), vec3<i32>(-23048i, -1i, 1i), vec3<i32>(-1i, -17017i, 48677i));

var<private> global2: array<i32, 27> = array<i32, 27>(1i, 41549i, 2147483647i, 27792i, 13458i, 11346i, 0i, -1i, i32(-2147483648), -1i, 0i, i32(-2147483648), -3974i, 0i, -24848i, 1i, 0i, -1i, 43555i, -1i, -26595i, -15976i, -17822i, 2147483647i, 30275i, 1i, 1i);

var<private> global3: array<i32, 10> = array<i32, 10>(-42632i, 2142i, 0i, i32(-2147483648), 2147483647i, 0i, 2514i, 78276i, 29808i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(41959u, ~_wgslsmith_sub_u32(~1u, firstTrailingBit(4294967295u))), ~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(min(246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, 1000f, true))))), _wgslsmith_f_op_f32(trunc(-218f)));
}


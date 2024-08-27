struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -85823i);

var<private> global1: array<u32, 24>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1234f, 940f, -795f), vec2<i32>(i32(-2147483648), 2246i));

var<private> global3: array<u32, 16>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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
    let var_0 = firstTrailingBit(global0.x) << (~min(~(~4294967295u), 4294967295u) % 32u);
    var var_1 = ~_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x);
    var var_2 = -(~_wgslsmith_div_vec2_i32(global2.c, reverseBits(global2.c) & countOneBits(vec2<i32>(-42570i, -31059i))));
    var var_3 = vec4<f32>(456f, 831f, -1744f, global2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(15499i, _wgslsmith_f_op_vec3_f32(global2.b + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(601f, var_3.x, _wgslsmith_f_op_f32(global2.b.x + 914f))))));
}


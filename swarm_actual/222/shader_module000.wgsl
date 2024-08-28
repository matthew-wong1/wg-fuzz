struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e.b;
    var var_1 = global0.d.x;
    var var_2 = true;
    var_1 = firstTrailingBit(i32(-1i) * -28705i);
    var var_3 = global0.c.x;
    global0 = Struct_2(global0.a, vec3<f32>(_wgslsmith_f_op_f32(216f * -841f), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.b.x)), global0.c, vec3<i32>(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.d.x, global0.d.x), i32(-1i) * -2147483647i, max(u_input.a, global0.d.x)), u_input.a, global0.d.x), global0.e);
    var_3 = true;
    let var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(global0.a - 346f))) * -422f)), -22728i >> ((firstLeadingBit(u_input.d >> (4294967295u % 32u)) >> (0u % 32u)) % 32u));
}


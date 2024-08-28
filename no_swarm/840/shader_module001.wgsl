struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(u_input.c.x, u_input.c.x << (~75351u % 32u)), select(firstTrailingBit(u_input.c.yy), u_input.c.yx, vec2<bool>(true, all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-506f, 908f, -299f), vec3<f32>(-1190f, -119f, 1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(719f, 2021f, 1727f))))), vec3<i32>(max(_wgslsmith_clamp_i32(-22390i & u_input.b, u_input.b, abs(-1i)), -19083i), _wgslsmith_add_i32(-_wgslsmith_add_i32(-1i, 40515i), -6719i), -34099i), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2304f * 651f), _wgslsmith_f_op_f32(f32(-1f) * -902f)), -239f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-969f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)) - 1009f) * 1f));
}


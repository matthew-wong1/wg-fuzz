struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-118f - 1032f), _wgslsmith_f_op_f32(f32(-1f) * -389f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)), u_input.c <= 5120i))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-835f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-835f, 1455f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1296f + -1126f), _wgslsmith_f_op_f32(f32(-1f) * -359f), false))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(0i, -((i32(-1i) * -2147483647i) ^ _wgslsmith_add_i32(u_input.b.x, 29310i))));
    var var_2 = 1373f;
    global0 = array<vec4<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, max(u_input.c << (83685u % 32u), -u_input.b.x)), firstTrailingBit(-max(vec2<i32>(2147483647i, 0i), u_input.b.yy))), max(~(-2147483647i), firstTrailingBit(select(_wgslsmith_add_i32(0i, u_input.b.x), u_input.b.x, all(vec3<bool>(false, false, false))))), _wgslsmith_clamp_vec2_i32(~u_input.b.zy, u_input.b.zz, select(_wgslsmith_clamp_vec2_i32(u_input.b.xx, -u_input.b.yy, min(u_input.b.zx, vec2<i32>(u_input.c, u_input.b.x))), -u_input.b.zy, 1180f > _wgslsmith_f_op_f32(sign(-1248f)))));
}


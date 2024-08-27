struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_sub_vec3_i32(countOneBits(~(-_wgslsmith_add_vec3_i32(vec3<i32>(-55079i, 52720i, -14891i), vec3<i32>(u_input.a, u_input.a, -25555i)))), reverseBits(_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, u_input.a, 2147483647i), -vec3<i32>(u_input.a, 1i, -8771i))) ^ -(-vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 28631i, 1i)));
    let var_1 = 1330f;
    var var_2 = vec2<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -1001f), var_1));
    let var_3 = vec3<f32>(var_1, 287f, -1151f);
    let x = u_input.a;
    s_output = StorageBuffer(19006u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 606f) * -909f), -1719f), 1856f);
}


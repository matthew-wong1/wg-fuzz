struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> StorageBuffer {
    return StorageBuffer(arg_3, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(444f, 977f, -548f), _wgslsmith_f_op_vec3_f32(vec3<f32>(388f, -475f, 1074f) - vec3<f32>(1248f, 1172f, 631f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(767f * 110f), _wgslsmith_div_f32(410f, 203f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(238f, 333f, 2020f)))))));
    let x = u_input.a;
    s_output = func_1(Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -119f), _wgslsmith_f_op_f32(f32(-1f) * -987f)), -1495f, var_1.x, _wgslsmith_f_op_f32(max(-2850f, _wgslsmith_f_op_f32(var_1.x + -961f))))), vec3<i32>(~_wgslsmith_sub_i32(-1i, 1599i), u_input.b, -2147483647i) & -_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.d.x), -vec3<i32>(13643i, -2147483647i, 4045i)), _wgslsmith_div_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, -1i), vec3<i32>(-53596i, u_input.b, 23395i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -63945i, u_input.d.x), vec3<i32>(-19122i, 19752i, -83873i)))), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, u_input.d.x, 13460i), abs(vec3<i32>(-34468i, 50655i, u_input.c))) ^ vec3<i32>(~(-56138i), 1i, _wgslsmith_sub_i32(1i, u_input.c))), _wgslsmith_add_vec2_i32(select(-(vec2<i32>(-2147483647i, -2147483647i) | vec2<i32>(-40033i, u_input.a)), vec2<i32>(~u_input.d.x, u_input.c), vec2<bool>(true, all(vec3<bool>(false, true, false)))), _wgslsmith_div_vec2_i32(~vec2<i32>(-22640i, u_input.a), ~_wgslsmith_sub_vec2_i32(u_input.d, u_input.d))));
}


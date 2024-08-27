struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<i32>(-1i, 28695i, -30716i, 44998i), 391f, vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-16761i, 1444i, 54691i, i32(-2147483648)), -1366f, vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> u32 {
    var var_0 = any(select(select(vec3<bool>(global2.c.x, true, global2.d.x), !global2.c.yxx, global2.d.x && true), global2.d.wwz, global2.b != -451f)) | false;
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(-global2.a, -global2.a), -1000f, global2.d, global2.d);
    global0 = var_1.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * global2.b) + _wgslsmith_f_op_f32(-global2.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, global2.b) - -313f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -1098f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))), true))));
    var_1 = Struct_1(vec4<i32>(-1i) * -global2.a, var_1.b, select(!vec4<bool>(true, true, false, any(vec4<bool>(true, var_1.d.x, false, true))), !global2.c, false), global2.d);
    return 29177u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = -(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, _wgslsmith_div_i32(-1i, arg_1.a.x), arg_0.x), vec3<i32>(_wgslsmith_mult_i32(-13972i, global2.a.x), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.a.x, u_input.a.x, 0i), global2.a))) << (u_input.b % vec3<u32>(32u)));
    let var_1 = i32(-1i) * -45517i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1488f, global2.b, arg_1.b))))))));
    var var_3 = global1[_wgslsmith_index_u32(u_input.c, 2u)];
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f))))), var_2);
    return _wgslsmith_sub_u32(1u, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_2(~(-global2.a.xzx), global1[_wgslsmith_index_u32(1u, 2u)], ~(~u_input.b.x), func_1()), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.b.x, u_input.c), ~countOneBits(u_input.b.x))), -934f, 1i, vec2<f32>(global2.b, _wgslsmith_f_op_f32(round(781f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b))), -477f)));
}


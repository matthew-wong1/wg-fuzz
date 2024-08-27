struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 25>;

var<private> global3: array<i32, 12> = array<i32, 12>(-50545i, i32(-2147483648), i32(-2147483648), -50253i, 2147483647i, 2147483647i, 27095i, -17920i, 1i, i32(-2147483648), 1i, 0i);

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_sub_u32(~u_input.d.x, global0.a), -705f);
    let var_1 = var_0;
    let var_2 = var_1.b;
    global2 = array<vec4<f32>, 25>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + -854f)), 1590f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1000f, 1869f))))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, _wgslsmith_f_op_f32(-global1.b)), var_3.yx), var_3.zz);
}

fn func_3() -> bool {
    var var_0 = Struct_1(28668u, global4.x);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(u_input.b & u_input.b, u_input.b), firstTrailingBit(u_input.b)), -_wgslsmith_mult_vec4_i32(~u_input.b, u_input.b)), 61577i);
    let var_2 = Struct_1(_wgslsmith_clamp_u32(9119u, global0.a, global0.a), -202f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, 171f) + _wgslsmith_f_op_f32(max(-177f, 1167f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), var_2.b)))) - global1.b);
    var_3 = 1538f;
    return !(2147483647i > global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a, ~firstLeadingBit(1u)), 12u)]);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = u_input.d;
    var var_1 = true;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * vec2<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, global0.b)))));
    var var_2 = !select(vec4<bool>(true, !any(vec3<bool>(true, false, true)), true, !func_3()), vec4<bool>(true, !select(true, false, false), true, true), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, false), all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, true, true))));
    var var_3 = var_2.x;
    return StorageBuffer(-u_input.b, ~min(max(vec4<u32>(var_0.x, 1u, 42550u, 55344u), vec4<u32>(arg_0.a, 61552u, global0.a, 1u)), select(vec4<u32>(26272u, 4294967295u, global0.a, 5934u), u_input.d, vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))) << (~u_input.d % vec4<u32>(32u)), u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 2585f)), _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -979f) * _wgslsmith_f_op_f32(global4.x + 196f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 12>();
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(sign(-1462f)))));
    var var_1 = var_0;
    var var_2 = Struct_1(22163u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))));
    let x = u_input.a;
    s_output = func_1(var_0);
}


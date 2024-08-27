struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, 14925u, -1i);

var<private> global1: array<i32, 6> = array<i32, 6>(-25902i, -10095i, 0i, -12088i, i32(-2147483648), 0i);

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -32390i, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = -vec2<i32>(global1[_wgslsmith_index_u32(0u, 6u)], u_input.c);
    return Struct_1(-1000f);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(step(1753f, arg_1.a))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * 197f)))), arg_0.x));
    var var_1 = 12266i;
    var var_2 = false;
    let var_3 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(-7607i > global2.x, all(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, true)))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), false), vec3<bool>(8869i >= (global0.c >> (~global0.b % 32u)), !(true || all(vec3<bool>(true, false, true))), true), !vec3<bool>(true, !all(vec4<bool>(false, true, true, false)), false));
    var var_4 = false;
    return u_input.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-581f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-761f, 1000f)) + _wgslsmith_f_op_f32(-115f * -1961f))) + vec2<f32>(250f, _wgslsmith_f_op_f32(908f - _wgslsmith_f_op_f32(f32(-1f) * -1273f)))));
    return Struct_2(firstLeadingBit(firstLeadingBit(func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_0.a, var_0.a, var_0.a), vec4<f32>(731f, var_0.a, var_0.a, -694f))), var_0))), 0u, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global0 = func_1(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_u32(u_input.a, ~109569u, global0.a));
    let var_1 = -max(-(~(-1i)), global2.x << (global0.b % 32u));
    global2 = max(u_input.b.wwy, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.xwx, abs(~u_input.b.zwy), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -8860i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 1i, -1i))), ~min(~vec3<i32>(-17552i, -31489i, global0.c), firstLeadingBit(vec3<i32>(-4481i, var_1, 27861i)))));
    var var_2 = (var_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))))) == true;
    let var_3 = Struct_2(4294967295u, 4071u, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, 2147483647i, global0.c, 0i), u_input.b, true), ~(-u_input.b)), ~select(firstTrailingBit(u_input.b), u_input.b, vec4<bool>(true, true, true, true))));
    var_2 = !all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))));
    var var_4 = ~vec3<u32>(59501u, max(reverseBits(var_3.a), _wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(u_input.a, var_3.b, global0.a))), ~89911u);
    global1 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1092f, 791f, var_0)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0)))), vec3<f32>(-1125f, _wgslsmith_f_op_f32(-1075f - -1291f), var_0))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(var_0 * 332f), _wgslsmith_f_op_f32(var_0 * var_0)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1523f, 1366f, var_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(915f, var_0, 562f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, 783f, -842f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(761f, var_0, var_0) + vec3<f32>(-142f, 1218f, 493f)))))), vec3<i32>(-2147483647i, ~min(~0i, 2147483647i), -499i), _wgslsmith_div_u32(2455u, 23247u));
}


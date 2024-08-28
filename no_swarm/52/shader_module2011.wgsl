struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 21>;

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = u_input.c;
    global2 = _wgslsmith_clamp_vec3_i32(u_input.d.xxy, -max(~vec3<i32>(-1i, arg_1, arg_2), min(~vec3<i32>(arg_2, 20511i, arg_1), -u_input.d.zwx)), vec3<i32>(~(-_wgslsmith_add_i32(arg_2, -2147483647i)), _wgslsmith_mod_i32(-11466i, -2147483647i), ~_wgslsmith_mod_i32(~(-1i), -1i)));
    let var_1 = _wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1147f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1341f))), true)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2251f) * _wgslsmith_f_op_f32(1f * 694f)));
    global1 = array<u32, 21>();
    return _wgslsmith_f_op_f32(f32(-1f) * -105f);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(345f))), 865f);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, 301f)))));
    var var_1 = Struct_1(var_0.b.x < var_0.b.x, var_0.b);
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) + var_0.b)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.x, -413f, var_0.a)) - _wgslsmith_f_op_f32(var_0.b.x - -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-253f, 456f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), 477f, var_2.b.x, _wgslsmith_f_op_f32(round(1323f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_2.b.x, var_0.b.x, 1163f)), vec4<f32>(623f, 361f, var_2.b.x, var_0.b.x)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1980f), _wgslsmith_f_op_f32(exp2(var_2.b.x)), _wgslsmith_f_op_f32(var_0.b.x - var_1.b.x), var_2.b.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, -54355i, global2.x))), var_1.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-499f, -976f, var_1.b.x, _wgslsmith_f_op_f32(func_3(u_input.d.wzz))) + vec4<f32>(704f, _wgslsmith_f_op_f32(1000f + 153f), var_1.b.x, var_2.b.x))));
    global2 = abs(u_input.d.xxy);
    return 23073u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_i32(u_input.d.x, -24086i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1233f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1446f + 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(4294967295u, 21u)], global2.x, -1109i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-805f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-625f)), _wgslsmith_div_f32(1145f, 562f)))));
    global0 = _wgslsmith_f_op_f32(2541f + 1f);
    let var_1 = ~global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(~4294967295u, 21u)], global1[_wgslsmith_index_u32(37384u & func_2(), 21u)], true), 21u)];
    global2 = countOneBits(vec3<i32>(var_0 >> (0u % 32u), _wgslsmith_mult_i32(abs(1i) ^ _wgslsmith_mod_i32(u_input.d.x, var_0), max(var_0, _wgslsmith_div_i32(2147483647i, 4240i))), countOneBits(global2.x) ^ global2.x));
    let var_2 = var_0 & firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(var_0, 2147483647i)), ~vec2<i32>(global2.x, 0i) >> (~vec2<u32>(1u, 2804u) % vec2<u32>(32u))));
    let var_3 = firstTrailingBit(58781i);
    var var_4 = reverseBits(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3), ~(~firstLeadingBit(firstLeadingBit(vec3<i32>(global2.x, 2147483647i, var_3)))), abs(~((vec2<u32>(2911u, var_1) & vec2<u32>(1u, u_input.c)) >> (~vec2<u32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, var_0), -u_input.d.wz)), global2.xz));
}


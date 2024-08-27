struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> vec2<u32> {
    var var_0 = arg_1;
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(39935i, u_input.c, arg_2, arg_2), u_input.b)), 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_3.x)), -1131f)), _wgslsmith_f_op_f32(select(-295f, 361f, true)), _wgslsmith_f_op_f32(-1919f - 1f)), Struct_1(~arg_0.x & arg_0.x), firstLeadingBit(arg_0));
    var var_2 = var_1.c.a;
    let var_3 = ~_wgslsmith_sub_i32(i32(-1i) * -12909i, 0i);
    var_0 = _wgslsmith_f_op_f32(trunc(var_1.b.x));
    return u_input.a.zz;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec3<i32> {
    let var_0 = Struct_3(-_wgslsmith_clamp_i32(1i, u_input.c, -50798i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 323f, -429f) - vec3<f32>(-623f, 1984f, -815f)) - vec3<f32>(-1162f, 448f, 706f)))), Struct_1(~(~u_input.a.x)), ~func_3(firstTrailingBit(~vec2<u32>(u_input.a.x, 669u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(599f + -735f), -1957f)), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -624f))))));
    var var_1 = vec3<bool>(true, all(select(select(vec3<bool>(arg_1, false, true), !vec3<bool>(false, global1.x, arg_1), vec3<bool>(true, global1.x, false)), !vec3<bool>(global1.x, false, global1.x), true)), arg_1);
    global1 = vec3<bool>(!var_1.x, any(select(!select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_1, var_1.x), vec3<bool>(arg_1, global1.x, true)), !select(vec3<bool>(var_1.x, false, global1.x), vec3<bool>(false, arg_1, var_1.x), vec3<bool>(true, true, arg_1)), !vec3<bool>(var_1.x, false, global1.x))), global1.x);
    var var_2 = Struct_1(var_0.d.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x + -258f), -1000f)), 1176f)));
    return max(-_wgslsmith_div_vec3_i32(-vec3<i32>(25168i, u_input.c, u_input.b.x), vec3<i32>(u_input.b.x, -9415i, -u_input.c)), abs(select(vec3<i32>(-1i) * -u_input.b.wxy, u_input.b.wzw, firstTrailingBit(var_0.a) == (i32(-1i) * -1i))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(852f, 470f, 829f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-736f, -2314f, -997f), vec3<f32>(-1754f, 413f, 1272f)))))));
    return func_2(~u_input.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(global1.x, true, ((u_input.c << (u_input.a.x % 32u)) < firstTrailingBit(-3472i)) || (global1.x & any(vec3<bool>(global1.x, false, true))));
    var_0 = true;
    let var_1 = _wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    var_0 = true;
    var var_2 = -u_input.b.x;
    global1 = vec3<bool>(any(vec3<bool>(global1.x, false, global1.x)), false, -1i > _wgslsmith_add_i32(_wgslsmith_clamp_i32(-u_input.b.x, countOneBits(u_input.b.x), u_input.b.x), ~2147483647i));
    let var_3 = firstLeadingBit(max(firstTrailingBit(-func_1()), vec3<i32>(u_input.b.x, -u_input.c, _wgslsmith_add_i32(17147i, _wgslsmith_div_i32(u_input.c, 12406i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -410f)))))), u_input.b.x, vec2<u32>(~(~(~var_1)), 45728u));
}


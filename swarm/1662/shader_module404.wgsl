struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global0 = vec3<u32>(28450u, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 54633u, 23063u), vec4<u32>(global0.x, 64264u, global0.x, global0.x)), vec4<u32>(95754u, global0.x, 1u, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, global0.x), ~global0.x), global0.x)), 4294967295u);
    let var_0 = Struct_1(global0.x, max(i32(-1i) * -57657i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -2147483647i, 31508i), vec4<i32>(-7443i, u_input.a, 2147483647i, -1i)) | 15616i) | 1i, false, vec3<bool>(true, all(vec2<bool>(true, true)), true));
    var var_1 = var_0.c;
    let var_2 = var_0;
    global0 = ~(~(~(~vec3<u32>(global0.x, var_2.a, global0.x))));
    return _wgslsmith_clamp_i32(var_2.b, 1i, 14304i);
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = arg_0;
    let var_1 = 57754i;
    var var_2 = vec4<i32>(arg_0.b, -_wgslsmith_dot_vec4_i32(-vec4<i32>(-10120i, 46235i, -1i, -1i), vec4<i32>(arg_0.b, _wgslsmith_add_i32(arg_0.b, u_input.a), func_3(), var_0.b)), -u_input.a, 1912i);
    let var_3 = func_3();
    var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_3, var_2.x, var_2.x, arg_0.b)), vec4<i32>(arg_0.b >> (arg_0.a % 32u), arg_0.b, -2147483647i, 0i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, var_1, var_3, var_1), vec4<i32>(-2157i, -1i, 1i, -1i))) | -max(-vec4<i32>(-14123i, arg_0.b, var_1, u_input.a), ~vec4<i32>(-30206i, -36692i, arg_0.b, u_input.a)), vec4<i32>(select(-2147483647i, 0i, !var_0.c | var_0.d.x), u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(var_2.yx), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b, 9128i), var_2.zw, var_2.wx)), -var_2.zx), var_2.x));
    return vec2<f32>(1260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.x)), global1.x)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1300f, _wgslsmith_f_op_f32(step(-879f, global1.x))) - _wgslsmith_f_op_vec2_f32(func_2(Struct_1(arg_1.a << (27514u % 32u), -1i, true, select(vec3<bool>(false, false, arg_0), arg_1.d, vec3<bool>(true, arg_1.d.x, false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1275f + 209f), _wgslsmith_f_op_f32(global1.x - -871f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(423f, global1.x), vec2<f32>(global1.x, 106f))))))));
    let var_0 = arg_2.a;
    var var_1 = _wgslsmith_mult_vec2_u32(~(~global0.zy << (global0.zx % vec2<u32>(32u))), vec2<u32>(43000u, 1u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 421f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))) + 468f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(783f)) * _wgslsmith_f_op_f32(global1.x - -1005f));
    return !(!vec3<bool>(false, 498f <= _wgslsmith_f_op_f32(min(global1.x, global1.x)), true));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(~firstTrailingBit(arg_0.a), 24681i, (u_input.a & _wgslsmith_add_i32(~0i, _wgslsmith_mult_i32(arg_2.b, -15931i))) >= _wgslsmith_mult_i32(arg_2.b, ~_wgslsmith_clamp_i32(u_input.a, -43325i, arg_2.b)), !func_1(false & arg_0.c, arg_2, arg_2));
    var var_1 = ~(-(~firstLeadingBit(arg_2.b))) ^ arg_0.b;
    let var_2 = any(vec3<bool>(true, arg_2.c, any(select(select(vec4<bool>(var_0.d.x, arg_0.d.x, false, arg_0.d.x), vec4<bool>(arg_0.c, true, arg_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, false, arg_2.d.x, false)), vec4<bool>(true, true, false, false), true))));
    var var_3 = global0.yx;
    let var_4 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.x, arg_1), global0.yy), 1u), 0i, true, var_0.d);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(global1.x, global1.x), -288f))), vec2<bool>(true, true)))));
    let var_0 = global0.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1814f, global1.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-435f, -455f))) - _wgslsmith_f_op_vec2_f32(func_4(Struct_1(~global0.x, 1i, false, vec3<bool>(false, true, false)), global0.x, Struct_1(4294967295u, _wgslsmith_add_i32(0i, 2147483647i), any(vec4<bool>(true, true, true, false)), func_1(true, Struct_1(global0.x, u_input.a, false, vec3<bool>(true, true, true)), Struct_1(global0.x, 2147483647i, false, vec3<bool>(false, true, true))))))));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -503f) - _wgslsmith_f_op_f32(global1.x * 165f)))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(global1.x, global1.x))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)) * -819f), global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(select(global1.x, 942f, true))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-316f)), _wgslsmith_f_op_f32(round(470f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1586f)) * global1.x));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(-79341i, -35481i, (~u_input.a ^ (-40897i ^ u_input.a)) << (43165u % 32u)), u_input.a);
    var var_3 = !(!vec3<bool>(var_2 <= ~3154i, true, _wgslsmith_f_op_f32(-474f * var_1.x) != _wgslsmith_f_op_f32(1445f + -1000f)));
    global1 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, u_input.a) & _wgslsmith_div_i32(~min(-39264i, u_input.a), _wgslsmith_sub_i32(-3751i, -36948i) ^ u_input.a));
}


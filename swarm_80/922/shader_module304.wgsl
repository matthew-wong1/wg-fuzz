struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-800f, 574f, 160f);

var<private> global1: array<vec3<i32>, 25>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(376f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-905f, -271f))))) - 631f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(floor(1169f)), _wgslsmith_div_f32(844f, arg_0.a.x), _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)) * _wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.a)))));
}

fn func_3() -> vec3<f32> {
    let var_0 = ~u_input.a.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(round(-389f))), -1518f)), global0.x);
    global1 = array<vec3<i32>, 25>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(-379f, 1413f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) * global0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -861f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 228f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(391f, global0.x, 552f, -886f) * vec4<f32>(global0.x, global0.x, -250f, 262f)))))), select(!select(true, false, true), (14271u | var_0) <= _wgslsmith_div_u32(var_0, var_0), 35042u < var_0) & (~abs(u_input.a.x) < var_0), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-95991i, 6639i, -2147483647i, -6867i), vec4<i32>(35060i, 28761i, 1i, 1656i)), firstLeadingBit(14208i), 15929i, _wgslsmith_add_i32(-1i, -1i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, -1i, 0i, 2147483647i) >> ((vec4<u32>(u_input.a.x, 14142u, u_input.a.x, var_0) & u_input.a) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -1i, 12207i, -36194i, ~0i))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1222f, _wgslsmith_f_op_f32(-global0.x))), global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.x - global0.x), global0.x, var_2.b)))), var_2.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_2(u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    global0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1250f, 1669f, 482f, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, -755f))))), true, max(vec4<i32>(-30943i, arg_1, 0i, arg_1) ^ -vec4<i32>(-9959i, arg_1, arg_1, arg_1), ~(-vec4<i32>(arg_1, -18462i, 1435i, 25728i)))), ~(-(~vec2<i32>(-2147483647i, -1i) | (vec2<i32>(54384i, arg_1) | vec2<i32>(-34894i, arg_1)))), !select(arg_0.x, arg_0.x, !arg_0.x | true))).xxz;
    var var_1 = Struct_2(vec4<u32>(u_input.a.x, select(arg_2.x, arg_2.x, arg_0.x), ~_wgslsmith_mod_u32(1u, ~0u), min(~_wgslsmith_add_u32(arg_2.x, arg_2.x), min(4294967295u, abs(32808u)))));
    var var_2 = arg_1;
    return ~(-3763i);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    global1 = array<vec3<i32>, 25>();
    global0 = arg_2.a.ywz;
    let var_0 = arg_2.c.xz;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_2.a.x, 455f, arg_2.a.x) + arg_2.a), true, arg_2.c);
    var var_2 = any(!select(vec4<bool>(true, var_1.b, arg_2.b, arg_0.a.x != arg_3.x), !vec4<bool>(false, arg_2.b, arg_2.b, false), true));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1593f, global0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-583f, var_0, -259f, 760f), vec4<f32>(global0.x, -1888f, global0.x, var_0))), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<f32>(-292f, var_0, global0.x, var_0), false, vec4<i32>(-13865i, 1i, -50272i, 46675i)), vec2<i32>(1i, 1i), true)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(186f, -1000f, -1351f, global0.x) + vec4<f32>(1360f, var_0, 1947f, var_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(972f, 701f, 1948f, -353f), vec4<f32>(var_0, -228f, var_0, 366f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1084f, var_0, global0.x, var_0)))))), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !select(true, false, false))), abs(~reverseBits(vec4<i32>(1i, -1i, -9528i, 13604i))) << (reverseBits(u_input.a) % vec4<u32>(32u)));
    var var_2 = var_1.c.x;
    var var_3 = func_4(Struct_2(firstTrailingBit(~(~u_input.a))), -((var_1.c.x ^ var_1.c.x) >> (_wgslsmith_sub_u32(1u, 0u) % 32u)) ^ firstLeadingBit(func_2(!vec4<bool>(var_1.b, var_1.b, false, var_1.b), _wgslsmith_mult_i32(var_1.c.x, var_1.c.x), vec3<u32>(4294967295u, 23134u, 4294967295u))), Struct_1(var_1.a, all(vec4<bool>(var_1.b, true, var_1.b, false)) | !var_1.b, _wgslsmith_clamp_vec4_i32(max(~vec4<i32>(20805i, var_1.c.x, var_1.c.x, 31580i), ~var_1.c), var_1.c, max(var_1.c, vec4<i32>(var_1.c.x, -18459i, -2147483647i, var_1.c.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.x, -14273i, var_1.c.x, -2147483647i), var_1.c, var_1.c))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u ^ u_input.a.x, 17577u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), vec4<u32>(~u_input.b.x, u_input.b.x, 57325u, ~1u))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), !(!var_1.b), vec4<i32>((-var_1.c.x ^ 1i) | 1i, -var_1.c.x, _wgslsmith_dot_vec4_i32(~var_1.c, var_1.c), _wgslsmith_mult_i32(firstTrailingBit(var_1.c.x | -5784i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, 2147483647i), vec2<i32>(0i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, 1i, _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(trunc(2221f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(-153f, var_1.a.x, -644f, 127f)) + var_1.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-221f, 289f, global0.x, -1000f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1517f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_1.a, var_1.b, var_1.c), vec2<i32>(var_1.c.x, -6225i), true)).x)), var_1.a.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(352f * var_1.a.x), _wgslsmith_f_op_f32(round(-620f)), _wgslsmith_f_op_f32(step(var_1.a.x, var_0))) - var_1.a.wyy))));
}


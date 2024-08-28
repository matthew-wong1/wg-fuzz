struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -24030i;

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<f32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-165f, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), 2758f, 1190f, _wgslsmith_div_f32(-1000f, -1389f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(424f, 1249f, arg_0.b.x, arg_0.a.x)))))));
    let var_1 = _wgslsmith_clamp_vec2_i32(~global1.xy, global1.zy, vec2<i32>(-1i) * -min(global1.yx, vec2<i32>(global1.x, -1i)));
    let var_2 = -16312i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-758f, arg_0.b.x, var_0.a.x, arg_1), arg_0.b, true)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1357f, -790f, 507f, arg_1), vec4<f32>(-699f, var_0.b.x, var_0.b.x, arg_1)))))), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 277f), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(1623f - 576f), 787f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)) - arg_0.b) - arg_0.a));
    let var_4 = var_3;
    return vec4<f32>(536f, _wgslsmith_f_op_f32(379f * var_0.b.x), -518f, var_3.b.x);
}

fn func_2() -> vec4<i32> {
    global0 = max(28625i, -2147483647i);
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(475f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(219f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-204f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -1000f, var_0, -671f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -337f, var_0, var_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(1328f, 1000f, 783f, var_0), vec4<f32>(var_0, -974f, var_0, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 - 482f)) - _wgslsmith_f_op_f32(-1358f + var_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-373f, var_0), -914f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1119f)), _wgslsmith_f_op_f32(f32(-1f) * -571f), 1800f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, 547f, _wgslsmith_f_op_f32(104f * var_0), _wgslsmith_f_op_f32(var_0 + 247f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2108f, -1000f)) * -992f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x)));
    let var_3 = reverseBits(vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~select(u_input.a.x, 4294967295u, true)), ~(~4294967295u), ~57014u, 86006u));
    return _wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(reverseBits(global1.x), 30524i, -global1.x, select(71562i, global1.x, true))), ~max(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, global1.x, 8100i, global1.x), abs(vec4<i32>(37910i, 12729i, 1317i, 559i))), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, -10159i, global1.x), ~vec4<i32>(-11923i, -12093i, -17765i, 0i))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    global1 = ~(~(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, -1i, -2147483647i), vec3<i32>(-16327i, 0i, 2147483647i)))) & _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(-8950i), global1.x >> (u_input.a.x % 32u), global1.x), vec3<i32>(1i, global1.x & global1.x, -1i)), -countOneBits(select(vec3<i32>(-10623i, -17270i, global1.x), vec3<i32>(global1.x, global1.x, 1i), true)), vec3<i32>(global1.x, _wgslsmith_add_i32(global1.x, -1i), 0i) & vec3<i32>(global1.x, ~global1.x, global1.x << (28938u % 32u)));
    global1 = firstLeadingBit(max(~max(-vec3<i32>(global1.x, global1.x, -46008i), _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, 1i), vec3<i32>(global1.x, -15541i, -31417i))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global1.x, 52965i), -1i, global1.x), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, -43732i, 1i), vec3<i32>(global1.x, global1.x, global1.x)), vec3<i32>(10936i, global1.x, global1.x)))));
    var var_0 = ~abs(select(func_2() | max(vec4<i32>(-2147483647i, global1.x, -38875i, 0i), vec4<i32>(-1i, -4216i, 0i, global1.x)), -vec4<i32>(0i, global1.x, global1.x, 0i) | min(vec4<i32>(1i, 0i, global1.x, global1.x), vec4<i32>(-2147483647i, -1i, global1.x, -1i)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    var var_1 = global1.x >> (min(arg_1.x, arg_1.x) % 32u);
    var var_2 = select(!select(vec3<bool>(var_0.x != 36814i, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !vec3<bool>(!(-11177i != var_0.x), 1075f == _wgslsmith_div_f32(arg_0.x, arg_0.x), -1515f == _wgslsmith_f_op_f32(sign(221f))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), 1000f);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = 21606i;
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = 4294967295u <= ~select(34858u, u_input.a.x, false || all(vec2<bool>(true, true)));
    let var_3 = vec3<bool>(true, true, any(vec2<bool>(true, !any(vec2<bool>(false, false)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(var_1.b)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, _wgslsmith_f_op_f32(-728f * arg_0.b.x), _wgslsmith_div_f32(-1474f, -119f), var_1.a.x) * _wgslsmith_f_op_vec4_f32(-arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 22230u;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1215f, _wgslsmith_f_op_f32(237f * -2083f), _wgslsmith_div_f32(-115f, -1000f), _wgslsmith_div_f32(-591f, 904f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(vec2<f32>(-737f, 1338f), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))), -816f, _wgslsmith_f_op_f32(f32(-1f) * -2421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1006f, 263f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.b.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(select(var_1.a.xw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -1000f)), vec2<bool>(true, true)))), vec2<bool>(true, true)));
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-var_1.b));
    let var_4 = func_4(func_4(Struct_1(_wgslsmith_div_vec4_f32(var_3.a, var_3.a), _wgslsmith_f_op_vec4_f32(-func_4(Struct_1(var_3.a, var_1.b)).a))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-func_4(func_4(var_4)).a), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~abs(u_input.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(802f, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -173f) - _wgslsmith_f_op_f32(-var_3.a.x))))), 171f);
}


struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-203f, 522f));

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = ~(~0u);
    global0 = Struct_1(global0.a);
    let var_1 = Struct_3(arg_0 ^ u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a, global1.a)))))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-800f)), global1.a.x, true)))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b.a, vec2<f32>(_wgslsmith_f_op_f32(-290f * 1270f), _wgslsmith_f_op_f32(step(2237f, 161f))), var_1.c.b.xx))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2066f, global1.a.x)), _wgslsmith_f_op_vec2_f32(-global0.a), (0i | u_input.a.x) <= firstTrailingBit(-1i))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-global0.a.x), true))) + _wgslsmith_f_op_f32(-1475f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, global0.a.x) + _wgslsmith_f_op_f32(select(var_1.c.a, var_1.c.a, true))))));
}

fn func_2() -> vec3<bool> {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(u_input.a.x ^ u_input.a.x, u_input.a.x | -32956i)))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(-global1.a), select(true, false, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-293f, global1.a.x))), _wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(152f, 1583f))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)))))));
    let var_0 = firstLeadingBit(~select(vec2<u32>(u_input.b, u_input.b ^ 11029u), ~(~vec2<u32>(u_input.b, 7630u)), !(586f != global1.a.x)));
    var var_1 = Struct_3(-(~u_input.a.x), Struct_1(global1.a), Struct_2(_wgslsmith_f_op_f32(max(794f, 1715f)), vec3<bool>(true, true, false)));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a - -922f))));
    return var_1.c.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>) -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1160f, 460f) * global1.a), !arg_0.b.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-607f + 653f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.a * global1.a), global0.a, !arg_0.b.zx)), arg_2.zy))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1140f * -1497f) + 125f))))), arg_2);
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(-2347f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -105f)), _wgslsmith_f_op_f32(max(362f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1094f), global1.a.x, all(var_0.b)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.a, -247f), _wgslsmith_f_op_f32(-695f * -1000f), 165f, _wgslsmith_f_op_f32(var_1.a * global0.a.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-929f, 2093f, var_1.a, var_1.a))))));
    return ~_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_sub_i32(-(~u_input.a.x), firstTrailingBit(u_input.a.x) | u_input.a.x), u_input.a.x);
}

fn func_5(arg_0: i32, arg_1: bool) -> vec2<f32> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, select(~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(12681i, -2147483647i, u_input.a.x, -8070i), vec4<i32>(arg_0, 14641i, u_input.a.x, arg_0)), true)), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), firstLeadingBit(arg_0)), vec2<i32>(arg_0, firstLeadingBit(22410i)))), firstTrailingBit(max(2147483647i, u_input.a.x) | (u_input.a.x | -2147483647i)), _wgslsmith_div_i32(-1i, u_input.a.x), ~(_wgslsmith_add_i32(i32(-1i) * -59555i, u_input.a.x) & u_input.a.x));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-765f))), -305f));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.a.x)), vec3<bool>(false, all(!vec2<bool>(arg_1, true)) & (max(arg_0, -1i) == u_input.a.x), false));
    var var_2 = vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(927f, global0.a.x)), _wgslsmith_f_op_f32(-var_1.a), -12645i < var_0.x)))))), _wgslsmith_f_op_f32(-1773f - _wgslsmith_f_op_f32(f32(-1f) * -1196f)));
    let var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return global0.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_5(func_4(arg_1.c, select(~vec3<u32>(u_input.b, 54676u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b), arg_0.b), func_2()), true)));
    var var_0 = Struct_2(arg_0.a, !arg_2.c.b);
    global1 = Struct_1(vec2<f32>(arg_0.a, arg_2.b.a.x));
    let var_1 = any(func_2().zz);
    global0 = arg_1.b;
    return max(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_1.a, 4220i, u_input.a.x)), reverseBits(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, arg_2.a, arg_1.a), vec3<i32>(u_input.a.x, 1i, -1i), false), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_2.a, u_input.a.x), vec3<i32>(1i, arg_2.a, arg_1.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, arg_2.a, -7065i), vec3<i32>(arg_1.a, -1i, -1i))))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<i32>(countOneBits(_wgslsmith_div_i32(func_1(Struct_2(global0.a.x, vec3<bool>(false, false, false)), Struct_3(var_0, Struct_1(vec2<f32>(global0.a.x, global1.a.x)), Struct_2(-776f, vec3<bool>(false, true, true))), Struct_3(-17613i, Struct_1(global0.a), Struct_2(646f, vec3<bool>(true, true, true)))), var_0 >> (1u % 32u))), 2147483647i));
}


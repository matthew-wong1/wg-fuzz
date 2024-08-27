struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<bool>(arg_3.a, (u_input.a.x != ~u_input.b.x) & (arg_3.a & select(true, any(arg_3.b), true)), arg_1.a);
    var var_1 = arg_1;
    global0 = ~(u_input.d ^ ~(~(u_input.a.x | u_input.d)));
    let var_2 = ~vec3<i32>(~select(-60834i, -1i, arg_1.a), ~42864i, 1i) & firstTrailingBit(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -2147483647i, 19074i), i32(-1i) * -1i, 1i), arg_1.b));
    global0 = 0u;
    return var_1.c.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1);
    let var_2 = arg_2;
    global0 = ((arg_0.x & 1u) | arg_0.x) >> (arg_0.x % 32u);
    var_0 = Struct_1(!any(select(select(vec2<bool>(arg_2.b.x, false), var_2.b.yy, vec2<bool>(false, false)), select(vec2<bool>(true, true), arg_2.b.zx, vec2<bool>(false, false)), true)), vec3<bool>(var_2.b.x, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(-664f, -559f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.a, arg_2, vec4<f32>(-225f, var_2.c.x, var_2.c.x, var_1.x), arg_2)))), vec3<f32>(-701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(round(226f))));
    return var_2.c.x;
}

fn func_1(arg_0: bool) -> f32 {
    global0 = 4294967295u;
    let var_0 = !all(vec4<bool>(arg_0, all(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, true), arg_0)), false, _wgslsmith_f_op_f32(292f + -413f) != _wgslsmith_f_op_f32(func_2(u_input.a.zx, vec2<f32>(-1000f, 1146f), Struct_1(arg_0, vec3<bool>(true, arg_0, true), vec3<f32>(1083f, -381f, 707f))))));
    var var_1 = _wgslsmith_f_op_f32(min(636f, 637f));
    global0 = 0u;
    var var_2 = _wgslsmith_mult_vec3_i32(abs(_wgslsmith_add_vec3_i32(~(-vec3<i32>(1i, 1i, 34424i)), vec3<i32>(1i, 1i, 1i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)) & vec3<i32>(2147483647i, 1i, _wgslsmith_div_i32(i32(-1i) * -9028i, 10252i)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2031f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2561f * _wgslsmith_f_op_f32(1008f + -1000f))), _wgslsmith_f_op_f32(-379f + -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x) ^ _wgslsmith_mult_u32(u_input.a.x, 55089u), 7613u);
    let var_0 = Struct_1(false, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), u_input.b.x != u_input.a.x), !(_wgslsmith_sub_u32(45469u, 40915u) <= (u_input.d & 97037u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(false)), _wgslsmith_f_op_f32(f32(-1f) * -824f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1655f, -748f, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1469f))))));
    global0 = 7095u;
    var var_1 = Struct_1(!(!(!(!var_0.b.x))), var_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.c.x, 462f), _wgslsmith_f_op_f32(-1019f * -1000f), 230f)), var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(7789i, 2147483647i))) >= max(1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(5846u, countOneBits(u_input.b));
}


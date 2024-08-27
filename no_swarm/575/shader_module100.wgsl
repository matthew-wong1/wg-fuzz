struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -478f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = arg_0.x;
    let var_1 = arg_0;
    return 4294967295u;
}

fn func_2() -> f32 {
    global0 = 364f;
    global0 = _wgslsmith_f_op_f32(min(-455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))) - _wgslsmith_f_op_f32(-879f + _wgslsmith_f_op_f32(-470f + 407f))) - 1318f)));
    var var_0 = countOneBits(_wgslsmith_add_i32(countOneBits(u_input.a), u_input.a) << (firstTrailingBit(4294967295u) % 32u));
    var_0 = firstLeadingBit(u_input.a);
    let var_1 = -vec4<i32>(0i & u_input.a, u_input.a, 1i, u_input.a | u_input.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -715f);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> i32 {
    let var_0 = Struct_1(any(vec4<bool>(true, true, true, true)), true, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, arg_1.x, u_input.a, -arg_1.x), select(vec4<i32>(2147483647i, -37577i, -2147483647i, arg_1.x) | vec4<i32>(-2147483647i, u_input.a, 2147483647i, arg_1.x), abs(vec4<i32>(arg_1.x, 1i, 1i, arg_1.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false))) ^ (countOneBits(~vec4<i32>(u_input.a, u_input.a, arg_1.x, 0i)) ^ vec4<i32>(_wgslsmith_sub_i32(-21526i, 0i), 1i, abs(-26994i), arg_1.x)), vec2<bool>(true, true));
    var var_1 = -454f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(392f)) + _wgslsmith_f_op_f32(max(-640f, 862f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-674f, 641f)), _wgslsmith_f_op_f32(ceil(-1110f))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -908f))))) - _wgslsmith_f_op_f32(f32(-1f) * -214f));
    var_1 = _wgslsmith_f_op_f32(step(1127f, 1f));
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(~7427u < u_input.b.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 69092u > func_1(vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_f_op_f32(1965f - _wgslsmith_f_op_f32(f32(-1f) * -2213f));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(937f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))))));
    global0 = 1190f;
    global0 = var_1;
    var var_2 = Struct_1(!(!(_wgslsmith_f_op_f32(f32(-1f) * -985f) <= var_1)), var_0.x, select(vec4<i32>(0i, _wgslsmith_mult_i32(func_3(30902u, vec2<i32>(58686i, u_input.a)), max(2147483647i, 0i)), _wgslsmith_sub_i32(~(-9406i), ~(-12369i)), -1i), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) >> (vec4<u32>(35046u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-29212i, u_input.a, u_input.a, u_input.a)), ~vec4<i32>(-15110i, 2147483647i, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, 8596u, 89720u, u_input.b.x) % vec4<u32>(32u))), !(0i != u_input.a)), vec2<bool>(select(!var_0.x, select(true, true, false), true) & true, !any(vec3<bool>(var_0.x, var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}


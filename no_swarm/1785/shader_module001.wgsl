struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> bool {
    return u_input.a.x == abs(860i);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = select(!(func_2(Struct_1(true)) & any(vec2<bool>(true, true))) && true, true, true);
    return _wgslsmith_sub_i32(-1i, -4513i);
}

fn func_3() -> bool {
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1687f - -411f)))));
    let var_1 = -_wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(~vec3<i32>(-3163i, -1i, -1i), ~vec3<i32>(5650i, 0i, u_input.b)), ~vec3<i32>(func_1(u_input.c.zx), -2147483647i, -u_input.b));
    var var_2 = _wgslsmith_div_vec3_i32(~vec3<i32>(0i, u_input.b, -1i), ~var_1);
    var_2 = vec3<i32>(var_1.x, -44489i & (firstLeadingBit(var_2.x) | -1i), 23931i);
    let var_3 = Struct_1(true);
    let var_4 = vec4<i32>(reverseBits(_wgslsmith_div_i32(-2147483647i, -1i)), 1i, var_1.x, select(func_1(u_input.c.yx), u_input.a.x, var_3.a));
    let var_5 = Struct_1(any(select(vec2<bool>(!var_3.a, func_3()), select(select(vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_3.a, var_3.a), vec2<bool>(true, true)), vec2<bool>(true, false), var_3.a & var_3.a), vec2<bool>(var_3.a | false, func_3()))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1462f, 3105f, 622f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -719f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 570f, _wgslsmith_f_op_f32(-388f - -750f)))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(select(-2425f, -313f, var_3.a)))), _wgslsmith_f_op_f32(678f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, 693f) + _wgslsmith_f_op_f32(f32(-1f) * -1221f)))));
    var var_7 = _wgslsmith_f_op_f32(select(var_6.x, 693f, all(select(vec4<bool>(false, var_5.a | false, false, u_input.c.x > 0u), !vec4<bool>(true, var_3.a, var_5.a, var_5.a), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-674f)))), 712f)));
}


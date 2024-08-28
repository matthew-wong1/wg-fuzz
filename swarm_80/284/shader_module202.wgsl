struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(287f, -272f));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a)))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    let var_2 = vec4<i32>(12394i, u_input.b.x, 1i, -2147483647i);
    var var_3 = ~u_input.c;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1764f + var_1))) + 1346f), var_1));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = abs(~(u_input.c.zw ^ ~firstLeadingBit(u_input.a.yx)));
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - arg_1.a) + _wgslsmith_f_op_vec2_f32(-var_0.a)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1282f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-243f * arg_1.a.x), _wgslsmith_f_op_f32(floor(arg_1.a.x))))));
    return ~u_input.b.xy;
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = u_input.a.xz;
    var var_1 = u_input.b.xz;
    let var_2 = arg_0.xx;
    var_1 = firstTrailingBit(firstLeadingBit(~func_3(any(vec3<bool>(false, false, false)), func_2())));
    var_1 = min(-_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(abs(u_input.b.yy), select(vec2<i32>(0i, -2147483647i), arg_0.xz, false)), vec2<i32>(var_2.x, 2147483647i)), u_input.b.yx);
    return vec2<bool>(true, !select(false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(floor(1203f)) >= _wgslsmith_f_op_f32(f32(-1f) * -532f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(vec2<bool>(true, true), func_1(u_input.b), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    var_0 = select(vec2<bool>(var_0.x | !all(vec2<bool>(var_0.x, var_0.x)), var_0.x), vec2<bool>(var_0.x, true), !(!select(!var_0.x, var_0.x, u_input.b.x != -2147483647i)));
    var_0 = !vec2<bool>(!var_0.x, var_0.x && var_0.x);
    let var_1 = any(vec4<bool>(true, all(vec3<bool>(var_0.x, u_input.c.x != 4294967295u, all(vec3<bool>(var_0.x, var_0.x, true)))), _wgslsmith_f_op_f32(-1386f - _wgslsmith_f_op_f32(min(1549f, -1278f))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -739f))), true));
    let var_2 = func_2();
    let var_3 = func_2();
    var var_4 = _wgslsmith_div_f32(1000f, -114f);
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(41978i);
}


struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = 47571u;
    var var_1 = Struct_2(Struct_1(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1379f)), -826f)))), _wgslsmith_f_op_f32(trunc(434f)) != 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(-2311f - 499f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(812f))))), select(vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), false & !all(vec4<bool>(true, true, true, true)), select(vec3<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), true), u_input.a.wwy);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1600f * -1692f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b - _wgslsmith_f_op_f32(f32(-1f) * -203f)) * _wgslsmith_f_op_f32(floor(var_1.a.d)))));
    var var_3 = var_1.a;
    var var_4 = -2156f;
    return select(vec2<bool>(u_input.b.x >= u_input.b.x, var_1.a.c | (var_3.c & all(vec2<bool>(true, false)))), !var_3.e, true);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(select(vec3<bool>(false, select(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f + arg_1)))), true, arg_1, func_3()), true, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, true)))), u_input.a.yzw);
    var var_1 = ~vec2<i32>(arg_0.x, arg_0.x) & min(~vec2<i32>(~u_input.b.x, -4333i), u_input.b);
    var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-max(u_input.b, u_input.b) ^ -_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(var_1.x, arg_0.x)), vec2<i32>(arg_0.x, -17849i)), firstLeadingBit(min(arg_0, u_input.b ^ arg_0) ^ (-vec2<i32>(0i, u_input.b.x) << (~var_0.d.zy % vec2<u32>(32u)))));
    var_1 = ~abs(abs(arg_0));
    var var_2 = var_1.x;
    return var_0;
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2(-((-u_input.b & vec2<i32>(u_input.b.x, u_input.b.x)) & -vec2<i32>(30624i, u_input.b.x)), 1000f);
    var var_1 = Struct_1(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f * -291f)), true | any(var_0.a.a), _wgslsmith_f_op_f32(-var_0.a.d), var_0.c.xy);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.b)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1222f * _wgslsmith_f_op_f32(sign(-1116f))) - _wgslsmith_f_op_f32(floor(var_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.b)) * var_1.b), any(vec3<bool>(true || var_0.c.x, var_0.a.a.x, var_1.c)))));
    let var_3 = func_2(-u_input.b, _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1324f - var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b, 1751f), var_0.a.d)))))).a;
    let var_4 = var_0.a;
    return select(vec3<bool>(all(!vec4<bool>(true, var_3.a.x, var_4.a.x, var_4.a.x)) & ((var_0.d.x << (var_0.d.x % 32u)) != (76451u ^ var_0.d.x)), select(all(var_1.a), -u_input.b.x != ~u_input.b.x, func_3().x), any(var_4.e)), vec3<bool>(any(!var_3.a.zz) & var_3.e.x, _wgslsmith_f_op_f32(ceil(-1000f)) <= 1412f, true), func_2(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -20004i)), vec2<i32>(10388i, u_input.b.x))), var_0.a.d).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -102f), -728f)));
    let var_1 = Struct_1(select(func_1(), vec3<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), u_input.a.x == (0u ^ u_input.a.x)), _wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(590f, 1f), 957f)), true, _wgslsmith_f_op_f32(-var_0), !(!vec2<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)))));
    var var_2 = u_input.a.x;
    let var_3 = true;
    var_2 = countOneBits(~firstTrailingBit(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, u_input.b.x, abs(0i), u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1632f, _wgslsmith_f_op_f32(exp2(var_1.b)), var_3 || var_1.c)))), _wgslsmith_f_op_f32(max(func_2(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(abs(var_0))).a.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1122f * 1494f), _wgslsmith_f_op_f32(round(var_0)), false | var_1.c))))));
}


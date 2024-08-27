struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> bool {
    let var_0 = u_input.e.x > ~1i;
    let var_1 = arg_0;
    var var_2 = false;
    var_2 = (u_input.b > 23347u) | (false & !(any(vec4<bool>(var_0, var_0, true, var_0)) & !arg_2.x));
    var_2 = var_0;
    return true;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-373f, -177f)))), 19837u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), arg_0), !vec2<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2270f)))))));
    var var_1 = u_input.d.x;
    var_1 = u_input.d.x;
    var_1 = u_input.b;
    var var_2 = _wgslsmith_div_u32(0u, 4294967295u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-643f * -809f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = !vec4<bool>(!arg_3, all(vec4<bool>(true, arg_3, true, true)) || any(!vec3<bool>(arg_3, false, arg_3)), u_input.d.x > u_input.d.x, true);
    var var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(329f, arg_2.a, var_2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, 541f, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-707f, 920f, arg_0.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-211f, -1443f, arg_0.x)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, var_2.a, arg_0.x), vec3<f32>(-733f, arg_0.x, arg_0.x)))))));
    return Struct_1(arg_2.a, 62096u);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = 27057u;
    var_0 = arg_2.b;
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(106f * -1605f), 746f) + _wgslsmith_f_op_vec2_f32(func_2(arg_0)))), -_wgslsmith_sub_i32(u_input.c.x, u_input.a), arg_2, true);
    let var_2 = arg_2;
    var_0 = (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(u_input.d, vec2<u32>(var_1.b, var_1.b), true), vec2<u32>(136719u, var_2.b), vec2<u32>(47782u, arg_0)), abs(firstTrailingBit(u_input.d))) | u_input.b) ^ func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(var_1.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(arg_1.wx)), _wgslsmith_f_op_vec2_f32(min(arg_1.yz, vec2<f32>(-1041f, arg_2.a))))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false))), ~0i << (arg_0 % 32u), arg_2, select(true, func_3(Struct_1(arg_1.x, 4294967295u), Struct_1(-1513f, var_1.b), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-arg_1.x)), true)).b;
    return var_1.a;
}

fn func_5(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = u_input.d.x;
    let var_1 = reverseBits(~(min(vec2<i32>(u_input.a, 55168i), u_input.c) & ~vec2<i32>(-705i, u_input.a))) >> (select(vec2<u32>(func_4(arg_0.yx, -49045i, func_4(arg_0.yx, -18500i, Struct_1(-310f, 41236u), true), true).b, ~u_input.b << (8513u % 32u)), abs(vec2<u32>(u_input.d.x, 0u)) | firstTrailingBit(u_input.d), all(vec3<bool>(true, true, true))) % vec2<u32>(32u));
    let var_2 = vec4<bool>(all(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(func_3(Struct_1(953f, 7654u), Struct_1(arg_0.x, u_input.d.x), vec2<bool>(false, true), arg_0.x), u_input.e.x <= u_input.c.x, all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec4<bool>(false, false, true, false))))), true, true, select(!func_3(Struct_1(arg_0.x, u_input.b), Struct_1(1965f, 4294967295u), vec2<bool>(true, true), arg_0.x) || true, !(u_input.d.x != ~4294967295u), true));
    return !select(var_2, var_2, select(select(select(vec4<bool>(false, var_2.x, false, false), var_2, var_2.x), vec4<bool>(false, true, true, var_2.x), !var_2), select(select(var_2, var_2, var_2.x), vec4<bool>(true, var_2.x, false, var_2.x), true), vec4<bool>(false, true, any(var_2.zxw), var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(372f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-569f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, 1483f)))));
    let var_1 = vec4<u32>(u_input.d.x, 67217u, firstLeadingBit(abs(reverseBits(_wgslsmith_div_u32(u_input.d.x, u_input.b)))), firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, ~u_input.d.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f * var_0.x)), 1551f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1143f)), -549f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1330f + 874f))))));
    var var_3 = any(select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, true, true)), u_input.b >= 5150u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_5(vec4<f32>(_wgslsmith_f_op_f32(func_1(var_1.x, vec4<f32>(-396f, var_0.x, -1000f, 1540f), Struct_1(-994f, 71316u))), -783f, _wgslsmith_f_op_f32(abs(var_2.x)), -934f))));
    var_3 = false;
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zx) - _wgslsmith_f_op_vec2_f32(-var_0)), countOneBits(u_input.e.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(946f))), _wgslsmith_f_op_f32(func_1(~165u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -1055f, 714f, -637f))), func_4(var_2.yz, -28051i, Struct_1(var_0.x, var_1.x), false)))), 4294967295u), true);
    var_3 = all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(-3026i, ~(~var_1.xy));
}


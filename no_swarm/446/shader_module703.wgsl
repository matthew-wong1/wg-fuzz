struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = arg_0.d.xw;
    var_0 = !arg_0.d.wx;
    let var_1 = u_input.c.x;
    var var_2 = Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.x))));
    global0 = !select(select(!(!arg_0.d.yy), select(vec2<bool>(arg_0.e, false), var_2.a.d.yx, var_2.a.b), select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, var_2.a.d.x), arg_0.d.xz, global0.x), select(vec2<bool>(false, false), vec2<bool>(global0.x, true), var_2.a.e))), vec2<bool>(!(!var_2.a.e), (0u > var_2.a.a) | any(var_2.a.d.wx)), vec2<bool>(all(select(arg_0.d.zx, vec2<bool>(arg_0.d.x, false), vec2<bool>(global0.x, global0.x))), (83877u & var_2.a.a) != select(101170u, var_2.a.a, false)));
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + var_2.b) + _wgslsmith_f_op_f32(-arg_0.c.x)));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    global0 = arg_0.a.d.zy;
    let var_0 = arg_0;
    global0 = vec2<bool>(true, true);
    let var_1 = var_0.a;
    global0 = var_1.d.wy;
    return u_input.c;
}

fn func_2() -> f32 {
    let var_0 = u_input.b.xx;
    global0 = !vec2<bool>(any(vec4<bool>(true, true, true, true)) || (true || global0.x), global0.x);
    var var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(reverseBits(1i), (u_input.d.x ^ -14339i) >> (min(30133u, u_input.b.x) % 32u), _wgslsmith_mult_i32(~u_input.e, -72830i), 1i), func_4(Struct_2(Struct_1(~u_input.b.x, false, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0.x, false, vec2<f32>(-971f, 270f), vec4<bool>(true, global0.x, false, true), global0.x))), vec4<bool>(global0.x, false, false, false), !global0.x), 280f)));
    global0 = !(!select(vec2<bool>(!global0.x, true), !vec2<bool>(global0.x, global0.x), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), global0.x)));
    let var_2 = Struct_1(0u, global0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1201f, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(9588u, global0.x, vec2<f32>(748f, -520f), vec4<bool>(global0.x, false, true, false), false))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f))))), !(!vec4<bool>(global0.x, true, true, any(vec2<bool>(global0.x, true)))), global0.x);
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(362f, _wgslsmith_f_op_f32(round(var_2.c.x))), _wgslsmith_f_op_f32(-var_2.c.x), !((~4294967295u << (1u % 32u)) < (~var_2.a << (~var_0.x % 32u)))));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2309f * 485f))), -1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(909f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f), -1247f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 322f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1093f))))));
    return firstLeadingBit((abs(countOneBits(u_input.b)) | _wgslsmith_sub_vec3_u32(max(vec3<u32>(59179u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, 4294967295u)), ~vec3<u32>(45934u, u_input.b.x, u_input.b.x))) >> (vec3<u32>(~31254u, 4173u, ~(~1u)) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(func_1().x, all(!vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(1u, true, vec2<f32>(-586f, -1812f), vec4<bool>(global0.x, global0.x, false, true), false))))), vec4<bool>(all(vec3<bool>(true, true, global0.x)), !(arg_0.x <= arg_0.x), all(vec3<bool>(true, global0.x, true)), !(-41297i < u_input.e)), all(select(vec3<bool>(true, false, global0.x), !vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, global0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-287f)))));
    let var_1 = Struct_1(var_0.a.a ^ 34578u, any(vec3<bool>(global0.x, var_0.a.b, any(select(var_0.a.d.xy, var_0.a.d.wz, true)))), _wgslsmith_f_op_vec2_f32(exp2(var_0.a.c)), select(vec4<bool>(global0.x, var_0.a.b, var_0.a.e, true == any(var_0.a.d.yw)), !vec4<bool>(global0.x || global0.x, all(vec4<bool>(global0.x, false, global0.x, false)), select(var_0.a.d.x, var_0.a.e, false), all(var_0.a.d)), !vec4<bool>(!global0.x, global0.x, var_0.a.e, !var_0.a.d.x)), true);
    let var_2 = var_0.a.e;
    global0 = vec2<bool>(!(!(!var_2)), false != !(select(true, false, global0.x) & false));
    global0 = vec2<bool>(var_2, !var_1.b);
    return 619f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(vec4<u32>(5540u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ u_input.b, func_1()), countOneBits(u_input.b.x)), _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x) & 52833u, ~(~(u_input.b.x | u_input.b.x)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(abs(-359f))), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(var_0 + var_0), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), -329f, _wgslsmith_f_op_f32(max(1284f, var_0))))));
    let var_2 = u_input.c.x | (_wgslsmith_div_i32(_wgslsmith_clamp_i32(countOneBits(u_input.a), abs(u_input.c.x), u_input.c.x), u_input.a) ^ ~firstLeadingBit(abs(0i)));
    var var_3 = vec3<f32>(332f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(f32(-1f) * -464f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(457f)) + _wgslsmith_f_op_f32(var_0 + var_1.x)));
    var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-203f, var_1.x, var_0), vec3<f32>(-785f, _wgslsmith_f_op_f32(-var_3.x), 1000f));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-168f, 1712f, 1798f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1573f, var_3.x, _wgslsmith_f_op_f32(-530f - -1499f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 458f, var_0), vec3<f32>(var_1.x, var_1.x, var_1.x))), vec3<f32>(var_3.x, var_0, var_3.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(min(var_1.x, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1079f))), vec3<bool>(false, !all(vec3<bool>(global0.x, global0.x, true)), any(vec4<bool>(false, global0.x, global0.x, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(80488u, ~(~(~u_input.b.yz)) >> (u_input.b.xy % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-479f - var_0) + _wgslsmith_f_op_f32(var_3.x * var_1.x)) * 434f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(4294967295u, true, vec2<f32>(249f, var_1.x), vec4<bool>(true, global0.x, false, false), true))).x, _wgslsmith_div_f32(var_0, var_1.x))))));
}


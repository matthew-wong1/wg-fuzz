struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1136f, 545f);

var<private> global1: Struct_1;

var<private> global2: vec3<i32> = vec3<i32>(5082i, i32(-2147483648), 1i);

var<private> global3: Struct_1;

var<private> global4: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: i32) -> vec4<f32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(263f)), global1.a))));
    global2 = vec3<i32>(-(~(~global2.x)), ~(-1i), _wgslsmith_clamp_i32(~(-(arg_3 & -23972i)), _wgslsmith_dot_vec2_i32(u_input.b, ~global2.xx), 0i));
    global1 = Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-511f * global1.a)));
    global0 = vec2<f32>(296f, -383f);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), 246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -549f)), 859f) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(round(global3.a)), _wgslsmith_f_op_f32(-1151f * global3.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(855f - 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(730f, global1.a))), 799f, arg_1)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(1574f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.a))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f + _wgslsmith_f_op_f32(max(1045f, 463f))))));
    var var_2 = global2.zy;
    global1 = arg_1;
    let var_3 = arg_1;
    return global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = !(!select(select(!vec3<bool>(global4.x, true, global4.x), vec3<bool>(false, global4.x, global4.x), true), !(!vec3<bool>(true, global4.x, global4.x)), false));
    global2 = vec3<i32>(-_wgslsmith_sub_i32(1i, -13079i), _wgslsmith_clamp_i32(u_input.b.x | u_input.b.x, ~func_4(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(var_1.x, var_1.x), 1076f, 1488u, 2128i)), Struct_1(-295f), Struct_1(1000f)), 0i), -max(~u_input.c, u_input.c));
    var var_2 = u_input.a;
    var_1 = select(select(select(vec3<bool>(var_1.x, global4.x, true), vec3<bool>(all(vec3<bool>(false, false, global4.x)), true, var_1.x), vec3<bool>(true, true, global4.x)), select(vec3<bool>(true, false, true), select(vec3<bool>(global4.x, false, var_1.x), !vec3<bool>(false, false, var_1.x), true), true && all(vec4<bool>(global4.x, true, true, false))), all(!select(vec3<bool>(global4.x, var_1.x, var_1.x), vec3<bool>(false, true, global4.x), vec3<bool>(false, var_1.x, global4.x)))), vec3<bool>(global4.x, global4.x, !(global3.a == _wgslsmith_f_op_f32(select(1000f, -752f, global4.x)))), select(select(!(!vec3<bool>(false, var_1.x, var_1.x)), select(select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, false, true), vec3<bool>(var_1.x, global4.x, var_1.x)), vec3<bool>(var_1.x, true, false), !vec3<bool>(global4.x, false, global4.x)), false), vec3<bool>(any(select(vec3<bool>(var_1.x, var_1.x, global4.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, true))), false, global4.x || !global4.x), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, global4.x, false), vec3<bool>(false, false, var_1.x), global4.x), select(vec3<bool>(false, var_1.x, global4.x), vec3<bool>(var_1.x, true, false), vec3<bool>(global4.x, false, var_1.x)))));
    return arg_0;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<i32> {
    global3 = func_2(func_2(func_2(Struct_1(global0.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, arg_0.x, arg_3.x), -57214i), Struct_1(arg_2.a), _wgslsmith_mult_vec3_i32(vec3<i32>(3683i, u_input.c, 2147483647i), firstLeadingBit(arg_0))), ~(_wgslsmith_div_i32(15629i, arg_0.x) & ~(-2677i)), arg_2, arg_0), arg_0.x, Struct_1(295f), arg_0);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(select(global4.yy, !vec2<bool>(true, global4.x), global4.xy), _wgslsmith_div_f32(-759f, _wgslsmith_f_op_f32(trunc(global0.x))), firstTrailingBit(1u), firstTrailingBit(1i & global2.x))).x)));
    let var_1 = vec3<bool>(any(!(!(!vec3<bool>(global4.x, true, global4.x)))), all(select(!(!vec3<bool>(global4.x, global4.x, true)), vec3<bool>(global4.x, all(vec3<bool>(false, global4.x, false)), !global4.x), select(!vec3<bool>(global4.x, false, false), !vec3<bool>(global4.x, global4.x, global4.x), false))), all(global4.zx));
    var var_2 = _wgslsmith_div_vec2_i32(arg_3, _wgslsmith_sub_vec2_i32(u_input.b, arg_3));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * -102f), -1150f))));
    return abs(~arg_0);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(-1650f, -1804f, all(select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(true, true, true), !vec3<bool>(global4.x, global4.x, global4.x))))));
    global2 = select(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(~1i, -global2.x)), u_input.b.x & _wgslsmith_div_i32(firstTrailingBit(global2.x), -1i), _wgslsmith_add_i32(-1i >> (1u % 32u), u_input.b.x)), -_wgslsmith_mult_vec3_i32(func_5(vec3<i32>(22972i, u_input.c, 238i), func_2(var_0, global2.x, var_0, vec3<i32>(41627i, global2.x, global2.x)), func_2(var_0, u_input.b.x, var_0, vec3<i32>(0i, u_input.b.x, u_input.c)), global2.zx), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c, global2.x), vec3<i32>(global2.x, u_input.c, global2.x))), any(vec2<bool>(true, global4.x)));
    let var_1 = 4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1368f, -1632f)))), global1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-1306f);
    global3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -535f), -1064f)));
    var var_0 = func_1();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(~vec2<i32>(0i, 11982i)), ~vec4<u32>(38134u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(0u, u_input.a, u_input.a))), u_input.a, min(~u_input.a, ~u_input.a)), 4294967295u, ~(3751i ^ _wgslsmith_mult_i32(i32(-1i) * -1i, abs(global2.x))));
}


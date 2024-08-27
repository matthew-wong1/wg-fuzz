struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    global0 = false;
    global0 = false;
    return -1096f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1697f * _wgslsmith_f_op_f32(step(343f, 406f))))))) == -1343f;
    global0 = all(vec4<bool>(select(!arg_0.a.x, false, arg_1.a.x || true), false, arg_1.a.x, !all(!arg_0.a.yw)));
    let var_0 = arg_1.b;
    var var_1 = vec3<bool>(true, !((false || any(arg_1.a.zz)) && arg_0.a.x), var_0.x);
    global0 = false;
    return arg_0.b.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(1000f * -507f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_1 = 0u;
    var var_2 = ~(~(~(-10287i)));
    var var_3 = Struct_1(!select(vec4<bool>(false, var_0, 1i >= arg_0.x, true), select(select(vec4<bool>(false, var_0, false, false), vec4<bool>(false, true, true, var_0), vec4<bool>(var_0, true, var_0, true)), !vec4<bool>(false, var_0, false, var_0), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false), false)), var_0), !vec3<bool>(true, any(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(false, false))), true));
    let var_4 = Struct_1(select(var_3.a, vec4<bool>(!(0u > u_input.a), var_3.b.x && (u_input.a > arg_1), var_0 || !var_3.a.x, func_3(Struct_1(vec4<bool>(var_0, var_0, false, true), var_3.b), Struct_1(var_3.a, vec3<bool>(var_3.a.x, false, true)))), !vec4<bool>(select(var_3.b.x, true, false), true, false, !var_3.b.x)), !vec3<bool>(var_3.b.x, !any(vec2<bool>(var_0, true)), false));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1017f, _wgslsmith_f_op_f32(func_1())))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(1496f - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~vec4<i32>(2147483647i, -58098i, -9085i, 707i), u_input.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-322f))))))));
    global0 = true;
    global0 = all(vec3<bool>(!(true || any(vec2<bool>(false, false))), -411f > var_0.x, true & any(vec2<bool>(false, true))));
    var var_1 = Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, var_0.x == var_0.x, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, true, any(vec2<bool>(true, true)))), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false))), select(!vec3<bool>(select(true, true, true), true, true), vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !(-261f < var_0.x), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), false));
    let var_2 = _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-31745i, 24959i, -11099i), 4319i), firstTrailingBit(vec2<i32>(-1i, -8748i)) << (abs(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), min(vec2<i32>(1i, 1i), -vec2<i32>(2147483647i, -2147483647i))), countOneBits(vec2<i32>(reverseBits(-1i), _wgslsmith_div_i32(0i, 246i))), vec2<bool>(all(var_1.b.xy), var_1.b.x)));
    let var_3 = Struct_1(!select(vec4<bool>(true, all(vec2<bool>(false, var_1.b.x)), false & var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x && true, !var_1.b.x, var_1.b.x, true), var_1.a.x), var_1.a.wwz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1389f, -959f, -558f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1727f, 1352f)))), vec3<f32>(-378f, 1722f, _wgslsmith_f_op_f32(var_0.x - var_0.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-306f, -728f)), 1f, _wgslsmith_f_op_f32(abs(var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, -1432f, var_0.x)))), vec3<u32>(104483u, 4294967295u, _wgslsmith_sub_u32(abs(1u), ~u_input.a)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.a, u_input.a)), ~vec3<u32>(47279u, 0u, 25093u)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1380u, u_input.a), vec3<u32>(3832u, 81047u, 1u)), ~vec3<u32>(1u, u_input.a, 11607u))) % vec3<u32>(32u)), max(vec4<i32>(var_2.x, _wgslsmith_add_i32(1i, var_2.x), var_2.x >> (u_input.a % 32u), 7484i) ^ (~vec4<i32>(var_2.x, -2441i, 1i, var_2.x) | -vec4<i32>(var_2.x, var_2.x, var_2.x, 2147483647i)), vec4<i32>(-60249i << (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u), -1i, 1i, _wgslsmith_add_i32(_wgslsmith_div_i32(17873i, var_2.x), var_2.x))), vec4<f32>(-321f, -124f, var_0.x, -143f));
}


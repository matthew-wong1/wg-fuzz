struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_1(select(vec3<u32>(max(u_input.b.x, arg_0.a.x), ~1502u, ~arg_0.a.x) & abs(~vec3<u32>(u_input.b.x, u_input.c.x, arg_0.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, firstTrailingBit(1u), 1u), arg_0.a), all(select(!global1.b, global1.b, global1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1537f, _wgslsmith_f_op_f32(min(-1112f, arg_0.b.x)), _wgslsmith_div_f32(219f, global1.c.x)))));
    let var_1 = Struct_2(~arg_0.a, Struct_1(~var_0.a, vec3<f32>(arg_0.b.x, -1898f, _wgslsmith_f_op_f32(-arg_0.b.x))), 0i, arg_0);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(71699u, ~(~17300u), var_0.a.x), var_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1629f, _wgslsmith_f_op_f32(f32(-1f) * -1228f), global1.c.x), var_0.b, (global1.b.x | global1.b.x) == all(global1.b.yz))) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), -564f, _wgslsmith_f_op_f32(trunc(-143f)))));
    global1 = Struct_4(global1.a, select(!select(global1.b, !vec4<bool>(false, false, global1.b.x, global1.b.x), all(global1.b.yz)), !vec4<bool>(all(global1.b.zw), global1.b.x, true, true), !(!global1.b.x)), _wgslsmith_div_vec3_f32(var_0.b, arg_0.b));
    var var_3 = countOneBits(u_input.a.x);
    return global1.b.x;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mod_u32(21571u, firstLeadingBit(~u_input.c.x));
    global0 = any(select(global1.b.yz, !global1.b.xz, !global1.b.x));
    let var_1 = _wgslsmith_add_vec3_u32(~select(~vec3<u32>(var_0, var_0, var_0), ~vec3<u32>(60690u, u_input.b.x, 37910u), func_3(Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x), global1.c), u_input.a)), vec3<u32>(var_0, 6083u, abs(u_input.c.x)) << (~(~vec3<u32>(0u, 4294967295u, 3958u)) % vec3<u32>(32u))) | ~reverseBits(vec3<u32>(u_input.c.x, 1u, ~var_0));
    let var_2 = global1.b.yww;
    global1 = Struct_4(global1.a, vec4<bool>(select(false, !global1.b.x, true), abs(~26928u) >= u_input.b.x, true, global1.b.x), vec3<f32>(global1.a.c.x, global1.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), 620f))));
    return var_1.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1339f))) - arg_0.x), 1054f)), -298f);
    let var_1 = _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x)), vec3<u32>(u_input.b.x, u_input.b.x, 16251u))) & vec3<u32>(u_input.c.x, 52049u, 1u), vec3<u32>(u_input.b.x, 0u, 0u));
    var var_2 = firstLeadingBit(~(~(vec4<u32>(22608u, var_1, 17875u, u_input.b.x) << (vec4<u32>(u_input.b.x, 2276u, u_input.b.x, 15405u) % vec4<u32>(32u)))));
    var var_3 = -global1.a.b;
    var var_4 = func_2();
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(Struct_3(~vec2<i32>(_wgslsmith_add_i32(global1.a.a.x, 32086i), reverseBits(global1.a.a.x)), global1.a.a.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.c.x, global1.c.x, global1.c.x, -430f)))), vec4<bool>(!global1.b.x, true & global1.b.x, all(!(!global1.b.wx)), !any(select(global1.b.zy, vec2<bool>(false, false), vec2<bool>(global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(global1.c)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.c.x, 1474f, 997f), _wgslsmith_f_op_vec3_f32(min(global1.c, global1.a.c.xzw)), !vec3<bool>(false, global1.b.x, global1.b.x)))) + _wgslsmith_f_op_vec3_f32(global1.a.c.xzw + global1.a.c.yzz)));
    let var_0 = 0i << ((1u | _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x), global1.b.x), ~max(vec3<u32>(66326u, u_input.c.x, 694u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))) % 32u);
    let var_1 = func_1(global1.a.c.yx);
    global0 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))) * -530f);
    let var_3 = global1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(u_input.a.xz)), _wgslsmith_f_op_f32(min(var_1.c.x, global1.c.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(100f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_2)), _wgslsmith_f_op_f32(ceil(-657f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_2 * var_1.c.x), _wgslsmith_f_op_f32(-1041f + -923f), 1255f), vec4<f32>(_wgslsmith_div_f32(global1.c.x, -187f), -213f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(trunc(-1099f))), global1.b.x)))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(550f * -806f));
}


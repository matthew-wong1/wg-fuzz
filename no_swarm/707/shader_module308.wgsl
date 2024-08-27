struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1693f, 1130f, -991f, 127f), vec4<f32>(1250f, 702f, 1937f, -516f), vec4<f32>(-315f, 455f, 1633f, 1710f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~1u;
    global0 = vec3<u32>(global0.x, 28650u, ~global0.x & 4294967295u);
    return arg_0;
}

fn func_3() -> vec4<f32> {
    var var_0 = false;
    var var_1 = global0.xx;
    var_0 = false;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1637f + global1.c.x)), 993f))) - 1000f);
    var var_3 = vec4<u32>(_wgslsmith_clamp_u32(~global0.x, var_1.x, var_1.x), max(firstLeadingBit(~(global0.x >> (12776u % 32u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, 0u), ~global0.zy), ~(~vec2<u32>(global0.x, global0.x)))), global0.x << (~_wgslsmith_mod_u32(var_1.x, 603u) % 32u), max(0u, global0.x));
    return vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))), 424f, global1.c.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> f32 {
    global0 = ~(~(~vec3<u32>(global0.x, arg_1.x, 4294967295u) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, arg_1.x, 8657u), arg_1, arg_1)));
    let var_0 = func_2(Struct_1(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b, global1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 436f, -660f, global1.c.x)), _wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.b.x, global1.a.x, 1515f)))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(329f * var_0.a.x) - _wgslsmith_div_f32(global1.b.x, global1.a.x)), -961f, _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(step(global1.a.x, 439f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + -296f), _wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(f32(-1f) * -544f)), -1561f, var_0.c.x), global1.b);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, global1.b.x, var_0.c.x, -516f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c.x, var_0.a.x, global1.c.x, 1000f), vec4<f32>(global1.b.x, global1.a.x, 1000f, var_0.b.x))), any(vec4<bool>(true, true, false, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, 219f, 1253f, var_0.a.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_0.c.x, -602f, 233f), var_0.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1311f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), 1488f) - global1.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1.c.x + 636f), _wgslsmith_f_op_f32(global1.c.x - 1000f), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1870f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, global1.c.x, 382f, var_0.a.x) * _wgslsmith_f_op_vec4_f32(func_3())), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, false), true))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.c);
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(_wgslsmith_div_u32(~(4974u ^ global0.x), ~15380u), 16425u, ~abs(global0.x));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(global1.b.x * 606f)), global1.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(-37331i, 6369i, 2147483647i, u_input.a.x) & vec4<i32>(-32791i, u_input.a.x, 1361i, u_input.a.x), vec3<u32>(global0.x, global0.x, global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.b.x, global1.a.x)), global1.b.x), 1000f, global1.b.x), _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * 777f) + _wgslsmith_div_f32(global1.a.x, 691f)), -1150f, -2040f, 460f)));
    global1 = func_2(Struct_1(vec4<f32>(1178f, 421f, -1397f, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, global1.b.x, -1165f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_0.a.x, 1406f, 428f)) * vec4<f32>(-724f, global1.c.x, 1000f, -1241f))))));
    global0 = ~(~vec3<u32>(_wgslsmith_add_u32(70097u, ~global0.x), _wgslsmith_sub_u32(abs(global0.x), ~global0.x), 0u));
    let var_1 = ~_wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x >> (1u % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * func_2(Struct_1(var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, -1069f, -552f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 941f, 245f, -1583f) * vec4<f32>(global1.c.x, var_0.c.x, var_0.c.x, var_0.c.x)))).a), var_0.a, vec4<f32>(-683f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-187f * var_0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1446f);
}


struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_1(!select(!select(vec4<bool>(global1.a.x, global1.a.x, true, true), vec4<bool>(false, false, true, false), var_0.b), select(vec4<bool>(false, global1.a.x, arg_1.b.x, arg_1.a.a.x), !arg_1.c.a, any(vec4<bool>(true, false, global1.a.x, false))), arg_1.b.x), _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, var_0.d.b.x, var_0.a.x), vec3<u32>(23534u, arg_0.d.b.x, arg_0.d.b.x)), 0u), arg_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1648f)), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(536f * 882f)))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1118f))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1275f, -1000f, -3552f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(411f + global0.x), _wgslsmith_div_f32(global0.x, 1486f), _wgslsmith_f_op_f32(global0.x + 231f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, var_2.x, var_2.x, -499f)))));
    var var_4 = all(arg_1.c.a);
    return false;
}

fn func_4(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1776f))))) * 1429f));
    let var_1 = Struct_3(Struct_1(vec4<bool>(global1.a.x, !(true == global1.a.x), func_3(Struct_2(global1.b, vec4<bool>(false, false, true, true), -1i, Struct_1(global1.a, global1.b), Struct_1(global1.a, vec2<u32>(u_input.a, 26969u))), Struct_3(Struct_1(global1.a, vec2<u32>(u_input.a, u_input.d)), global1.a.zyw, Struct_1(global1.a, global1.b)), ~u_input.d), any(!vec2<bool>(global1.a.x, global1.a.x))), ~vec2<u32>(~42250u, _wgslsmith_sub_u32(1u, global1.b.x))), select(global1.a.wwy, select(!global1.a.yyx, vec3<bool>(any(vec2<bool>(false, arg_0)), var_0 < global0.x, any(global1.a.zz)), !(!vec3<bool>(arg_0, global1.a.x, true))), any(vec3<bool>(u_input.b.x != 2147483647i, any(vec3<bool>(true, false, arg_0)), false))), Struct_1(global1.a, vec2<u32>(_wgslsmith_div_u32(u_input.a, ~79646u), ~min(0u, global1.b.x))));
    let var_2 = _wgslsmith_clamp_u32(4294967295u, abs(firstTrailingBit(13065u)), var_1.c.b.x);
    var var_3 = global1.b;
    let var_4 = var_1.a.a.x;
    return vec4<bool>(var_1.b.x, false, any(!(!(!vec2<bool>(global1.a.x, var_4)))), true);
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(func_4(func_3(Struct_2(global1.b, !global1.a, u_input.c.x & 31528i, Struct_1(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global1.b), Struct_1(vec4<bool>(global1.a.x, global1.a.x, true, false), global1.b)), Struct_3(Struct_1(global1.a, vec2<u32>(27965u, u_input.d)), vec3<bool>(false, global1.a.x, false), Struct_1(global1.a, vec2<u32>(1583u, 8650u))), countOneBits(global1.b.x))), abs(vec2<u32>(~(~0u), 1u)));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(-1762f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1473f, global0.x) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1301f, -321f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1540f, 430f))))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1194f)) + -535f) * _wgslsmith_f_op_f32(global0.x * -196f)), global0.x);
    global1 = Struct_1(global1.a, global1.b);
    global1 = Struct_1(global1.a, global1.b);
    return Struct_1(!select(!(!global1.a), vec4<bool>(!global1.a.x, func_3(Struct_2(global1.b, global1.a, u_input.b.x, Struct_1(global1.a, global1.b), Struct_1(global1.a, vec2<u32>(19519u, u_input.a))), Struct_3(Struct_1(global1.a, vec2<u32>(26316u, u_input.d)), global1.a.xzx, Struct_1(global1.a, global1.b)), u_input.a), global1.a.x, all(global1.a.xx)), func_4(!global1.a.x)), vec2<u32>(global1.b.x, reverseBits(~u_input.d)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    let var_0 = u_input.b.x;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.x)), vec2<f32>(arg_0, global0.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_div_f32(740f, 142f)) - vec2<f32>(_wgslsmith_f_op_f32(max(-903f, arg_0)), _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(484f, -1109f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1228f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.x)))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2024i, var_0, var_0), -(~vec4<i32>(-var_0, 2147483647i, 51576i, 0i)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 1000f))))))));
    return -29879i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(~max(vec2<i32>(func_1(global0.x, vec2<i32>(u_input.c.x, u_input.c.x)), -1i), _wgslsmith_mult_vec2_i32(u_input.c.yw, u_input.c.xz)), min(firstLeadingBit(vec2<i32>(-19299i, u_input.b.x)), select(vec2<i32>(u_input.b.x, i32(-1i) * -2985i), u_input.b.zz, global1.a.x)));
    let var_1 = false;
    var var_2 = global0.x;
    var var_3 = Struct_3(Struct_1(!func_4(all(global1.a.zwy)), ~(~(vec2<u32>(15684u, 0u) ^ global1.b))), global1.a.wxx, Struct_1(vec4<bool>(true, false, var_1, true | (4294967295u == u_input.d)), abs(vec2<u32>(51611u, select(global1.b.x, u_input.a, false)))));
    var_3 = Struct_3(Struct_1(!global1.a, countOneBits(var_3.c.b)), global1.a.xyx, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(~13530u);
}


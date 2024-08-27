struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(15839u, vec3<i32>(102372i, -5078i, -43408i), vec4<f32>(783f, 2599f, 453f, 356f), true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = Struct_1(~(~(~global0.a)) ^ max(global0.a, ~arg_0), global0.b, global0.c, abs(~u_input.e.x << (max(global0.a, 4294967295u) % 32u)) > 0i);
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1920f)) - 142f);
    let var_2 = Struct_1(1u, u_input.d.wxy, vec4<f32>(_wgslsmith_f_op_f32(step(-711f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(305f * -557f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1636f + arg_1), -645f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1901f, -596f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + -353f))), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.x * global0.c.x), -443f, any(vec2<bool>(true, true)))), false))), all(!(!select(vec4<bool>(global0.d, true, true, var_0.d), vec4<bool>(false, true, false, false), var_0.d))));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(362f, _wgslsmith_f_op_f32(877f + 158f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(global0.c.x, 1330f)))));
    return all(!(!(!select(vec2<bool>(global0.d, var_2.d), vec2<bool>(var_0.d, true), var_2.d))));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec3<bool>(true, !(!(global0.d | arg_1)) != arg_1, !all(!vec2<bool>(true, global0.d)));
    let var_2 = arg_0;
    return Struct_1(_wgslsmith_div_u32(~u_input.a.x, 12819u), u_input.d.wyw | abs(vec3<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), u_input.c.x | 2147483647i, global0.b.x)), _wgslsmith_f_op_vec4_f32(-global0.c), !func_3(~(~40111u), var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)))));
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(1u, vec3<i32>(_wgslsmith_div_i32(global0.b.x << (1u % 32u), -(~2147483647i)), ~22074i, -1i), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_f32(trunc(1001f))), -1394f, 683f, 592f), !(_wgslsmith_sub_u32(global0.a, ~61490u) == 1u));
    let var_0 = 25190i;
    let var_1 = func_2(_wgslsmith_f_op_f32(abs(1252f)), true);
    var var_2 = u_input.a.zww;
    var var_3 = global0.b.zz;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(1u, select(min(u_input.a.x, 44456u), abs(~(~u_input.a.x)), any(!select(vec3<bool>(true, false, global0.d), vec3<bool>(true, true, global0.d), vec3<bool>(false, global0.d, true)))), (~(~global0.a) == ~(~u_input.a.x)) && any(!(!vec3<bool>(global0.d, global0.d, global0.d))));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(531f, func_2(_wgslsmith_f_op_f32(-var_1.c.x), true).c.x));
    var_1 = func_1();
    var var_3 = u_input.c.x;
    var var_4 = Struct_1(11278u, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.e.x, var_1.b.x), u_input.d.wzz), u_input.d.yyw, ~vec3<i32>(-2147483647i, 13062i, u_input.d.x)) & -(global0.b & vec3<i32>(-1i, var_1.b.x, global0.b.x)), ~vec3<i32>(_wgslsmith_sub_i32(global0.b.x, -28354i), _wgslsmith_sub_i32(global0.b.x, u_input.c.x), var_1.b.x), vec3<i32>(_wgslsmith_div_i32(0i, u_input.c.x), firstLeadingBit(var_1.b.x) | ~global0.b.x, ~global0.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(global0.c.x, 747f, -942f, 1683f)) - vec4<f32>(1147f, var_2.x, -319f, 1000f))), var_1.c), true);
    let var_5 = global0.a;
    var var_6 = abs(abs(~select(u_input.d.zxz, vec3<i32>(1i, var_1.b.x, -36091i), vec3<bool>(var_4.d, global0.d, true)))) << (~u_input.a.zyx % vec3<u32>(32u));
    var var_7 = ~(-vec2<i32>(var_4.b.x, ~u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.c)) * var_1.c), global0.b.x, global0.a, ~u_input.a.zx, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.c.zw))))));
}


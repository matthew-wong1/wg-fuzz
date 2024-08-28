struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_2(!any(vec2<bool>(!global0.a.x, any(global0.a))));
    let var_1 = true;
    var_0 = Struct_2(global0.a.x);
    var_0 = Struct_2(arg_1.b.a.x);
    global0 = arg_1.b;
    return -2223f;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_1(select(select(vec3<bool>(false, false, global0.a.x), !vec3<bool>(global0.a.x, false, false), any(vec4<bool>(false, true, false, false))), global0.a, !(!global0.a.x)), 733i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(max(-2147483647i, -56943i), Struct_3(241f, Struct_1(global0.a, global0.b, global0.c, u_input.a)), ~vec2<u32>(u_input.a, global0.d))), global0.c), countOneBits(~(~1u))), vec3<f32>(-453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-455f, 387f) + 1000f) - -1000f), 423f), global0.a.xx, Struct_1(vec3<bool>(true, false, any(global0.a)), _wgslsmith_mod_i32(global0.b, ~(-10473i)), global0.c, ~u_input.a), select(global0.a.zx, vec2<bool>(all(!vec4<bool>(true, true, true, global0.a.x)), !all(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true))), select(vec2<bool>(!global0.a.x, global0.a.x & false), select(select(global0.a.zz, global0.a.yy, false), global0.a.zx, global0.a.xz), !(!global0.a.x))));
    global0 = Struct_1(!vec3<bool>(all(select(vec4<bool>(global0.a.x, true, false, false), vec4<bool>(false, var_0.d.a.x, var_0.c.x, global0.a.x), var_0.a.a.x)), (global0.b == global0.b) & (5184u > var_0.a.d), !(!var_0.a.a.x)), -30324i, -762f, _wgslsmith_mod_u32(1u, var_0.d.d));
    return Struct_2(all(var_0.d.a.yx));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2290f + -627f), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) * _wgslsmith_div_f32(633f, 2151f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c)))))));
    var var_3 = max(4294967295u, u_input.a) != reverseBits(global0.d);
    let var_4 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(global0.d)), 30465u), 41040u);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 468f) - var_2.x))), Struct_1(select(!vec3<bool>(true, var_1, false), vec3<bool>(global0.b >= 33788i, global0.a.x, true), false), ~(-global0.b), -704f, var_4));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-480f, _wgslsmith_f_op_f32(arg_1.x + global0.c)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, arg_1.x))))))))));
    var var_1 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b.d << (global0.d % 32u), func_1().b.d) >> (select(vec2<u32>(arg_2.b.d, arg_2.b.d) & vec2<u32>(global0.d, 4294967295u), vec2<u32>(arg_2.b.d, u_input.a), arg_2.b.a.zx) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.d), vec2<u32>(1u, arg_2.b.d))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.b.d, 9630u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d, 98858u), vec2<u32>(25814u, 1u), vec2<u32>(19254u, arg_2.b.d)))));
    var var_2 = func_2();
    let var_3 = ~(~_wgslsmith_mult_u32(43286u, ~4294967295u));
    global0 = func_1().b;
    return ~func_1().b.b;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool) -> vec3<bool> {
    global0 = func_1().b;
    let var_0 = -abs(vec2<i32>(abs(global0.b) & _wgslsmith_div_i32(arg_0, arg_1), 2147483647i));
    var var_1 = _wgslsmith_mod_u32(reverseBits(select(~(~u_input.a), 0u, all(vec4<bool>(true, arg_2, arg_2, true)))), 31167u);
    var_1 = u_input.a;
    let var_2 = false;
    return !vec3<bool>(true, true, select(true, var_2 & true, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_5(-1i, _wgslsmith_mult_i32(func_4(Struct_2(true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(612f, global0.c, global0.c, global0.c)), func_1()), select(1i, 0i, global0.a.x) | 1i), false), global0.b, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_u32(~1u & _wgslsmith_sub_u32(0u, global0.d), 83575u));
    let var_0 = _wgslsmith_f_op_f32(round(-2502f));
    global0 = Struct_1(vec3<bool>(false, global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * global0.c) + global0.c) <= func_1().a), ~func_1().b.b, global0.c, 1u);
    let var_1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), var_0, -410f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1875f, -1000f, 509f)))))));
}


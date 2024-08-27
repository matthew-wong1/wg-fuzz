struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var var_1 = any(!arg_0.b.xzx);
    global0 = arg_0;
    let var_2 = arg_3;
    global0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.a.x + -461f))))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(global0.a, vec4<bool>(global0.b.x, false, select(!global0.b.x, true, true), false));
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_vec2_i32((~vec2<i32>(2147483647i, 44550i) >> (abs(vec2<u32>(u_input.a, 1120u)) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a ^ u_input.a, u_input.a) % vec2<u32>(32u)), reverseBits(vec2<i32>(1i, 0i)) >> (firstTrailingBit(vec2<u32>(10183u, u_input.a)) % vec2<u32>(32u))) >> (~(firstLeadingBit(vec2<u32>(u_input.a, 0u)) & vec2<u32>(12302u, u_input.a ^ 1u)) % vec2<u32>(32u));
    let var_3 = var_0;
    return !var_0.b.x && global0.b.x;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * 602f), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(758f, arg_1.x, arg_1.x), vec4<bool>(arg_0, false, arg_0, true)), -1i, vec2<u32>(arg_2, u_input.a), Struct_1(vec3<f32>(-2051f, arg_1.x, -181f), global0.b)))))), global0.a), !global0.b);
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(step(-504f, -1976f))))), global0.b);
    let var_1 = Struct_1(arg_1.zxw, !vec4<bool>(all(!global0.b), _wgslsmith_f_op_f32(round(856f)) != _wgslsmith_f_op_f32(select(var_0.a.x, global0.a.x, false)), global0.b.x, func_3()));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(select(-5662i, 44490i, true), _wgslsmith_sub_i32(0i, -21568i)), 1i, 24150i, firstTrailingBit(abs(-1i))), select(~(~vec4<i32>(76126i, 1i, -1i, 72468i)), abs(vec4<i32>(1i, 1i, 1i, 1i)), !select(vec4<bool>(false, var_1.b.x, false, var_1.b.x), var_0.b, vec4<bool>(false, true, var_0.b.x, arg_0)))), ~_wgslsmith_mod_i32(abs(max(2147483647i, 2147483647i)), abs(1i)), _wgslsmith_div_i32(~(i32(-1i) * -47503i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-24676i, 31403i, 14060i, -50512i), ~(-vec4<i32>(-21905i, -14249i, 0i, -33486i)))), _wgslsmith_dot_vec3_i32(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13885i, 2147483647i, -3887i), vec3<i32>(-6767i, 10898i, 14413i), vec3<i32>(-8203i, -5869i, 0i)) | vec3<i32>(1i, 1i, 1i)), countOneBits(vec3<i32>(-42958i, 43695i, -12950i) >> (~vec3<u32>(4294967295u, arg_2, u_input.a) % vec3<u32>(32u)))));
    let var_3 = var_0;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1490f))), 543f, 209f), global0.b);
    global0 = func_1(true && !any(vec2<bool>(var_0.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 2043f, 1f, _wgslsmith_f_op_f32(min(global0.a.x, -172f)))), u_input.a);
    global0 = Struct_1(global0.a, var_0.b);
    var var_1 = !(!all(select(!var_0.b.xw, var_0.b.wy, select(global0.b.zw, global0.b.wz, global0.b.yz))));
    var var_2 = func_1(!any(!(!var_0.b.ywx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, -1000f, global0.a.x))))), 1u);
    var var_3 = u_input.a;
    let var_4 = ~reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(26956u, u_input.a, u_input.a)), _wgslsmith_mult_u32(u_input.a, countOneBits(u_input.a))));
    var var_5 = func_1(!(!(true && !var_2.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_2.a.x) * _wgslsmith_f_op_f32(global0.a.x * var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.x, -598f, var_0.b.x)) + -1827f), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_2.a.x))))), u_input.a);
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_4, u_input.a, 44578u, 3789u), vec4<u32>(var_4, 1u, 1u, 54407u)), _wgslsmith_div_vec4_u32(vec4<u32>(70720u, var_4, 1u, 26679u), vec4<u32>(var_4, 15131u, 4294967295u, var_4))), 31022u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, var_5.a.x, var_2.a.x, -358f) * vec4<f32>(-1000f, var_2.a.x, 291f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2170f, var_5.a.x, 341f, -1000f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), i32(-1i) * -7763i, -25569i, _wgslsmith_sub_i32(-1i, -17987i)), vec4<i32>(i32(-1i) * -13524i, abs(78316i), i32(-1i) * -11322i, -1i)) >> (0u % 32u), min(u_input.a, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(39094u, 4294967295u, 4294967295u, 15172u), vec4<u32>(var_4, var_4, var_4, u_input.a)))));
}


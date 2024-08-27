struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: bool;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = u_input.a;
    global2 = Struct_2(_wgslsmith_mod_vec2_i32(global2.a, min(-global2.a, ~arg_1.a)), Struct_1(!(!global2.b.a), true, 4294967295u, ~20365u >= firstTrailingBit(arg_1.b.c)), global2.c);
    global0 = array<vec4<f32>, 28>();
    let var_1 = arg_1;
    global2 = arg_1;
    return 18032i;
}

fn func_2() -> bool {
    var var_0 = Struct_2(vec2<i32>(0i, -func_3(~vec2<u32>(1u, global2.c.c), Struct_2(vec2<i32>(0i, 11847i), Struct_1(vec4<bool>(global2.b.b, global2.b.d, global2.b.b, global2.b.a.x), false, 11448u, global2.b.d), global2.b))), global2.b, Struct_1(vec4<bool>(true, (global2.b.c | global2.b.c) <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.c.x), u_input.c), true, false), true, 4294967295u, !(all(global2.b.a) | !global2.b.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(621f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(784f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(767f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1515f, 2000f)))));
    global1 = (true || !any(vec3<bool>(true, true, true))) || global2.b.b;
    global0 = array<vec4<f32>, 28>();
    var var_2 = Struct_2(max(-vec2<i32>(_wgslsmith_sub_i32(29821i, global2.a.x), ~1609i), vec2<i32>(1i >> (_wgslsmith_mod_u32(u_input.b, 0u) % 32u), _wgslsmith_add_i32(firstTrailingBit(var_0.a.x), var_0.a.x))), Struct_1(vec4<bool>(false, ~global2.c.c > global2.b.c, true, any(select(var_0.b.a.zx, var_0.c.a.xy, vec2<bool>(false, true)))), var_1.x > var_1.x, ~var_0.c.c, var_0.b.d), var_0.c);
    return global2.b.d;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1055f);
    let var_1 = all(vec4<bool>(!func_2(), !(!(!global2.b.d)), any(global2.b.a), func_2()));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1583f - var_0) * _wgslsmith_div_f32(var_0, var_0)))))));
    global0 = array<vec4<f32>, 28>();
    var var_3 = true;
    return Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global2.a.x), global2.a), vec2<i32>(~global2.a.x, abs(u_input.a))), u_input.a ^ (u_input.a ^ (-2147483647i >> (global2.b.c % 32u)))), global2.b, global2.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_1(global2.c.a, any(arg_0.zx), 39800u, all(vec3<bool>(any(select(vec3<bool>(global2.b.a.x, arg_0.x, global2.c.a.x), arg_0, false)), all(arg_0), arg_0.x)));
    global1 = var_0.b;
    let var_1 = func_1().c;
    global1 = !(global2.a.x <= 2147483647i);
    var var_2 = func_1().b;
    return !var_1.a.wz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_4(vec3<bool>(any(global2.b.a), true != (true | global2.b.b), global2.b.a.x), _wgslsmith_add_i32(-45990i, 1i), func_1(), vec3<i32>(-firstLeadingBit(-39827i), _wgslsmith_mult_i32(-18663i, u_input.a), reverseBits(i32(-1i) * -27371i))));
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(891f, -201f), _wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-529f)) + _wgslsmith_f_op_f32(921f * 196f)))));
    global1 = !(!(_wgslsmith_f_op_f32(var_1.x + -1289f) > -355f) && var_0);
    let var_2 = -global2.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(486f * _wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(var_1.x - -994f))), 924f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1738f, -160f, var_1.x) + vec3<f32>(-1108f, 496f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(select(var_1.x, 921f, global2.b.b)), -224f, -1037f))), abs(~28803u));
}


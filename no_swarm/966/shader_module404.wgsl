struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(58115u, vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(global0.a, vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, false)), !select(true, !global0.a.b.x, any(global0.b)), all(global0.a.b)));
    var_0 = Struct_2(global0.a, vec4<bool>(var_0.a.b.x | !all(global0.a.b), any(vec3<bool>(select(var_0.a.b.x, false, false), all(global0.a.b.xyx), any(vec2<bool>(false, true)))), var_0.b.x, global0.b.x));
    return vec2<bool>(global0.a.b.x, !any(select(!vec3<bool>(var_0.a.b.x, false, false), vec3<bool>(false, global0.b.x, true), select(vec3<bool>(false, global0.a.b.x, var_0.a.b.x), vec3<bool>(false, true, var_0.a.b.x), global0.b.x))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = func_3();
    var var_1 = Struct_1(u_input.e, !(!global0.b));
    var_1 = Struct_1(countOneBits(reverseBits(global0.a.a)) | _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~arg_0, ~u_input.d.x, firstLeadingBit(u_input.d.x)), min(countOneBits(vec4<u32>(var_1.a, 4294967295u, 1u, u_input.d.x)), vec4<u32>(var_1.a, 30846u, 33821u, 4294967295u) << (vec4<u32>(0u, var_1.a, 4294967295u, 1514u) % vec4<u32>(32u)))), var_1.b);
    global0 = Struct_2(global0.a, vec4<bool>(func_3().x, true, var_1.b.x, !(!(!global0.b.x))));
    let var_2 = Struct_1(reverseBits(abs(arg_0) | ~(~7675u)), select(!vec4<bool>(!var_0.x, var_1.b.x || global0.b.x, false, true), vec4<bool>(u_input.c.x > 1i, (1u | global0.a.a) <= _wgslsmith_div_u32(4357u, 1u), true, true), vec4<bool>(true, var_1.b.x, true, true)));
    return Struct_2(var_2, var_2.b);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = u_input.c.x;
    global0 = arg_2;
    let var_1 = Struct_2(global0.a, arg_2.b);
    global0 = Struct_2(func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(86610u, arg_2.a.a), global0.a.a, _wgslsmith_mult_u32(1u, var_1.a.a)), abs(u_input.d))).a, !arg_2.a.b);
    var var_2 = -(~_wgslsmith_mod_vec4_i32(u_input.c, u_input.c | vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 2147483647i)));
    return var_1;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = true;
    var_0 = !(!global0.b.x);
    let var_1 = global0.a;
    let var_2 = func_4(false, false, func_2(0u));
    let var_3 = _wgslsmith_div_f32(-1000f, -2363f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f * _wgslsmith_f_op_f32(step(322f, _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(select(var_3, 589f, arg_0.b.x)))))) + -432f);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(all(func_2(_wgslsmith_mod_u32(global0.a.a, u_input.e)).a.b.yyz), false, false, arg_2.b.x || global0.a.b.x);
    let var_1 = -392f;
    var var_2 = ~1i;
    var var_3 = countOneBits(28422u >> (_wgslsmith_sub_u32(global0.a.a, global0.a.a) % 32u));
    let var_4 = select(u_input.b, vec3<i32>(abs(_wgslsmith_add_i32(u_input.c.x, -1i)), _wgslsmith_dot_vec2_i32((vec2<i32>(-18128i, u_input.b.x) ^ vec2<i32>(-12262i, u_input.c.x)) << (u_input.d.xz % vec2<u32>(32u)), u_input.b.zx), u_input.b.x), select(func_4(global0.b.x, true, func_2(~arg_2.a)).b.xwx, select(arg_1.a.b.xwy, arg_2.b.yzx, func_2(3579u).a.b.x), arg_1.a.b.xzy));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.b.x;
    global0 = func_5(_wgslsmith_f_op_f32(func_1(Struct_1(~min(1u, u_input.d.x), !select(global0.a.b, vec4<bool>(false, true, global0.b.x, true), global0.b)))), Struct_2(global0.a, !global0.b), global0.a);
    global0 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1982f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f - 1029f) - -713f)), 1469f, true)), Struct_2(func_5(-387f, func_4(true, global0.a.b.x, func_4(false, global0.b.x, Struct_2(global0.a, vec4<bool>(global0.b.x, false, global0.b.x, global0.a.b.x)))), global0.a).a, global0.b), global0.a);
    let var_1 = Struct_2(Struct_1(global0.a.a << (1u % 32u), !global0.b), !global0.a.b);
    var var_2 = func_4(func_5(_wgslsmith_f_op_f32(round(-347f)), var_1, global0.a).a.b.x, !global0.a.b.x, func_4(!all(vec4<bool>(false, global0.a.b.x, true, var_1.a.b.x)), func_4(!(!global0.b.x), !func_5(-1545f, Struct_2(global0.a, vec4<bool>(var_1.b.x, true, false, global0.a.b.x)), global0.a).a.b.x, var_1).a.b.x, func_4(func_5(_wgslsmith_f_op_f32(-1000f * 375f), func_5(-364f, var_1, global0.a), func_2(4294967295u).a).b.x, true, Struct_2(Struct_1(u_input.a, vec4<bool>(var_1.a.b.x, false, true, var_1.b.x)), global0.b)))).a;
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, u_input.c.x, ~(-countOneBits(u_input.b.x)), ~(u_input.c.x >> (firstLeadingBit(global0.a.a) % 32u))), u_input.c.x, u_input.d.x, -359f, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, u_input.b.x), u_input.c.x) ^ _wgslsmith_sub_i32(select(u_input.c.x, ~37962i, global0.a.b.x), _wgslsmith_sub_i32(-2147483647i, select(-1i, u_input.b.x, global0.a.b.x))));
}


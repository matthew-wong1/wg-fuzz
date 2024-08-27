struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = vec3<i32>(arg_0, 2147483647i, ~(-arg_0));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(600f * arg_1)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1828f + arg_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(-527f, -3218f)) - _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1030f))))));
    let var_2 = Struct_5(Struct_1(89177u, _wgslsmith_add_vec2_i32(~u_input.b.zx, var_0.zy & u_input.b.xx), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), false, var_0.x < 51887i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec4<bool>(false, false, true, true)))), u_input.c, ~vec2<u32>(abs(41760u), 51526u)));
    var_1 = arg_1;
    var var_3 = firstTrailingBit(var_2.a.b);
    return select(abs(countOneBits(20203u)), u_input.a, var_2.a.a == u_input.a);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_5 {
    let var_0 = -16479i << ((min(~(~arg_0.a.x), countOneBits(~0u)) << (((93860u | arg_0.a.x) << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.c.b.a, u_input.c.x, u_input.d), vec4<u32>(0u, u_input.d, 4294967295u, u_input.d))) % 32u)) % 32u)) % 32u);
    var var_1 = ~(~abs(arg_0.a) ^ vec3<u32>(~u_input.c.x, 28001u, u_input.d));
    let var_2 = select(true, _wgslsmith_sub_u32(u_input.c.x | arg_0.b.x, 1u) <= ~(~(~arg_0.e.x)), true);
    let var_3 = !(0u <= ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 92867u), 1u));
    var var_4 = Struct_4(~vec3<u32>(min(abs(var_1.x), func_3(var_0, 495f)), max(1u, 1u), u_input.a), reverseBits(_wgslsmith_mod_vec3_u32(~(~arg_0.b), vec3<u32>(var_1.x, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, var_1.x), vec3<u32>(arg_0.b.x, 0u, 1u))))), arg_0.c, _wgslsmith_f_op_f32(287f - -248f), vec3<u32>(firstLeadingBit(u_input.d), var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, arg_0.a.x, var_1.x), ~vec4<u32>(0u, var_1.x, arg_0.e.x, arg_0.c.b.a)), abs(vec4<u32>(var_1.x, 0u, 0u, var_1.x)))));
    return Struct_5(arg_0.c.b);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = max(~u_input.c, ~(~(u_input.c | vec2<u32>(arg_0.c.b.a, 4294967295u))) & _wgslsmith_mod_vec2_u32(~(vec2<u32>(35835u, arg_0.a.x) ^ vec2<u32>(arg_0.a.x, 1u)), reverseBits(vec2<u32>(u_input.c.x, u_input.a))));
    var var_1 = func_2(arg_0, arg_0.c.b.c);
    let var_2 = -484f;
    let var_3 = 20128u >> (~(~var_0.x) % 32u);
    var_1 = Struct_5(func_2(Struct_4(vec3<u32>(~33606u, _wgslsmith_sub_u32(arg_0.b.x, 0u), arg_0.c.b.d.x >> (var_0.x % 32u)), ~(~vec3<u32>(4294967295u, u_input.a, 58823u)), arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, arg_0.d)), _wgslsmith_f_op_f32(-var_2)), ~vec3<u32>(u_input.a, 20184u, var_0.x)), select(func_2(arg_0, var_1.a.c).a.c, !arg_0.c.b.c, arg_0.c.b.c.x)).a);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) * _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(func_1(Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 0u, 1u), vec3<u32>(1u, u_input.a, u_input.d)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.a, 0u)), Struct_2(vec2<bool>(false, false), Struct_1(44206u, vec2<i32>(-4430i, u_input.b.x), vec4<bool>(true, false, false, false), vec2<u32>(u_input.c.x, 1u), u_input.c)), _wgslsmith_f_op_f32(125f - -1351f), vec3<u32>(0u, u_input.c.x, u_input.c.x) & vec3<u32>(u_input.a, 1u, 4294967295u)), ~(-17022i), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-715f, 1088f, -657f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2317f, 436f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(302f, -252f, 1679f))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(-400f)), _wgslsmith_f_op_f32(f32(-1f) * -887f), -260f)));
    var var_1 = Struct_3(func_2(Struct_4(vec3<u32>(48723u, 4294967295u, u_input.d) | ~vec3<u32>(u_input.c.x, 0u, 5776u), ~(~vec3<u32>(1u, 4294967295u, u_input.a)), Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_2(Struct_4(vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), vec3<u32>(47172u, u_input.c.x, u_input.a), Struct_2(vec2<bool>(true, false), Struct_1(0u, vec2<i32>(u_input.b.x, -1i), vec4<bool>(true, true, false, false), vec2<u32>(u_input.d, 1u), vec2<u32>(1u, 30743u))), var_0.x, vec3<u32>(u_input.d, u_input.d, 4294967295u)), vec4<bool>(true, false, true, true)).a), -614f, abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 44517u, 39474u), vec3<u32>(u_input.d, u_input.c.x, 1u)))), vec4<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), false, true)).a, ~(-u_input.b.x >> (reverseBits(_wgslsmith_add_u32(u_input.a, 0u)) % 32u)), Struct_2(!vec2<bool>(true, u_input.b.x > u_input.b.x), Struct_1(46916u, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), ~vec2<i32>(20074i, u_input.b.x), vec2<i32>(1i, 1i)), vec4<bool>(true, true, true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), vec2<u32>(u_input.c.x, u_input.a)) << (select(u_input.c, u_input.c, vec2<bool>(false, false)) % vec2<u32>(32u)), u_input.c)));
    let var_2 = u_input.b.xy;
    let var_3 = ~u_input.b.x;
    let var_4 = abs(u_input.b.x);
    var_1 = Struct_3(func_2(Struct_4(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.d, 4294967295u), vec3<u32>(u_input.d, 0u, var_1.a.d.x)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, var_1.c.b.e.x), ~61782u, var_1.a.e.x), Struct_2(var_1.a.c.xw, var_1.a), 909f, ~abs(vec3<u32>(17883u, u_input.c.x, 0u))), vec4<bool>(var_1.a.c.x, true, true == var_1.c.a.x, var_1.a.c.x)).a, countOneBits(var_2.x), Struct_2(vec2<bool>(!any(vec3<bool>(var_1.a.c.x, true, true)), var_1.c.b.c.x && true), var_1.a));
    let var_5 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_1.c.b.d.x, u_input.a), vec3<u32>(u_input.d, 4294967295u, 12253u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 66296u), vec3<u32>(var_1.c.b.a, var_1.a.d.x, 79765u)), Struct_2(vec2<bool>(var_1.c.b.c.x, true), Struct_1(u_input.c.x, u_input.b.yy, var_1.a.c, u_input.c, vec2<u32>(u_input.a, u_input.d))), 185f, vec3<u32>(var_1.a.d.x, 4294967295u, var_1.c.b.a)), func_2(Struct_4(vec3<u32>(u_input.a, 0u, var_1.c.b.a), vec3<u32>(32118u, var_1.a.e.x, 1u), var_1.c, 820f, vec3<u32>(1u, var_1.c.b.e.x, u_input.d)), var_1.c.b.c).a.b.x, !var_1.a.c.yx)).x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1405f), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1718f))), var_0, var_1.a.c.wyz)), var_5.x);
}


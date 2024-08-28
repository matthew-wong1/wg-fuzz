struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(319f, -1102f));
    var_0 = _wgslsmith_f_op_f32(-arg_2.a.a.b);
    var var_1 = Struct_2(Struct_1(arg_2.a.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a.b + _wgslsmith_div_f32(-431f, arg_0)) * -1590f), countOneBits(countOneBits(-arg_2.a.a.c)), ~vec4<u32>(4294967295u, select(u_input.b, arg_2.a.a.d.x, arg_2.a.a.a), ~1u, 4294967295u)), select(select(!(!vec3<bool>(arg_2.a.b.x, false, false)), select(select(vec3<bool>(false, arg_2.a.a.a, arg_2.a.a.a), vec3<bool>(false, false, arg_2.a.b.x), arg_2.a.b.x), arg_2.a.b, false), !(!vec3<bool>(true, arg_2.a.b.x, arg_2.a.b.x))), vec3<bool>(false, (arg_1 <= 29820u) || (arg_2.a.a.a && true), all(vec4<bool>(true, true, arg_2.a.b.x, true))), true), vec2<i32>(firstLeadingBit(_wgslsmith_clamp_i32(abs(u_input.a), arg_2.a.c.x, abs(22086i))), 33517i));
    return var_1.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_clamp_u32(13778u, ~40928u, 191u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))), 920f, _wgslsmith_f_op_f32(abs(1126f)), 1000f)), Struct_2(Struct_1(true, _wgslsmith_div_f32(-265f, arg_1.x), vec3<i32>(-2147483647i, arg_0.x >> (4294967295u % 32u), abs(15165i)), ~vec4<u32>(u_input.b, 52324u, 43862u, 1u)), select(select(func_3(arg_1.x, u_input.b, Struct_4(Struct_2(Struct_1(false, arg_1.x, vec3<i32>(16917i, 1i, arg_0.x), vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), vec3<bool>(true, false, false), arg_0.xx))), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, 16885u < u_input.b, true)), (vec2<i32>(arg_0.x, -3409i) << (select(vec2<u32>(u_input.b, 32877u), vec2<u32>(u_input.b, 1u), false) % vec2<u32>(32u))) & ~vec2<i32>(u_input.a, -4704i)));
    let var_1 = var_0.c.a.c.xy;
    let var_2 = var_0.c.b.x;
    var var_3 = !func_3(arg_1.x, var_0.c.a.d.x, Struct_4(var_0.c)).zy;
    var var_4 = Struct_2(var_0.c.a, !var_0.c.b, _wgslsmith_clamp_vec2_i32(~vec2<i32>(~var_1.x, var_1.x), -abs(~vec2<i32>(u_input.a, 1i)), countOneBits(select(vec2<i32>(var_0.c.a.c.x, 0i), -vec2<i32>(1i, arg_0.x), var_0.c.b.x))));
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-957f - -1000f), countOneBits(vec3<i32>(-40544i, u_input.a, u_input.a) & vec3<i32>(0i, u_input.a, u_input.a)), vec4<u32>(1u, ~25181u, _wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 28450u), vec3<u32>(53202u, 47381u, u_input.b)))), vec3<bool>(true, true, false && any(vec4<bool>(true, false, true, false))), -vec2<i32>(func_2(vec3<i32>(u_input.a, u_input.a, -55i), vec2<f32>(1266f, 184f)), ~u_input.a)));
    let var_1 = !all(!select(!vec4<bool>(false, false, var_0.c.b.x, var_0.c.a.a), !vec4<bool>(var_0.c.b.x, var_0.c.a.a, false, var_0.c.b.x), var_0.c.a.a));
    var var_2 = !var_0.c.a.a;
    let var_3 = Struct_5(vec4<bool>(false, var_0.c.b.x, true != var_0.c.a.a, select(!select(false, var_1, false), !all(vec4<bool>(var_1, true, var_1, var_0.c.b.x)), false)));
    var var_4 = var_1;
    return Struct_1(var_0.c.a.a, _wgslsmith_f_op_f32(min(-529f, -143f)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.c.a.c ^ vec3<i32>(u_input.a, var_0.c.a.c.x, 1151i), vec3<i32>(u_input.a, -26372i, var_0.c.a.c.x), ~var_0.c.a.c) & max(var_0.c.a.c, max(vec3<i32>(-8503i, 1i, u_input.a), vec3<i32>(-2147483647i, 30005i, u_input.a))), -firstLeadingBit(var_0.c.a.c)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.c.a.d.yz, vec2<u32>(u_input.b, u_input.b)), var_0.c.a.d.x, u_input.b), vec3<u32>(u_input.b, _wgslsmith_mod_u32(var_0.a, var_0.a), u_input.b)), 1u, _wgslsmith_mod_u32(var_0.c.a.d.x, 1u), _wgslsmith_sub_u32(select(_wgslsmith_div_u32(22818u, u_input.b), countOneBits(0u), u_input.b != 0u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(!(!all(func_3(-1087f, u_input.b, Struct_4(Struct_2(Struct_1(false, var_0.b, var_0.c, var_0.d), vec3<bool>(var_0.a, true, var_0.a), var_0.c.zy))))), var_0.b, ~vec3<i32>(u_input.a, -firstLeadingBit(1i), var_0.c.x), ~(vec4<u32>(abs(var_0.d.x), ~var_0.d.x, ~var_0.d.x, min(23017u, 4294967295u)) ^ reverseBits(_wgslsmith_mod_vec4_u32(var_0.d, var_0.d))));
    var var_1 = ~var_0.c;
    var_0 = func_1();
    var var_2 = Struct_5(select(select(!(!vec4<bool>(false, var_0.a, true, var_0.a)), vec4<bool>(false, true, true, true), !any(vec4<bool>(true, var_0.a, false, false))), !select(select(vec4<bool>(false, false, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, var_0.a, false, true)), !vec4<bool>(true, var_0.a, true, var_0.b <= var_0.b)));
    var var_3 = var_0.b;
    var var_4 = func_2(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1504f, 853f), vec2<f32>(var_0.b, 1000f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, 728f) - vec2<f32>(1595f, var_0.b)), var_2.a.zw)))));
    let x = u_input.a;
    s_output = StorageBuffer(-func_1().c.x & 1i);
}


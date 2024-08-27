struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, 54075i, arg_2.x), arg_3 | arg_3), arg_3.x), vec3<i32>(arg_3.x, -1i, firstLeadingBit(_wgslsmith_div_i32(51819i ^ arg_3.x, select(4176i, arg_3.x, false)))), select(vec2<bool>(true, u_input.a < max(arg_3.x, arg_2.x)), vec2<bool>((-1i >> (u_input.b % 32u)) == 597i, true), true));
    let var_1 = Struct_2(false, var_0.c.x, ~43124u, Struct_1(~0i, arg_2, select(vec2<bool>(true, false), vec2<bool>(var_0.c.x, false && var_0.c.x), vec2<bool>(false, any(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x))))));
    var var_2 = var_1;
    let var_3 = select(!(!select(!var_2.d.c, var_2.d.c, vec2<bool>(var_2.a, var_0.c.x))), select(var_2.d.c, vec2<bool>(2147483647i > ~arg_2.x, var_1.a), !(!select(vec2<bool>(var_2.a, var_0.c.x), var_1.d.c, var_2.d.c))), vec2<bool>(var_0.c.x, _wgslsmith_dot_vec4_u32(arg_1, arg_1) >= u_input.b));
    let var_4 = var_1;
    return _wgslsmith_clamp_i32(~arg_3.x, ~(-_wgslsmith_div_i32(~arg_2.x, i32(-1i) * -1i)), var_4.d.b.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, -472f)))), ~(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.d), u_input.c), abs(vec4<i32>(u_input.e & 1i, firstTrailingBit(45249i), i32(-1i) * -1i, -u_input.e))), u_input.c, !select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(true, any(vec3<bool>(true, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false))));
    let var_1 = Struct_2(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-461f))) >= _wgslsmith_f_op_f32(-489f * _wgslsmith_f_op_f32(111f - 2003f))), any(var_0.c), u_input.b, Struct_1(var_0.a, var_0.b, vec2<bool>(true, true)));
    var var_2 = var_1.d;
    let var_3 = Struct_2(true, true, abs(abs(var_1.c)), var_1.d);
    let var_4 = !var_3.d.c;
    return Struct_2((select(true != var_2.c.x, true, !var_3.d.c.x) || true) || any(vec4<bool>(var_1.d.c.x, false, true, var_0.c.x)), !var_3.d.c.x & all(vec2<bool>(false, !var_1.a)), _wgslsmith_mod_u32(u_input.b, ~u_input.b), Struct_1(-33503i, firstLeadingBit(var_2.b), select(!select(vec2<bool>(var_4.x, true), var_0.c, vec2<bool>(var_0.c.x, var_3.b)), !var_2.c, select(var_1.d.c, var_2.c, !var_1.d.c.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = u_input.c.x;
    var_0 = -_wgslsmith_clamp_i32(arg_1.d.a, min(-u_input.c.x & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e), vec2<i32>(11070i, -2147483647i)), -_wgslsmith_mod_i32(arg_1.d.a, 1048i)), -1i);
    var_0 = arg_1.d.a;
    var var_1 = _wgslsmith_add_vec3_i32(-((~u_input.c << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, 24468u), vec3<u32>(13964u, u_input.b, 54903u)) % vec3<u32>(32u))) >> (~(vec3<u32>(u_input.b, 0u, u_input.b) & vec3<u32>(arg_1.c, arg_1.c, 0u)) % vec3<u32>(32u))), abs(-vec3<i32>(1i, u_input.e, arg_1.d.b.x)));
    var var_2 = func_2();
    return vec2<bool>(arg_0.x, all(arg_0.zxz) == true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, firstLeadingBit(u_input.b));
    let var_1 = select(vec2<bool>(!any(vec4<bool>(true, true, true, true)), true), select(!vec2<bool>(any(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, false, true, true))), vec2<bool>(all(vec2<bool>(false, false)) || all(vec2<bool>(false, true)), true), true), false);
    var_0 = vec2<u32>(0u, u_input.b);
    let var_2 = select(!select(select(select(vec2<bool>(false, false), var_1, var_1), vec2<bool>(false, false), !var_1), select(!var_1, select(var_1, vec2<bool>(var_1.x, true), var_1), var_1.x), true), var_1, var_1);
    var_0 = ~select(vec2<u32>(u_input.b, var_0.x) << (vec2<u32>(86978u, var_0.x) % vec2<u32>(32u)), vec2<u32>(1u, 1u), !func_1(vec4<bool>(var_1.x, var_1.x, var_2.x, var_2.x), Struct_2(var_2.x, false, 45401u, Struct_1(u_input.d, u_input.c, var_1)))) << (vec2<u32>(_wgslsmith_mult_u32(~u_input.b, reverseBits(0u)), firstTrailingBit(var_0.x)) % vec2<u32>(32u));
    var_0 = max(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(26865u, 0u), vec2<u32>(5217u, var_0.x)), select(vec2<u32>(var_0.x, 0u), vec2<u32>(u_input.b, var_0.x), var_1.x)) << (abs(vec2<u32>(1u, 15198u)) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.x) & vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.b, u_input.b))), vec2<u32>(~73369u, func_2().c));
    var_0 = ~firstTrailingBit(vec2<u32>(abs(1u), var_0.x)) << (_wgslsmith_add_vec2_u32(max(vec2<u32>(countOneBits(u_input.b), u_input.b ^ var_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(36258u, u_input.b), vec2<u32>(var_0.x, 27306u))), vec2<u32>(0u, u_input.b) ^ ~vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 71551u, u_input.b, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-807f)), _wgslsmith_f_op_f32(1226f + -468f))), -1726f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(-1307f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(419f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), 1u, countOneBits(u_input.c.x));
}


struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> u32 {
    return firstLeadingBit(u_input.c.x);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a, vec3<i32>(u_input.d.x, -u_input.d.x, _wgslsmith_sub_i32(~u_input.d.x, -1i >> (1u % 32u))), all(select(select(select(vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(false, arg_0.c, true), arg_0.c), !vec3<bool>(false, arg_0.c, arg_0.c), arg_0.c), vec3<bool>(u_input.a.x != 44324u, arg_0.c, arg_0.c & arg_0.c), vec3<bool>(!arg_0.c, all(vec2<bool>(false, false)), !arg_0.c))));
    var var_1 = true;
    var_1 = !var_0.c;
    let var_2 = arg_0;
    let var_3 = arg_0;
    return _wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-427f))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(any(vec2<bool>(false, true)), select(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), !any(vec3<bool>(false, true, false))) && (all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) || all(vec4<bool>(true, true, true, true))), select(true, true, any(vec3<bool>(true, true, true)) | all(vec4<bool>(false, false, true, false))));
    let var_1 = vec4<u32>(~(~(~u_input.a.x)), abs(~48847u), ~4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(1772u, u_input.c.x)));
    var var_2 = _wgslsmith_f_op_f32(func_4(Struct_1(func_3(Struct_1(var_1.x, u_input.d >> (var_1.yzw % vec3<u32>(32u)), false == var_0.x), Struct_1(67330u, ~vec3<i32>(-2147483647i, -41716i, u_input.d.x), true), 1f, _wgslsmith_f_op_f32(-1540f + -1000f) == _wgslsmith_f_op_f32(floor(949f))), u_input.d, select(1i < u_input.d.x, true, all(vec2<bool>(var_0.x, false)) & all(vec4<bool>(true, true, var_0.x, var_0.x))))));
    let var_3 = Struct_1(u_input.a.x, ~u_input.d, any(var_0));
    var_2 = 369f;
    return Struct_1(abs(_wgslsmith_dot_vec3_u32(~u_input.a.zzy, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.a, 4294967295u, 4294967295u) & vec3<u32>(var_3.a, 21546u, 27417u), ~var_1.wyw, ~vec3<u32>(50864u, 0u, 4294967295u)))), var_3.b, true);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = false;
    var_0 = true;
    let var_1 = min(~(-u_input.d), u_input.d) ^ ~vec3<i32>(u_input.d.x & (u_input.d.x & 34617i), -17872i, 0i);
    var var_2 = Struct_1(arg_0, countOneBits(var_1), !(~(75806u << (u_input.c.x % 32u)) <= 74576u));
    var_2 = func_2();
    return Struct_1(4294967295u, max(vec3<i32>(39789i, var_2.b.x, var_1.x), u_input.d), (u_input.c.x & var_2.a) > _wgslsmith_mod_u32(~88669u, _wgslsmith_add_u32(~u_input.c.x, abs(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(58460u, vec3<i32>(_wgslsmith_clamp_i32(abs(u_input.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 13006u), vec4<u32>(31251u, u_input.b, u_input.c.x, 15303u)) % 32u), -1i, 2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, ~vec3<i32>(-1i, 1i, u_input.d.x)), u_input.d), -1i), true);
    var_0 = func_1(u_input.a.x);
    var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(min(1u | u_input.b, func_2().a), 4294967295u), ~(firstLeadingBit(var_0.a) & min(u_input.b, 1u)), ~func_3(func_2(), Struct_1(1u, var_0.b, false), -470f, all(vec2<bool>(false, false)))), u_input.d, all(vec4<bool>(!(var_0.c && false), !var_0.c, true, _wgslsmith_f_op_f32(150f - 1537f) < _wgslsmith_f_op_f32(trunc(728f)))));
    var_0 = func_2();
    let var_1 = ~u_input.d.zz;
    let var_2 = Struct_1(_wgslsmith_clamp_u32(u_input.a.x, ~(~27647u), abs(~(~u_input.c.x))), abs(select(~abs(vec3<i32>(var_0.b.x, u_input.d.x, var_1.x)), var_0.b, !(!vec3<bool>(var_0.c, true, false)))), select(false, false, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~(~var_0.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(var_2)), 499f))), 1000f, -1876f));
}


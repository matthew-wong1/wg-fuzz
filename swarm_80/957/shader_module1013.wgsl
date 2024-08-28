struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = -554f;
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)));
    var_2 = -1116f;
    let var_3 = !select(vec2<bool>(true, true), !vec2<bool>(true, any(vec2<bool>(false, false))), true);
    return select(vec3<bool>(true, any(vec4<bool>(var_0 >= 2016f, true, true, !var_3.x)), false), !(!(!select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(false, var_3.x, false), vec3<bool>(true, false, false)))), var_3.x);
}

fn func_2() -> f32 {
    let var_0 = vec2<i32>(countOneBits(~(-min(-5257i, 5856i))), u_input.b.x);
    var var_1 = Struct_1(true, vec3<i32>(-1i, _wgslsmith_mult_i32(var_0.x, countOneBits(48838i)), -15538i) & select(vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.a), -u_input.b.x, var_0.x), firstLeadingBit(vec3<i32>(-2147483647i, 16055i, var_0.x)), true));
    var_1 = Struct_1(all(select(select(func_3(), !vec3<bool>(var_1.a, var_1.a, false), select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, var_1.a, false), var_1.a)), vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.a, true, all(vec2<bool>(true, var_1.a))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~(~vec3<i32>(var_1.b.x, -1i, -2147483647i)), vec3<i32>(-25227i, -2147483647i, ~var_0.x)), firstTrailingBit(var_1.b), var_1.b));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(1f)), 1f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1743f, -1502f)))))), vec2<bool>(var_1.a, var_1.a))), Struct_1(var_1.a, var_1.b), false, vec4<bool>(!var_1.a, var_1.a, -2279f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1058f, -828f)))), false));
    var_1 = Struct_1(true, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.b.x, u_input.a | 28407i), select(vec3<i32>(u_input.b.x, -u_input.a, var_2.b.b.x), vec3<i32>(var_2.b.b.x, -2147483647i, 0i), !vec3<bool>(true, var_2.c, true))));
    return _wgslsmith_div_f32(var_2.a.x, 511f);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    var_0 = -2340f;
    let var_1 = Struct_1(!(arg_2.x & (arg_2.x | false)), ~vec3<i32>(reverseBits(u_input.a), 63614i, -2147483647i));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1014f, -887f)), _wgslsmith_f_op_f32(f32(-1f) * -943f)))) + 1f);
    var_0 = -1141f;
    return StorageBuffer(reverseBits(vec4<u32>(2765u, ~1u, max(1u, ~arg_1), arg_1)), vec3<i32>(~(abs(var_1.b.x) | -1i), abs(_wgslsmith_mult_i32(u_input.a, ~11773i)), -10109i >> (select(4859u, arg_1 ^ 11901u, arg_2.x) % 32u)), -125f, 271f, _wgslsmith_mod_vec4_u32(min(~(~vec4<u32>(arg_0, arg_1, 1u, arg_1)), ~(~vec4<u32>(1u, 0u, 4294967295u, arg_1))), ((vec4<u32>(u_input.c.x, arg_1, 8060u, arg_0) & vec4<u32>(78068u, arg_0, u_input.c.x, 0u)) << ((vec4<u32>(14255u, 37156u, 0u, arg_1) ^ vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)) % vec4<u32>(32u))) | (~vec4<u32>(arg_0, arg_0, arg_1, 3160u) | ~vec4<u32>(arg_0, arg_1, 0u, 100425u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(countOneBits(~u_input.c.x), ~min(u_input.c.x ^ 75274u, abs(45979u) | u_input.c.x), vec3<bool>(true, false, select(!all(vec4<bool>(true, true, false, true)), true, true)));
}


struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(29110u, 6468u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> i32 {
    global0 = ~vec2<u32>(global0.x, arg_1.c.b.e.x);
    global0 = u_input.b.zy;
    global0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(46670u, abs(~u_input.b.x)), 61264u), 38347u);
    global0 = arg_1.c.d.e.zz;
    var var_0 = false;
    return 17199i;
}

fn func_3() -> vec3<u32> {
    global0 = ~(~select(abs(vec2<u32>(4294967295u, 0u)), u_input.b.zx << (u_input.b.yy % vec2<u32>(32u)), all(vec4<bool>(true, true, false, false)))) & ~select(vec2<u32>(33592u, 0u), ~vec2<u32>(67190u, u_input.b.x) ^ u_input.b.yz, true);
    let var_0 = !select(!vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, true))), vec4<bool>(true, _wgslsmith_clamp_i32(u_input.c.x, 1i, 16849i) != _wgslsmith_mod_i32(-1i, -21998i), -u_input.a.x <= -2147483647i, -440f != _wgslsmith_f_op_f32(step(1000f, -375f))), false);
    global0 = u_input.b.zy;
    global0 = countOneBits(~vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u | u_input.b.x), 19474u));
    global0 = ~(abs(u_input.b.yx) ^ ~_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.b.zz));
    return vec3<u32>(~global0.x, reverseBits(~(~(~global0.x))), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0.x, 1u, u_input.b.x)) & _wgslsmith_div_u32(5894u, 1u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.b), ~u_input.b)));
}

fn func_2() -> Struct_1 {
    let var_0 = firstTrailingBit(global0.x);
    var var_1 = Struct_2(-(~(~12266i)), Struct_1(any(vec2<bool>(true, true)), ~u_input.c, any(vec2<bool>(any(vec2<bool>(true, true)), true)), vec4<bool>(!any(vec3<bool>(true, false, true)), 0u <= firstLeadingBit(var_0), false, true), ~func_3()), select(select(vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), true), vec3<bool>(!(var_0 != 3972u), true, var_0 >= u_input.b.x), false), Struct_1(!all(vec3<bool>(true, true, true)), vec2<i32>(-1i, _wgslsmith_div_i32(~u_input.a.x, u_input.c.x)), select(false, true, true) | true, vec4<bool>(select(true, true, true), any(vec3<bool>(true, true, true)), true, true), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, u_input.b.x, global0.x), vec3<u32>(72030u, 31340u, u_input.b.x)) ^ reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global0.x, global0.x), vec3<u32>(34040u, 0u, 4294967295u)))));
    var_1 = Struct_2(firstLeadingBit(i32(-1i) * -1i), var_1.d, !var_1.d.d.yxx, Struct_1(var_1.b.d.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -1i, abs(4324i)), vec2<i32>(u_input.c.x, 1i), u_input.c >> (u_input.b.yy % vec2<u32>(32u))), true, var_1.b.d, reverseBits(_wgslsmith_sub_vec3_u32(var_1.d.e, abs(var_1.d.e)))));
    var_1 = Struct_2(-var_1.a, Struct_1(var_1.d.a, vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(var_1.d.b.x | 1i, -2033i)), false, var_1.d.d, countOneBits(~u_input.b)), vec3<bool>(false, true, false), Struct_1(false & all(var_1.c.xy), vec2<i32>(-10327i, -1i), true, var_1.d.d, var_1.d.e));
    let var_2 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(13318i, u_input.c.x, _wgslsmith_mult_i32(var_1.a, 33488i), -27884i), firstLeadingBit(u_input.a))), Struct_1(true, u_input.a.wz, !((true == var_1.b.a) & var_1.d.d.x), select(!var_1.d.d, !vec4<bool>(true, var_1.c.x, var_1.d.d.x, false), select(!var_1.d.d, var_1.b.d, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.b.x, ~4294967295u, 4294967295u), var_1.d.e)), !(!(!var_1.c)), var_1.b);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.b.zz;
    var var_0 = Struct_2(92109i >> (~(1u << (_wgslsmith_mod_u32(u_input.b.x, 4244u) % 32u)) % 32u), Struct_1(~1u > u_input.b.x, vec2<i32>(func_1(-213f, Struct_4(true, Struct_1(true, vec2<i32>(u_input.c.x, u_input.c.x), false, vec4<bool>(false, false, true, true), u_input.b), Struct_2(u_input.a.x, Struct_1(true, vec2<i32>(u_input.c.x, u_input.c.x), true, vec4<bool>(true, true, false, true), u_input.b), vec3<bool>(true, false, true), Struct_1(true, vec2<i32>(u_input.c.x, -58058i), false, vec4<bool>(false, false, true, true), u_input.b)), Struct_3(u_input.a, vec4<bool>(true, true, false, true), vec3<bool>(true, false, false), u_input.c.x), Struct_3(vec4<i32>(u_input.a.x, 1i, -23251i, -2147483647i), vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), 0i))), i32(-1i) * -2147483647i), (false && all(vec2<bool>(false, false))) & false, vec4<bool>(true, true, true, true), u_input.b), vec3<bool>(!(!(36654i >= u_input.c.x)), !select(true, any(vec4<bool>(true, true, true, true)), true), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))), func_2());
    var var_1 = func_2();
    var var_2 = Struct_3(u_input.a, var_0.b.d, vec3<bool>(64165u >= (var_1.e.x | ~global0.x), !var_0.d.a, false), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, ~var_0.d.b.x, abs(_wgslsmith_add_i32(1i, 30374i))), firstLeadingBit(vec3<i32>(-27228i, -1i, var_0.d.b.x))));
    let var_3 = !var_0.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_1.e.x, min(~1u, ~_wgslsmith_mod_u32(1u, 18311u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1645f) + _wgslsmith_div_f32(-259f, 1252f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1237f, 345f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, _wgslsmith_f_op_f32(-1107f + 951f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1254f, -1403f) + vec2<f32>(1528f, -615f)))))), min(var_1.e.x, u_input.b.x) << (4294967295u % 32u), select(vec4<i32>(var_1.b.x, -2732i >> (var_0.d.e.x % 32u), u_input.c.x, var_0.a | -2147483647i), vec4<i32>(var_1.b.x, -var_0.d.b.x, ~var_1.b.x, max(14222i, 1i)), all(vec4<bool>(var_3.x, false, true, var_3.x))) ^ u_input.a);
}


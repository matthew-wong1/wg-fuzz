struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(1u, Struct_1(select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(false, false), true), (-vec3<i32>(-2147483647i, u_input.a, 1i) ^ select(vec3<i32>(-31197i, -1i, u_input.a), vec3<i32>(-29685i, u_input.a, u_input.a), true)) & select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(-65795i, 1i, u_input.a), vec3<bool>(true, false, false)), -1220f, firstTrailingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(-7237i, 20602i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(32421i, -13668i), true)))), Struct_1(vec2<bool>(true, !all(vec2<bool>(false, false))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(0i, 39890i, u_input.a)), vec3<i32>(-71588i, abs(u_input.a), ~(-1i))), 154f, vec2<i32>(-2147483647i & u_input.a, -u_input.a)), Struct_1(vec2<bool>(false, false), ~vec3<i32>(reverseBits(11198i), 11886i, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -238f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-623f, -985f, false)) + -989f)), vec2<i32>(u_input.a << (39685u % 32u), select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -12662i), vec4<i32>(u_input.a, -1i, 2147483647i, u_input.a)), true))));
    global0 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.c)) + 472f)) * _wgslsmith_f_op_f32(ceil(1f)));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return firstTrailingBit(~reverseBits(~firstTrailingBit(0u)));
}

fn func_2() -> u32 {
    let var_0 = u_input.c;
    global0 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(func_3(), var_0.x ^ u_input.c.x), _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(var_0.x, 64084u)), vec2<u32>(u_input.b.x & 14733u, 45861u))), _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), countOneBits(var_0.yy)), ~var_0.yw));
    global0 = array<Struct_1, 4>();
    let var_2 = 3355u;
    return ~u_input.c.x;
}

fn func_1() -> f32 {
    var var_0 = vec4<u32>(countOneBits(u_input.b.x), 0u, func_2(), 2378u);
    var var_1 = min(vec4<u32>(u_input.c.x, 4294967295u, 3484u, u_input.c.x), (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), u_input.c, vec4<u32>(var_0.x, 24959u, 16458u, u_input.b.x)) ^ u_input.c) >> (u_input.c % vec4<u32>(32u)));
    var_0 = ~(~((u_input.c | vec4<u32>(var_1.x, 49081u, 4294967295u, 0u)) << (u_input.c % vec4<u32>(32u)))) >> ((u_input.c >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u));
    var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(69869u, 46646u, 70430u), abs(var_0.xzx)), abs(func_2()), _wgslsmith_dot_vec2_u32(u_input.b, var_1.xz)), firstLeadingBit(countOneBits(vec3<u32>(var_1.x, 37793u, 64241u) & var_0.yxx))), 19478u, var_1.x, var_0.x);
    let var_2 = any(vec4<bool>(false, true, !all(vec4<bool>(true, true, true, true)), select(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false, true)));
    return 865f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(146f)), -152f)))))));
    var_0 = _wgslsmith_f_op_f32(-1227f * _wgslsmith_f_op_f32(func_1()));
    let var_1 = 0i;
    var var_2 = false;
    let var_3 = Struct_2(_wgslsmith_div_u32(u_input.c.x, u_input.c.x) << (max(0u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)) % 32u), Struct_1(vec2<bool>(true == (18588u != u_input.b.x), all(vec3<bool>(true, true, false))), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(-20301i, var_1, var_1), vec3<i32>(-2147483647i, u_input.a, u_input.a), false), min(vec3<i32>(-37917i, 1i, 19217i), vec3<i32>(3464i, 56516i, 2147483647i))), _wgslsmith_f_op_f32(261f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2131f)))), vec2<i32>(6517i, -1i)), Struct_1(vec2<bool>(true, true), vec3<i32>(reverseBits(_wgslsmith_mod_i32(u_input.a, var_1)), select(u_input.a, -var_1, true), -var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -418f))) + -523f), firstTrailingBit(vec2<i32>(min(u_input.a, var_1), -u_input.a))), global0[_wgslsmith_index_u32(abs(~u_input.b.x), 4u)]);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(245f * var_3.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_3.c.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-366f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.c.c)))), var_3.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(var_4.wxx)), firstLeadingBit(u_input.a), -388f);
}


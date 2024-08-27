struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: f32 = 210f;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(trunc(arg_0));
    let var_0 = Struct_2(87911u, arg_1.e, arg_1.c);
    let var_1 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), -1300f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(929f + 1036f))) + _wgslsmith_f_op_f32(sign(global1.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f * _wgslsmith_f_op_f32(arg_0.x + -1538f)) - arg_0.x);
    global3 = Struct_3(~arg_2.x, vec2<u32>(~27923u, firstLeadingBit(_wgslsmith_mod_u32(~arg_1.d, 4294967295u))), Struct_1(global3.c.a), 1u, global3.c);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, min(67584u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, ~var_0.a), arg_2));
}

fn func_2() -> vec2<u32> {
    global3 = Struct_3(~global3.a, ~_wgslsmith_div_vec2_u32(~func_3(vec3<f32>(global1.x, global1.x, global1.x), Struct_3(u_input.c, vec2<u32>(34760u, 24586u), Struct_1(vec3<i32>(-1i, -38845i, global3.c.a.x)), 54678u, global3.e), vec2<u32>(0u, u_input.b.x)), global3.b), Struct_1(global3.c.a), 4294967295u, Struct_1(~global3.c.a));
    global3 = Struct_3(max(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.wxx, vec3<u32>(u_input.b.x, 1u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)))), vec2<u32>(global3.a, global3.b.x >> (32201u % 32u)) >> (global3.b % vec2<u32>(32u)), Struct_1(vec3<i32>(global3.c.a.x, _wgslsmith_dot_vec3_i32(global3.e.a, vec3<i32>(7291i, global3.e.a.x, global3.e.a.x)), _wgslsmith_sub_i32(global3.c.a.x, global3.c.a.x))), min(_wgslsmith_add_u32(global3.a, ~0u), select(global3.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(5675u, u_input.a.x, global3.a, 35082u), vec4<u32>(global3.b.x, 1u, global3.d, u_input.b.x)), any(vec4<bool>(true, true, true, true)))), global3.c);
    let var_0 = vec2<bool>(select(!(~global3.d >= 13401u), true, true), all(vec2<bool>(true | (global3.c.a.x == -32712i), 840f > _wgslsmith_f_op_f32(step(global1.x, global1.x)))));
    global0 = var_0.x;
    let var_1 = Struct_2(u_input.a.x >> (global3.b.x % 32u), Struct_1((vec3<i32>(global3.e.a.x, global3.c.a.x, global3.c.a.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(61327i, global3.e.a.x, global3.e.a.x), vec3<i32>(global3.e.a.x, -2147483647i, global3.e.a.x))) ^ (-global3.e.a | vec3<i32>(23003i, -2147483647i, global3.e.a.x))), global3.c);
    return ~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(select(67525u, u_input.c, false), ~u_input.c)), firstTrailingBit(vec2<u32>(firstLeadingBit(global3.d), min(u_input.b.x, u_input.b.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = ~global3.b;
    var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_add_u32(0u, reverseBits(_wgslsmith_dot_vec2_u32(func_2(), u_input.b.wz ^ vec2<u32>(9711u, var_0.x)))), Struct_1(vec3<i32>(_wgslsmith_sub_i32(max(13672i, global3.e.a.x), global3.c.a.x), -select(3379i, -61176i, false), global3.c.a.x)), global3.e);
    var var_2 = ~_wgslsmith_mod_vec2_u32(~(~(~global3.b)), min(_wgslsmith_mod_vec2_u32(func_3(vec3<f32>(global1.x, -1276f, -290f), Struct_3(33927u, u_input.b.yz, var_1.c, var_1.a, var_1.c), u_input.a.xy), vec2<u32>(var_1.a, 1u)), global3.b));
    let var_3 = vec4<bool>(false, !(global1.x > -1898f), global1.x >= _wgslsmith_div_f32(463f, _wgslsmith_f_op_f32(max(-489f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, true, false))));
    return Struct_3(~_wgslsmith_add_u32(min(1u, _wgslsmith_mod_u32(0u, u_input.c)), _wgslsmith_clamp_u32(abs(global3.a), _wgslsmith_dot_vec2_u32(global3.b, vec2<u32>(47999u, var_0.x)), var_2.x)), ~func_2(), global3.e, ~min(~var_1.a ^ 58405u, var_2.x), Struct_1(abs(_wgslsmith_clamp_vec3_i32(global3.e.a, -vec3<i32>(global3.e.a.x, 18304i, 21270i), vec3<i32>(-7495i, 1i, -65510i) & vec3<i32>(32029i, global3.c.a.x, -699i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_2(firstLeadingBit(4294967295u), func_1().e, var_0.e);
    var_0 = func_1();
    var_0 = Struct_3(_wgslsmith_sub_u32(~global3.a, ~17109u), vec2<u32>(~var_1.a, 0u), Struct_1(global3.e.a), var_0.a, func_1().e);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))), !(!(12352u > var_1.a)))), _wgslsmith_clamp_i32(4954i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 20888i, 0i, -6828i)) | max(vec4<i32>(7854i, var_1.c.a.x, global3.e.a.x, -1i), vec4<i32>(var_1.c.a.x, -70256i, -1i, var_1.b.a.x)), -firstTrailingBit(vec4<i32>(var_1.c.a.x, var_0.c.a.x, 1i, global3.c.a.x))), abs(func_1().c.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-850f, 1339f, global1.x, 1276f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, 1578f, 710f, global1.x)))))), global3.e.a.x);
}


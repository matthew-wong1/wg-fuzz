struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    let var_0 = -min(_wgslsmith_div_i32(-1i, 11781i >> (0u % 32u)), u_input.a & 2147483647i) == u_input.e.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_div_f32(-1115f, -844f), var_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) - -551f))), 1i & ~abs(_wgslsmith_sub_i32(u_input.d.x, 1i)));
    let var_2 = var_1;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-169f, _wgslsmith_f_op_f32(min(511f, _wgslsmith_div_f32(752f, _wgslsmith_f_op_f32(-var_2.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -203f));
    let var_4 = _wgslsmith_f_op_f32(-var_2.a);
    return _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(4294967295u << (u_input.b % 32u)), u_input.b, firstTrailingBit(~9300u), ~(~12170u)), vec4<u32>(~(u_input.b | 27699u), u_input.b, u_input.c.x >> (u_input.c.x % 32u), u_input.c.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(13716u, u_input.b, 0u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.c.x, u_input.c.x, 27544u)), ~vec4<u32>(u_input.c.x, 1u, 0u, 1u))), ~reverseBits(vec4<u32>(1u, 34028u, u_input.c.x << (1u % 32u), u_input.b)));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_1(694f, _wgslsmith_dot_vec4_i32(arg_1, arg_1) | -1i);
    var var_1 = var_0.b;
    var_1 = arg_1.x;
    let var_2 = func_3();
    var_1 = _wgslsmith_dot_vec2_i32(arg_1.yz, -_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, arg_1.x)), abs(-vec2<i32>(358i, arg_1.x))));
    return countOneBits(u_input.e.wz);
}

fn func_1() -> u32 {
    var var_0 = -u_input.d.zy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(4294967295u, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x)), u_input.c.zz) % vec2<u32>(32u));
    let var_1 = Struct_1(1501f, firstTrailingBit(-u_input.d.x ^ ~(-56362i)));
    var_0 = func_2(_wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(~74139u >> (1u % 32u), ~u_input.c.x)), u_input.e);
    var var_2 = var_1;
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.c, countOneBits(_wgslsmith_add_vec3_u32(~u_input.c, u_input.c)), max(func_3().zxy, ~(~u_input.c))), u_input.c);
    return select(18273u, 1u, !(!all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(floor(1061f))))));
    var_0 = _wgslsmith_f_op_f32(floor(-610f));
    var_0 = 383f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1537f) - -218f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1211f * 684f) + _wgslsmith_f_op_f32(f32(-1f) * -512f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(960f - -1970f) + -1632f)));
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(func_1(), abs(func_3().x), firstTrailingBit(_wgslsmith_mod_u32(~u_input.c.x, 27394u << (u_input.b % 32u)))), ~select(u_input.c, vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~4294967295u, abs(u_input.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(714f, -2587f))));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -1160f))), _wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1084f), 380f)))), u_input.d.x);
    var var_3 = ~_wgslsmith_div_vec4_u32(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 58935u, 37529u), vec4<u32>(1u, 4294967295u, 36260u, 0u), vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.b))), countOneBits(select(vec4<u32>(var_1.x, var_1.x, 73143u, var_1.x), vec4<u32>(0u, 1530u, 0u, u_input.b), true)) << ((func_3() >> (~vec4<u32>(0u, 1u, 37216u, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(var_3.x, 12477u, var_1.x, 37512u) >> (~vec4<u32>(73407u, 1u, 14810u, var_1.x) % vec4<u32>(32u)))), u_input.e.ww >> (~vec2<u32>(func_1(), ~39046u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 1006f, var_2.a, var_2.a)))));
}


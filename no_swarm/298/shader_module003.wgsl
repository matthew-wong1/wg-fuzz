struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = false;
    return true;
}

fn func_3() -> f32 {
    var var_0 = ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1941f, -643f)));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = true;
    var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f - 1000f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
    return 719f;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-412f, _wgslsmith_f_op_f32(-1000f - -1919f)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1590f, 634f), vec2<f32>(227f, 1011f), true)))))), !(!(!(u_input.c.x >= u_input.b.x))));
    var var_1 = true;
    let var_2 = Struct_3(Struct_2(71651u, _wgslsmith_div_u32(~u_input.c.x, 50161u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_div_f32(168f, -1000f)) * 1191f)), _wgslsmith_f_op_f32(min(341f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2021f - -354f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) + 1f))))), Struct_1(any(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true), false)) || ((var_0.x & var_0.x) && (var_0.x || var_0.x))));
    var var_3 = Struct_1(false);
    var var_4 = firstTrailingBit(~_wgslsmith_clamp_i32(2147483647i, abs(u_input.a.x), i32(-1i) * -u_input.e));
    return var_2.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    let var_0 = vec3<i32>(-u_input.d.x, 0i, (firstLeadingBit(min(u_input.a.x, u_input.d.x)) ^ -u_input.a.x) | _wgslsmith_dot_vec2_i32(u_input.d.xx, _wgslsmith_div_vec2_i32(u_input.d.xy, countOneBits(vec2<i32>(2147483647i, u_input.d.x)))));
    var var_1 = max(abs(_wgslsmith_mult_u32(arg_0, max(4294967295u, countOneBits(u_input.b.x)))), 4294967295u);
    var var_2 = Struct_3(Struct_2(10712u ^ (u_input.c.x ^ ~1u), _wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(u_input.c.x >> (u_input.c.x % 32u)), 10926u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-236f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b, arg_2.a.c) - _wgslsmith_f_op_f32(arg_2.a.c - 1813f)), _wgslsmith_f_op_f32(f32(-1f) * -721f), true))), func_1());
    var_2 = Struct_3(Struct_2(firstTrailingBit(~1u) << ((29722u | u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(u_input.b.wwy, vec3<u32>(30792u, _wgslsmith_mod_u32(39425u, var_2.a.b), 815u)), _wgslsmith_f_op_f32(-var_2.a.c)), _wgslsmith_f_op_f32(754f - _wgslsmith_f_op_f32(func_3())), var_2.c);
    var_1 = arg_0 ^ firstTrailingBit(0u);
    return u_input.c.x;
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, arg_1), vec3<u32>(0u, 4294967295u, 96664u)), 0u, _wgslsmith_add_u32(21616u, arg_1), ~4294967295u)), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.b.x), vec4<u32>(u_input.c.x, arg_1, 35876u, u_input.b.x))), u_input.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1807f, 767f, arg_0))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1393f, arg_0, -261f), vec3<f32>(arg_0, arg_0, -1027f), false))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1272f + 854f), var_1.x, true))) - _wgslsmith_f_op_f32(1062f - var_1.x)) * -1548f);
    var var_3 = Struct_3(Struct_2(firstLeadingBit(4294967295u << (reverseBits(0u) % 32u)), arg_1, var_1.x), _wgslsmith_f_op_f32(exp2(var_2)), Struct_1(false));
    var var_4 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(27400u, 20732u), 1u, arg_1), ~vec3<u32>(4294967295u, 4294967295u, arg_1)), 1u, var_2), _wgslsmith_f_op_f32(abs(-511f)), var_3.c);
    return Struct_3(var_3.a, arg_0, var_4.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -328f))), 649f), ~func_4(4294967295u, func_1(), Struct_3(Struct_2(u_input.b.x, 28808u, 624f), -747f, func_1())));
    var var_1 = ~(~vec4<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 1u, u_input.c.x))), min(min(1u, var_0.a.b), var_0.a.b), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.b, 34398u), _wgslsmith_add_u32(4294967295u, var_0.a.a)), func_4(var_0.a.a, func_1(), var_0)));
    var var_2 = -223f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-116f + var_0.b)))));
    var var_3 = Struct_3(Struct_2(34545u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.b, u_input.c.x), vec2<u32>(1u, 61709u)), ~var_1.ww) & reverseBits(u_input.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c) + var_0.a.c)))), _wgslsmith_f_op_f32(floor(1283f)), var_0.c);
    var var_4 = func_5(1000f, _wgslsmith_mult_u32(reverseBits(~1808u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.a.b, 1u, var_0.a.a), u_input.b)), ~var_3.a.b));
    var_1 = min(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b << (min(vec4<u32>(u_input.b.x, var_1.x, var_3.a.a, 4294967295u), vec4<u32>(4294967295u, 27852u, 25127u, u_input.b.x)) % vec4<u32>(32u)), u_input.b), select(min(min(u_input.b, u_input.b), vec4<u32>(30510u, var_1.x, var_4.a.a, 1u) ^ vec4<u32>(var_1.x, var_0.a.a, 4294967295u, 12575u)), vec4<u32>(var_1.x | var_3.a.a, 17631u, var_1.x | 4294967295u, var_0.a.a >> (4294967295u % 32u)), false)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, max(var_3.a.a, u_input.b.x | 42283u), var_1.x | var_3.a.b, (var_4.a.b << (u_input.b.x % 32u)) << (var_1.x % 32u)), ~(u_input.b & vec4<u32>(25287u, 26029u, 4294967295u, 49773u))));
    var_4 = Struct_3(var_4.a, var_0.a.c, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-515f, _wgslsmith_f_op_f32(floor(var_0.b))))) * var_4.a.c));
}


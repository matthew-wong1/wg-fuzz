struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(44235u, ~(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(89812u, u_input.a.x), ~99388u)), u_input.d);
    var var_1 = Struct_3(Struct_1(vec2<bool>(true, true)));
    var var_2 = ~u_input.a.x;
    let var_3 = ~vec3<u32>(51079u, _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~u_input.d, var_0)), ~abs(~u_input.a.x));
    let var_4 = vec4<u32>(41854u, ~1u, 4294967295u, max(1u, ~0u));
    return var_1.a;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.c, u_input.c);
    var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    return !select(!select(!vec4<bool>(arg_1.a.a.x, arg_0, false, false), vec4<bool>(arg_0, arg_1.a.a.x, arg_0, arg_0), vec4<bool>(true, false, false, true)), !(!vec4<bool>(arg_1.a.a.x, arg_0, false, true)), vec4<bool>(any(vec4<bool>(true, false, true, arg_0)), arg_0, ~(-2147483647i) > u_input.b.x, any(vec3<bool>(arg_1.a.a.x, false, arg_0))));
}

fn func_1() -> u32 {
    let var_0 = func_2(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(f32(-1f) * -957f)) + 519f)) + _wgslsmith_f_op_f32(select(388f, 249f, (~50688i <= reverseBits(u_input.c.x)) || (~u_input.a.x <= 73182u))));
    let var_2 = func_3(!(!(!any(vec3<bool>(var_0.a.x, false, false)))), Struct_3(var_0), vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(~(~37156u), ~_wgslsmith_mult_u32(42672u, u_input.a.x))));
    var var_3 = firstTrailingBit(u_input.a.yz);
    var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 11864u), u_input.a.yx | ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.a.x), u_input.a.yz, vec2<u32>(41u, 55796u)), vec2<u32>(var_3.x, var_3.x)), vec2<u32>(min(69730u, abs(~u_input.a.x)), u_input.d));
    return 30643u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(u_input.d, func_1(), any(vec3<bool>(true, true, true)) != false);
    let var_1 = !(_wgslsmith_mult_i32(u_input.b.x, -2147483647i) < firstLeadingBit(u_input.b.x));
    let var_2 = Struct_4(select(u_input.a, _wgslsmith_mult_vec3_u32(~select(u_input.a, vec3<u32>(1u, 0u, 3616u), var_1), u_input.a), !func_3(any(vec3<bool>(var_1, true, var_1)), Struct_3(Struct_1(vec2<bool>(var_1, var_1))), _wgslsmith_sub_vec2_u32(u_input.a.xz, u_input.a.zy)).zxz), func_3(true, Struct_3(Struct_1(vec2<bool>(true, true))), u_input.a.yx).zy, vec3<i32>(-u_input.b.x, 0i, -22183i), func_2(any(vec4<bool>(true, var_1 || false, var_1, var_1))));
    let var_3 = vec2<bool>(var_1, false);
    let var_4 = Struct_4(_wgslsmith_mod_vec3_u32(~u_input.a, var_2.a ^ abs(vec3<u32>(17112u, 45001u, var_0))), select(vec2<bool>(all(!vec4<bool>(var_3.x, false, false, var_2.b.x)), !var_1), vec2<bool>(true, true), ~_wgslsmith_sub_u32(7340u, u_input.a.x) != 67354u), var_2.c, var_2.d);
    var var_5 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(609f * -532f), _wgslsmith_f_op_f32(sign(-1000f))))), -444f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(196f + -1005f), -1363f, false))) - 2466f), max(vec3<u32>(var_4.a.x, 1u, 20253u), ~vec3<u32>(20292u, _wgslsmith_mult_u32(0u, var_4.a.x), ~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-548f, _wgslsmith_div_f32(-569f, 1823f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069f - 1615f))) + 428f), 1488f);
}


struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-9767i, 1i, i32(-2147483648), -47770i, 2147483647i, -45929i, 1i, 2147483647i, 6093i, -11723i, 23368i, -56718i, 29013i, i32(-2147483648), 2147483647i, 0i, -9306i, -40902i, 40490i, 15718i, 12144i, 38327i, i32(-2147483648), 1i, 328i);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 12>;

var<private> global3: array<i32, 21>;

var<private> global4: Struct_3 = Struct_3(41471i, vec3<bool>(true, true, true), vec4<u32>(24226u, 5554u, 43690u, 4294967295u), true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    global1 = u_input.a;
    let var_0 = global4.b.x;
    let var_1 = Struct_2(arg_0.x, select(select(!(!vec3<bool>(false, global4.d, false)), vec3<bool>(!global4.b.x, false, true), select(select(global4.b, vec3<bool>(false, global4.d, global4.b.x), vec3<bool>(true, global4.d, global4.d)), select(global4.b, vec3<bool>(global4.b.x, global4.d, global4.b.x), true), vec3<bool>(false, global4.b.x, global4.b.x))), global4.b, !global4.d));
    var var_2 = Struct_3(-_wgslsmith_add_i32(32363i, -1i), global4.b, global4.c, any(vec3<bool>(false, global4.b.x, true)));
    var_2 = Struct_3(-22045i, vec3<bool>(!any(!vec3<bool>(true, true, global4.d)), any(vec2<bool>(global4.b.x, true)), global4.d), ~global4.c, global4.a <= -19216i);
    return vec4<i32>(global4.a, ~(global3[_wgslsmith_index_u32(max(u_input.c, countOneBits(u_input.a)), 21u)] << (countOneBits(_wgslsmith_div_u32(global4.c.x, global4.c.x)) % 32u)), ~select(1i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~global4.c.x, 25u)], min(var_2.a, global4.a)), var_1.b.x), -2147483647i);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global2 = array<Struct_1, 12>();
    global0 = array<i32, 25>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-2147483647i), global4.a, global4.a, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8521u, 1u, 4294967295u), global4.c.xxx), 21u)], -24396i, -2147483647i | global4.a)), (func_3(vec3<f32>(-962f, -979f, -314f)) >> (abs(vec4<u32>(19253u, arg_0, u_input.b, 17375u)) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, 80280u, 35852u, u_input.a | u_input.a) % vec4<u32>(32u))), -39768i);
    global4 = Struct_3(func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(392f)), -1588f, -493f)).x, global4.b, min((abs(global4.c) & vec4<u32>(4294967295u, 25310u, u_input.c, arg_0)) ^ global4.c, global4.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f * 1000f)) + 848f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1628f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1163f) + -1301f)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(655f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-649f)), -429f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-655f))))));
    return Struct_2(1000f, global4.b);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_2(11769u);
    let var_1 = 4294967295u;
    let var_2 = !vec3<bool>(!global4.d, true & (global4.c.x >= 85014u), (any(vec4<bool>(false, false, global4.d, false)) && var_0.b.x) | false);
    global3 = array<i32, 21>();
    global3 = array<i32, 21>();
    return global4.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(0i << ((4294967295u << (global4.c.x % 32u)) % 32u), 1i), -(~(-(vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], 26232i) & vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(global4.c.x, 25u)])))));
    let var_1 = Struct_1((select(~global4.a, var_0.x, true) ^ var_0.x) | _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(var_0.x, var_0.x), 31771i, ~global3[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(u_input.c, 12u)]), 21u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-289f, -1000f, -1101f), vec3<f32>(1061f, 458f, -1662f), vec3<bool>(global4.b.x, true, true))))) + vec3<f32>(191f, _wgslsmith_f_op_f32(3850f + -447f), -1770f)));
    global2 = array<Struct_1, 12>();
    var_0 = vec2<i32>(-1i) * -(vec2<i32>(13243i >> (u_input.c % 32u), global4.a) | ~vec2<i32>(global4.a, var_1.a));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(~firstTrailingBit(4294967295u), _wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(22224u, global4.c.x) << (1u % 32u))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(min(var_1.b.x, -1245f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1401f)))), _wgslsmith_f_op_f32(exp2(var_1.b.x))))), _wgslsmith_f_op_vec2_f32(-var_1.b.yy));
}


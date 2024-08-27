struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(660f, vec4<u32>(23415u, 0u, 0u, 1u), 14016u), vec2<f32>(823f, -339f), 4294967295u), Struct_2(-1610f, Struct_1(-361f, vec4<u32>(0u, 4294967295u, 4294967295u, 1u), 4294967295u)));

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global3: u32 = 58895u;

var<private> global4: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, _wgslsmith_f_op_f32(1424f * _wgslsmith_div_f32(global1.a.a.a, 1261f)))), global1.a.b, !global2.x));
    let var_1 = !(!vec3<bool>(26553u > abs(arg_2.x), arg_0.x == 126363u, any(global2.wxw)));
    global3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(select(arg_2.zx, u_input.a.zy, vec2<bool>(true, true))), _wgslsmith_sub_vec2_u32(~u_input.a.zy, arg_0.xz) << (firstLeadingBit(arg_2.zw) % vec2<u32>(32u))), arg_0.x);
    var var_2 = ~(firstTrailingBit(1u) | arg_0.x);
    var var_3 = global1.b;
    return Struct_3(global0.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) + _wgslsmith_f_op_f32(-global0.a.a))))), _wgslsmith_mult_u32(~countOneBits(arg_0.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 42142u, var_3.b.c) >> (vec3<u32>(21329u, u_input.a.x, arg_3) % vec3<u32>(32u)), u_input.a), _wgslsmith_mult_u32(14005u, ~min(u_input.a.x, 1u))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = -249f;
    let var_1 = ~(~u_input.a.zz) ^ ~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, global1.a.c) | max(global1.b.b.b.wx, global1.b.b.b.wz), vec2<u32>(1u << (global1.b.b.c % 32u), 4294967295u));
    let var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 62619u, _wgslsmith_mult_u32(var_1.x, 40649u)), (vec3<u32>(4294967295u, global0.c, var_1.x) | u_input.a) | func_2(global1.a.a.b, vec4<bool>(true, true, true, global2.x), vec4<u32>(1u, 15556u, 1u, u_input.a.x), 29578u).a.b.zww) ^ vec3<u32>(_wgslsmith_add_u32(u_input.a.x, select(73374u & u_input.a.x, 80185u, true)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, global1.b.b.b.x), global0.a.b), vec4<u32>(u_input.a.x, ~global0.c, ~4294967295u, global1.a.a.c & global1.a.c)), _wgslsmith_sub_u32(21902u, ~(global0.a.b.x >> (45256u % 32u))));
    global3 = abs(~_wgslsmith_dot_vec2_u32(global0.a.b.yy, global1.b.b.b.wy) << (global0.a.b.x % 32u)) >> (41218u % 32u);
    return ~var_2.x;
}

fn func_1() -> Struct_4 {
    global1 = Struct_4(func_2(vec4<u32>(u_input.a.x, 4173u, global0.c, global1.a.c), vec4<bool>(select(global2.x || global2.x, true, false), global2.x, true, all(!vec4<bool>(false, global2.x, global2.x, global2.x))), vec4<u32>(~u_input.a.x, 38429u, global0.c, ~global0.a.b.x), ~17182u), global1.b);
    let var_0 = true;
    var var_1 = Struct_4(global1.a, global1.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.b.a + 531f), _wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_f32(abs(global0.a.a))))));
    var var_3 = func_2(vec4<u32>(6804u, ~(~func_3(-41903i, vec2<bool>(var_0, false))), func_3(-9500i, global2.zy), u_input.a.x), !(!(!(!vec4<bool>(true, global2.x, false, global2.x)))), func_2(select(~vec4<u32>(u_input.a.x, var_1.b.b.b.x, u_input.a.x, global1.a.a.c) & ~vec4<u32>(21857u, 54353u, 1u, global1.a.c), vec4<u32>(_wgslsmith_clamp_u32(global1.b.b.b.x, var_1.b.b.c, u_input.a.x), var_1.b.b.c, ~0u, 4294967295u), var_0), vec4<bool>(true, all(vec4<bool>(global2.x, var_0, true, var_0)), false, all(vec3<bool>(true, false, false))), ~_wgslsmith_add_vec4_u32(global0.a.b, var_1.a.a.b) << (global0.a.b % vec4<u32>(32u)), 68353u).a.b, _wgslsmith_mod_u32(~83142u, var_1.a.a.c));
    return Struct_4(func_2(vec4<u32>(~0u, 5784u, func_2(var_3.a.b, vec4<bool>(true, true, false, true), reverseBits(vec4<u32>(global0.a.b.x, 1u, global0.c, global1.a.a.b.x)), 31011u).c, 38392u), vec4<bool>(all(vec3<bool>(false, global2.x, var_0)), !any(vec3<bool>(true, var_0, global2.x)), any(global2.ww), any(select(vec4<bool>(var_0, true, false, true), vec4<bool>(true, global2.x, true, true), true))), global0.a.b, _wgslsmith_mod_u32(~37438u, 1u)), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!vec4<bool>(global2.x, 0u == global1.b.b.c, false, true));
    let var_1 = global0.a.b.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1603f), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u >> (global0.c % 32u), u_input.a.x, global1.a.a.c | global0.a.c), global1.b.b.b), global1.b.b.b.x);
    global1 = func_1();
    var var_3 = Struct_4(func_2(global0.a.b, !(!select(vec4<bool>(false, true, true, var_0), vec4<bool>(global2.x, global2.x, global2.x, var_0), global2.x)), vec4<u32>(_wgslsmith_mult_u32(var_2.b.x, ~74739u), 65928u, 17237u, _wgslsmith_add_u32(global1.a.c, 0u)), 0u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1().b.b.a, var_2.a, false)) + 460f), global0.a));
    let var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(1010f, countOneBits(~vec3<i32>(-2147483647i, -var_4, _wgslsmith_mod_i32(-1i, var_4))), i32(-1i) * -1i, _wgslsmith_dot_vec4_u32(~(~var_2.b << (func_1().b.b.b % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(var_3.b.b.b.x, 1u) << (func_1().b.b.b.x % 32u), (44732u & var_2.b.x) ^ u_input.a.x, ~firstTrailingBit(var_3.a.c), func_1().b.b.c)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(-1800f - global1.a.a.a)), global0.b.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.a, global1.a.a.a), vec2<f32>(var_2.a, var_2.a))))));
}


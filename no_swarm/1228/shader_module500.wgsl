struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(1u, 1u, 17345u, 1u, 21218u, 0u, 1u, 4294967295u, 20863u, 0u, 88657u, 32723u, 4294967295u);

var<private> global1: u32;

var<private> global2: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(~global0[_wgslsmith_index_u32(u_input.c.x, 13u)], 1u, 7674u, 1u), ~(~u_input.c));
    global0 = array<u32, 13>();
    let var_1 = Struct_1(vec4<i32>(-10955i, -1i, _wgslsmith_div_i32(arg_0.a, -12260i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.a, 1i, u_input.b.x, 2147483647i), vec4<i32>(arg_0.a, arg_0.a, 1i, arg_0.a)), vec4<i32>(0i ^ arg_0.a, ~(-1i), ~u_input.b.x, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f * 535f))))), all(vec3<bool>(_wgslsmith_div_i32(arg_0.a, arg_0.a) <= 1i, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)), true)), -1878f);
    let var_2 = 17299u;
    var var_3 = Struct_3(min(u_input.b.x ^ 0i, u_input.b.x | var_1.a.x));
    return 472f;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_3((1i << (~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54612u, 13u)], 13u)], global0[_wgslsmith_index_u32(26631u, 13u)], true) % 32u)) ^ max(select(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.a ^ u_input.a, false), 0i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -575f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2003f + -1000f), 1f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(121f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(660f)))));
    var var_3 = select(vec3<bool>(true, true, var_2.x >= _wgslsmith_f_op_f32(-var_2.x)), select(arg_1, select(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, true, arg_1.x), !arg_1.x), vec3<bool>(true, any(vec4<bool>(true, false, true, arg_1.x)), 1160f <= var_2.x), !(!arg_1)), all(select(select(arg_1.xy, vec2<bool>(false, true), arg_1.x), !vec2<bool>(arg_1.x, arg_1.x), arg_1.xz))), !(!arg_1));
    var var_4 = Struct_1(~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-7764i, 0i, 2147483647i, var_0.a), vec4<i32>(u_input.b.x, u_input.a, u_input.a, -14402i)) << (select(u_input.c, vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)], 4294967295u, 28559u), arg_1.x) % vec4<u32>(32u))), 210f, true, var_2.x);
    return select(arg_0.x, _wgslsmith_div_i32(arg_0.x, ~(~firstTrailingBit(var_0.a))), true);
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = ~(~(~(~global0[_wgslsmith_index_u32(1u, 13u)]) << (u_input.c.x % 32u)));
    global0 = array<u32, 13>();
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(func_3(-vec2<i32>(-29599i, 322i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) & min(-u_input.b.x, -8038i), -_wgslsmith_sub_i32(-u_input.b.x, i32(-1i) * -32767i)), u_input.b);
    var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c.zzw, vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4816u, 13u)], 78178u), 13u)], ~51814u, abs(global0[_wgslsmith_index_u32(0u, 13u)])))), 13u)], 13u)];
    global1 = select(reverseBits(select(u_input.c.x, max(0u ^ u_input.c.x, 1u), !all(vec4<bool>(false, false, false, false)))), 4629u, select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))) >= _wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(arg_0.x * 108f)), false, true));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(112f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-977f, arg_0.x, arg_0.x, -1000f))), vec4<f32>(1996f, 1358f, arg_0.x, arg_0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-901f, _wgslsmith_f_op_f32(-arg_0.x))), 330f, _wgslsmith_f_op_f32(arg_0.x * -747f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2243f * -334f)), 1671f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1104f, -2040f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(floor(-2406f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_3(1i))), -2618f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-289f, -1557f, -325f, -418f) - vec4<f32>(512f, -1834f, -1806f, -1866f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1278f, 1515f, -713f, 138f))) * _wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(1712f + 2177f), _wgslsmith_f_op_f32(-1418f * 1359f), -328f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yyw * vec3<f32>(714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -465f)), -844f)));
    var var_2 = u_input.c.x;
    let var_3 = select(!vec2<bool>(_wgslsmith_f_op_f32(469f - var_0.x) > _wgslsmith_f_op_f32(var_1.x - var_1.x), true), vec2<bool>(any(vec2<bool>(true, true)), (any(vec2<bool>(false, true)) == true) & true), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_4 = Struct_4(u_input.c.x, u_input.a, Struct_3(-(_wgslsmith_add_i32(u_input.a, u_input.b.x) << ((32422u << (0u % 32u)) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-305f, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(-462f, -358f))))));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.zz, var_0.zz))))), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_5.a, var_4.a, 4294967295u, u_input.c.x), ~vec4<u32>(56186u, 4294967295u, 65123u, var_5.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.xzw, vec3<u32>(u_input.c.x, 1u, var_5.a)), min(u_input.c.yxx, u_input.c.yxz)), global0[_wgslsmith_index_u32(var_4.a, 13u)], var_4.a, u_input.c.x)), var_0);
}


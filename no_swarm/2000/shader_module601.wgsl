struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(572f, 1048f, -1284f), vec3<f32>(-1647f, 1862f, 214f), vec3<f32>(-125f, 668f, -1663f), vec3<f32>(-403f, 1000f, -941f), vec3<f32>(555f, -620f, -1000f));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), 4294967295u);

var<private> global2: array<vec3<bool>, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    let var_0 = Struct_3(Struct_1(global1.a, _wgslsmith_mod_u32(0u, arg_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(336f * 1588f))) + 1199f)));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1580f - _wgslsmith_f_op_f32(272f + 355f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec3<u32>(arg_0.x, arg_0.x, 56990u), -18925i)))) + 236f)));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 2241f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-476f, 1544f) * _wgslsmith_f_op_f32(f32(-1f) * -725f)), _wgslsmith_f_op_f32(151f + _wgslsmith_f_op_f32(1094f + 196f))))));
    global1 = Struct_1(global1.a, global1.b);
    return -1i;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    global0 = array<vec3<f32>, 5>();
    return -(-_wgslsmith_sub_vec3_i32(u_input.c.wyw, ~u_input.c.ywy) ^ select(-vec3<i32>(-27386i, -2147483647i, -1i), vec3<i32>(func_2(vec2<u32>(u_input.a, u_input.d)), u_input.c.x, abs(-2147483647i)), select(!vec3<bool>(false, global1.a.x, arg_2.a.x), !global1.a.yzw, global1.a.zyw)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1156f), -func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(410f, -1866f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(759f, 1812f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1352f, 762f) * vec2<f32>(176f, -266f)) * _wgslsmith_div_vec2_f32(vec2<f32>(795f, 1070f), vec2<f32>(-592f, -600f))), Struct_1(vec4<bool>(true, false, global1.a.x, global1.a.x), arg_1.x >> (u_input.b % 32u)), -func_2(vec2<u32>(5776u, 0u))));
    var var_1 = vec2<bool>(true, arg_2 & true);
    let var_2 = -25338i;
    let var_3 = Struct_4(-197f, ~func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1122f, var_0.a), vec2<f32>(-500f, var_0.a), vec2<bool>(global1.a.x, global1.a.x))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, 1214f))), Struct_1(!global1.a, ~27129u), 0i));
    var var_4 = global0[_wgslsmith_index_u32(4294967295u << (select((4734u ^ ~global1.b) & u_input.a, arg_0, all(!global1.a) && all(vec3<bool>(global1.a.x, true, false))) % 32u), 5u)];
    return Struct_2(Struct_1(vec4<bool>(false, !all(global2[_wgslsmith_index_u32(arg_1.x, 31u)]), global1.b < _wgslsmith_add_u32(29889u, 0u), true), ~(~(~31882u))), Struct_1(!(!global1.a), abs(14784u >> (arg_1.x % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, _wgslsmith_f_op_f32(-1844f - var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f * 231f) - _wgslsmith_div_f32(var_0.a, var_0.a)), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a, 1u, arg_0), 2411i))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_3.a, var_3.a, _wgslsmith_f_op_f32(var_0.a - var_3.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_4.x, var_3.a, -258f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1750f, var_3.a, var_3.a))))), var_0.b, -select(~(~u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, -5578i), vec4<i32>(2147483647i, 8458i, u_input.e, var_3.b.x)), false));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_3 {
    global0 = array<vec3<f32>, 5>();
    return Struct_3(func_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, global1.b, 1u) >> (vec3<u32>(0u, global1.b, 1u) % vec3<u32>(32u))), vec3<u32>(arg_1.b.b, arg_1.b.b, u_input.d) >> (abs(vec3<u32>(4294967295u, u_input.a, arg_1.b.b)) % vec3<u32>(32u))), firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global1.b, 4294967295u, arg_1.b.b, u_input.d), vec4<u32>(u_input.b, global1.b, u_input.d, 52851u)))), select(!(!arg_0.x), func_1(global1.b, vec4<u32>(u_input.b, global1.b, u_input.d, 12317u), arg_0.x).b.a.x && (false == arg_0.x), all(arg_0.zx))).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.a.x;
    global2 = array<vec3<bool>, 31>();
    let var_1 = func_5(vec3<bool>(true, var_0, true), func_1(u_input.a >> (firstLeadingBit(63137u >> (global1.b % 32u)) % 32u), abs(vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.d), u_input.b, ~u_input.b, ~0u)), global1.a.x));
    let var_2 = ~vec2<u32>(u_input.d, _wgslsmith_add_u32(global1.b, _wgslsmith_div_u32(1u, global1.b)));
    global0 = array<vec3<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-3673i, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b, _wgslsmith_mod_u32(var_2.x, ~4294967295u), 8178u, ~1u), vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(52855u, 40979u, global1.b), vec3<u32>(global1.b, 0u, 0u)), min(vec3<u32>(var_2.x, var_2.x, u_input.d), vec3<u32>(56802u, var_2.x, 1u))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 10533u, u_input.d), vec3<u32>(var_1.a.b, global1.b, 1u))), 1u, 1u)), ~(~u_input.c.x >> (func_1(u_input.d, vec4<u32>(1u, var_1.a.b, 36385u, var_2.x), false).b.b % 32u)) ^ 25607i, vec2<f32>(1334f, 1f));
}


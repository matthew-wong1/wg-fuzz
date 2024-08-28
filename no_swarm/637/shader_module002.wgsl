struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 28> = array<bool, 28>(false, true, true, true, true, true, false, true, true, true, false, false, true, true, false, false, false, false, false, false, true, false, true, true, true, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-435f)));
    let var_1 = Struct_2(!arg_2.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-337f)) - _wgslsmith_f_op_f32(232f + 541f)));
    global0 = arg_2.a.a.xz;
    var var_2 = _wgslsmith_clamp_vec2_i32(arg_1.xy, min(~vec2<i32>(countOneBits(arg_1.x), -2147483647i), -select(vec2<i32>(u_input.a, u_input.b) & arg_1.xz, vec2<i32>(-16535i, u_input.a), select(vec2<bool>(global1[_wgslsmith_index_u32(11163u, 28u)], global1[_wgslsmith_index_u32(89293u, 28u)]), var_1.a.xy, arg_2.d.a.x))), arg_1.yx);
    let var_3 = Struct_2(vec3<bool>(!(!all(var_1.a)), !(!var_1.a.x), var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f - arg_2.b.a)));
    return 43624u;
}

fn func_2() -> vec3<bool> {
    var var_0 = vec3<bool>(!(func_3(_wgslsmith_f_op_f32(1173f - -306f), -vec3<i32>(u_input.a, u_input.b, u_input.a), Struct_3(Struct_2(vec3<bool>(true, true, true), 426f), Struct_1(709f), Struct_1(1045f), Struct_2(vec3<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 28u)]), 176f))) > u_input.c), u_input.d.x >= abs(~u_input.d.x), u_input.a < min(-2147483647i, u_input.a));
    var_0 = vec3<bool>(31910u < ~_wgslsmith_mult_u32(abs(45644u), u_input.c), true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.d.x), u_input.d.wwy)), u_input.d.xx), select(vec2<u32>(4294967295u, u_input.c) & u_input.d.yx, vec2<u32>(u_input.c, abs(u_input.c)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.d.x >> (u_input.c % 32u)), 28u)])), 28u)]);
    let var_1 = Struct_3(Struct_2(select(!select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(19849u, 28u)]), true), vec3<bool>(true, global0.x, true), false), -1000f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2301f, _wgslsmith_f_op_f32(-2047f + 1067f), true)))), Struct_1(807f), Struct_2(vec3<bool>(true, !(!global1[_wgslsmith_index_u32(34376u, 28u)]), !all(vec3<bool>(false, false, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.d.x, ~4294967295u, max(u_input.d.x, u_input.c), 1u), ~(~vec4<u32>(0u, u_input.c, 10775u, 0u))), ~u_input.d.x ^ ~reverseBits(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.c), vec2<u32>(u_input.c, u_input.d.x)));
    var var_3 = var_1.b.a;
    return select(select(!(!select(var_1.a.a, vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(25270u, 28u)], false), false)), !vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 28u)], all(vec4<bool>(false, true, false, var_0.x)), any(var_0.yy)), !vec3<bool>(any(vec3<bool>(var_0.x, true, true)), !var_1.d.a.x, true)), !(!var_1.a.a), !(!var_1.d.a));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(select(!vec3<bool>(all(vec3<bool>(global0.x, global0.x, true)), true, global0.x), func_2(), global1[_wgslsmith_index_u32(1u ^ min(_wgslsmith_mult_u32(u_input.c, 37611u), firstLeadingBit(u_input.d.x)), 28u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-503f, arg_0))))) * 975f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-195f, arg_0))));
    var var_2 = 1u;
    let var_3 = Struct_3(Struct_2(vec3<bool>(true, 2504i > _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), arg_1.yy), _wgslsmith_f_op_f32(max(var_0.b, var_0.b)) == arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1378f))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(sign(-509f))), _wgslsmith_f_op_f32(min(arg_0, var_0.b))))), var_1, Struct_2(select(select(vec3<bool>(var_0.a.x, global0.x, global0.x), func_2(), true), vec3<bool>(false, func_2().x, true), !vec3<bool>(false, var_0.a.x, false)), _wgslsmith_f_op_f32(341f * _wgslsmith_f_op_f32(-var_0.b))));
    global1 = array<bool, 28>();
    return var_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = vec2<i32>(max(-countOneBits(u_input.a), u_input.a), 1i) | ~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(-23767i, -35843i), vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(-34321i, -2147483647i) << (vec2<u32>(u_input.c, 3533u) % vec2<u32>(32u))), -vec2<i32>(-1i, u_input.b) ^ vec2<i32>(-1i, u_input.a));
    var var_1 = func_1(arg_1.d.b, vec4<i32>(-20698i >> (u_input.c % 32u), u_input.b | select(1i, 9269i, arg_0.a.x), var_0.x, select(-37039i, -u_input.a, arg_0.a.x)) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-16921i, 24038i), select(vec2<i32>(var_0.x, 4136i), vec2<i32>(u_input.a, u_input.b), global1[_wgslsmith_index_u32(10219u, 28u)])), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(19749i, -27670i, var_0.x)), select(1i, var_0.x, false) << (~4294967295u % 32u), ~u_input.b));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -850f), arg_1.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, 1310f))))));
    return arg_1;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = u_input.b;
    var_0 = u_input.a;
    var var_1 = (i32(-1i) * -13634i) >> (_wgslsmith_mult_u32(u_input.c, ~_wgslsmith_dot_vec4_u32(u_input.d, select(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(3001u, 0u, u_input.c, 4294967295u), vec4<bool>(arg_0.x, arg_2.a.a.x, global1[_wgslsmith_index_u32(1080u, 28u)], false)))) % 32u);
    global1 = array<bool, 28>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 291f;
    var var_1 = func_5(!select(select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global0.x), select(vec2<bool>(false, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.c, 28u)])), !select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 28u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 28u)])), false), u_input.a, func_4(Struct_2(!select(vec3<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 28u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 28u)], global0.x, global1[_wgslsmith_index_u32(u_input.d.x, 28u)])), -1649f), Struct_3(func_1(_wgslsmith_f_op_f32(-161f * -111f), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 22999i, -2147483647i), vec4<i32>(0i, u_input.b, 0i, u_input.b))), Struct_1(-106f), Struct_1(_wgslsmith_f_op_f32(trunc(-1141f))), Struct_2(vec3<bool>(global0.x, global0.x, global0.x), _wgslsmith_f_op_f32(round(265f)))), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c, _wgslsmith_mult_u32(u_input.d.x, u_input.c), abs(4294967295u), 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, 4294967295u, u_input.d.x), u_input.d))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b.a, 613f))))))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1134f, vec4<i32>(1i, u_input.b, u_input.a, u_input.a)).b * -780f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * -1134f)))));
    let var_2 = func_5(vec2<bool>(_wgslsmith_mult_u32(u_input.c, reverseBits(1u)) >= (abs(44587u) << (u_input.d.x % 32u)), func_1(var_1.b.a, -vec4<i32>(15949i, u_input.a, 1i, u_input.b)).a.x | (true && (var_1.d.a.x & var_1.a.a.x))), firstTrailingBit(u_input.a | firstLeadingBit(u_input.a)), func_5(vec2<bool>(var_1.a.a.x, var_1.d.a.x), u_input.a, func_4(var_1.a, Struct_3(func_5(var_1.a.a.yy, u_input.b, Struct_3(var_1.d, Struct_1(-668f), Struct_1(var_1.b.a), var_1.a)).d, Struct_1(var_1.d.b), Struct_1(591f), Struct_2(var_1.d.a, var_1.c.a)), select(vec4<u32>(u_input.c, u_input.c, 27543u, u_input.c), vec4<u32>(u_input.c, 0u, 23204u, 81396u) ^ u_input.d, !vec4<bool>(global1[_wgslsmith_index_u32(36027u, 28u)], false, var_1.a.a.x, false)))));
    var_0 = var_1.c.a;
    var var_3 = func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -2343f), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.b, -3306i, 54176i, u_input.a))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a, -1i, u_input.b), vec4<i32>(1i, 2147483647i, u_input.b, -40571i)), _wgslsmith_add_vec4_i32(vec4<i32>(33292i, 21190i, u_input.b, -2147483647i), vec4<i32>(2515i, u_input.b, 38196i, u_input.b))))), var_2, _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, select(u_input.d.x & 4294967295u, ~45002u, true), ~14971u, 0u), reverseBits(_wgslsmith_div_vec4_u32(~u_input.d, max(u_input.d, vec4<u32>(2313u, u_input.c, u_input.d.x, u_input.d.x)))))).d.a.x;
    let var_4 = var_1.a.a.x;
    var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(-u_input.a, ~u_input.a, u_input.b), u_input.b, u_input.a, 0i) ^ (vec4<i32>(0i, firstTrailingBit(1i), -71230i, reverseBits(u_input.b)) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, -54536i, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, 14777i)) << (vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, 29082u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a, -384f) - vec2<f32>(var_1.d.b, 516f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-303f, -1827f), vec2<f32>(var_1.a.b, 1450f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-370f, var_1.c.a))), !var_2.a.a.yy)), func_2().zy))), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(1i, 5316i, 2147483647i, u_input.a)), ~(select(vec4<i32>(2147483647i, u_input.b, u_input.b, 0i), vec4<i32>(21804i, 66454i, 1738i, u_input.a), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.d.x, 28u)])) ^ abs(vec4<i32>(-2147483647i, -2147483647i, 29412i, -32617i)))), vec4<u32>(~1u, _wgslsmith_mult_u32(17381u, 12049u), 1u, u_input.c));
}


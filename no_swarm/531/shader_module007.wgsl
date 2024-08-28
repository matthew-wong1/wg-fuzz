struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true));

var<private> global1: array<i32, 5> = array<i32, 5>(2147483647i, -25592i, -1i, -46321i, -22569i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    return arg_1;
}

fn func_3() -> bool {
    var var_0 = abs(~(~0u));
    let var_1 = Struct_2(Struct_1(!global0[_wgslsmith_index_u32(1u, 5u)], select(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(7351u, 53035u, 1u, 5057u)), vec4<bool>(true, true, true, true)), ~vec2<u32>(1u, 1u)), Struct_1(vec4<bool>(select(true, true, true), all(vec4<bool>(true, true, true, false)), true, true), vec4<u32>(~_wgslsmith_mod_u32(65569u, 18259u), 4294967295u, abs(~16001u), _wgslsmith_mult_u32(~4717u, ~4294967295u)), firstLeadingBit(firstLeadingBit(vec2<u32>(1u, 1u)))), vec2<bool>(all(select(!global0[_wgslsmith_index_u32(61033u, 5u)], vec4<bool>(true, true, true, true), true)), any(vec3<bool>(true, all(global0[_wgslsmith_index_u32(126063u, 5u)]), true))), 4294967295u, ~reverseBits(1u));
    let var_2 = Struct_1(!select(select(global0[_wgslsmith_index_u32(abs(27788u), 5u)], var_1.b.a, !global0[_wgslsmith_index_u32(11564u, 5u)]), !(!vec4<bool>(false, false, var_1.c.x, true)), true), ~(~vec4<u32>(~var_1.d, 24210u, ~52242u, 1u)), vec2<u32>(4294967295u, 1u));
    let var_3 = Struct_1(!select(vec4<bool>(var_2.a.x, true, any(vec4<bool>(var_1.c.x, false, var_2.a.x, var_2.a.x)), false), !select(vec4<bool>(false, var_2.a.x, false, true), global0[_wgslsmith_index_u32(var_1.d, 5u)], var_2.a.x), vec4<bool>(!var_2.a.x, any(var_2.a.wx), true & var_2.a.x, var_2.a.x)), var_1.a.b, var_1.a.c);
    global0 = array<vec4<bool>, 5>();
    return any(var_1.b.a.yxw) != true;
}

fn func_2() -> u32 {
    global0 = array<vec4<bool>, 5>();
    var var_0 = global0[_wgslsmith_index_u32(9872u, 5u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1277f - -1483f), _wgslsmith_f_op_f32(-2373f * 153f), _wgslsmith_f_op_f32(step(1780f, 671f)), _wgslsmith_f_op_f32(970f * 277f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, -2499f, _wgslsmith_f_op_f32(2587f + 841f), -584f)), !var_0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.wyx, _wgslsmith_f_op_vec3_f32(-var_1.wwy), vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 5u)]), func_3(), any(vec4<bool>(true, var_0.x, true, true))))));
    return ~select(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 17157u), ~vec2<u32>(46361u, 81587u)), _wgslsmith_mult_u32(14535u, abs(11056u))), 4294967295u, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1776f);
    global1 = array<i32, 5>();
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(987f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1223f, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(12467u, 8114u, 284u, 53528u), vec2<u32>(0u, 125374u)), Struct_1(global0[_wgslsmith_index_u32(23289u, 5u)], vec4<u32>(0u, 1u, 1u, 11772u), vec2<u32>(68262u, 4294967295u)), vec2<bool>(false, true), 0u, 10183u), 698f)))), true))));
    let var_1 = countOneBits(18355i);
    let var_2 = ~select(vec3<u32>(9754u, ~abs(23429u), 1u), vec3<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 1u), 4294967295u), 32205u), vec3<bool>(true, true, true));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f - -662f) + 531f)))), -1014f);
    let var_4 = Struct_1(select(global0[_wgslsmith_index_u32(firstTrailingBit(~var_2.x), 5u)], select(vec4<bool>(false, true, any(vec3<bool>(true, false, true)), true), global0[_wgslsmith_index_u32(abs(15794u), 5u)], select(true, true, true)), (abs(1i) << (var_2.x % 32u)) <= 72058i), max(select(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), _wgslsmith_div_vec4_u32(vec4<u32>(27108u, var_2.x, 4294967295u, var_2.x), vec4<u32>(50910u, var_2.x, 1u, var_2.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 6142u, var_2.x, var_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, 1u, 50334u), vec4<u32>(1u, var_2.x, 0u, var_2.x))), select(vec4<bool>(false, true, true, true), select(global0[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(var_2.x, 5u)]), true)), select(countOneBits(min(vec4<u32>(var_2.x, 1u, 28574u, 8056u), vec4<u32>(0u, var_2.x, 0u, 17970u))), vec4<u32>(var_2.x, _wgslsmith_mod_u32(var_2.x, var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 30901u), vec2<u32>(var_2.x, 0u)), abs(var_2.x)), global0[_wgslsmith_index_u32(~(~20805u), 5u)])), ~vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, 0u, _wgslsmith_clamp_u32(var_2.x, var_2.x, var_2.x)), var_2.x));
    let var_5 = Struct_1(vec4<bool>(var_4.a.x, false & var_4.a.x, true, false), vec4<u32>(func_2(), 4506u, 1931u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2.x, 14210u), var_2.x, _wgslsmith_mod_u32(var_2.x, var_2.x))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_4.b, vec4<u32>(1u, var_4.b.x, 1u, var_2.x), var_4.b), vec4<u32>(44533u, min(68201u, var_2.x), _wgslsmith_mult_u32(0u, var_4.b.x), select(27237u, 1u, false))) % vec4<u32>(32u)), abs(~(~var_4.c) & abs(vec2<u32>(0u, var_4.c.x) | vec2<u32>(var_4.c.x, var_4.b.x))));
    var var_6 = Struct_2(Struct_1(vec4<bool>(true, true, !(var_3.x < -1074f), true), min(var_4.b >> (vec4<u32>(4294967295u, 4294967295u, 0u, var_2.x) % vec4<u32>(32u)), ~var_5.b), var_5.c >> (max(_wgslsmith_mod_vec2_u32(var_2.yz, vec2<u32>(var_2.x, var_4.b.x)), vec2<u32>(1u, 42318u)) % vec2<u32>(32u))), Struct_1(vec4<bool>(var_4.a.x, all(select(var_5.a, vec4<bool>(var_5.a.x, true, false, var_5.a.x), global0[_wgslsmith_index_u32(4294967295u, 5u)])), var_4.a.x, var_3.x > _wgslsmith_f_op_f32(abs(787f))), _wgslsmith_div_vec4_u32(~vec4<u32>(58183u, 4294967295u, 0u, var_5.c.x), var_5.b << (abs(vec4<u32>(4294967295u, var_4.b.x, var_4.c.x, var_4.c.x)) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_5.b.x, 1u), min(vec2<u32>(var_4.c.x, 1u), vec2<u32>(1u, var_5.c.x))))), !select(select(var_4.a.zx, vec2<bool>(var_5.a.x, false), select(vec2<bool>(var_5.a.x, var_5.a.x), vec2<bool>(false, var_4.a.x), var_5.a.xz)), var_4.a.xw, var_4.a.xx), 33345u, firstLeadingBit(~1u >> (_wgslsmith_mod_u32(~var_4.b.x, _wgslsmith_mod_u32(var_2.x, 4294967295u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~(firstTrailingBit(var_2) >> (var_4.b.yww % vec3<u32>(32u))) | vec3<u32>(var_2.x, var_2.x, 61248u >> (~4294967295u % 32u)), -(_wgslsmith_mult_i32(50893i, global1[_wgslsmith_index_u32(5106u, 5u)] | -2147483647i) << (60020u % 32u)), vec3<f32>(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<bool>(var_4.a.x, var_4.a.x, var_6.c.x, true), var_4.b, var_4.b.wz), var_6.b, var_4.a.yw, 1u, var_2.x), var_3.x))), _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) - _wgslsmith_f_op_f32(trunc(var_3.x))), var_5.a.x)), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.x, -537f)), _wgslsmith_f_op_f32(-var_3.x)))));
}


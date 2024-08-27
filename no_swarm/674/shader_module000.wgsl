struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<i32, 29>;

var<private> global2: u32 = 66166u;

var<private> global3: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(14589u, 0u), vec2<u32>(13684u, 1u), vec2<u32>(42351u, 61450u), vec2<u32>(4294967295u, 70035u), vec2<u32>(1u, 37417u), vec2<u32>(19710u, 0u), vec2<u32>(4294967295u, 44563u), vec2<u32>(1u, 71230u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(49862u, 0u), vec2<u32>(8019u, 4294967295u), vec2<u32>(28769u, 1u), vec2<u32>(43910u, 1u), vec2<u32>(1u, 7224u), vec2<u32>(4294967295u, 20056u), vec2<u32>(0u, 1u), vec2<u32>(30622u, 37164u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(28704u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -552f) - arg_3.x), -502f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -946f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.x)) - arg_0.b.x)) - _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(min(-996f, -651f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) * arg_3.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2422f) - 1289f)));
    global3 = array<vec2<u32>, 22>();
    global0 = array<bool, 25>();
    var var_1 = !select(vec4<bool>(true, !any(vec2<bool>(arg_2.x, true)), !(u_input.b.x <= global1[_wgslsmith_index_u32(arg_0.a.a, 29u)]), arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, true), !select(!vec4<bool>(arg_2.x, false, false, true), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.a, 25u)], arg_2.x, global0[_wgslsmith_index_u32(0u, 25u)], true), any(arg_2)));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1234f, -1752f, _wgslsmith_f_op_f32(-arg_3.x)))))));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(36950u, arg_0.c.a, arg_0.a.a, 0u), ~vec4<u32>(68578u, 1129u, 0u, 4441u)), ~(~vec4<u32>(1u, arg_0.c.a, 4294967295u, arg_0.c.a))), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 35217u, 1u, arg_0.c.a), vec4<u32>(arg_0.a.a, arg_0.c.a, 0u, 37775u) | vec4<u32>(4294967295u, arg_0.a.a, 1u, arg_0.c.a)) & _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(arg_0.a.a, arg_0.c.a, arg_0.c.a, arg_0.c.a)), vec4<u32>(0u, 0u, 0u, arg_0.a.a) | vec4<u32>(0u, arg_0.a.a, arg_0.a.a, arg_0.a.a))), ~(firstLeadingBit(~vec4<u32>(50162u, 40547u, 8686u, arg_0.a.a)) ^ vec4<u32>(0u, 16654u, arg_0.c.a << (arg_0.a.a % 32u), _wgslsmith_mult_u32(39304u, 1u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(1u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1)))))), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(func_3(Struct_2(Struct_1(10680u), vec4<f32>(184f, -398f, arg_1.x, 681f), Struct_1(56705u)), u_input.b, vec3<bool>(true, false, global0[_wgslsmith_index_u32(7720u, 25u)]), vec4<f32>(1034f, 592f, 1777f, arg_0.x)), ~vec4<u32>(1u, 1u, 4294967295u, 1u)), vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(13738u, 22u)], global3[_wgslsmith_index_u32(95714u, 22u)]), ~0u))));
    let var_1 = Struct_1(~33873u);
    global2 = ~firstLeadingBit(21015u | var_0.a.a) >> (8366u % 32u);
    global1 = array<i32, 29>();
    var var_2 = var_1.a;
    return Struct_1(_wgslsmith_mult_u32(54529u, _wgslsmith_add_u32(var_1.a, 1u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2097f, 568f) + 2019f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1841f, 1492f)), _wgslsmith_f_op_f32(f32(-1f) * -520f))), -3215f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-521f, -999f, -444f, -498f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, 406f, -1233f, -1643f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-219f, 1075f, _wgslsmith_f_op_f32(abs(-611f)), _wgslsmith_f_op_f32(select(-553f, -226f, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 306f, -1127f, -321f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 814f, 767f, 308f), vec4<f32>(-837f, 1400f, 1259f, -1041f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1362f, -1000f, 315f, -1043f) * vec4<f32>(-904f, 493f, 723f, 1274f))))));
    let var_1 = select(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(25577u, 25u)], false, false), !select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], true), vec3<bool>(global0[_wgslsmith_index_u32(67707u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), global0[_wgslsmith_index_u32(arg_1.a, 25u)]), !(!global0[_wgslsmith_index_u32(4294967295u, 25u)])), vec3<bool>((arg_2 & 40537u) >= (arg_2 << (0u % 32u)), false, global0[_wgslsmith_index_u32(arg_0, 25u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(5934u, 25u)], false, true, global1[_wgslsmith_index_u32(0u, 29u)] <= 1i))), !(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(var_0.a, 25u)], global0[_wgslsmith_index_u32(var_0.a, 25u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(arg_1.a, 25u)]), global0[_wgslsmith_index_u32(0u, 25u)]))), true);
    global2 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-179f, -414f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(519f))) + _wgslsmith_f_op_f32(sign(1f))));
}

fn func_1(arg_0: i32) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_add_u32(0u, 4294967295u), func_2(vec4<f32>(236f, -987f, 202f, 633f), vec4<f32>(-983f, 1000f, -372f, -1045f)), abs(4294967295u)))), _wgslsmith_f_op_f32(-919f + _wgslsmith_f_op_f32(-660f - -328f))), -125f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 40108u;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(abs(u_input.a) >> (1u % 32u))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(639f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_0.x))), var_0.x, -1687f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1206f, -2253f, 1285f, var_0.x) + vec4<f32>(-469f, 841f, -1000f, var_0.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2098f, var_0.x, -323f))))))));
    let var_2 = vec4<u32>(reverseBits(~(~44101u)), ~reverseBits(1u), ~(~countOneBits(74233u)), _wgslsmith_clamp_u32(0u, ~7443u, ~18438u) & 4294967295u) & reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19647u, 0u), ~vec2<u32>(4294967295u, 1u)), 1u, ~func_2(vec4<f32>(var_0.x, 823f, -626f, var_0.x), vec4<f32>(var_1.x, var_1.x, -427f, var_0.x)).a, ~0u));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-247f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(var_0.x - var_1.x)), -193f);
    let var_3 = Struct_1(_wgslsmith_clamp_u32(22472u, var_2.x, 4294967295u));
    let var_4 = Struct_2(var_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(2217f, 465f, -323f, 728f), vec4<f32>(-723f, var_1.x, 1590f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_1.x, global0[_wgslsmith_index_u32(var_2.x, 25u)])), _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(473f, -2790f, var_1.x, var_1.x))))), Struct_1(1u & (~var_3.a ^ var_2.x)));
    let var_5 = var_2.x;
    let var_6 = var_4.b.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.a);
}


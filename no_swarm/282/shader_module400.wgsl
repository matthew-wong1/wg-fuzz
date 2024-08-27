struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-760f, 933f), vec2<f32>(-835f, 248f), vec2<f32>(-228f, 957f), vec2<f32>(167f, -1852f), vec2<f32>(449f, 484f), vec2<f32>(432f, -1808f), vec2<f32>(707f, 1344f), vec2<f32>(-626f, -1679f), vec2<f32>(-988f, -921f), vec2<f32>(1693f, 610f), vec2<f32>(-732f, -317f), vec2<f32>(-1000f, -379f), vec2<f32>(861f, 944f), vec2<f32>(-1000f, -1108f), vec2<f32>(-811f, -236f), vec2<f32>(-1896f, -1000f), vec2<f32>(1462f, -833f), vec2<f32>(743f, -643f), vec2<f32>(-2578f, -365f), vec2<f32>(-2489f, -2302f), vec2<f32>(-1000f, 1271f), vec2<f32>(1138f, 1322f), vec2<f32>(1014f, 879f), vec2<f32>(-689f, 1312f), vec2<f32>(925f, -467f), vec2<f32>(-1801f, 104f), vec2<f32>(292f, -168f), vec2<f32>(-423f, 563f));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, true, true), Struct_1(false, false, false), Struct_1(false, true, true), Struct_1(false, true, false), Struct_1(true, false, false), Struct_1(true, true, true), Struct_1(true, false, true), Struct_1(true, false, false), Struct_1(true, true, true), Struct_1(true, true, true), Struct_1(false, true, false));

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global3: array<f32, 28>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: bool) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(~1u, 28u)], -1000f, -1812f)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(arg_2.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - _wgslsmith_div_vec3_f32(var_0.a, var_0.a)))));
    var var_2 = arg_1.x;
    let var_3 = !(!arg_0);
    var_2 = countOneBits(~max(min(arg_1.x << (u_input.c % 32u), arg_1.x), _wgslsmith_add_i32(min(-29850i, 1i), reverseBits(arg_1.x))));
    return arg_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = 1u;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(arg_1, 11u)], Struct_1(true, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true)), -2147483647i >= _wgslsmith_div_i32(arg_2 & 0i, -u_input.b.x)), i32(-1i) * -(func_3(global2[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.xy, Struct_4(vec3<f32>(global3[_wgslsmith_index_u32(50315u, 28u)], global3[_wgslsmith_index_u32(u_input.c, 28u)], global3[_wgslsmith_index_u32(arg_1, 28u)])), true) | u_input.d), any(vec3<bool>(false, !any(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true)))), Struct_1(all(select(vec2<bool>(false, false), vec2<bool>(false, false), global2[_wgslsmith_index_u32(var_0, 20u)])) && select(true, global3[_wgslsmith_index_u32(arg_1, 28u)] >= -753f, arg_1 > arg_1), _wgslsmith_mult_u32(30478u, var_0) == 0u, select(true, true == all(vec4<bool>(true, true, true, true)), false)));
    var var_2 = ~vec4<u32>(87168u, 51543u, ~(~1u), arg_0.x);
    let var_3 = ~(-(u_input.b >> (arg_0 % vec3<u32>(32u))));
    var_2 = abs(firstLeadingBit(~(~vec4<u32>(42231u, 65647u, 0u, arg_0.x) ^ (vec4<u32>(1u, arg_0.x, u_input.c, 4294967295u) >> (vec4<u32>(arg_1, 24644u, var_2.x, arg_0.x) % vec4<u32>(32u))))));
    return global3[_wgslsmith_index_u32(94470u, 28u)];
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = vec4<f32>(global3[_wgslsmith_index_u32(firstLeadingBit(~arg_0.x), 28u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 28u)]), global3[_wgslsmith_index_u32((_wgslsmith_mod_u32(1u, ~u_input.c) & 0u) & _wgslsmith_add_u32(u_input.c, _wgslsmith_add_u32(4294967295u, arg_0.x)), 28u)], _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.c, ~0u, ~(~u_input.c)), ~u_input.c, 1i)));
    let var_1 = arg_0.x;
    var var_2 = Struct_3(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(u_input.d, 0i)) <= u_input.b.x, vec4<u32>(~(u_input.c ^ var_1), var_1, _wgslsmith_add_u32(u_input.c, arg_0.x), ~min(firstTrailingBit(24501u), 393u)), ~select(u_input.a, (vec3<i32>(8316i, 0i, u_input.d) ^ vec3<i32>(14537i, u_input.a.x, u_input.d)) >> (~vec3<u32>(0u, 1u, 4294967295u) % vec3<u32>(32u)), true), select(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), all(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), select(true, true, true) && true), true), var_1);
    let var_3 = var_2.b;
    var var_4 = global1[_wgslsmith_index_u32(u_input.c, 11u)];
    return _wgslsmith_f_op_f32(-546f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, global3[_wgslsmith_index_u32(var_3.x, 28u)])) + _wgslsmith_f_op_f32(-630f - var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(7626u, 28u)]), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c, 33373u))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 28u)])))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.c, 28u)])) + _wgslsmith_f_op_f32(f32(-1f) * -608f)), -266f, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1u, 28u)]))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global3[_wgslsmith_index_u32(u_input.c, 28u)], -1449f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(countOneBits(u_input.c), 28u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -1415f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 215f, global3[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, -1000f, 865f) * vec3<f32>(global3[_wgslsmith_index_u32(32454u, 28u)], -538f, global3[_wgslsmith_index_u32(u_input.c, 28u)]))))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.c, 11u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(542f, -1208f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.c, 28u)] - _wgslsmith_f_op_f32(-var_1.x)) * var_1.x)));
    global3 = array<f32, 28>();
    var var_4 = select(!(!vec3<bool>(var_2.a, false, false)), vec3<bool>(var_2.b, any(select(vec4<bool>(true, false, true, var_2.a), vec4<bool>(true, var_2.c, var_2.c, var_2.c), var_2.a & var_2.a)), !(!select(true, false, var_2.c))), !select(select(vec3<bool>(var_2.a, var_2.b, var_2.c), !vec3<bool>(false, false, var_2.b), var_2.c), select(select(vec3<bool>(var_2.c, true, var_2.a), vec3<bool>(false, false, true), var_2.c), select(vec3<bool>(var_2.c, var_2.b, var_2.c), vec3<bool>(false, var_2.b, var_2.a), var_2.c), all(vec4<bool>(var_2.b, true, var_2.a, true))), any(select(vec2<bool>(true, var_2.a), global2[_wgslsmith_index_u32(31346u, 20u)], var_2.a))));
    let var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, 851f, 1299f)), vec3<f32>(-1303f, global3[_wgslsmith_index_u32(u_input.c, 28u)], var_0.x)) + vec3<f32>(247f, var_1.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 28u)] - var_0.x))))));
    global0 = array<vec2<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~min(vec2<i32>(1i, -1i), vec2<i32>(u_input.a.x, 46480i))), -u_input.b.xx), ~(~(~4294967295u)) >> (countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(49084u, 40719u), vec2<u32>(u_input.c, u_input.c))) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a.x - 989f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, var_0.x))), _wgslsmith_f_op_f32(var_1.x * var_3), var_5.a.x)), _wgslsmith_clamp_i32(2147483647i, u_input.a.x, 1i));
}


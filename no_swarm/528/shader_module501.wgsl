struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(10206u, 47284u, 1u, 0u, 23144u, 0u, 0u, 23018u);

var<private> global1: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false));

var<private> global2: f32 = -485f;

var<private> global3: array<f32, 21> = array<f32, 21>(1356f, -904f, 907f, -1455f, 1871f, -377f, 574f, -842f, -1000f, -542f, 1252f, 1945f, 402f, 177f, -178f, 1183f, 1805f, 562f, -1756f, 313f, -1000f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = vec3<i32>(arg_2.b, 2147483647i, select(arg_0.e, _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.b, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_2.b, arg_0.e))), arg_2.b), arg_2.c.x));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-258f - global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 8u)], 21u)]))))), -366f, any(global1[_wgslsmith_index_u32(u_input.d.x, 22u)]) || arg_2.c.x));
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.d, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_1, -1399f), arg_0.d))))))));
    global3 = array<f32, 21>();
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1429f))));
    let var_1 = Struct_3(!vec4<bool>(any(vec4<bool>(arg_2, arg_2, true, true)), any(global1[_wgslsmith_index_u32(~0u, 22u)]), !select(false, arg_2, arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.d.x) <= _wgslsmith_f_op_f32(-arg_1.b.x)), firstLeadingBit(((arg_0.e ^ -2147483647i) << (~arg_1.c % 32u)) & 0i), select(select(arg_0.b, select(arg_0.b, !arg_0.b, false), !arg_2), select(arg_0.b, select(!arg_0.b, select(vec2<bool>(arg_0.b.x, true), arg_0.b, arg_0.b), all(vec2<bool>(true, arg_0.b.x))), !(!arg_2)), select(arg_0.b, vec2<bool>(!arg_2, all(vec3<bool>(arg_0.b.x, false, arg_2))), true)));
    let var_2 = arg_0;
    var var_3 = var_2;
    var var_4 = abs(-vec4<i32>(-u_input.b.x, var_3.e, -_wgslsmith_dot_vec3_i32(vec3<i32>(15585i, -8221i, 45450i), vec3<i32>(arg_0.e, var_1.b, arg_0.e)), -28111i));
    return -44885i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(~(1i << (1u % 32u)), ((u_input.b.x ^ u_input.b.x) | 28799i) & (u_input.b.x ^ 0i)), func_4(Struct_1(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(func_3(Struct_1(arg_1.x, vec2<bool>(false, true), 27711u, vec4<f32>(arg_1.x, arg_1.x, -152f, -1768f), u_input.b.x), 1000f, Struct_3(global1[_wgslsmith_index_u32(1u, 22u)], -1i, vec2<bool>(true, false))), 21u)], _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(69423u, 21u)]))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 738f)), abs(-21177i) & (u_input.b.x ^ 0i)), Struct_2(281f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zzz)), 46944u), true, ~1u), ~firstTrailingBit(u_input.b.x));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(~(max(u_input.b.x, -9536i) >> (1u % 32u)), ~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, 2147483647i), -u_input.b.x), -2147483647i, -5124i), min(~(-reverseBits(vec4<i32>(0i, var_0.x, -2147483647i, 15638i))), select(vec4<i32>(var_0.x, ~1i, countOneBits(0i), _wgslsmith_mod_i32(u_input.b.x, 4081i)), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, 1i) | vec4<i32>(-44733i, 1i, 0i, var_0.x)), arg_1.x != arg_1.x)));
    let var_2 = select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec2<bool>(true, true))), select(vec2<bool>(all(vec3<bool>(true, false, false)), any(global1[_wgslsmith_index_u32(arg_0.x, 22u)])), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), true), vec2<bool>(any(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, false, true)))), !select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_3 = var_0;
    var var_4 = false;
    return 1901f;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, arg_1.x), arg_1.xxw), ~(-4510i)) ^ -32183i, arg_1.x, ~arg_1.x) ^ ((-(arg_1.xww ^ arg_1.xwy) | vec3<i32>(_wgslsmith_sub_i32(2147483647i, arg_1.x), u_input.b.x >> (global0[_wgslsmith_index_u32(u_input.d.x, 8u)] % 32u), i32(-1i) * -1i)) & vec3<i32>(arg_1.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.b.x), arg_1.zx), _wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(arg_1.x, arg_1.x), arg_0.zy), abs(u_input.b))));
    return Struct_1(-339f, arg_0.yy, reverseBits(global0[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 8u)], 31620u), vec4<f32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13337u, 8u)], 8u)], 21u)], global3[_wgslsmith_index_u32(u_input.e, 21u)], global3[_wgslsmith_index_u32(19037u, 21u)], -769f))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 21u)] + global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), true))), global3[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f + 854f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 21u)]))))), 78691i >> (global0[_wgslsmith_index_u32(24624u, 8u)] % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, u_input.a.x | (global0[_wgslsmith_index_u32(52681u, 8u)] >> (u_input.c.x % 32u))), 22u)], -vec4<i32>(firstLeadingBit(~u_input.b.x), ~(-69572i), u_input.b.x, 0i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u << (~global0[_wgslsmith_index_u32(u_input.c.x, 8u)] % 32u), 21u)], 795f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d.xwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 350f, var_0.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1193f, var_0.d.x)) * vec3<f32>(-669f, -569f, 637f)))), 1u);
    var var_2 = select(vec4<bool>(all(vec2<bool>(var_0.b.x, select(true, true, false))), var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-2419f)), _wgslsmith_div_f32(846f, 220f), true)) == 119f, !(_wgslsmith_f_op_f32(step(var_1.a, var_0.d.x)) > global3[_wgslsmith_index_u32(1u, 21u)])), !select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.b.x, var_0.b.x, true, true), global1[_wgslsmith_index_u32(var_1.c, 22u)]), global1[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(var_0.c, 8u)]), 22u)], var_0.b.x), global1[_wgslsmith_index_u32(var_1.c, 22u)], var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, true));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(58084u, 21u)])), vec2<bool>(true, true), u_input.a.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(493f, -441f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-231f * 940f)), -844f))), var_0.e);
    let var_3 = firstLeadingBit(reverseBits(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.e, var_0.e, u_input.b.x, var_0.e), vec4<i32>(27863i, 1i, u_input.b.x, 18653i)) | firstTrailingBit(vec4<i32>(var_0.e, u_input.b.x, u_input.b.x, 1i)))));
    let var_4 = var_2.x;
    var var_5 = false;
    let var_6 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-416f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -554f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2421f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(27958u, 21u)]))), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.c, 21u)]), -497f, _wgslsmith_f_op_f32(trunc(-1014f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, 873f, var_1.b.x)), var_0.d.wzy)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~(~0u), var_1.c & 0u), vec3<u32>(var_0.c, u_input.c.x, countOneBits(41762u) >> (_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3552u, 8u)], 8u)])) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, 0i, reverseBits(i32(-1i) * -2147483647i), var_3.x), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, var_1.c, 1u), u_input.a)), ~0i);
}


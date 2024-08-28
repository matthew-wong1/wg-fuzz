struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 8> = array<i32, 8>(16257i, -15553i, -1i, 1i, 23289i, 32762i, -22994i, 24179i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> bool {
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = Struct_1(-14903i);
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-3372f, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x * 1058f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1871f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1347f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f) - -1407f))), arg_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-683f, -480f)), -199f)), arg_1.x, global0.x)));
    global1 = array<i32, 8>();
    global0 = select(vec2<bool>(arg_0.b, true), !(!vec2<bool>(!global0.x, global0.x)), !vec2<bool>(all(!vec4<bool>(false, arg_0.b, false, false)), true));
    var_0 = arg_2;
    return vec4<u32>(30011u, ~1u, _wgslsmith_add_u32(~firstTrailingBit(0u), firstLeadingBit(0u)), 1u);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = -reverseBits(select(vec3<i32>(-28102i, global1[_wgslsmith_index_u32(9797u, 8u)], arg_1), vec3<i32>(16709i, arg_1, arg_0.a), !global0.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(11432u, 0u, 0u), select(vec3<u32>(3632u, 4294967295u, 6985u), vec3<u32>(103762u, 68442u, 0u), true)) % vec3<u32>(32u)));
    global1 = array<i32, 8>();
    let var_1 = reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(~0u, _wgslsmith_mod_u32(0u, 55339u), 4294967295u, abs(1u)), func_4(Struct_3(vec4<i32>(30046i, var_0.x, global1[_wgslsmith_index_u32(74331u, 8u)], -1i) ^ vec4<i32>(10092i, -30129i, global1[_wgslsmith_index_u32(1u, 8u)], 1i), func_3(Struct_4(vec4<bool>(global0.x, global0.x, global0.x, false), global1[_wgslsmith_index_u32(15152u, 8u)], vec2<bool>(false, true), u_input.b, Struct_1(2147483647i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, 1176f, -2242f, 1192f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, 1779f, 903f, 636f))), arg_0, vec4<i32>(_wgslsmith_mod_i32(var_0.x, global1[_wgslsmith_index_u32(1u, 8u)]), firstTrailingBit(arg_0.a), var_0.x, -38401i))));
    global0 = !(!(!vec2<bool>(global0.x, !global0.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-543f))), -1077f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1253f + 1120f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-130f * _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-297f))))));
    return Struct_2(_wgslsmith_f_op_f32(-721f + 438f), _wgslsmith_mod_vec4_u32(select(var_1, ~vec4<u32>(var_1.x, 28746u, 22831u, 0u), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, global0.x), global0.x)) ^ max(var_1, vec4<u32>(var_1.x, 0u, var_1.x, 11897u)), _wgslsmith_clamp_vec4_u32(var_1 & select(var_1, vec4<u32>(var_1.x, 36020u, var_1.x, var_1.x), global0.x), min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 0u, var_1.x), var_1), ~var_1), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), var_1))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> f32 {
    global1 = array<i32, 8>();
    global0 = select(select(select(vec2<bool>(false, !arg_1), vec2<bool>(true, all(vec3<bool>(true, true, false))), all(select(arg_2.a.xzy, vec3<bool>(global0.x, true, arg_2.c.x), global0.x))), select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(all(arg_2.a), false || arg_2.a.x)), vec2<bool>(global0.x, true)), !vec2<bool>(!(4294967295u > arg_0.b.x), false), arg_0.a > 744f);
    global1 = array<i32, 8>();
    global0 = select(!arg_2.a.yz, select(select(!select(vec2<bool>(true, arg_1), vec2<bool>(true, true), arg_2.a.yx), arg_2.c, !all(arg_2.a)), !vec2<bool>(arg_0.a < 509f, 20111u == arg_0.b.x), select(select(!arg_2.a.xz, vec2<bool>(true, true), select(vec2<bool>(arg_2.a.x, false), arg_2.c, vec2<bool>(true, arg_2.a.x))), !(!arg_2.c), arg_2.a.zy)), arg_2.c);
    global0 = vec2<bool>(select(arg_1, arg_2.c.x, true) & (arg_1 | !arg_2.c.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2796i, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)]), firstLeadingBit(vec2<i32>(37033i, global1[_wgslsmith_index_u32(4294967295u, 8u)])))) != arg_2.e.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f * _wgslsmith_f_op_f32(-1965f + -135f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a - -1125f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_5(func_2(Struct_1(1i), arg_0.x), arg_1.x, arg_2)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = array<i32, 8>();
    let var_1 = func_3(Struct_4(!vec4<bool>(true, false, global0.x, arg_1.x), 4599i, select(select(arg_1.xy, vec2<bool>(arg_1.x, global0.x), vec2<bool>(arg_2.a.x, global0.x)), select(vec2<bool>(false, false), vec2<bool>(true, global0.x), vec2<bool>(false, arg_1.x)), false), arg_2.d | vec2<i32>(2147483647i, 0i), arg_2.e)) && arg_2.c.x;
    return firstLeadingBit(_wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(~var_0.b.x, 0u << (var_0.b.x % 32u))), ~(func_4(Struct_3(vec4<i32>(25297i, arg_0.x, 11437i, arg_0.x), arg_1.x), vec4<f32>(var_0.a, -701f, var_0.a, var_0.a), arg_2.e, vec4<i32>(32748i, global1[_wgslsmith_index_u32(99115u, 8u)], -1i, arg_2.d.x)).x | _wgslsmith_add_u32(var_0.b.x, var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    global0 = vec2<bool>(true, !any(select(vec3<bool>(global0.x, false, true), !vec3<bool>(false, global0.x, global0.x), select(global0.x, global0.x, false))));
    var var_0 = Struct_1(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(56678u, 7862u) | func_1(vec3<i32>(-14132i, global1[_wgslsmith_index_u32(22988u, 8u)], u_input.c), vec3<bool>(global0.x, false, global0.x), Struct_4(vec4<bool>(true, false, global0.x, true), -3700i, vec2<bool>(global0.x, false), vec2<i32>(global1[_wgslsmith_index_u32(13258u, 8u)], global1[_wgslsmith_index_u32(116058u, 8u)]), Struct_1(global1[_wgslsmith_index_u32(20295u, 8u)]))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(12114u, 4294967295u), vec2<u32>(1u, 54329u))), 8u)], global1[_wgslsmith_index_u32(select(min(firstLeadingBit(54408u), abs(0u)), 78426u, func_3(Struct_4(vec4<bool>(global0.x, false, global0.x, true), 2147483647i, vec2<bool>(global0.x, global0.x), vec2<i32>(0i, 40229i), Struct_1(2147483647i)))), 8u)]));
    global1 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~func_4(Struct_3(vec4<i32>(57852i, var_0.a, -501i, -27121i), global0.x), vec4<f32>(-686f, -162f, 563f, -1000f), Struct_1(global1[_wgslsmith_index_u32(3998u, 8u)]), vec4<i32>(var_0.a, global1[_wgslsmith_index_u32(43970u, 8u)], -2147483647i, u_input.b.x)).x), func_2(Struct_1(-3269i), _wgslsmith_clamp_i32(~(-18145i), -14695i, _wgslsmith_mult_i32(-8296i, -1i))).b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1202f * 910f), 376f), 69796u, _wgslsmith_div_u32(1u, 39868u));
}


struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 10> = array<u32, 10>(1u, 4294967295u, 0u, 1u, 1u, 11304u, 1u, 1u, 4294967295u, 42269u);

var<private> global2: array<Struct_5, 23>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    var var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, global1[_wgslsmith_index_u32(24699u, 10u)], reverseBits(global1[_wgslsmith_index_u32(92325u, 10u)])), ~max(~vec3<u32>(arg_2.x, 104912u, arg_2.x), ~vec3<u32>(global1[_wgslsmith_index_u32(0u, 10u)], 0u, 0u)));
    let var_1 = u_input.b.x > _wgslsmith_clamp_i32(u_input.d.x, -(i32(-1i) * -40706i), _wgslsmith_div_i32(u_input.d.x, -50570i));
    let var_2 = Struct_4(countOneBits(select(u_input.d, vec4<i32>(1i, arg_0.a.x, 28629i, -43889i) | ~vec4<i32>(u_input.b.x, 1i, 0i, 2147483647i), true)), _wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.b));
    var var_3 = vec2<bool>(var_1, select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(517f, arg_1)) * _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x)) == arg_1, u_input.b.x >= -2147483647i, true));
    let var_4 = _wgslsmith_f_op_f32(round(-430f));
    return -568f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f * -1251f) * _wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(2147483647i, 5351i, arg_1.x, -1i), vec4<f32>(-406f, -1000f, 1308f, -302f)), 1093f, vec2<u32>(1u, 4294967295u)))), -849f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2101f * -105f), -523f)) + -1521f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f + 1088f) - _wgslsmith_f_op_f32(1613f * 729f)), !any(vec3<bool>(true, true, true)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1988f)), -2045f)));
    var var_0 = Struct_2(Struct_1(~63129u, _wgslsmith_dot_vec3_i32(u_input.d.xyx, vec3<i32>(60109i, u_input.d.x, arg_1.x) | u_input.d.xzy), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c, arg_0.x), vec2<u32>(4294967295u, u_input.c), true), arg_0 | u_input.a), 10u)] <= _wgslsmith_div_u32(1u, 7190u)), _wgslsmith_mod_u32(min(reverseBits(u_input.c) << (~21068u % 32u), reverseBits(u_input.a.x | 31803u)), ~4294967295u));
    global1 = array<u32, 10>();
    return _wgslsmith_f_op_f32(755f - 328f);
}

fn func_4(arg_0: f32) -> f32 {
    let var_0 = vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, false)))), true, global1[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_clamp_u32(0u, ~global1[_wgslsmith_index_u32(1u, 10u)], 4294967295u), 10u)] <= max(18648u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(58851u, 10u)], u_input.a.x)));
    global0 = _wgslsmith_f_op_f32(select(1000f, 193f, arg_0 == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))));
    global2 = array<Struct_5, 23>();
    var var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~countOneBits(52738u)), 10u)], 23u)];
    return -597f;
}

fn func_1(arg_0: u32) -> bool {
    global0 = -477f;
    global0 = _wgslsmith_f_op_f32(trunc(-209f));
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(vec2<u32>(~(~1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 10u)], min(global1[_wgslsmith_index_u32(26720u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))), ~u_input.d.yz))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !func_1(firstTrailingBit(19356u)), true, true && (~u_input.c > 30281u));
    var var_1 = select(select(select(vec4<bool>(all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), any(var_0.zw), any(var_0.yw), !var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, false)), select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, false, true), var_0.x)), !select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x && var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, true || func_1(~global1[_wgslsmith_index_u32(0u, 10u)]), 79325u >= global1[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<bool>(true, var_0.x, true, all(vec4<bool>(var_0.x, true, !var_0.x, all(vec2<bool>(true, var_0.x))))));
    let var_2 = vec3<u32>(~min(global1[_wgslsmith_index_u32(~abs(53463u), 10u)], reverseBits(firstLeadingBit(global1[_wgslsmith_index_u32(23395u, 10u)]))), 32453u, select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(45136u, 0u ^ global1[_wgslsmith_index_u32(103740u, 10u)]) << (~(~44514u) % 32u), 10u)], select(reverseBits(1u), countOneBits(_wgslsmith_add_u32(34560u, 0u)), any(!vec4<bool>(var_0.x, var_1.x, var_1.x, var_1.x))), true));
    var var_3 = Struct_4(vec4<i32>(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b.x, 5304i, 0i), vec3<i32>(u_input.b.x, 17659i, -42109i)), -vec3<i32>(1403i, u_input.b.x, -2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.d.ww, u_input.d.ww), 2147483647i), -1i, ~_wgslsmith_sub_i32(u_input.d.x, u_input.b.x)), u_input.d.x, ~u_input.d.x & (i32(-1i) * -u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-847f, -101f, -1052f, -170f), vec4<f32>(808f, 1956f, 569f, 391f), false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), -863f, -126f, _wgslsmith_f_op_f32(ceil(601f)))))));
    var_0 = !select(vec4<bool>(true, true, true, true), select(!(!vec4<bool>(false, var_1.x, false, var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, true, var_1.x)), select(vec4<bool>(false, false, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, true), var_1.x && false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(1371f - var_3.b.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.x, var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(-1i, 0i, -1i, var_3.a.x), var_3.b), var_3.b.x, vec2<u32>(51917u, 4294967295u))), 407f)), var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + -1387f) * _wgslsmith_f_op_f32(abs(848f))) + var_3.b.x)));
}


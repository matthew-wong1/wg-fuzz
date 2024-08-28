struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-417f, 156f, -1278f, -1188f), vec4<f32>(-543f, 1038f, 721f, 1403f), vec4<f32>(862f, -1417f, 992f, -1441f), vec4<f32>(795f, -1080f, 858f, -644f), vec4<f32>(279f, -1847f, 597f, -101f), vec4<f32>(1144f, 1814f, -2491f, -1312f), vec4<f32>(1652f, 1540f, -1031f, -355f), vec4<f32>(299f, -519f, -1075f, 930f), vec4<f32>(1065f, 1165f, -1722f, 780f), vec4<f32>(1000f, 436f, -154f, 1735f), vec4<f32>(-1799f, 1117f, -521f, -531f), vec4<f32>(144f, 1000f, 1973f, -575f));

var<private> global3: array<i32, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global2 = array<vec4<f32>, 12>();
    global3 = array<i32, 21>();
    global1 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(arg_1.x >> (~0u % 32u), arg_1.x), i32(-1i) * -(~u_input.b.x)), abs(vec3<i32>(global3[_wgslsmith_index_u32(firstTrailingBit(~73163u), 21u)], -56860i, 1i)));
    global2 = array<vec4<f32>, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(~17849u, 12u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(31003u, 12u)])), global2[_wgslsmith_index_u32(select(0u, 131819u, global0[_wgslsmith_index_u32(1u, 19u)]), 12u)], !vec4<bool>(false, global0[_wgslsmith_index_u32(72155u, 19u)], true, false))))) - global2[_wgslsmith_index_u32(4294967295u, 12u)]));
    return ~24224i ^ global1.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    global1 = countOneBits(vec3<i32>(1593i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(reverseBits(abs(4294967295u)), 21u)], func_3(arg_1.a.x, -global1.xy)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.x, global1.x), reverseBits(global1.x)), abs(global1.x) & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(65451u, arg_1.b)), 21u)])));
    global2 = array<vec4<f32>, 12>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-428f + arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1396f * arg_1.a.x) + -2097f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-855f - 1855f)), -145f)), arg_1.a.x), arg_0, false);
    global2 = array<vec4<f32>, 12>();
    global2 = array<vec4<f32>, 12>();
    return global3[_wgslsmith_index_u32(arg_0, 21u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    global1 = min(reverseBits(countOneBits(vec3<i32>(-27550i, -40999i, u_input.a.x))), vec3<i32>(func_2(abs(0u), Struct_1(vec4<f32>(-1001f, arg_1, arg_1, arg_1), 1u, global0[_wgslsmith_index_u32(30688u, 19u)])), -193i, -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -31244i))) >> (vec3<u32>(~(~10127u), _wgslsmith_div_u32(min(11181u, 52517u), 4294967295u), 1u) % vec3<u32>(32u)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(2177f, arg_1), _wgslsmith_f_op_f32(-arg_1)) * arg_1)), arg_1);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(483f, arg_1), vec2<f32>(532f, 156f), vec2<bool>(true, true)))))))));
    global2 = array<vec4<f32>, 12>();
    global3 = array<i32, 21>();
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = ~(-vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.wyy, vec3<i32>(-2147483647i, global1.x, global1.x)), -18330i, func_3(_wgslsmith_f_op_f32(603f + arg_0.a.x), ~global1.zz)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), 281f, _wgslsmith_f_op_f32(-arg_2.x), 1095f)), 91310u, true);
    global0 = array<bool, 19>();
    global2 = array<vec4<f32>, 12>();
    var var_2 = global2[_wgslsmith_index_u32(~arg_1.x, 12u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(165f * arg_0.a.x), _wgslsmith_f_op_f32(-var_2.x)), 808f)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(~arg_0.b, _wgslsmith_div_u32(arg_1.x, arg_1.x), abs(var_1.b)), vec3<u32>(min(85723u, 1u), 43519u, 0u), !vec3<bool>(true, arg_0.c, arg_0.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.b, arg_0.b, 34103u), vec3<u32>(arg_1.x, arg_1.x, 44499u), true), min(vec3<u32>(4294967295u, arg_1.x, arg_0.b), vec3<u32>(1u, arg_0.b, 1u))), _wgslsmith_sub_u32(arg_1.x, 48477u), 4294967295u)), any(select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(arg_1.x, 19u)])), !(!vec4<bool>(false, false, var_1.c, true)), select(select(vec4<bool>(true, false, var_1.c, false), vec4<bool>(arg_0.c, true, true, false), arg_0.c), vec4<bool>(var_1.c, false, var_1.c, true), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 19u)], true, var_1.c, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(72810u, 38514u), 12u)], global2[_wgslsmith_index_u32(~52645u, 12u)])), ~(~1u), !global0[_wgslsmith_index_u32(func_1(!vec4<bool>(false, global0[_wgslsmith_index_u32(55284u, 19u)], true, false), _wgslsmith_div_f32(1026f, -1853f)), 19u)]), firstLeadingBit(countOneBits(~vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f * 678f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1440f, 2575f), -217f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f + -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1322f))))) * global2[_wgslsmith_index_u32(4294967295u, 12u)]));
    let var_1 = func_4(func_4(Struct_1(var_0.a, _wgslsmith_mult_u32(~var_0.b, var_0.b), var_0.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b, 1u), vec2<u32>(var_0.b, var_0.b), vec2<u32>(0u, 0u)), vec2<u32>(47891u, var_0.b), ~vec2<u32>(var_0.b, var_0.b)) << (~(vec2<u32>(var_0.b, var_0.b) ^ vec2<u32>(113489u, var_0.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)), vec4<f32>(-674f, _wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(var_0.a.x + 200f), -1086f), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, var_0.c)))))), ~(~(~abs(vec2<u32>(var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(4294967295u, 12u)], var_0.a) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1094f, -429f, var_0.a.x, -1000f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_0.a.x))) * vec4<f32>(var_1.a.x, 451f, -138f, 1f))), abs(36670u), !all(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.b ^ 50339u, 19u)], select(var_0.c, var_1.c, true), true)));
    let var_3 = u_input.b;
    var var_4 = var_1.c;
    let var_5 = !(!all(vec3<bool>(true, any(vec4<bool>(false, var_1.c, var_2.c, var_1.c)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(38882u, 1u >> (_wgslsmith_mult_u32(0u, 1382u) % 32u), ~113453u, var_1.b)), ~1u);
}


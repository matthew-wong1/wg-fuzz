struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: array<bool, 3>;

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(0u, 0u, 4294967295u, 78663u), vec4<u32>(87506u, 4294967295u, 67231u, 34646u), vec4<u32>(23368u, 1u, 52370u, 142884u), vec4<u32>(4294967295u, 101428u, 1u, 4294967295u), vec4<u32>(0u, 41935u, 4294967295u, 75749u), vec4<u32>(1u, 4294967295u, 4294967295u, 74354u), vec4<u32>(0u, 4294967295u, 4294967295u, 7916u), vec4<u32>(4294967295u, 2012u, 0u, 54660u), vec4<u32>(1u, 22234u, 0u, 19913u), vec4<u32>(25126u, 1u, 0u, 0u), vec4<u32>(57549u, 4294967295u, 12552u, 10021u), vec4<u32>(16932u, 307u, 2196u, 12162u), vec4<u32>(4294967295u, 60569u, 64578u, 36064u), vec4<u32>(16609u, 0u, 1u, 53651u), vec4<u32>(1u, 0u, 5296u, 38944u), vec4<u32>(43884u, 74800u, 0u, 14870u), vec4<u32>(4294967295u, 46769u, 12596u, 58733u), vec4<u32>(4294967295u, 0u, 60477u, 1u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(7708u, 0u, 1u, 0u), vec4<u32>(13960u, 9405u, 1u, 4294967295u), vec4<u32>(1u, 37588u, 4294967295u, 0u), vec4<u32>(4294967295u, 66894u, 4294967295u, 70868u), vec4<u32>(29141u, 4294967295u, 34805u, 27768u), vec4<u32>(4294967295u, 4294967295u, 0u, 29302u), vec4<u32>(0u, 5209u, 15186u, 0u), vec4<u32>(1u, 4294967295u, 53163u, 6416u), vec4<u32>(0u, 0u, 0u, 20828u), vec4<u32>(0u, 0u, 41669u, 4294967295u), vec4<u32>(47097u, 5346u, 24121u, 1u));

var<private> global4: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(4294967295u, 4294967295u, 1u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    global4 = array<vec3<u32>, 1>();
    let var_0 = Struct_1(~(~firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.a))), vec4<u32>(1u, 14119u, ~arg_0, u_input.a), global2[_wgslsmith_index_u32(firstLeadingBit(arg_0), 3u)]);
    let var_1 = ~vec3<i32>(-4734i, global0.a, 1i);
    global2 = array<bool, 3>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(924f, -936f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-763f, 1107f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2159f, -1482f), vec2<f32>(532f, -477f))), any(vec3<bool>(true, false, true))))))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(49648u, 18490u, 50244u)), ~vec3<u32>(4294967295u, var_0.b.x, var_0.a)), _wgslsmith_dot_vec3_u32(~u_input.b.yzz, global4[_wgslsmith_index_u32(22326u, 1u)]), 61874u), var_0.b, all(vec3<bool>(global2[_wgslsmith_index_u32(~28754u, 3u)], true, false))), true, Struct_1(62874u, vec4<u32>(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(38256u, 1u)], var_0.b.yxw)), 1u, u_input.b.x, var_0.a), true), reverseBits(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(29839i, 0i, 0i, var_1.x)), vec4<i32>(-87418i, ~global0.a, 1i << (var_0.a % 32u), arg_1.a), ~vec4<i32>(global0.a, 0i, -2147483647i, global0.a))));
    return countOneBits(var_1.zz);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(u_input.a, global3[_wgslsmith_index_u32(countOneBits(abs(~30322u)), 30u)], global2[_wgslsmith_index_u32(1u, 3u)]);
    global3 = array<vec4<u32>, 30>();
    let var_1 = -vec2<i32>(-1i, -global0.a) & _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(u_input.d, u_input.c))), func_3(~(~u_input.a), Struct_3(78339i)), _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(-31760i, 27747i)), (vec2<i32>(2147483647i, u_input.d) | vec2<i32>(u_input.c, global0.a)) ^ vec2<i32>(global0.a, 0i), vec2<i32>(i32(-1i) * -14074i, u_input.c)));
    global0 = Struct_3(~65402i);
    var var_2 = true;
    return Struct_3(_wgslsmith_mult_i32(((2147483647i ^ global0.a) >> (4294967295u % 32u)) | ~(-2147483647i), _wgslsmith_div_i32(func_3(reverseBits(70695u), Struct_3(var_1.x)).x, -13038i)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) * _wgslsmith_f_op_f32(-arg_1.a.x)) - 1000f)));
    var var_1 = func_2();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_1.a), arg_1.d, all(vec3<bool>(arg_3.c, true, false)), arg_2, vec4<i32>(_wgslsmith_clamp_i32(-17768i, ~(-2147483647i), func_2().a) & _wgslsmith_div_i32(firstTrailingBit(u_input.c), _wgslsmith_mult_i32(18522i, 16427i)), global0.a, arg_1.e.x, func_3(u_input.a, func_2()).x));
    let var_3 = (!(!(!global2[_wgslsmith_index_u32(u_input.b.x, 3u)])) & (any(vec2<bool>(arg_2.c, global2[_wgslsmith_index_u32(u_input.a, 3u)])) != true)) && true;
    var_1 = func_2();
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(firstTrailingBit(u_input.a), 4294967295u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1014f, 1155f), _wgslsmith_f_op_vec2_f32(func_1(4294967295u, Struct_2(vec2<f32>(-857f, 415f), Struct_1(1u, vec4<u32>(4294967295u, u_input.b.x, u_input.a, 67246u), false), true, Struct_1(u_input.b.x, u_input.b, global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec4<i32>(-526i, u_input.c, 34798i, u_input.c)), Struct_1(8334u, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], global2[_wgslsmith_index_u32(85999u, 3u)]), Struct_1(u_input.b.x, vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b.x), global2[_wgslsmith_index_u32(u_input.a, 3u)]))))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-772f, -586f) + _wgslsmith_div_vec2_f32(vec2<f32>(2311f, 824f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-855f, 217f) - vec2<f32>(-1067f, 281f))))), Struct_1(u_input.a, ~((vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 42232u) >> (vec4<u32>(7035u, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u))) ^ (vec4<u32>(u_input.b.x, u_input.a, 144312u, 0u) | vec4<u32>(u_input.a, u_input.b.x, u_input.a, 20894u))), global2[_wgslsmith_index_u32(4294967295u, 3u)]), true, Struct_1(~(~_wgslsmith_mod_u32(u_input.a, u_input.a)), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 73700u), vec4<u32>(0u, 0u, 0u, u_input.b.x)), 30u)] ^ abs(~global3[_wgslsmith_index_u32(u_input.a, 30u)]), global2[_wgslsmith_index_u32(u_input.b.x, 3u)]), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.c, 31745i), 2147483647i, -1i, global0.a & global0.a), ~vec4<i32>(global0.a, global0.a, u_input.d, 0i), -(vec4<i32>(12211i, -8334i, -57318i, -16538i) | vec4<i32>(2147483647i, global0.a, u_input.d, global0.a))));
    var var_2 = _wgslsmith_sub_i32(-28431i, 0i);
    let var_3 = (~((global0.a ^ -31940i) << (12000u % 32u)) >> (4294967295u % 32u)) < -(countOneBits(global0.a) ^ _wgslsmith_mult_i32(select(var_1.e.x, 32334i, global2[_wgslsmith_index_u32(var_1.b.a, 3u)]), 1i));
    let var_4 = vec4<i32>(26841i, var_1.e.x, var_1.e.x, global0.a) >> (vec4<u32>(var_1.d.b.x, 0u, firstLeadingBit(var_1.b.b.x) >> (var_1.b.a % 32u), 57588u) % vec4<u32>(32u));
    var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-select(var_4, firstLeadingBit(var_1.e), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_1.b.b.x, 3u)], false), vec4<bool>(global2[_wgslsmith_index_u32(57322u, 3u)], true, false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], var_1.c, var_3))), select(abs(-var_1.e), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(var_4, var_1.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(-7924i, var_1.e.x, -2147483647i, var_4.x), vec4<i32>(var_1.e.x, u_input.d, -31263i, var_4.x), var_4), vec4<i32>(var_4.x, 1i, u_input.c, 24640i)), true)), vec3<i32>(countOneBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.x, -26767i, u_input.c), vec3<i32>(global0.a, u_input.d, global0.a)))), var_4.x, u_input.d), -1045f, 0u, max(~var_1.d.a, _wgslsmith_mult_u32(u_input.b.x, reverseBits(var_1.b.b.x))) & var_1.b.b.x);
}


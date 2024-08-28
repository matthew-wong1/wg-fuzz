struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(962f, true, -8467i, vec2<i32>(1i, 17147i)), Struct_2(-440f, true, 35283i, vec2<i32>(7746i, -38622i)), Struct_2(-964f, false, -28409i, vec2<i32>(-8588i, -10756i)), Struct_2(352f, false, 1i, vec2<i32>(i32(-2147483648), 13308i)), Struct_2(1389f, false, 61981i, vec2<i32>(i32(-2147483648), -1i)), Struct_2(248f, false, 2147483647i, vec2<i32>(-60101i, 2147483647i)));

var<private> global2: vec3<f32>;

var<private> global3: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(9238u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(50307u, 9213u), vec2<u32>(14167u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 12045u), vec2<u32>(0u, 0u), vec2<u32>(49073u, 0u));

var<private> global4: array<u32, 11> = array<u32, 11>(4294967295u, 4294967295u, 49781u, 1u, 0u, 1u, 26757u, 0u, 1u, 0u, 73116u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = -1000f;
    var var_1 = Struct_1(max(vec2<u32>(1u, 41689u), abs(global3[_wgslsmith_index_u32(1u, 8u)] ^ global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 11u)], 8u)])) & abs(countOneBits(vec2<u32>(38621u, 35390u) << (vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(arg_0.a.x, 11u)]) % vec2<u32>(32u)))));
    let var_2 = global1[_wgslsmith_index_u32(arg_0.a.x, 6u)];
    var var_3 = !vec3<bool>(all(vec4<bool>(var_2.b && false, !var_2.b, true, var_2.b)), all(vec3<bool>(4294967295u >= arg_0.a.x, true, true)), true);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, countOneBits(var_2.c), ~countOneBits(1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-63122i, -38003i, -2147483647i), ~vec3<i32>(-4329i, var_2.c, var_2.d.x)), vec3<i32>(firstTrailingBit(var_2.d.x), -2022i, 28403i))), var_2.c, i32(-1i) * -21135i);
    return var_4.yx;
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = countOneBits(func_3(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 8u)])));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(357f, global2.x, 1000f, arg_0.a))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, global2.x, 1313f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 387f, arg_0.a, arg_0.a))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-725f)), _wgslsmith_f_op_f32(-2528f - arg_0.a), 1948f, _wgslsmith_f_op_f32(abs(177f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1681f, global2.x, global2.x, global2.x)))), select(select(vec4<bool>(false, false, arg_0.b, false), vec4<bool>(arg_0.b, arg_0.b, false, false), false), !vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), global2.x >= global2.x)))));
    var var_2 = _wgslsmith_mod_u32(firstLeadingBit(u_input.a), firstTrailingBit(firstLeadingBit(1u)) >> (1u % 32u));
    global4 = array<u32, 11>();
    let var_3 = _wgslsmith_mult_u32(u_input.a, global4[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(global4[_wgslsmith_index_u32(19547u, 11u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(95078u, global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(23619u, 11u)]), vec3<u32>(u_input.a, u_input.a, 80446u))), reverseBits(~72869u)), 61644u), 11u)]);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.wxx))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = ~(select(vec2<i32>(abs(-2147483647i), -28379i), -vec2<i32>(-15578i, -14283i) >> (~vec2<u32>(arg_0.x, 87044u) % vec2<u32>(32u)), vec2<bool>(true, true)) & countOneBits(firstLeadingBit(~vec2<i32>(-3581i, -2147483647i))));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -399f)) * _wgslsmith_f_op_vec3_f32(func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -730f), true, _wgslsmith_clamp_i32(var_0.x, 3777i, -42193i), select(vec2<i32>(0i, var_0.x), vec2<i32>(0i, -11935i), true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1770f, -775f, 140f)));
    var var_1 = arg_1;
    global1 = array<Struct_2, 6>();
    let var_2 = !(!all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    return _wgslsmith_add_i32(~(~var_0.x), var_0.x ^ var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit((~(vec3<u32>(global4[_wgslsmith_index_u32(57817u, 11u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 1u) | vec3<u32>(u_input.a, 0u, 68147u)) ^ ~(vec3<u32>(1u, 1u, 1u) | vec3<u32>(1u, 1u, u_input.a))) & max(vec3<u32>(20989u, 104891u, 1u) | vec3<u32>(0u, 0u, global4[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<u32>(22040u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 11u)], 11u)]) | vec3<u32>(84068u, 21193u, u_input.a)));
    let var_1 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-global2.x), true, reverseBits(0i), vec2<i32>(-1i, _wgslsmith_mod_i32(-7962i, func_1(var_0, Struct_1(vec2<u32>(12088u, u_input.a))) & max(0i, 19606i))));
    global3 = array<vec2<u32>, 8>();
    global0 = 4294967295u;
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), var_2.a)), vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-global2.x), 361f)));
    var var_3 = !vec4<bool>(true, all(vec2<bool>(var_2.d.x >= var_2.c, any(vec3<bool>(var_1, var_2.b, var_2.b)))), !all(select(vec3<bool>(var_2.b, false, var_1), vec3<bool>(false, var_1, var_1), var_2.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~abs(37575i), func_1(max(vec3<u32>(0u, 0u, var_0.x), vec3<u32>(4294967295u, u_input.a, u_input.a)), Struct_1(vec2<u32>(global4[_wgslsmith_index_u32(1u, 11u)], 65637u)))));
}


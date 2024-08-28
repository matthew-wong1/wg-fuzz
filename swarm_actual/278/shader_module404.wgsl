struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(48827u, 7528u, 0u, 10420u, 0u, 30687u, 4294967295u, 0u, 24671u, 4294967295u, 14425u, 89615u, 4294967295u, 38368u, 17297u, 4294967295u, 1u, 35240u, 1u, 10508u, 1108u, 700u, 44760u, 15805u, 12196u, 1613u, 5783u);

var<private> global1: array<Struct_2, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<i32>) -> u32 {
    var var_0 = u_input.a.zx;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -828f), 615f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1425f, -565f)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(476f, 420f)))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -608f);
    var_2 = -1423f;
    var_0 = u_input.a.zy;
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15459u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], 27u)], 4294967295u), ~(~vec4<u32>(4294967295u, 29231u, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53579u, 27u)], 27u)])), arg_1), ~vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 27u)]), ~76102u, ~global0[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_mult_u32(23751u, global0[_wgslsmith_index_u32(48498u, 27u)]))), 27u)];
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = arg_1.b.zy;
    global1 = array<Struct_2, 4>();
    global0 = array<u32, 27>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~13172u << (arg_1.e.d % 32u), abs(~abs(1442u))), (((vec2<u32>(63108u, 11771u) ^ vec2<u32>(37736u, arg_1.a.d)) ^ ~vec2<u32>(arg_1.e.d, 45469u)) | countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(46090u, 27u)], arg_1.a.d))) ^ _wgslsmith_sub_vec2_u32(select(abs(vec2<u32>(0u, global0[_wgslsmith_index_u32(arg_1.e.d, 27u)])), vec2<u32>(arg_1.e.d, arg_1.e.d) << (vec2<u32>(38406u, global0[_wgslsmith_index_u32(15708u, 27u)]) % vec2<u32>(32u)), arg_2), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 0u), countOneBits(vec2<u32>(1u, 0u)), firstTrailingBit(vec2<u32>(arg_1.a.d, global0[_wgslsmith_index_u32(4294967295u, 27u)])))));
    global0 = array<u32, 27>();
    return ~(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.e.a, u_input.a.x), u_input.a.xz) | vec2<i32>(u_input.a.x, -63090i), _wgslsmith_mult_vec2_i32(max(u_input.a.yz, vec2<i32>(u_input.a.x, arg_0)), vec2<i32>(arg_0, 49984i) | u_input.a.yw)) | _wgslsmith_mod_vec2_i32(arg_1.c.zw, select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-2147483647i, u_input.a.x)), -vec2<i32>(0i, u_input.a.x), true)));
}

fn func_2() -> vec2<u32> {
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    var var_0 = Struct_2(Struct_1(firstTrailingBit(-2147483647i), vec2<bool>(_wgslsmith_f_op_f32(floor(1724f)) < 803f, all(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x) ^ func_3(1i, Struct_2(Struct_1(37157i, vec2<bool>(false, false), 2147483647i, 20440u), vec3<bool>(true, false, false), u_input.a, vec4<f32>(1013f, -274f, 437f, -990f), Struct_1(-2147483647i, vec2<bool>(true, false), 1i, global0[_wgslsmith_index_u32(4294967295u, 27u)])), true, vec3<bool>(false, false, false)), _wgslsmith_mult_vec2_i32(u_input.a.wz, vec2<i32>(54592i, u_input.a.x))), global0[_wgslsmith_index_u32(0u, 27u)]), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), ~(-(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -24159i) >> (countOneBits(vec4<u32>(44172u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 4294967295u, 39367u)) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-240f, 829f) - 1f) * _wgslsmith_f_op_f32(-1000f + -1356f)), -835f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(777f - -1183f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(418f)), -677f, true))), -1758f), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 0i), _wgslsmith_sub_i32(2147483647i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a.wyy, u_input.a.zyw), 30108i), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(1i, 0i), u_input.a.x, 1i)), vec2<bool>(any(vec2<bool>(true, true)), false), abs(~abs(1i)), 4294967295u));
    var_0 = Struct_2(Struct_1(u_input.a.x, !select(!var_0.b.xz, var_0.b.yx, select(vec2<bool>(var_0.a.b.x, true), var_0.e.b, vec2<bool>(var_0.b.x, false))), -2147483647i, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(var_0.e.d, 27u)], 35507u, global0[_wgslsmith_index_u32(1u, 27u)])), vec3<u32>(0u, 0u, var_0.e.d) << (vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(4294967295u, 27u)]) % vec3<u32>(32u))) | ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(3536u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21467u, 27u)], 27u)])), select(vec3<bool>(any(!var_0.b), var_0.e.b.x, var_0.b.x), var_0.b, !vec3<bool>(!var_0.b.x, var_0.b.x, all(var_0.b))), max(vec4<i32>(u_input.a.x, ~(-u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_0.e.a, 9423i), vec3<i32>(var_0.c.x, 28068i, var_0.c.x)), vec3<i32>(0i, 52678i, 64699i) | var_0.c.wxy), _wgslsmith_add_i32(~1318i, -u_input.a.x)), ~(-var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1309f)))), _wgslsmith_div_f32(1388f, var_0.d.x), _wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + 184f)))), Struct_1(u_input.a.x, vec2<bool>(true, true), var_0.e.a, global0[_wgslsmith_index_u32(~6688u, 27u)]));
    var_0 = Struct_2(var_0.e, select(!select(vec3<bool>(false, var_0.a.b.x, false), var_0.b, all(vec4<bool>(true, var_0.a.b.x, true, var_0.b.x))), !(!var_0.b), _wgslsmith_f_op_f32(1221f * _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1527f)))), ~vec4<i32>(~(~74326i), select(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), _wgslsmith_sub_i32(-1i, var_0.e.a), var_0.b.x), 1295i, firstTrailingBit(func_3(-18911i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 4u)], false, var_0.b).x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 2112f, -252f, var_0.d.x)), Struct_1(-1i, var_0.e.b, firstTrailingBit(_wgslsmith_sub_i32(14391i, var_0.a.c) << (~4294967295u % 32u)), _wgslsmith_mult_u32(select(~var_0.a.d, 35056u, select(var_0.a.b.x, true, false)), firstLeadingBit(_wgslsmith_clamp_u32(42263u, 24601u, global0[_wgslsmith_index_u32(66190u, 27u)])))));
    return _wgslsmith_div_vec2_u32(~select(vec2<u32>(_wgslsmith_clamp_u32(var_0.a.d, var_0.a.d, var_0.e.d), var_0.a.d | 9040u), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4525u, 24832u), vec2<u32>(32162u, var_0.a.d), vec2<u32>(0u, var_0.e.d))), var_0.a.b.x), vec2<u32>(~0u, 180610u) | ~vec2<u32>(var_0.a.d, global0[_wgslsmith_index_u32(abs(var_0.a.d), 27u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 4>();
    global0 = array<u32, 27>();
    let var_0 = func_1(false, true, !select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), u_input.a | u_input.a);
    global0 = array<u32, 27>();
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(), _wgslsmith_mult_i32(func_3(~(-2147483647i), Struct_2(Struct_1(1558i, vec2<bool>(false, true), u_input.a.x, var_0), vec3<bool>(true, false, true), abs(u_input.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-913f, -1000f, -900f, -1231f))), Struct_1(-7435i, vec2<bool>(false, false), 1i, var_0)), true || (u_input.a.x < -2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))).x, 2318i));
}


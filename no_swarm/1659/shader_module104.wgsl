struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(107f, -1000f, 1921f, -2702f), vec4<f32>(1000f, -158f, 834f, -709f), vec4<f32>(-632f, -1705f, 1127f, -172f));

var<private> global1: Struct_1;

var<private> global2: array<f32, 28> = array<f32, 28>(1248f, -1000f, -756f, 754f, 2266f, -1244f, 1951f, 986f, 945f, 222f, 662f, 1062f, -1156f, 2047f, -470f, -239f, -622f, -623f, -559f, -686f, 458f, -1015f, 1000f, -1452f, -463f, -271f, 1061f, -1039f);

var<private> global3: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<vec4<f32>, 3>();
    var var_0 = (true && (arg_1.d > _wgslsmith_f_op_f32(f32(-1f) * -651f))) && !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)));
    var var_1 = vec2<bool>(false, (!any(vec2<bool>(false, true)) | (_wgslsmith_f_op_f32(max(global1.a, arg_0.a)) == -1720f)) | false);
    return arg_0.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(14832u);
    global3 = var_0;
    let var_1 = 37560u;
    global2 = array<f32, 28>();
    var var_2 = var_1;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-688f, _wgslsmith_f_op_f32(f32(-1f) * -331f)))), global1.a), vec4<i32>(func_3(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, var_1, 1u), 28u)], global1.b, 46754i, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1, 28u)] + global2[_wgslsmith_index_u32(var_0, 28u)]), reverseBits(global1.e)), Struct_1(-959f, abs(global1.b), ~u_input.a.x, _wgslsmith_f_op_f32(global1.d * -1047f), vec3<i32>(-2147483647i, global1.b.x, -1i))), _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(24304i, 1i, 27287i, global1.c), global1.b, false), firstLeadingBit(global1.b), vec4<bool>(true, true, false, false)), _wgslsmith_add_vec4_i32(global1.b, -global1.b)), -1i, global1.c), -(~_wgslsmith_dot_vec2_i32(max(u_input.a, vec2<i32>(u_input.a.x, 1i)), firstLeadingBit(vec2<i32>(global1.e.x, global1.c)))), _wgslsmith_f_op_f32(floor(-772f)), _wgslsmith_add_vec3_i32(~vec3<i32>(~14253i, u_input.a.x, abs(u_input.a.x)), vec3<i32>(~_wgslsmith_clamp_i32(global1.c, 355i, u_input.a.x), reverseBits(~u_input.a.x), -2147483647i)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(~(~8374u), 1u << (select(38940u, 1u, true) % 32u)), min(19458u, ~(~17086u))), firstLeadingBit(vec3<u32>(~_wgslsmith_add_u32(1u, 0u), _wgslsmith_mod_u32(1u, 132222u), min(abs(25244u), _wgslsmith_mult_u32(58534u, 1u)))));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.x, -(global1.b.x << (~var_0 % 32u)), global1.e.x), min(arg_0.e, ~_wgslsmith_clamp_vec3_i32(~arg_0.b.zzz, vec3<i32>(26579i, u_input.a.x, global1.e.x) >> (vec3<u32>(0u, var_0, var_0) % vec3<u32>(32u)), vec3<i32>(global1.b.x, 28192i, arg_0.e.x))), vec3<i32>(1i, 56170i, -1i));
    let var_2 = -255f;
    let var_3 = ~_wgslsmith_clamp_u32(~abs(var_0), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 42522u), vec2<u32>(26929u, 31572u), vec2<bool>(true, true)), reverseBits(vec2<u32>(var_0, 1u))), ~abs(4294967295u)) > var_0;
    var var_4 = ~(~(1i & u_input.a.x) >> (_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(var_0, 19135u, var_0, 0u)), firstTrailingBit(vec4<u32>(var_0, var_0, var_0, 19973u))) % 32u));
    return func_2();
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = func_4(func_2());
    global0 = array<vec4<f32>, 3>();
    let var_1 = func_2().e.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f - -1000f) - global2[_wgslsmith_index_u32(20867u, 28u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 28u)], arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f)))));
    var var_3 = 1474f;
    return _wgslsmith_f_op_f32(-707f * _wgslsmith_f_op_f32(ceil(arg_0)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global1 = func_4(arg_1);
    global2 = array<f32, 28>();
    var var_1 = select(!select(arg_0.xw, arg_0.xz, !arg_0.x), arg_0.wx, arg_0.wx);
    var var_2 = ~select(~(~firstTrailingBit(0u)), 4294967295u, var_1.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 662f) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(66485u, 28u)], var_0.a)))), vec4<i32>(-global1.e.x, 1i, 0i, -var_0.e.x | firstTrailingBit(_wgslsmith_mult_i32(var_0.e.x, u_input.a.x))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1024u, 50399u), 28u)]))), -vec3<i32>(~(-50395i), 2147483647i, ~(-1i)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 5984u, 1u), vec3<bool>(true, true, arg_0.x)), vec3<u32>(64248u, 4294967295u, 4294967295u)), vec3<u32>(12721u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(4294967295u, 57519u, 4294967295u, 6694u)), 1u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(43723u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 33755u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(63289u, 1u), vec2<u32>(1u, 0u), vec2<u32>(7077u, 21247u))))), (vec4<i32>(global1.e.x, -23674i, -1i, 2147483647i) >> (~vec4<u32>(4294967295u, 4294967295u, 23057u, 4294967295u) % vec4<u32>(32u))) ^ ~(-global1.b), 0i, -1176f, ~(global1.e ^ -vec3<i32>(u_input.a.x, u_input.a.x, -57038i))));
    global1 = func_4(func_4(Struct_1(283f, func_4(func_4(Struct_1(global1.d, var_0.b, var_0.b.x, 663f, global1.e))).b, _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), 1538f, vec3<i32>(_wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(1i, 0i, -23029i, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.x, -27917i), vec2<i32>(u_input.a.x, -14898i)), u_input.a.x))));
    let var_1 = firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 149335u)), ~(~vec2<u32>(63640u, 0u))), ~0u));
    let var_2 = Struct_1(var_0.a, countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-7641i, _wgslsmith_dot_vec3_i32(global1.b.zzy, global1.e), abs(10806i), i32(-1i) * -51699i), vec4<i32>(-1i) * -global1.b)), 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -879f), func_5(vec4<bool>(true, true, true, true), func_2()).e ^ select(~(-var_0.e), max(vec3<i32>(-23126i, global1.e.x, 66976i), var_0.e), false));
    global1 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-609f))), var_0.b, var_2.b.x, -1070f, var_2.e));
    var var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(18122u, min(1u, 12353u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 20427u, 1u), vec3<u32>(0u, 4294967295u, var_1)))), min(vec3<u32>(62189u, var_1, 2898u), ~vec3<u32>(var_1, 0u, 76949u) >> (countOneBits(vec3<u32>(0u, 5390u, var_1)) % vec3<u32>(32u))));
    var var_4 = func_5(!select(vec4<bool>(true, var_1 > var_1, all(vec4<bool>(true, true, true, false)), global1.b.x >= var_2.e.x), vec4<bool>(true, true, false, true), false | all(vec4<bool>(false, true, true, true))), Struct_1(1534f, global1.b, var_2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(vec2<u32>(var_1, 73854u) << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(var_1, var_1) | vec2<u32>(0u, 4294967295u)), vec2<u32>(1437u, 9554u & var_1), countOneBits(~vec2<u32>(var_1, 16989u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(func_1(var_2.d, 0u)))) + _wgslsmith_f_op_f32(563f + -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(172f, -108f, var_0.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.d, 327f, 1000f), vec3<f32>(-779f, -2797f, global2[_wgslsmith_index_u32(var_1, 28u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2045f, var_4.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, -766f)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, 1000f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(-1239f, 35570u)), _wgslsmith_f_op_f32(-global1.d)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(487f, -766f)))))));
}


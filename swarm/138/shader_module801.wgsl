struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(12383i, 2147483647i);

var<private> global1: array<bool, 13>;

var<private> global2: array<Struct_3, 14>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = min(vec3<u32>(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(76200u, 51416u, 0u, 59002u), abs(vec4<u32>(23896u, 31378u, 2969u, 4294967295u))), 4294967295u, ~1u), vec3<u32>(1u, 1u, 1u) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(29756u, 30038u, 1u), ~vec3<u32>(2093u, 0u, 4294967295u), vec3<u32>(100621u, 4294967295u, 85215u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global3 = !(!select(select(select(vec2<bool>(true, global3.x), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)]), true), select(vec2<bool>(false, global3.x), vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 13u)], true), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 13u)]), vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(25839u, 13u)])), select(vec2<bool>(true, global3.x), vec2<bool>(false, global3.x), vec2<bool>(false, global3.x)), true), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 13u)]), vec2<bool>(false, global3.x), global3.x)));
    global3 = select(vec2<bool>(all(vec3<bool>(global3.x, var_0.x == 0u, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1731f, -156f)) + _wgslsmith_f_op_f32(sign(2139f))) > -2537f), vec2<bool>(false, all(select(!vec3<bool>(false, false, global3.x), vec3<bool>(global3.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(var_0.x, 13u)]), !vec3<bool>(global3.x, global3.x, global1[_wgslsmith_index_u32(var_0.x, 13u)])))), all(select(select(select(vec2<bool>(global3.x, false), vec2<bool>(false, global1[_wgslsmith_index_u32(22138u, 13u)]), vec2<bool>(true, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(25491u, 13u)], global1[_wgslsmith_index_u32(67515u, 13u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(44088u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 13u)], true)), true), !select(vec2<bool>(true, global3.x), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 13u)]))));
    let var_1 = var_0.xz;
    let var_2 = ~(u_input.a & ~vec2<i32>(u_input.a.x >> (29471u % 32u), global0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1311f * 1462f) + _wgslsmith_div_f32(425f, 330f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1233f - -315f))));
}

fn func_2() -> i32 {
    let var_0 = firstTrailingBit(9188u);
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(firstLeadingBit(~(vec4<i32>(0i, var_1.x, global0.x, -36549i) | vec4<i32>(global0.x, -23599i, var_1.x, u_input.a.x)))))));
    var var_3 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0, _wgslsmith_clamp_u32(var_0, 46674u, 41648u)) & ~var_0, 4294967295u), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, 626f, -215f), vec3<f32>(var_2, -701f, -1287f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2))), var_0), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-831f, var_2, -2790f))), countOneBits(abs(var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(531f, var_2, var_2)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2, -689f, var_2), vec3<f32>(-107f, var_2, -493f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 189f, 778f)))), -1i);
    global3 = vec2<bool>(global1[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(var_3.b.b.b, var_0)), 13u)], true);
    return _wgslsmith_dot_vec2_i32(select(abs(~vec2<i32>(var_3.c, global0.x)) | var_1, -_wgslsmith_div_vec2_i32(u_input.a, u_input.a), vec2<bool>(!select(global1[_wgslsmith_index_u32(0u, 13u)], true, true), global3.x | !global1[_wgslsmith_index_u32(1u, 13u)])), u_input.a);
}

fn func_1() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(11084u, 13u)];
    global2 = array<Struct_3, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(-1170f)), -125f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(582f, 1000f) * vec2<f32>(-1865f, -1579f)), vec2<f32>(107f, -1017f), any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], false, global3.x))))))));
    var var_2 = global2[_wgslsmith_index_u32(~1u, 14u)];
    let var_3 = vec4<i32>(max(func_2() ^ 42638i, 1i) >> ((~(var_2.b.a.b | var_2.a) | 26821u) % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(var_2.c, var_2.c))), var_2.c) >> (firstLeadingBit(var_2.a) % 32u), _wgslsmith_div_i32(var_2.c, i32(-1i) * -(6361i << (0u % 32u))), 46640i << (1u % 32u));
    return 55261u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, 176f, 356f)))), _wgslsmith_add_u32(_wgslsmith_div_u32(func_1(), 1u), firstTrailingBit(31414u)));
    let var_1 = ~vec4<u32>(0u, ~var_0.b, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.b, var_0.b, 0u, var_0.b) ^ vec4<u32>(54373u, 63258u, 0u, var_0.b)), vec4<u32>(_wgslsmith_mult_u32(var_0.b, var_0.b), func_1(), firstLeadingBit(var_0.b), 0u)), ~123859u);
    let var_2 = func_1();
    var var_3 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(global3.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !(!vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 13u)], global3.x)), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(22047u, 13u)], true), vec2<bool>(global3.x, global1[_wgslsmith_index_u32(var_2, 13u)])), vec2<bool>(true, global3.x), true)));
    var var_4 = 17644u;
    var var_5 = _wgslsmith_div_vec4_i32(reverseBits(max(countOneBits(select(vec4<i32>(global0.x, -1i, global0.x, global0.x), vec4<i32>(-19627i, u_input.a.x, global0.x, 4262i), vec4<bool>(false, true, false, true))), min(vec4<i32>(u_input.a.x, 0i, global0.x, 12657i), vec4<i32>(u_input.a.x, 2147483647i, global0.x, global0.x)) >> (var_1 % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_add_i32(-select(1785i, global0.x, false), -2147483647i), -_wgslsmith_clamp_i32(i32(-1i) * -1i, -36312i, ~global0.x), -(~u_input.a.x), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global0.x, u_input.a.x), ~vec3<i32>(global0.x, 54146i, global0.x)))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(-(~vec3<i32>(var_5.x, 8966i, u_input.a.x)) << (~var_1.xyw % vec3<u32>(32u)), ~abs(var_5.wyx), -1i <= -global0.x), -1559f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.yx) - _wgslsmith_f_op_vec2_f32(var_0.a.zz * vec2<f32>(var_0.a.x, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.x, var_6.x))) + var_6.xx), -vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-2147483647i, var_5.x)) & select(-1863i, -1i, true)));
}


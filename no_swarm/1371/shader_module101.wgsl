struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec2<u32>, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = vec2<bool>(arg_2, true);
    var var_1 = Struct_1(u_input.a, _wgslsmith_sub_vec2_u32(arg_1.b, select(~vec2<u32>(arg_1.b.x, u_input.a), _wgslsmith_sub_vec2_u32(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 8u)]), true & all(vec3<bool>(arg_2, var_0.x, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1953f, 1423f, -289f, -252f), vec4<f32>(-569f, 1073f, -898f, 2354f))))));
    var var_3 = reverseBits(~_wgslsmith_mult_u32(69155u, 0u) | _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 44582u, 1u), abs(vec3<u32>(arg_1.a, u_input.a, 45145u)))) & abs(arg_1.b.x);
    var var_4 = Struct_2(vec3<bool>(true, true, false));
    return reverseBits(arg_1.b.x);
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(u_input.a, _wgslsmith_mod_vec2_u32(min(~u_input.d, select(u_input.d, global1[_wgslsmith_index_u32(0u, 8u)], vec2<bool>(arg_0.x, arg_0.x)) << (u_input.d % vec2<u32>(32u))), vec2<u32>(1u, func_3(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), Struct_1(0u, u_input.d), !arg_0.x))));
    var var_1 = Struct_2(vec3<bool>(!(true && (u_input.c <= var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-118f)) - -1067f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), !any(!arg_0)));
    var var_2 = vec3<u32>(39675u, 0u, 34973u);
    global0 = array<i32, 20>();
    return vec3<i32>(global0[_wgslsmith_index_u32(0u ^ var_0.a, 20u)], reverseBits(-19850i), -u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = -vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 20u)] << ((~u_input.c >> (~4294967295u % 32u)) % 32u), ~_wgslsmith_mod_i32(max(-23327i, global0[_wgslsmith_index_u32(arg_2.a, 20u)]), global0[_wgslsmith_index_u32(arg_2.b.x & 4294967295u, 20u)]));
    var var_1 = -(vec3<i32>(~(~u_input.b), -8520i, 1i) | func_2(arg_0.a.xy));
    global0 = array<i32, 20>();
    var var_2 = Struct_2(arg_0.a);
    global1 = array<vec2<u32>, 8>();
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-991f * -899f))), -800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-221f, 1750f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f - -287f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    var var_0 = 58251u;
    global1 = array<vec2<u32>, 8>();
    var var_1 = vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), -274f);
    var var_2 = -func_2(arg_1.a.xx).x;
    let var_3 = Struct_1(arg_0, vec2<u32>(_wgslsmith_add_u32(~arg_0, u_input.c), (55412u << (arg_0 % 32u)) & 21075u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(~59583u, ~24567u), ~vec2<u32>(2856u, 45107u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 57380i, reverseBits(firstTrailingBit(-1i)) >> (arg_2.x % 32u), -26408i), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-1i, select(-25213i, 1i, true), u_input.b << (1u % 32u), firstTrailingBit(u_input.b))), max(select(vec4<i32>(10275i, u_input.b, u_input.b, 16914i), vec4<i32>(55639i, u_input.b, 2147483647i, u_input.b), vec4<bool>(true, false, true, true)) << (vec4<u32>(16089u, 1u, arg_2.x, arg_2.x) % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-21195i, global0[_wgslsmith_index_u32(u_input.d.x, 20u)], u_input.b, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 1i, global0[_wgslsmith_index_u32(u_input.d.x, 20u)], global0[_wgslsmith_index_u32(32951u, 20u)])))));
    global1 = array<vec2<u32>, 8>();
    global1 = array<vec2<u32>, 8>();
    global0 = array<i32, 20>();
    global1 = array<vec2<u32>, 8>();
    return Struct_1(~(19542u ^ arg_2.x), ~((abs(u_input.d) | u_input.d) << (vec2<u32>(~37914u, ~0u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2457f * 584f)), _wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1269f, _wgslsmith_f_op_f32(f32(-1f) * -864f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(203f - -847f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(select(_wgslsmith_add_u32(u_input.a, 1u), abs(23424u), true), Struct_2(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_1(4294967295u, vec2<u32>(5653u, u_input.a)), false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-944f, 1791f, 1678f, 825f) + vec4<f32>(-388f, -1369f, -1000f, -728f))))))), abs(~global1[_wgslsmith_index_u32(abs(u_input.d.x), 8u)]));
    var var_1 = ~4294967295u;
    global1 = array<vec2<u32>, 8>();
    let var_2 = Struct_2(!select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(~u_input.a, 20u)], firstTrailingBit(u_input.b), global0[_wgslsmith_index_u32(37877u, 20u)] | global0[_wgslsmith_index_u32(var_0.b.x, 20u)]) ^ _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<i32>(2147483647i, u_input.b, global0[_wgslsmith_index_u32(u_input.c, 20u)])), vec3<i32>(u_input.b, _wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(~var_0.b.x, 20u)], -global0[_wgslsmith_index_u32(25348u, 20u)]), u_input.b)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-global0[_wgslsmith_index_u32(u_input.c, 20u)], u_input.b, 0i), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 15419i, 2147483647i), vec3<i32>(u_input.b, -1i, 3713i)))), -(~(~min(u_input.b, -1i))), 54689i);
    var var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1802f + 486f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(147f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3241f, 569f))))), var_3.x, 1u >> (~(var_0.a & min(var_0.a, 53640u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(ceil(-1128f)))))), vec3<f32>(1f, 1f, 1f));
}


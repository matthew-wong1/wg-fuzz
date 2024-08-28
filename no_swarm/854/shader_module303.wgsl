struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-522f, -157f, -259f, -311f, 1613f, 2520f, 510f, 1369f, -1126f, -722f, -598f, -118f, 330f, -3246f, 1000f, -838f, -1000f, -1000f, -1621f, 612f, 1000f, 241f);

var<private> global1: array<Struct_2, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(1u) & 1u, _wgslsmith_div_u32(4294967295u, select(45374u, _wgslsmith_clamp_u32(1u, 26286u, 0u), select(false, arg_0.x, arg_0.x)) ^ 34763u)), 4u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, global0[_wgslsmith_index_u32(var_0.c, 22u)], 544f))))), vec3<f32>(global0[_wgslsmith_index_u32(var_0.c, 22u)], -867f, -413f)));
    global0 = array<f32, 22>();
    var_0 = Struct_2(arg_0.x, Struct_1(var_0.b.a, vec3<bool>(!arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mod_u32(var_0.c, var_0.c));
    let var_2 = abs(~(vec4<u32>(2969u, ~4294967295u, abs(var_0.c), min(var_0.c, 0u)) >> (~(~vec4<u32>(var_0.c, var_0.c, 52941u, 4294967295u)) % vec4<u32>(32u))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-47783i, _wgslsmith_mod_i32(u_input.c ^ u_input.c, max(u_input.b, u_input.c)), ~(-6119i)) << (vec3<u32>(~1u, 47061u, countOneBits(var_2.x << (var_0.c % 32u))) % vec3<u32>(32u)), vec3<i32>(select(_wgslsmith_clamp_i32(u_input.c | u_input.b, 1i, -2147483647i), u_input.b, !var_0.a & arg_0.x), u_input.b, u_input.b));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, -245f) + vec2<f32>(-392f, arg_0.b.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 623f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, -210f)))))));
    let var_1 = Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26953u, 22u)]), !vec3<bool>(any(vec2<bool>(true, arg_0.b.b.x)), false, false)), 4294967295u);
    var var_2 = abs(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.c, u_input.c, 2147483647i))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.b, u_input.b), vec4<i32>(u_input.a.x, 6978i, -2147483647i, u_input.b)), ~vec4<i32>(1i, -2147483647i, u_input.a.x, -2938i)), _wgslsmith_clamp_vec4_i32(u_input.a ^ vec4<i32>(34159i, u_input.b, 0i, u_input.b), u_input.a, vec4<i32>(u_input.b, -2147483647i, 10476i, -39694i) << (vec4<u32>(arg_0.c, 26950u, 0u, var_1.c) % vec4<u32>(32u))))));
    let var_3 = Struct_2(arg_0.b.b.x & select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.c, 22u)]) <= _wgslsmith_f_op_f32(f32(-1f) * -114f), !(true & arg_0.a), var_1.b.b.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-276f)) * 640f), select(!select(vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true), vec3<bool>(arg_0.b.b.x, var_1.b.b.x, true), arg_0.b.b), select(vec3<bool>(true, arg_0.a, false), !var_1.b.b, var_1.b.b), true)), 4294967295u);
    global1 = array<Struct_2, 4>();
    return select(select(!(!var_3.b.b), select(vec3<bool>(arg_0.b.b.x, false, var_1.b.b.x), var_3.b.b, var_1.b.b), (var_1.a && true) == select(select(var_1.b.b.x, var_1.a, false), true, true)), select(vec3<bool>(any(var_3.b.b), var_3.b.b.x, var_3.a), vec3<bool>(any(vec3<bool>(false, var_1.b.b.x, true)), !(0i <= var_2.x), var_3.a), u_input.a.x == var_2.x), !any(var_3.b.b.xy));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 4u)];
    let var_1 = func_3(Struct_2(var_0.a, Struct_1(_wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(arg_0.a - var_0.b.a)), arg_1.b), arg_2.x << ((15967u ^ var_0.c) % 32u))).xx;
    var var_2 = Struct_1(arg_1.a, select(vec3<bool>(false, var_0.b.b.x, false & !arg_0.b.x), !(!func_3(Struct_2(true, arg_1, arg_2.x))), arg_0.b.x));
    let var_3 = vec2<bool>(false, true);
    var_0 = global1[_wgslsmith_index_u32(var_0.c, 4u)];
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-191f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1166f)) * 1962f)))), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1206f) + _wgslsmith_f_op_f32(abs(-1760f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<f32, 22>();
    var var_0 = !vec2<bool>(true, !(!arg_1.b.x));
    var var_1 = firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b << (4294967295u % 32u), u_input.a.x, _wgslsmith_div_i32(1i, 2147483647i)), 2147483647i), func_2(vec2<bool>(25490u >= arg_2.x, false)), u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(arg_1, Struct_1(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1229f)) - _wgslsmith_f_op_f32(abs(-119f)))), func_3(global1[_wgslsmith_index_u32(~(~arg_2.x), 4u)])), arg_2, var_0.x));
    var var_3 = ~reverseBits(func_2(vec2<bool>(true, arg_1.b.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(28430u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f - global0[_wgslsmith_index_u32(0u, 22u)]))), vec3<bool>(true, true, true)), min(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(55689u, 117231u, 1228u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, 75650u)), vec3<u32>(1u, 1u, 1u))), vec3<u32>(min(0u, _wgslsmith_div_u32(4294967295u, 25900u)), ~18624u, ~(~9688u))));
    let var_1 = abs(vec2<u32>(1u, 1u));
    let var_2 = ~(_wgslsmith_div_u32(var_1.x & var_1.x, 1u) | 107419u) << (54884u % 32u);
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_3 = ~(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(45783u, var_1.x, var_2)), vec3<u32>(0u ^ var_2, ~var_2, var_1.x)) >> (select(vec3<u32>(56464u, var_1.x, var_1.x) | select(vec3<u32>(67980u, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, 15345u), false), ~vec3<u32>(1u, var_1.x, 60945u), select(select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, false, true), false), !vec3<bool>(var_0.b.x, false, var_0.b.x), true)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(966f, _wgslsmith_div_f32(1765f, _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_0.a), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(22771u, 22u)], var_0.a)))))));
}


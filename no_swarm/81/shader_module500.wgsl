struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(1u, 0u, 1u), 2147483647i, Struct_2(vec4<i32>(-28008i, -30724i, 14386i, -20393i), 4294967295u, -27090i, Struct_1(false), vec4<f32>(-2559f, -596f, -758f, 450f)), vec2<f32>(1797f, 914f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_3(global1.a, _wgslsmith_div_i32(global1.c.c ^ global1.b, 1i), arg_1, _wgslsmith_f_op_vec2_f32(global1.c.e.xw * arg_1.e.yw));
    var var_1 = global1.a;
    let var_2 = global1.c.d;
    let var_3 = _wgslsmith_sub_i32(1i, -14220i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, arg_1.c, 2147483647i) << (vec4<u32>(3481u, var_0.a.x, global1.a.x, arg_0) % vec4<u32>(32u)), vec4<i32>(var_0.b, global1.c.a.x, -1i, global1.b))) >> (abs(min(arg_1.b & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(4294967295u, u_input.e.x)), 4294967295u)) % 32u);
    let var_4 = vec4<u32>(arg_1.b, 1u, max(reverseBits(firstTrailingBit(arg_1.b | 32838u)), _wgslsmith_mult_u32(max(45009u, _wgslsmith_sub_u32(65813u, 0u)), select(global1.a.x, arg_0, true) >> ((arg_0 << (24488u % 32u)) % 32u))), global1.c.b);
    return !select(!vec3<bool>(true, arg_1.d.a && true, var_0.b <= -2147483647i), select(select(select(vec3<bool>(false, global1.c.d.a, false), vec3<bool>(arg_1.d.a, false, true), vec3<bool>(arg_1.d.a, arg_1.d.a, true)), !vec3<bool>(var_0.c.d.a, global1.c.d.a, global1.c.d.a), !var_0.c.d.a), select(!vec3<bool>(var_0.c.d.a, false, true), select(vec3<bool>(var_2.a, var_0.c.d.a, false), vec3<bool>(arg_1.d.a, false, false), false), all(vec2<bool>(arg_1.d.a, true))), !(!vec3<bool>(true, var_2.a, false))), !(-arg_1.a.x >= u_input.c.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> bool {
    var var_0 = !func_3(select(4294967295u, abs(70516u), global1.a.x >= 1u), global1.c);
    global0 = array<u32, 8>();
    var var_1 = Struct_3(firstTrailingBit(global1.a), global1.c.a.x, global1.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.d.x, global1.d.x)))));
    var var_2 = var_1.c.e.yy;
    var_2 = var_1.d;
    return global1.c.d.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<u32, 8>();
    var var_0 = _wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(32431u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(40590u, 8u)], 8u)], 4294967295u)), ~(~arg_0));
    let var_1 = Struct_4(true);
    let var_2 = Struct_4(arg_1.a);
    let var_3 = _wgslsmith_f_op_f32(global1.c.e.x * 1443f);
    return !vec4<bool>(false, !all(select(vec4<bool>(var_1.a, true, global1.c.d.a, var_1.a), vec4<bool>(var_2.a, false, var_2.a, global1.c.d.a), var_1.a)), true, all(!vec2<bool>(arg_1.a, var_2.a)) && func_4(!vec4<bool>(false, true, var_1.a, var_2.a), !vec2<bool>(arg_1.a, true), func_3(arg_0.x, Struct_2(vec4<i32>(u_input.b, -1i, -3699i, global1.c.a.x), arg_0.x, u_input.a.x, arg_1, global1.c.e))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = -(~u_input.c.yyw);
    var var_1 = arg_2;
    var var_2 = global1.c.a;
    var var_3 = !select(!select(vec4<bool>(false, true, global1.c.d.a, global1.c.d.a), select(vec4<bool>(true, global1.c.d.a, global1.c.d.a, false), vec4<bool>(false, global1.c.d.a, global1.c.d.a, false), vec4<bool>(global1.c.d.a, true, global1.c.d.a, global1.c.d.a)), !vec4<bool>(true, true, global1.c.d.a, global1.c.d.a)), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(global1.c.d.a, global1.c.d.a, false, global1.c.d.a), false), vec4<bool>(global1.c.d.a, false, global1.c.d.a, global1.c.d.a), func_2(global1.a, Struct_1(true))), vec4<bool>(global1.c.d.a, true, global1.c.d.a, !global1.c.d.a));
    var_1 = _wgslsmith_dot_vec3_u32(global1.a >> (global1.a % vec3<u32>(32u)), global1.a);
    return global1.c.d;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = 32553u < global0[_wgslsmith_index_u32(~(~(~59025u) & (_wgslsmith_mod_u32(arg_3.x, 1u) << (max(4294967295u, 1u) % 32u))), 8u)];
    global0 = array<u32, 8>();
    let var_1 = firstTrailingBit(vec4<u32>(arg_3.x, abs(global0[_wgslsmith_index_u32(30081u, 8u)]), 54706u, arg_2.b));
    global0 = array<u32, 8>();
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, 31314u), _wgslsmith_add_vec2_u32(var_1.wz, global1.a.xy)), 0u);
    return select(_wgslsmith_mod_u32(arg_2.b, abs(u_input.e.x)), ~firstLeadingBit(11604u), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec2<bool>(true, (u_input.a.x <= 1i) | true)));
    global0 = array<u32, 8>();
    global1 = Struct_3(vec3<u32>(6732u, 0u, func_5(global1.d, func_1(~4294967295u, u_input.a ^ vec2<i32>(-10041i, -1i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, global1.c.b), 8u)]), Struct_2(global1.c.a, 4294967295u, -49394i, func_1(0u, global1.c.a.yz, 65090u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(945f, global1.d.x, 840f, -897f)))), vec4<u32>(~global1.a.x, firstTrailingBit(4294967295u), abs(global1.a.x), 0u))), ~u_input.c.x, Struct_2(vec4<i32>(u_input.c.x, -1i >> (1u % 32u), u_input.a.x, 2147483647i), 45745u, 18120i, Struct_1(func_4(vec4<bool>(global1.c.d.a, false, true, true), vec2<bool>(true, var_0.a), vec3<bool>(false, var_0.a, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.c.e, vec4<f32>(403f, global1.d.x, global1.d.x, global1.c.e.x))), vec4<f32>(_wgslsmith_f_op_f32(max(global1.d.x, global1.c.e.x)), global1.c.e.x, _wgslsmith_f_op_f32(990f - global1.c.e.x), global1.c.e.x))), global1.c.e.yy);
    global1 = Struct_3(vec3<u32>(~(global0[_wgslsmith_index_u32(u_input.d, 8u)] ^ ~4294967295u), 1u, (4294967295u & firstTrailingBit(global0[_wgslsmith_index_u32(global1.a.x, 8u)])) ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global1.a.x, 8u)], 5u), min(0u, global1.c.b))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, -1i, 7400i) >> (~global1.a % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(reverseBits(global1.c.a.www), global1.c.a.yyx)), Struct_2(_wgslsmith_div_vec4_i32(-u_input.c, global1.c.a) | -global1.c.a, abs(~(~1u)), _wgslsmith_mod_i32(global1.c.a.x, countOneBits(global1.c.c)), Struct_1(true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(min(global1.d.x, global1.c.e.x)), -1717f, _wgslsmith_f_op_f32(f32(-1f) * -309f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c.e + vec4<f32>(1060f, 524f, global1.d.x, 1008f)))))), vec2<f32>(global1.d.x, global1.c.e.x));
    var var_1 = ~2147483647i | (44230i >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_clamp_u32(1u, 1u, 1u)) % 32u));
    var var_2 = _wgslsmith_add_u32(global1.c.b, countOneBits(1u >> (reverseBits(0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-970f - -550f)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-603f, global1.c.e.x), 1888f, all(vec2<bool>(false, var_0.a))))))), ~global1.c.a.xxw, _wgslsmith_mod_u32(min(1u, 47621u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(6581u, 8u)], 0u), 0u << (1u % 32u)), u_input.d), 8u)]), -abs(_wgslsmith_div_vec3_i32(vec3<i32>(global1.b, u_input.c.x, 19051i), max(vec3<i32>(-7025i, u_input.b, u_input.c.x), vec3<i32>(u_input.b, global1.b, 0i)))));
}


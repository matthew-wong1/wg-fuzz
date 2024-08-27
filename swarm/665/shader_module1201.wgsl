struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<f32, 4> = array<f32, 4>(-762f, -335f, -695f, 1316f);

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global1 = array<f32, 4>();
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(false, true), 4294967295u == _wgslsmith_add_u32(52475u, u_input.b));
    global2 = ((i32(-1i) * -2147483647i) & _wgslsmith_mod_i32(select(-67969i, _wgslsmith_sub_i32(arg_0.x, arg_0.x), true), ~1i)) & ~u_input.c;
    var var_1 = ~reverseBits(u_input.a.yx);
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.a, ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(var_1.x, u_input.b, 56844u), u_input.a) >> (vec3<u32>(var_1.x, 52575u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(var_1.x, ~u_input.b, 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)] - -1283f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(85808u, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)]))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 953i, u_input.c, 1i), -vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i)), select(select(vec4<i32>(-2147483647i, -17484i, 1i, 0i), vec4<i32>(-2147483647i, u_input.c, 1i, u_input.c), false), -vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), all(vec4<bool>(true, false, true, false))))));
    var var_1 = Struct_1(-reverseBits(select(vec4<i32>(u_input.c, 1i, -1i, 1i), select(vec4<i32>(-17656i, u_input.c, 1i, 0i), vec4<i32>(u_input.c, u_input.c, -10684i, u_input.c), vec4<bool>(false, true, false, false)), u_input.c == 31738i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1069f, var_0, -1616f, 591f)))), vec4<f32>(var_0, 1040f, 493f, _wgslsmith_f_op_f32(f32(-1f) * -137f)))), vec4<bool>(true, (-u_input.c & 1i) > u_input.c, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(select(true, true, true), true, true))));
    let var_2 = Struct_4(Struct_2(_wgslsmith_sub_u32(~max(u_input.a.x, 4294967295u), firstLeadingBit(~u_input.b)), true));
    global2 = 3002i;
    var var_3 = var_1.b.x;
    return _wgslsmith_div_i32(-8571i, 26311i);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = 4479i;
    global0 = ~u_input.c;
    global2 = var_0;
    var var_1 = Struct_1(-_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, 1i, arg_0.x, -19013i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 1i, -33946i, 2147483647i), vec4<i32>(-3610i, 48245i, 1i, 0i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-15368i, 2147483647i, var_0, -71594i), -vec4<i32>(var_0, -2147483647i, -41851i, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(23592u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 823f, global1[_wgslsmith_index_u32(4294967295u, 4u)])))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_1 = Struct_1(vec4<i32>(max(53004i, func_2() & var_1.a.x), var_1.a.x, -min(-9029i, min(var_1.a.x, u_input.c)), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, u_input.c), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -31378i), var_1.a.xxy)))), var_1.b, vec4<bool>(false, var_1.c.x, all(!vec2<bool>(var_1.c.x, var_1.c.x)), !any(var_1.c.zw)));
    return countOneBits(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.c;
    var var_0 = ~abs(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(77068i, 61853i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, 55309i, 1i), vec4<i32>(-2147483647i, -16445i, 4659i, u_input.c)), vec4<i32>(2147483647i, u_input.c, 17645i, -42238i), vec4<bool>(true, true, true, true))) | firstTrailingBit(~reverseBits(abs(vec4<i32>(-1i, 0i, 2147483647i, 2147483647i))));
    var_0 = vec4<i32>(~func_1(firstTrailingBit(var_0.zw) & ~vec2<i32>(var_0.x, var_0.x)), -2107i >> (reverseBits(u_input.b) % 32u), ~u_input.c & u_input.c, ~func_2());
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, -1400f, -176f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-4099f, global1[_wgslsmith_index_u32(37575u, 4u)], global1[_wgslsmith_index_u32(21994u, 4u)]), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], -791f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), true)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)])))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(9980u, 4u)], 255f), -756f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}


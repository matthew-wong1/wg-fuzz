struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 6>;

var<private> global2: array<vec2<i32>, 16>;

var<private> global3: vec2<f32> = vec2<f32>(-2135f, -1325f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = ~4294967295u ^ arg_1.c.x;
    let var_1 = global0.x;
    return ~(-41414i) | _wgslsmith_div_i32(arg_1.d.a, u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = abs(arg_2.b);
    var var_1 = _wgslsmith_f_op_f32(-426f - -1764f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x - -1000f), _wgslsmith_f_op_f32(ceil(arg_2.a.x)), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 124f) + arg_2.a.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, arg_2.a.x, global3.x, -1032f), vec4<f32>(-610f, global3.x, global3.x, -1265f), global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1750f, 813f, arg_2.a.x, 2402f) - vec4<f32>(1000f, -1076f, 1000f, 369f))), vec4<f32>(-390f, 510f, _wgslsmith_f_op_f32(281f + -438f), _wgslsmith_f_op_f32(-global3.x)), select(!vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(true, global0.x, false, global0.x), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, false), global0.x))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * arg_2.a.x))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(global3.x)))), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(global3.x - global3.x)));
    var var_3 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.b, 6u)], 6u)]), global1[_wgslsmith_index_u32(arg_2.c.x, 6u)] << (global1[_wgslsmith_index_u32(44318u, 6u)] % 32u)), 7154u, arg_2.c.x)), ~(arg_2.c.zyy ^ firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(114296u, 1u, global1[_wgslsmith_index_u32(arg_2.c.x, 6u)]), arg_2.c.zxx))), arg_2.c.zyx);
    var var_4 = -(~(-min(arg_1, vec2<i32>(-1i, arg_0.a) >> (vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], 53880u) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.zx)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(min(-151f, -717f)))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = ~(~(~(~firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(68686u, 6u)], 41017u, 80940u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)])))));
    let var_1 = ~abs(abs(firstTrailingBit(vec4<i32>(1i, u_input.c, u_input.b, -2147483647i) >> (vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 6u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)]) % vec4<u32>(32u)))));
    global3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, 105f, 585f, arg_0)), Struct_3(vec3<f32>(465f, arg_0, 818f), global1[_wgslsmith_index_u32(var_0.x, 6u)], var_0, Struct_2(var_1.x)))), -abs(firstLeadingBit(vec2<i32>(var_1.x, u_input.a))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(993f, 1378f, global3.x)), var_0.x, _wgslsmith_div_vec4_u32(max(var_0, var_0), vec4<u32>(var_0.x, 2120u, 23020u, var_0.x)), Struct_2(_wgslsmith_dot_vec3_i32(var_1.ywx, vec3<i32>(50740i, u_input.b, var_1.x))))))));
    let var_2 = var_0.yy;
    global2 = array<vec2<i32>, 16>();
    return Struct_2(reverseBits(13252i));
}

fn func_1() -> f32 {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(min(global3.x, global3.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), 459f));
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f)));
    var var_1 = 53527i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.x, -608f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - -546f), -1942f)))), vec4<u32>(~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53276u, 6u)], 6u)], 6u)], 6u)], 6u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61950u, 6u)], 6u)], 7543u))), min(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)], 26058u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16759u, 6u)], 6u)], 6u)]), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 6u)]), 4294967295u)), countOneBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), 19056u), min(vec2<u32>(global1[_wgslsmith_index_u32(48939u, 6u)], 29789u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 3300u)) ^ ~vec2<u32>(51518u, 35042u))), !select(vec3<bool>(false, true, any(global0.yx)), select(select(vec3<bool>(false, false, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false)), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global0.x, false)), !vec3<bool>(global0.x, true, false)), all(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, false)))));
    let var_3 = vec3<i32>(countOneBits(max(-max(12231i, u_input.c), u_input.c)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.a, ~var_0.a), abs(select(vec2<i32>(u_input.a, var_0.a), vec2<i32>(30042i, u_input.c), var_2.c.x))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(-2900i, 21635i, var_0.a, u_input.a) ^ vec4<i32>(var_0.a, -2147483647i, u_input.b, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.c, -2147483647i, u_input.a), vec4<i32>(20998i, 2147483647i, u_input.b, var_0.a), vec4<i32>(11774i, var_0.a, var_0.a, u_input.b)) | abs(vec4<i32>(var_0.a, u_input.b, 2147483647i, 38405i)))), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.a, -23343i, 25316i), ~u_input.c, -1200i), u_input.a));
    return -854f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.yx;
    var var_1 = _wgslsmith_f_op_f32(func_1());
    let var_2 = ~select(-1232i, -10400i, all(select(vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.xz), vec2<bool>(var_0.x, true))));
    let var_3 = vec4<u32>(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23922u, 6u)], 6u)]), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61594u, 6u)], 6u)], 6u)], 6u)], 4294967295u), 6u)], 6u)], 6u)], 6u)], 6u)]) >> (abs(~(9141u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38204u, 6u)], 6u)])) % 32u), global1[_wgslsmith_index_u32(min(min(2390u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 6u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25308u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22270u, 6u)], 6u)]), 6u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)]), vec3<u32>(2842u, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)])))), 0u), 6u)], _wgslsmith_add_u32(5104u, global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)])), 6u)]));
    var var_4 = global0.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~71964u, ~var_3.x, 0u >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_3.x, 6u)], global1[_wgslsmith_index_u32(var_3.x, 6u)]) % 32u), 0u));
}


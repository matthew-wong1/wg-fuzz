struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(33946u, 1u)), Struct_4(vec2<u32>(1u, 12612u)), Struct_4(vec2<u32>(12257u, 4294967295u)), Struct_4(vec2<u32>(27312u, 43660u)));

var<private> global1: array<f32, 5>;

var<private> global2: u32 = 99219u;

var<private> global3: f32 = 1181f;

var<private> global4: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], -505f) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], -363f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(12702u, 5u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 5u)] - -1773f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2567u, 5u)]) * -653f)) + _wgslsmith_f_op_f32(f32(-1f) * -2368f)));
    var var_1 = Struct_1(u_input.c, ~u_input.a, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, -50900i), vec3<i32>(u_input.a, 71006i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(0i, -1i, u_input.a)), _wgslsmith_mult_i32(2156i, -u_input.a)) ^ abs(vec2<i32>(1i, ~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1282f, global1[_wgslsmith_index_u32(10107u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)])), vec4<f32>(166f, global1[_wgslsmith_index_u32(4294967295u, 5u)], 1000f, global1[_wgslsmith_index_u32(u_input.d.x, 5u)])))));
    let var_2 = Struct_3(1i, -abs(var_1.c.x), var_1.b, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(35388u, var_1.a.x, 21623u, 0u) & u_input.c, var_1.a ^ vec4<u32>(var_1.a.x, 51705u, 82131u, u_input.b.x), vec4<u32>(68632u, 0u, 68897u, u_input.c.x)) ^ var_1.a, 27482i, _wgslsmith_add_vec2_i32(var_1.c, vec2<i32>(u_input.a, ~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.d, vec4<f32>(559f, -957f, 807f, global1[_wgslsmith_index_u32(63081u, 5u)])))))));
    global1 = array<f32, 5>();
    var var_3 = var_2;
    return var_3.d.d;
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    global2 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(arg_0 ^ ~u_input.b), arg_0 ^ _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), arg_0)), arg_0.x);
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(-54130i, 2514i), ~_wgslsmith_mult_i32(u_input.a, u_input.a)) & abs(-vec2<i32>(-2147483647i, u_input.a)), firstLeadingBit(-vec2<i32>(min(u_input.a, u_input.a), ~u_input.a)));
    global2 = arg_0.x;
    global1 = array<f32, 5>();
    global3 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.x ^ 35801u, ~1u, 80422u), _wgslsmith_div_vec3_u32(~u_input.d, ~u_input.c.xyw), vec3<bool>(true, true, arg_0.x > 0u)), ~(~vec3<u32>(1u, arg_0.x, 1u) & reverseBits(vec3<u32>(u_input.d.x, 86142u, arg_0.x)))), 1u, true), 5u)];
    return firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_add_i32(var_0, 1i)) & ~vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(var_0, u_input.a >> (arg_0.x % 32u)))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-694f, global1[_wgslsmith_index_u32(4294967295u, 5u)], 368f, 1283f)))))));
    var var_1 = Struct_1(~(~vec4<u32>(34062u, abs(u_input.d.x), _wgslsmith_div_u32(u_input.d.x, u_input.d.x), _wgslsmith_sub_u32(u_input.d.x, 4294967295u))), -1i, _wgslsmith_sub_vec2_i32(reverseBits(func_3(firstTrailingBit(u_input.b))), firstTrailingBit(min(~vec2<i32>(11400i, u_input.a), vec2<i32>(0i, 4331i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0, vec4<f32>(-1969f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], var_0.x, -904f))) - vec4<f32>(247f, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.d.x, 5u)], -931f)), _wgslsmith_f_op_vec4_f32(-var_0), vec4<bool>(true, true, true, true)))));
    let var_2 = global0[_wgslsmith_index_u32(1u, 5u)];
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1980f) * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1344f))) > -193f;
    let var_3 = global0[_wgslsmith_index_u32(abs(select(var_2.a.x, _wgslsmith_mod_u32(29853u >> (_wgslsmith_add_u32(16183u, var_2.a.x) % 32u), _wgslsmith_clamp_u32(var_1.a.x, 1u, abs(var_1.a.x))), var_1.c.x > var_1.b)), 5u)];
    return 796f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f * -1719f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(45766u, 5u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 1221f, global1[_wgslsmith_index_u32(1u, 5u)]), vec3<f32>(350f, global1[_wgslsmith_index_u32(u_input.d.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]))) - vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), global1[_wgslsmith_index_u32(15195u, 5u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 5u)] + global1[_wgslsmith_index_u32(u_input.c.x, 5u)]))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.d.x, 4294967295u), 4294967295u)), ~firstTrailingBit(~u_input.c.x), abs(0u << (0u % 32u))), 5u)];
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 5u)] - 1190f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(228f + 873f));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(var_1.zy * var_1.zy), vec4<u32>(abs(_wgslsmith_mult_u32(4294967295u, var_2.a.x) | 43949u), ~0u, u_input.b.x, 4294967295u), u_input.a, Struct_1(vec4<u32>(~u_input.d.x, _wgslsmith_sub_u32(var_2.a.x, u_input.c.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 75668u), var_2.a), _wgslsmith_dot_vec3_u32(abs(u_input.c.zwz), ~u_input.c.zxz), 4294967295u), u_input.a, -_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -7868i), vec2<i32>(u_input.a, u_input.a)) & vec2<i32>(u_input.a, ~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -984f, 105f) - vec4<f32>(var_1.x, var_1.x, 393f, global1[_wgslsmith_index_u32(var_2.a.x, 5u)]))))), Struct_1(u_input.c, u_input.a, select(abs(vec2<i32>(2147483647i, -33471i)), ~(vec2<i32>(u_input.a, 7844i) << (var_2.a % vec2<u32>(32u))), !all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(468f)), _wgslsmith_f_op_f32(1025f * var_1.x), var_1.x))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(480f)));
    let x = u_input.a;
    s_output = StorageBuffer(~24057u);
}


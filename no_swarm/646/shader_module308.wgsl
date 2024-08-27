struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 50623u);

var<private> global1: bool = false;

var<private> global2: array<f32, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global1 = !(false | (global0.x == ~abs(global0.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 18u)], 867f, -882f, global2[_wgslsmith_index_u32(global0.x, 18u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, global2[_wgslsmith_index_u32(43219u, 18u)], -1819f, global2[_wgslsmith_index_u32(1u, 18u)]) - vec4<f32>(global2[_wgslsmith_index_u32(0u, 18u)], -1511f, global2[_wgslsmith_index_u32(33575u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)]))), select(false, true, all(vec2<bool>(false, false)))))) * vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 29517u), vec2<u32>(global0.x, 1u)), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(431f)))), global2[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, -320f))))))));
    var var_1 = min(min(~(-(vec3<i32>(u_input.a, u_input.a, 1i) << (vec3<u32>(global0.x, 1u, 35638u) % vec3<u32>(32u)))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, 399i, 22756i)), min(vec3<i32>(_wgslsmith_mod_i32(u_input.a, -15318i) << (~global0.x % 32u), u_input.b, 2147483647i), abs(vec3<i32>(48144i, -11898i, ~0i))));
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(var_0.xwy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, -116f, var_0.x) + var_0.www)))), 1651f, _wgslsmith_f_op_f32(691f + var_0.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 4294967295u, ~global0.x), vec3<u32>(max(global0.x, 4294967295u), global0.x, global0.x)));
    let var_3 = Struct_2(select(var_1.xy, var_1.zz, !vec2<bool>(var_2.a, var_2.a)) >> (~countOneBits(~global0.zx) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, var_2.d, global2[_wgslsmith_index_u32(1u, 18u)])) + vec3<f32>(_wgslsmith_f_op_f32(-761f * 472f), var_0.x, -532f)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-771f, 253f, -408f) * vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-208f, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(1572u, 18u)]) * vec3<f32>(345f, -143f, global2[_wgslsmith_index_u32(global0.x, 18u)])))))));
    global2 = array<f32, 18>();
    var var_1 = any(vec2<bool>(false, true));
    let var_2 = Struct_1(false, vec3<f32>(-1376f, -1000f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x, 1383f, ~(~min(~vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(global0.x, global0.x, global0.x))));
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_2.b.x, global2[_wgslsmith_index_u32(var_2.e.x, 18u)])))) + 1945f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2370f + -370f))), var_0.x)), var_2.d)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = ~arg_0.a;
    let var_1 = _wgslsmith_sub_u32(global0.x, ~12877u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global2[_wgslsmith_index_u32(global0.x, 18u)], arg_1.x)))))));
    global1 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(649f, 905f))) + _wgslsmith_f_op_f32(-var_2.x)) - var_2.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3, 1000f, var_2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(605f, 422f, 749f) + vec3<f32>(var_3, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(26635u, 18u)]))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<u32> {
    global2 = array<f32, 18>();
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 18u)];
    global0 = select(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, global0.x), reverseBits(global0.x)), 1u, 4294967295u), firstTrailingBit(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(10864u, 4294967295u, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(global0.x, global0.x), global0.x >> (global0.x % 32u), reverseBits(global0.x)))), select(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), true, select(any(vec2<bool>(true, true)), true, true)));
    var_0 = 894f;
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(224f - -1029f), _wgslsmith_f_op_f32(f32(-1f) * -2274f))) * vec3<f32>(arg_0.x, -1000f, 729f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-930f, _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.x, 18u)], 227f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-191f - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f - arg_0.x))) + -431f), select(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(14795u, 23345u, global0.x, 0u), vec4<u32>(global0.x, 12040u, 1u, global0.x)), vec4<u32>(0u, 0u, global0.x, 7187u)), global0.x, ~6582u), _wgslsmith_div_vec3_u32(~(~vec3<u32>(global0.x, global0.x, 4294967295u)), vec3<u32>(~global0.x, global0.x, ~1u)), true));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32((1u ^ global0.x) ^ var_1.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17062u, 1u, var_1.e.x, global0.x), vec4<u32>(var_1.e.x, 0u, global0.x, global0.x)) & _wgslsmith_clamp_u32(global0.x, global0.x, var_1.e.x)), ~(1u >> (var_1.e.x % 32u)) | 81064u, 0u), firstTrailingBit(~min(vec3<u32>(21483u, global0.x, 1u), var_1.e)) ^ vec3<u32>(global0.x, countOneBits(_wgslsmith_add_u32(var_1.e.x, global0.x)), ~global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(5903u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], 262f) - vec3<f32>(353f, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, global2[_wgslsmith_index_u32(32033u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)]))) + _wgslsmith_f_op_vec3_f32(func_1(Struct_2(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(5953u, 18u)], -212f, 434f) + vec3<f32>(global2[_wgslsmith_index_u32(56860u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)], 1101f))))), Struct_2(firstLeadingBit(countOneBits(vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -u_input.b, u_input.b, u_input.b), select(firstTrailingBit(vec4<i32>(-1i, u_input.a, -12402i, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -63900i, u_input.b), vec4<i32>(-1i, u_input.b, u_input.b, 1i)), vec4<bool>(false, false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(4294967295u, 18u)], vec2<u32>(~_wgslsmith_clamp_u32(global0.x, global0.x, 1u), 22620u) >> (~(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -204f), global2[_wgslsmith_index_u32(~abs(1u), 18u)]))));
}


struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: array<vec2<u32>, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_sub_u32(max(0u & global1.x, u_input.a), ~global1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-937f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-886f, 296f, false)) - _wgslsmith_f_op_f32(floor(2464f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-238f, _wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(-1808f + -1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -232f, 372f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, -438f, -2034f)))), all(vec3<bool>(true, true, true)))))));
    global2 = array<vec2<u32>, 32>();
    let var_2 = Struct_1(var_0, _wgslsmith_add_u32(20751u, 1u));
    global2 = array<vec2<u32>, 32>();
    return ~1u;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(40854u & ~global1.x, _wgslsmith_add_u32(~u_input.a, 4294967295u) << (arg_0.b % 32u)), 32u)];
    let var_0 = Struct_1(~select(arg_0.a, _wgslsmith_clamp_u32(func_3(u_input.b.x, vec4<i32>(u_input.b.x, 17812i, -3829i, -35621i)), arg_0.a, min(4294967295u, u_input.a)), true), u_input.a);
    global2 = array<vec2<u32>, 32>();
    global1 = _wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(~select(~(47402u >> (global1.x % 32u)), ~_wgslsmith_mult_u32(u_input.a, u_input.a), any(vec2<bool>(true, true))), 32u)], firstLeadingBit(abs(abs(global2[_wgslsmith_index_u32(countOneBits(var_0.a), 32u)]))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-650f, _wgslsmith_f_op_f32(1199f - _wgslsmith_f_op_f32(f32(-1f) * -661f)), -369f) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1517f * 422f) + _wgslsmith_f_op_f32(f32(-1f) * -720f)))), 1f, -1000f));
    return firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_sub_i32(countOneBits(max(u_input.b.x, 1i)), u_input.b.x), 18864i, u_input.b.x));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = 5128i;
    let var_1 = vec3<i32>(select(2147483647i, var_0, false || (false | any(vec2<bool>(false, true)))), -_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, -u_input.b.x), var_0), -12295i);
    var var_2 = Struct_1(~abs(abs(global1.x & 0u)), 0u);
    let var_3 = i32(-1i) * -(-59777i >> (~(~0u) % 32u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-794f)) - _wgslsmith_f_op_f32(f32(-1f) * -185f)));
    return Struct_1(global1.x, 26033u);
}

fn func_1() -> Struct_1 {
    var var_0 = !(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    var var_1 = Struct_1(global1.x, ~global1.x);
    var var_2 = func_4(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & vec4<i32>(_wgslsmith_clamp_i32(-26878i, u_input.b.x, -2147483647i), u_input.b.x, u_input.b.x, u_input.b.x), func_2(Struct_1(max(var_1.a, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.b, var_1.a, u_input.a), vec4<u32>(28610u, 107424u, 7322u, u_input.a))))));
    return Struct_1(min(min(min(var_2.b, ~28083u), u_input.a), reverseBits(select(0u, var_2.a, var_0.x) >> (0u % 32u))), ~select(~4294967295u >> (var_2.a % 32u), ~0u, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(37708u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32((vec3<u32>(4685u, u_input.a, 21236u) ^ vec3<u32>(1u, 382u, 4294967295u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global1.x, u_input.a), vec3<u32>(global1.x, global1.x, u_input.a)) % vec3<u32>(32u)), vec3<u32>(4294967295u, ~27873u, countOneBits(29863u))), firstLeadingBit(select(vec3<u32>(77313u, 1u, 60083u), vec3<u32>(17899u, 12709u, global1.x), vec3<bool>(false, false, false)) ^ ~vec3<u32>(1u, 25998u, 49078u)))), 32u)];
    let var_0 = ~countOneBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 1u, global1.x, global1.x)), vec4<u32>(u_input.a, global1.x, u_input.a, max(global1.x, u_input.a)), ~vec4<u32>(0u, global1.x, 1u, 4294967295u) | ~vec4<u32>(global1.x, 62807u, 24934u, 15330u)));
    let var_1 = func_1();
    var var_2 = _wgslsmith_sub_i32(4774i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), firstLeadingBit(u_input.b), -vec3<i32>(17312i, u_input.b.x, 0i)), vec3<i32>(u_input.b.x & u_input.b.x, abs(-1i), -1i)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 4294967295u, var_1.b)), max(var_0.www, var_0.yzx)), var_0.zxz) % 32u));
    let var_3 = ~_wgslsmith_add_i32(~u_input.b.x, u_input.b.x);
    var var_4 = countOneBits(~_wgslsmith_add_u32(global1.x, countOneBits(4294967295u))) ^ u_input.a;
    let var_5 = Struct_1(2475u, u_input.a);
    let var_6 = Struct_1(~(~var_0.x), ~(4294967295u & ~(~global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1452f)))), var_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1313f)))), ~max(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1617u, var_6.b, u_input.a, var_1.b), abs(vec4<u32>(global1.x, var_6.b, var_6.b, 4294967295u)))));
}


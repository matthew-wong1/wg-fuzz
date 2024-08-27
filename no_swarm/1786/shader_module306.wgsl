struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(27278u, 59595u), vec2<u32>(3172u, 45073u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4507u), vec2<u32>(0u, 14109u), vec2<u32>(60927u, 57661u), vec2<u32>(86815u, 12049u), vec2<u32>(2095u, 30014u), vec2<u32>(59130u, 4294967295u), vec2<u32>(4294967295u, 50446u), vec2<u32>(4294967295u, 59208u), vec2<u32>(13649u, 14522u), vec2<u32>(10010u, 14805u), vec2<u32>(14590u, 54612u), vec2<u32>(21905u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(76416u, 4294967295u), vec2<u32>(28022u, 1u), vec2<u32>(40448u, 9511u), vec2<u32>(0u, 0u), vec2<u32>(15564u, 25566u), vec2<u32>(55893u, 0u), vec2<u32>(9226u, 752u), vec2<u32>(4294967295u, 4294967295u));

var<private> global2: array<i32, 32>;

var<private> global3: i32;

var<private> global4: vec4<u32> = vec4<u32>(1u, 0u, 18035u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(21346u, 32u)], 31350i) ^ firstLeadingBit(vec2<i32>(1i, 49690i)), select(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(arg_0.d, 25u)], global4.zw), 32u)], global2[_wgslsmith_index_u32(0u, 32u)]), -vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(1563u, 32u)]), false)) & vec2<i32>(_wgslsmith_add_i32(-global2[_wgslsmith_index_u32(0u, 32u)] << (52644u % 32u), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 32u)]), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.d, ~1u), 32u)] ^ global2[_wgslsmith_index_u32(u_input.a, 32u)]);
    global1 = array<vec2<u32>, 25>();
    let var_1 = -2153f;
    let var_2 = ~_wgslsmith_clamp_i32(-global2[_wgslsmith_index_u32(global4.x, 32u)], _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), global2[_wgslsmith_index_u32(max(227u, global4.x), 32u)]);
    global4 = countOneBits(vec4<u32>(36569u, ~firstLeadingBit(_wgslsmith_mult_u32(36980u, 44902u)), arg_0.d, u_input.a));
    return vec4<u32>(~0u, abs(u_input.a), min(_wgslsmith_sub_u32(u_input.a, ~global4.x) ^ 6674u, _wgslsmith_add_u32(1u, countOneBits(12697u))), 60673u);
}

fn func_2(arg_0: u32) -> vec3<f32> {
    var var_0 = firstLeadingBit(-4549i);
    global2 = array<i32, 32>();
    var var_1 = vec3<u32>(~(~59540u), 27479u, 1u);
    global4 = firstTrailingBit(max(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(global4.x, u_input.a)), var_1.x), _wgslsmith_mod_u32(global4.x, var_1.x), ~global4.x, 1u), _wgslsmith_div_vec4_u32(func_3(Struct_1(true, vec2<f32>(-695f, -1424f), true, 0u, false), vec3<bool>(false, false, false), all(vec4<bool>(false, true, true, false))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), func_3(Struct_1(false, vec2<f32>(670f, 325f), true, 13207u, false), vec3<bool>(true, true, false), true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1204f, 2171f, 1608f))));
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + 533f) - _wgslsmith_f_op_f32(981f + var_2.x))), -801f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, _wgslsmith_f_op_f32(-1634f * -852f), _wgslsmith_f_op_f32(368f - -451f))))) * _wgslsmith_f_op_vec3_f32(func_2(0u)));
    var var_1 = Struct_2(Struct_1(!(true && (-216f != var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, _wgslsmith_f_op_f32(1264f * var_0.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-573f, var_0.x), var_0.yy, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 668f) - vec2<f32>(var_0.x, 1471f)))), any(global0[_wgslsmith_index_u32(29678u, 16u)]), u_input.a, any(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, -4005i > global2[_wgslsmith_index_u32(global4.x, 32u)], false))));
    var var_2 = reverseBits(countOneBits(vec2<i32>(-2147483647i, reverseBits(global2[_wgslsmith_index_u32(0u, 32u)] & global2[_wgslsmith_index_u32(global4.x, 32u)]))));
    var var_3 = var_1.a;
    let var_4 = ~(max(global4.wx, global4.ww) | (vec2<u32>(_wgslsmith_sub_u32(global4.x, u_input.a), ~global4.x) | ~_wgslsmith_mult_vec2_u32(global4.yz, vec2<u32>(var_3.d, u_input.a))));
    return Struct_1(false, var_0.yz, true, ~(39272u | var_4.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 25>();
    let var_0 = min(~_wgslsmith_mult_vec4_u32(vec4<u32>(~12066u, 0u, global4.x, ~4294967295u), abs(abs(vec4<u32>(u_input.a, u_input.a, 3881u, u_input.a)))), vec4<u32>(max(_wgslsmith_add_u32(countOneBits(83480u), 1u), select(global4.x, 7975u, true)), 1u, abs(~128181u), ~_wgslsmith_div_u32(global4.x, u_input.a) ^ reverseBits(global4.x)));
    global0 = array<vec3<bool>, 16>();
    var var_1 = func_1();
    let var_2 = ~global4.x;
    var_1 = func_1();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~(-2147483647i))), -abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.x, 32u)]), vec2<i32>(-6810i, global2[_wgslsmith_index_u32(2631u, 32u)]), vec2<i32>(global2[_wgslsmith_index_u32(24396u, 32u)], global2[_wgslsmith_index_u32(var_3.d, 32u)])) & _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(31984u, 32u)], global2[_wgslsmith_index_u32(var_3.d, 32u)]), vec2<i32>(global2[_wgslsmith_index_u32(0u, 32u)], 2147483647i))), ~_wgslsmith_dot_vec2_u32(func_3(func_1(), select(vec3<bool>(var_3.c, var_1.a, var_1.e), global0[_wgslsmith_index_u32(4921u, 16u)], global0[_wgslsmith_index_u32(global4.x, 16u)]), var_3.a).yw, ~vec2<u32>(global4.x, var_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1826f, var_3.b.x))))));
}


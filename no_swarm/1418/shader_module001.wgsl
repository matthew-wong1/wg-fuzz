struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<vec4<u32>, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    let var_0 = u_input.b.zxx;
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(171f + _wgslsmith_f_op_f32(244f + 1000f)) + -538f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1448f)))) + -1125f));
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_i32(-37859i, 51549i, _wgslsmith_mod_i32(-68986i, (u_input.b.x << (~62700u % 32u)) & u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-593f, 1211f)), _wgslsmith_f_op_f32(-371f * -1067f))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1203f), false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(40971u, max(vec2<u32>(4294967295u, 63163u), vec2<u32>(17184u, 50126u)))), _wgslsmith_f_op_f32(-1391f * _wgslsmith_f_op_f32(f32(-1f) * -2025f)))))));
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~firstTrailingBit(10347u), _wgslsmith_div_u32(~4100u, 1u))), vec2<u32>(~min(1u, _wgslsmith_clamp_u32(7609u, 1u, 33771u)), 1u));
    var var_3 = _wgslsmith_dot_vec3_i32(select(select(~vec3<i32>(u_input.a, -2147483647i, 1i), vec3<i32>(-var_0, ~0i, ~(-64604i)), select(vec3<bool>(true, false, false), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_2.x, 8u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(var_2.x, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 8u)], true, global0[_wgslsmith_index_u32(var_2.x, 8u)]), true))), u_input.b.xzy, true && (false | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 7714u), 8u)])), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(43605i, 0i, u_input.a), abs(u_input.b.x), min(0i, u_input.a)), max(vec3<i32>(-1i) * -u_input.b.yyy, u_input.b.wwx)));
    return vec3<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(countOneBits(select(min(var_2.x, var_2.x), var_2.x ^ var_2.x, var_2.x <= 4294967295u)), 31u)], countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 31u)]) | select(vec4<u32>(32257u, var_2.x, 31023u, 89385u), vec4<u32>(1u, 1384u, var_2.x, 30032u) << (vec4<u32>(var_2.x, var_2.x, var_2.x, 1u) % vec4<u32>(32u)), !global0[_wgslsmith_index_u32(55107u, 8u)])), _wgslsmith_div_u32(var_2.x, _wgslsmith_mod_u32(var_2.x, _wgslsmith_clamp_u32(4294967295u, ~45815u, abs(1u)))), 64685u);
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(~abs(reverseBits(min(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(25493u, 32433u, 21415u)))), select(countOneBits(vec3<u32>(0u, 24400u, ~0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2()), any(vec4<bool>(all(vec2<bool>(false, false)), true, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(abs(4294967295u), 8u)]))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(28288u, 0u, 1u), vec3<u32>(0u, 64478u, 1u)), func_2()) & vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 44131u, 4294967295u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_u32(682u, min(0u, 102860u)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 59256u), vec2<u32>(44390u, 0u))))));
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var var_1 = Struct_4(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 1i) << (~var_0 % vec3<u32>(32u)), u_input.b.zyw), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 5850i, u_input.b.x), _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(u_input.b.x, -24884i, u_input.b.x, -2147483647i))), 0i, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_add_i32(u_input.a, -1i)), -_wgslsmith_sub_i32(-44133i, 0i))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(reverseBits(max(1u, var_0.x)), 8u)], u_input.a >> (var_0.x % 32u), select(vec2<i32>(u_input.a, u_input.a), u_input.b.xw ^ u_input.b.xw, true))));
    var_1 = Struct_4(u_input.b | _wgslsmith_clamp_vec4_i32(-(var_1.a >> (global1[_wgslsmith_index_u32(1u, 31u)] % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, var_1.b.a.b, u_input.b.x, u_input.b.x), var_1.a), vec4<i32>(_wgslsmith_mod_i32(67465i, u_input.a), _wgslsmith_sub_i32(u_input.b.x, var_1.b.a.c.x), -77462i, u_input.b.x)), Struct_2(var_1.b.a));
    return select(_wgslsmith_add_vec3_u32(min(countOneBits(var_0), var_0), var_0), ~func_2(), !(max(1i, max(-2147483647i, u_input.a)) >= var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -16904i;
    let var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(func_1(), vec3<u32>(1u, 1u, 1u)), ~(~firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 19819u))));
    var var_2 = Struct_1(!global0[_wgslsmith_index_u32(abs(var_1.x), 8u)], min(-1i, 1i), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wz, -u_input.b.xz), _wgslsmith_mod_i32(-14751i, u_input.b.x)) & min(-u_input.b.xw, u_input.b.xx));
    global0 = array<bool, 8>();
    let var_3 = vec3<f32>(-1597f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-532f))) + _wgslsmith_f_op_f32(-598f + _wgslsmith_f_op_f32(454f + 739f))), -806f));
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-775f)), 2069f, _wgslsmith_f_op_f32(func_3(0u, vec2<u32>(var_1.x, var_1.x))))) * var_3));
}


struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<i32> {
    global0 = array<Struct_1, 6>();
    var var_0 = vec3<i32>(1i, 1i, 1i);
    global1 = _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(global1.x, _wgslsmith_dot_vec2_u32(arg_0.yx, u_input.a.yz), arg_0.x << (55673u % 32u), ~7373u)), vec4<u32>(1u, arg_0.x, arg_1.a, arg_0.x));
    var_0 = vec3<i32>(35691i, _wgslsmith_mod_i32(countOneBits(var_0.x), abs(select(0i, var_0.x, arg_2.x) | (var_0.x ^ -2147483647i))), -19950i);
    var var_1 = u_input.a << (~select(u_input.a, arg_0, !(arg_2.x && true)) % vec3<u32>(32u));
    return -vec2<i32>(i32(-1i) * -(var_0.x >> (global1.x % 32u)), var_0.x);
}

fn func_2() -> u32 {
    let var_0 = min(4294967295u, 4294967295u | (abs(~77140u) & ~firstTrailingBit(1u)));
    var var_1 = _wgslsmith_div_vec2_i32(func_3(~u_input.a, Struct_1(var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(1367f, -1000f) - vec2<f32>(1000f, -154f)), vec2<bool>(true, true), ~53424u), vec4<bool>(false, any(vec2<bool>(true, false)), true, true)), ~vec2<i32>(max(2147483647i, 0i), ~4835i)) & countOneBits(-(~vec2<i32>(46092i, 2147483647i) << (global1.wy % vec2<u32>(32u))));
    global0 = array<Struct_1, 6>();
    let var_2 = any(vec2<bool>(select(true, true, any(vec3<bool>(true, true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), any(vec4<bool>(false, false, true, true))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 2168f, -547f)))) + vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-690f * -1104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-789f)) + -632f), -909f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -125f))))))));
    return 23165u;
}

fn func_1() -> i32 {
    global1 = vec4<u32>(~global1.x, select(((u_input.c << (u_input.a.x % 32u)) & ~4294967295u) ^ ~(~19950u), (_wgslsmith_dot_vec3_u32(u_input.a, global1.zxx) & ~u_input.a.x) & firstLeadingBit(reverseBits(global1.x)), -725f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(805f)))), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 0u, global1.x, 59937u), _wgslsmith_div_vec4_u32(vec4<u32>(13000u, global1.x, 1u, u_input.c), vec4<u32>(23428u, global1.x, u_input.c, 1484u)))), vec4<u32>(15976u, 0u, ~func_2(), ~4294967295u)), global1.x << (global1.x % 32u));
    var var_0 = -50449i & _wgslsmith_clamp_i32(1i, -29947i, -1i);
    var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-(~823i >> (1u % 32u)), 62911i), -57508i ^ max(~(64979i << (u_input.b.x % 32u)), ~1i));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(289f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-108f, -1375f, true)))), true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) - _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(471f + 743f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1185f, -1243f) - _wgslsmith_f_op_f32(971f - _wgslsmith_f_op_f32(trunc(713f))))), _wgslsmith_f_op_f32(f32(-1f) * -2795f));
    return -16176i;
}

fn func_4(arg_0: f32, arg_1: i32) -> f32 {
    global1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, u_input.a.x, u_input.c, u_input.c), abs(countOneBits(vec4<u32>(4294967295u, u_input.c, 1u, global1.x)))), firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.a.x, 89912u, 1u, u_input.d))));
    global1 = ~vec4<u32>(9146u, (global1.x | global1.x) << (42851u % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(10085u, u_input.e, 4294967295u, global1.x), vec4<u32>(u_input.e, 1u, u_input.c, 33618u))), ~(~abs(77639u)));
    let var_0 = vec4<bool>(any(vec3<bool>(!any(vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, false)), true)), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), !(u_input.e == global1.x), false | (global1.x >= global1.x));
    global1 = reverseBits(select(~(~vec4<u32>(u_input.c, global1.x, 4294967295u, 32251u)) ^ vec4<u32>(10425u >> (global1.x % 32u), ~u_input.b.x, ~31304u, ~u_input.d), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 40493u, u_input.b.x, u_input.a.x), vec4<u32>(13820u, global1.x, 4540u, u_input.b.x)), abs(vec4<u32>(6965u, u_input.a.x, global1.x, 4294967295u)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x));
    var var_1 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_mod_u32(global1.x, u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(943f)), _wgslsmith_f_op_f32(trunc(-797f))), _wgslsmith_f_op_f32(func_4(-330f, func_1())))), vec2<bool>(true, func_2() <= global1.x), (u_input.c >> (min(_wgslsmith_div_u32(33954u, global1.x), global1.x) % 32u)) ^ 83335u);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1533f, -660f)), _wgslsmith_f_op_f32(max(var_0.b.x, -1234f)))), 1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-566f, var_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)), 665f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * -858f), _wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(var_0.b.x - 492f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-161f)), _wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(var_0.b.x, -787f))))));
    let x = u_input.a;
    s_output = StorageBuffer(4940u ^ ~u_input.d, _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, -2147483647i, 2147483647i) ^ _wgslsmith_mod_vec3_i32(select(vec3<i32>(16953i, 1i, -6707i), vec3<i32>(-27078i, 11709i, 59344i), true), vec3<i32>(-15200i, -1i, -20497i)), firstTrailingBit(select(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(-2147483647i, 0i, 1i), true))), vec4<f32>(-2423f, _wgslsmith_f_op_f32(var_0.b.x * var_1.x), var_1.x, var_1.x), 22959i);
}


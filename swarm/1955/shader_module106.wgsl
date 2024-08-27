struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -27183i;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(59247i), Struct_2(4897i), Struct_2(8057i), Struct_2(0i), Struct_2(45611i), Struct_2(0i), Struct_2(-8133i), Struct_2(-30338i), Struct_2(-70102i), Struct_2(2147483647i), Struct_2(21271i), Struct_2(38004i), Struct_2(i32(-2147483648)), Struct_2(1i), Struct_2(-18773i), Struct_2(0i), Struct_2(-64362i), Struct_2(2147483647i), Struct_2(35301i), Struct_2(0i));

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: array<vec4<bool>, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    let var_0 = vec3<u32>(arg_2, countOneBits(u_input.c), 1u);
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-847f * arg_1.x) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(572f)))), !any(vec3<bool>(all(vec4<bool>(true, true, true, false)), false, true)), any(select(global3[_wgslsmith_index_u32(1u, 4u)], vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true || all(vec4<bool>(false, any(global3[_wgslsmith_index_u32(1u, 4u)]), true, true)));
    let var_2 = countOneBits(select(~(~var_0.x) & arg_0, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(17709u, var_0.x), _wgslsmith_div_u32(~u_input.c, _wgslsmith_clamp_u32(var_0.x, 18528u, 105154u)), u_input.c), true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(245f)))));
    global2 = array<vec3<bool>, 14>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_3));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> i32 {
    let var_0 = arg_0.c.c;
    var var_1 = arg_2.c;
    var var_2 = true;
    global1 = array<Struct_2, 20>();
    return firstTrailingBit(i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2358i, 24953i, u_input.b, arg_0.b), vec4<i32>(5677i, arg_2.b, u_input.a, arg_0.b)), arg_0.b));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_mod_u32(0u, 31835u) | _wgslsmith_dot_vec2_u32(select(firstTrailingBit(vec2<u32>(arg_0, 0u)), vec2<u32>(arg_0, 1u) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(70910u, u_input.c)), vec2<u32>(u_input.c, 39767u))), _wgslsmith_mod_i32(func_4(Struct_3(select(arg_0, 0u, false), 1i, Struct_1(vec3<f32>(arg_1.x, arg_1.x, -119f), 27078u, true, vec2<u32>(arg_0, arg_0), 1u), _wgslsmith_f_op_f32(func_3(u_input.c, vec3<f32>(2152f, 826f, -1369f), u_input.c)), ~vec4<u32>(u_input.c, 1148u, 18377u, 47107u)), arg_1.x, Struct_3(1u, firstLeadingBit(u_input.a), Struct_1(vec3<f32>(1437f, arg_1.x, arg_1.x), arg_0, true, vec2<u32>(24830u, u_input.c), u_input.c), _wgslsmith_f_op_f32(-arg_1.x), vec4<u32>(arg_0, u_input.c, arg_0, 15878u))), u_input.b ^ _wgslsmith_sub_i32(countOneBits(46111i), abs(11343i))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(386f - -2446f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-983f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f + arg_1.x))), countOneBits(53512u), any(vec4<bool>(true, any(vec2<bool>(false, true)), arg_1.x <= 1000f, true)), ~abs(select(vec2<u32>(arg_0, 35415u), vec2<u32>(u_input.c, 8618u), vec2<bool>(false, false))), ~u_input.c), 1005f, reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(27165u, 1u, arg_0, arg_0), select(vec4<u32>(0u, 73023u, u_input.c, 4294967295u), vec4<u32>(arg_0, 0u, 0u, 0u), vec4<bool>(false, false, true, false))) ^ ~vec4<u32>(arg_0, 4294967295u, 4294967295u, u_input.c)));
    global0 = var_0.b;
    var var_1 = i32(-1i) * -var_0.b;
    let var_2 = ~1u;
    global2 = array<vec3<bool>, 14>();
    return -291f;
}

fn func_1() -> Struct_3 {
    global0 = u_input.b;
    global3 = array<vec4<bool>, 4>();
    global0 = 2147483647i;
    global2 = array<vec3<bool>, 14>();
    var var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(~1024u, u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-635f - -1695f)), vec2<f32>(459f, _wgslsmith_div_f32(-126f, -792f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + 1000f))))));
    return Struct_3(~54185u, -min(_wgslsmith_sub_i32(-u_input.b, ~u_input.a), _wgslsmith_mult_i32(~u_input.b, u_input.a)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), min(u_input.c, u_input.c), !(!any(global2[_wgslsmith_index_u32(0u, 14u)])), vec2<u32>(10635u, u_input.c), ~(u_input.c & u_input.c)), _wgslsmith_f_op_f32(-1282f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2139f * -1507f)))), abs(countOneBits(~abs(vec4<u32>(0u, u_input.c, 4294967295u, u_input.c)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> StorageBuffer {
    return StorageBuffer(arg_0.a, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 20u)];
    let x = u_input.a;
    s_output = func_5(func_1(), Struct_3(_wgslsmith_sub_u32(1u, u_input.c & 72179u), 11364i, func_1().c, _wgslsmith_f_op_f32(217f + _wgslsmith_div_f32(-353f, -2702f)), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.c, 47874u), vec4<u32>(1u, 4294967295u, 19712u, 26471u)))));
}


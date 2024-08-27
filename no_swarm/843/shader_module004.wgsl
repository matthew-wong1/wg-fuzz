struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(true, vec2<i32>(i32(-2147483648), 43264i)), Struct_4(true, vec2<i32>(2147483647i, -1i)), Struct_4(false, vec2<i32>(i32(-2147483648), -1i)), Struct_4(true, vec2<i32>(34803i, -19275i)), Struct_4(false, vec2<i32>(7094i, 358i)), Struct_4(true, vec2<i32>(2147483647i, -17705i)), Struct_4(false, vec2<i32>(-16045i, -21393i)), Struct_4(true, vec2<i32>(1i, i32(-2147483648))), Struct_4(false, vec2<i32>(-55821i, 31027i)), Struct_4(true, vec2<i32>(1i, -1i)), Struct_4(true, vec2<i32>(-22679i, i32(-2147483648))), Struct_4(true, vec2<i32>(i32(-2147483648), 1i)), Struct_4(false, vec2<i32>(0i, i32(-2147483648))));

var<private> global1: array<vec4<f32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_4, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))) - _wgslsmith_f_op_vec3_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(arg_1 + arg_1)));
    let var_1 = !(arg_1.x >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1431f - -669f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_2 = arg_1.x;
    var var_3 = _wgslsmith_add_u32(1u, abs(abs(countOneBits(select(arg_0.x, 83932u, var_1)))));
    return 3022u << (u_input.e % 32u);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = ~max(abs(_wgslsmith_mult_vec2_u32(u_input.b.xy << (vec2<u32>(arg_2.x, 1u) % vec2<u32>(32u)), vec2<u32>(arg_2.x, u_input.b.x))), vec2<u32>(func_3(vec4<u32>(arg_2.x, 1u, 17038u, 4294967295u), vec3<f32>(arg_1.a.x, -404f, arg_1.e)) & arg_2.x, countOneBits(func_3(arg_2, vec3<f32>(arg_1.a.x, 937f, 140f)))));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0, select(vec2<u32>(29690u, 4294967295u), abs(u_input.b.yx), vec2<bool>(!arg_1.b, true))), u_input.b.xz);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-172f, arg_1.a.x)))));
    let var_3 = arg_1.a.yz;
    var var_4 = vec4<bool>(all(vec2<bool>(arg_0, arg_0)), false, !(!(!arg_1.b)) || (any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)) || !(!arg_0)), !arg_0);
    return Struct_1(var_3.x, ~vec2<u32>(34574u, 69466u), u_input.c.x, _wgslsmith_f_op_f32(-arg_1.e), vec3<bool>(arg_0, _wgslsmith_dot_vec2_i32(arg_3.b, abs(vec2<i32>(arg_3.b.x, -2147483647i))) > 48466i, true & (_wgslsmith_f_op_f32(-var_3.x) == _wgslsmith_f_op_f32(min(arg_1.a.x, 329f)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1080f, arg_1.d, -125f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.d, -2031f), vec3<f32>(-829f, arg_1.d, -156f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-464f, arg_1.d, 983f), vec3<f32>(274f, arg_1.a, 566f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, min(arg_1.c, u_input.d), arg_0.x, select(arg_0.x, arg_0.x, false))), ~vec4<i32>(i32(-1i) * -31986i, 1i, -1i, arg_0.x)), _wgslsmith_div_i32(select(abs(u_input.d), ~(-3071i) >> (~arg_1.b.x % 32u), select(true, 4294967295u <= u_input.b.x, true)), func_2(any(select(vec4<bool>(arg_1.e.x, false, arg_1.e.x, false), vec4<bool>(true, arg_1.e.x, arg_1.e.x, arg_1.e.x), vec4<bool>(arg_1.e.x, false, true, arg_1.e.x))), Struct_5(vec4<f32>(arg_1.a, 1143f, arg_1.a, 1976f), all(vec4<bool>(false, arg_1.e.x, false, arg_1.e.x)), Struct_2(vec3<i32>(-62354i, -17792i, u_input.c.x)), arg_1.a, -1203f), ~vec4<u32>(u_input.b.x, 0u, 4294967295u, arg_1.b.x) ^ vec4<u32>(arg_1.b.x, 91191u, arg_1.b.x, 17728u), Struct_4(!arg_1.e.x, vec2<i32>(4147i, 51900i))).c), arg_1.c, countOneBits(u_input.c.x));
    var var_2 = all(!select(vec4<bool>(var_0.x == var_0.x, true, true, arg_1.e.x), !select(vec4<bool>(arg_1.e.x, arg_1.e.x, false, arg_1.e.x), vec4<bool>(true, arg_1.e.x, arg_1.e.x, true), vec4<bool>(false, arg_1.e.x, arg_1.e.x, arg_1.e.x)), false));
    let var_3 = u_input.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_4, 13>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-566f, 2244f)) + 162f)));
    let var_1 = vec3<bool>(true, all(!vec2<bool>(any(vec3<bool>(false, false, true)), true)), !(min(4294967295u, u_input.e) > 1u) | !(_wgslsmith_mod_i32(-7398i, 1i) < min(u_input.a.x, u_input.a.x)));
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(u_input.c.xx, func_2(true, Struct_5(vec4<f32>(774f, -238f, -1878f, -439f), var_1.x, Struct_2(u_input.a), 1551f, 2041f), vec4<u32>(4294967295u, 28916u, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 13u)])))))), u_input.b.x <= 1u, Struct_2(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2875f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(2324f, -582f))) + _wgslsmith_f_op_f32(round(1f)))));
    let var_3 = true;
    return _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~select(u_input.b.yy, countOneBits(vec2<u32>(u_input.e, u_input.e)), !var_3), u_input.b.zz), vec2<u32>(95970u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.c.yy, u_input.a.xx)), countOneBits(select(vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.c.x, 2147483647i), vec2<bool>(false, false))));
    var var_1 = vec2<u32>(72594u, min(~u_input.b.x & firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(u_input.b.x, 0u)) ^ 4294967295u);
    global1 = array<vec4<f32>, 18>();
    var var_2 = 1181f;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(func_1(), _wgslsmith_mod_vec2_u32(u_input.b.xy ^ vec2<u32>(var_1.x, 0u), ~vec2<u32>(73186u, u_input.e)) & firstLeadingBit(select(vec2<u32>(4294967295u, u_input.e), vec2<u32>(var_1.x, 4294967295u), true))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~91755u, 0u), func_1()));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~min(vec4<u32>(var_3.x, u_input.e, var_1.x, 43001u), vec4<u32>(55158u, u_input.e, var_3.x, 0u))) | _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 20110u, var_1.x, 1u), ~vec4<u32>(var_3.x, 0u, var_3.x, 19293u), vec4<u32>(41578u, var_3.x, 4705u, 41210u)), ~(~vec4<u32>(var_1.x, u_input.b.x, var_1.x, u_input.e))), select(~select(vec4<u32>(37685u, 26256u, 0u, var_3.x) | vec4<u32>(var_3.x, 4294967295u, var_1.x, 31078u), ~vec4<u32>(u_input.e, var_1.x, var_3.x, 104541u), all(vec3<bool>(false, false, false))), firstLeadingBit(vec4<u32>(func_1().x, _wgslsmith_add_u32(var_3.x, 51606u), _wgslsmith_add_u32(23904u, u_input.e), max(4294967295u, u_input.b.x))), vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), true, true))), 13u)];
    var_2 = 510f;
    var_2 = -449f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-18298i), 1i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-179f)) + _wgslsmith_f_op_f32(f32(-1f) * -1171f)), 1f), -189f));
}


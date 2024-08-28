struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<bool, 24>;

var<private> global2: array<bool, 6>;

var<private> global3: i32 = -1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    global3 = u_input.a;
    global2 = array<bool, 6>();
    var var_0 = Struct_1(select(~countOneBits(_wgslsmith_mult_i32(6257i, u_input.a)), -(~_wgslsmith_mod_i32(u_input.d, -31748i)), true), !(u_input.b.x != abs(106099u)));
    let var_1 = Struct_1(countOneBits(_wgslsmith_add_i32(-7506i, _wgslsmith_mult_i32(var_0.a, 46815i & var_0.a))), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(1u, 35638u), _wgslsmith_add_u32(u_input.c, 0u))), 6u)]);
    var var_2 = abs(select(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 89216u, 1u), vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(21886u, 87951u, 1u)), vec3<u32>(~select(u_input.c, u_input.b.x, false), u_input.e, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(90405u, u_input.e, 1u), vec3<u32>(u_input.b.x, u_input.c, 46347u)))), all(vec2<bool>(true && var_1.b, true))));
    return !(!vec4<bool>(select(var_0.b == global2[_wgslsmith_index_u32(u_input.b.x, 6u)], all(vec3<bool>(var_1.b, false, true)), true), all(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 24u)], false, false, var_0.b)), true, false));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.b;
    var_0 = vec2<u32>(u_input.c, ~firstLeadingBit(u_input.c));
    let var_1 = u_input.a & (_wgslsmith_div_i32(u_input.a, ~(-35187i)) >> (~11100u % 32u));
    var var_2 = 43972u;
    let var_3 = Struct_1(-2147483647i << (_wgslsmith_mod_u32(~var_0.x, 33392u) % 32u), any(func_3()));
    return Struct_1(-(~(i32(-1i) * -1i)), !any(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(63070u, 24u)], global1[_wgslsmith_index_u32(arg_2.x, 24u)])));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(~0u, abs(~u_input.c)), 59373u, select(~u_input.c, ~1u, (arg_0.b && false) && true), max(~40966u, 15727u)) | ~vec4<u32>(1u, u_input.c, ~92502u, u_input.b.x);
    global3 = u_input.a;
    let var_1 = arg_0;
    global1 = array<bool, 24>();
    var var_2 = var_1.a;
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_4(func_2(firstTrailingBit(0u) | u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, 1000f, -2139f, 376f))))), select(vec2<u32>(u_input.b.x ^ u_input.c, u_input.b.x), ~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.e)), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.e, 6u)], all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 24u)], global1[_wgslsmith_index_u32(34433u, 24u)], true)))), vec4<f32>(_wgslsmith_div_f32(455f, -432f), -600f, _wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(max(-103f, _wgslsmith_f_op_f32(1351f * 168f))))), !any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 6u)])), func_2(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 32994u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1615f), _wgslsmith_f_op_f32(986f - -340f), _wgslsmith_f_op_f32(select(-377f, 1798f, true)), _wgslsmith_f_op_f32(-605f + -1466f))), vec2<u32>(_wgslsmith_add_u32(~40777u, 35522u), _wgslsmith_add_u32(~97482u, _wgslsmith_div_u32(50967u, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(336f, -1719f, 930f, -247f) + vec4<f32>(2220f, 547f, -557f, -1073f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = array<bool, 6>();
    global1 = array<bool, 24>();
    let var_0 = arg_0;
    global2 = array<bool, 6>();
    var var_1 = ~35924u;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 24u)];
    var var_1 = func_5(Struct_1(_wgslsmith_mod_i32(countOneBits(u_input.d), u_input.a), global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), Struct_1(firstTrailingBit(-_wgslsmith_clamp_i32(u_input.a, 36712i, u_input.a)), global2[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-135f, -250f))))), func_1(u_input.a));
    global1 = array<bool, 24>();
    let var_2 = _wgslsmith_mod_vec3_u32(min(min(vec3<u32>(u_input.b.x, 44034u, u_input.e), vec3<u32>(11163u, 3179u, 36153u)), select(vec3<u32>(u_input.b.x, u_input.b.x, 74332u), vec3<u32>(68101u, u_input.e, 47238u), vec3<bool>(false, false, false))) & reverseBits(vec3<u32>(u_input.e, 4294967295u, u_input.b.x) | vec3<u32>(u_input.c, u_input.e, 4294967295u)), ~vec3<u32>(u_input.c, abs(u_input.e), u_input.c)) << (~(~select(vec3<u32>(0u, u_input.c, u_input.b.x), ~vec3<u32>(61065u, 4294967295u, u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 24u)]), global1[_wgslsmith_index_u32(4294967295u, 24u)]))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(346f)))), _wgslsmith_f_op_f32(-524f + _wgslsmith_f_op_f32(trunc(212f)))))), var_2, ~1u);
}


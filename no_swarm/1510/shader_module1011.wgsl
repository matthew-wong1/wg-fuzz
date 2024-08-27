struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: bool = true;

var<private> global1: f32 = 365f;

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global3 = array<Struct_1, 16>();
    var var_0 = Struct_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(firstLeadingBit(u_input.a), 60177u, 1u), (~vec3<u32>(0u, 41224u, 11116u) & vec3<u32>(u_input.a, u_input.a, u_input.a)) | vec3<u32>(u_input.a, u_input.a, abs(4294967295u))), u_input.a);
    var_0 = Struct_3(firstTrailingBit(vec3<u32>(~41034u, u_input.a, ~var_0.a.x)) ^ vec3<u32>(8849u, ~92327u ^ var_0.a.x, 1u ^ var_0.b), var_0.a.x);
    let var_1 = ~var_0.b;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(max(arg_0, arg_0)), true)))) * 602f) + _wgslsmith_f_op_f32(f32(-1f) * -299f));
    return -_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32((vec3<i32>(-53787i, u_input.b, u_input.c) >> (var_0.a % vec3<u32>(32u))) ^ select(vec3<i32>(1i, 0i, u_input.b), vec3<i32>(-2147483647i, 20538i, u_input.b), vec3<bool>(true, false, true)), firstTrailingBit(vec3<i32>(u_input.c, 1i, u_input.b) >> (vec3<u32>(var_1, var_0.b, u_input.a) % vec3<u32>(32u)))), max(-vec3<i32>(27667i, -2147483647i, 40448i) ^ (vec3<i32>(2147483647i, u_input.d.x, u_input.c) ^ vec3<i32>(6652i, 58038i, u_input.d.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.c, -1i), vec3<i32>(u_input.c, u_input.e, -2147483647i)), vec3<i32>(-1i, u_input.e, u_input.c))));
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_2(true, all(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false)))), ~vec3<u32>(u_input.a, 22438u, 0u));
    var_0 = Struct_2(true & (_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -21489i), _wgslsmith_mult_i32(u_input.e, u_input.b)) < u_input.d.x), var_0.a, select(reverseBits(var_0.c), ~vec3<u32>(_wgslsmith_sub_u32(46050u, var_0.c.x), var_0.c.x, ~3314u), vec3<bool>(var_0.b, false, all(!vec4<bool>(var_0.b, true, var_0.a, false)))));
    let var_1 = all(select(vec4<bool>(true, var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.c.x, u_input.a)) != ~1u, !select(var_0.b, var_0.b, var_0.b)), !vec4<bool>(true, var_0.b | var_0.a, select(false, false, true), all(vec3<bool>(var_0.b, var_0.a, true))), true));
    let var_2 = vec2<bool>(var_1, !any(select(!vec4<bool>(false, var_0.a, var_0.b, var_1), !vec4<bool>(var_0.a, var_1, true, true), false)));
    var var_3 = _wgslsmith_div_i32(u_input.e, min(2147483647i, u_input.c));
    return _wgslsmith_f_op_f32(min(-616f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) + _wgslsmith_f_op_f32(f32(-1f) * -787f)), _wgslsmith_f_op_f32(-1000f + -380f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-978f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(func_4(~func_3(_wgslsmith_div_f32(-1000f, 1000f)) & abs(vec3<i32>(arg_3.x, 14392i, 2461i))));
    global3 = array<Struct_1, 16>();
    global2 = array<vec2<u32>, 8>();
    global2 = array<vec2<u32>, 8>();
    let var_0 = 4294967295u;
    return 4294967295u;
}

fn func_1() -> vec3<bool> {
    let var_0 = reverseBits(firstTrailingBit(~reverseBits(u_input.e) << (1u % 32u)));
    var var_1 = vec3<u32>(~52677u, func_2(countOneBits(select(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(false, true, false)) << (~vec3<u32>(u_input.a, 24453u, u_input.a) % vec3<u32>(32u))), ~u_input.a, global3[_wgslsmith_index_u32(1u >> (u_input.a % 32u), 16u)], vec4<i32>(-1i, _wgslsmith_mult_i32(-16067i, u_input.d.x) & 0i, -32577i, abs(var_0))), ~min(u_input.a, ~(~u_input.a)));
    var var_2 = -1092f;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -172f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2260f, -399f, false)) - _wgslsmith_f_op_f32(-500f * -1245f))))), _wgslsmith_f_op_f32(step(547f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(583f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1735f)), -1576f))))), false));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f), -311f) + _wgslsmith_f_op_f32(f32(-1f) * -983f))));
    return vec3<bool>(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(470f + 491f))) == 1f, all(vec4<bool>(true, true, true, true)), true | all(vec3<bool>(true, true, true))), !select(any(vec2<bool>(false, false)) & true, 2147483647i == ~u_input.b, false), select(true, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), !all(vec3<bool>(false, false, true)) | !select(true, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, -644f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2843f, 811f) - vec2<f32>(1574f, -516f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f * _wgslsmith_f_op_f32(var_0.x * var_0.x))), 1176f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-943f, var_0.x), _wgslsmith_f_op_f32(round(-1000f)))), -1000f, false))));
    var var_2 = any(!(!func_1()));
    var var_3 = u_input.a;
    global2 = array<vec2<u32>, 8>();
    let var_4 = ~(~vec4<u32>(u_input.a, _wgslsmith_sub_u32(~u_input.a, ~46521u), 59323u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(var_4, vec4<u32>(0u, u_input.a, var_4.x, 15043u) & vec4<u32>(4294967295u, 0u, var_4.x, 86963u))), var_4));
}


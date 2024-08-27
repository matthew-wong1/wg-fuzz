struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(-316f, vec3<u32>(1720u, 0u, 10131u), vec3<i32>(-36809i, 1i, 2147483647i), -19830i, vec2<i32>(12526i, 2147483647i)), Struct_1(305f, vec3<u32>(28940u, 62866u, 0u), vec3<i32>(13068i, -1i, i32(-2147483648)), 8933i, vec2<i32>(-1i, 41669i)), 45401u, 111030u, 697f));

var<private> global3: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_3(true, _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(33994u, 19u)], -43066i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.a.x, u_input.c.x), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(17925u, 19u)], u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], -1i))), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(u_input.a, u_input.c, u_input.c))), ~(-vec4<i32>(u_input.b, 1i, u_input.b, -2147483647i))));
    global2 = array<Struct_2, 1>();
    global1 = array<i32, 19>();
    global3 = any(!select(!(!vec2<bool>(var_0.a, var_0.a)), vec2<bool>(true, var_0.a | false), select(!vec2<bool>(var_0.a, true), !vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a))));
    var var_1 = var_0;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(trunc(-1469f)), -614f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1229f, -712f, -522f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, 609f, 377f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-276f, -403f, -428f) * vec3<f32>(-731f, 232f, 742f))))))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_3 {
    global2 = array<Struct_2, 1>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, 4294967295u), 1u)];
    let var_1 = Struct_3(-1i != (-1i ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, var_0.c, 32509u, 0u), ~vec4<u32>(arg_0, 0u, 4294967295u, arg_0)), 19u)]), u_input.c);
    global2 = array<Struct_2, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(594f, -816f, -1322f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-621f, var_0.a.a, -1000f)), select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, false, false), false)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, -1331f, -529f) + vec3<f32>(var_0.e, 352f, var_0.a.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1979f, 283f, var_0.b.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.a, var_0.a.a, -629f), vec3<f32>(-732f, var_0.b.a, 668f)), var_0.b.b.x >= 1u)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(797f, 747f, 719f)))), false & !var_1.a)));
    return Struct_3(any(vec4<bool>(all(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)) && false, true, all(vec2<bool>(var_1.a, false)), true)), u_input.a);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = func_2(~1u, ~countOneBits(arg_1.a.b.x));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e)), arg_1.a.a), ~(~select(vec3<u32>(arg_1.c, arg_1.c, arg_1.a.b.x), ~arg_1.b.b, vec3<bool>(var_0.a, var_0.a, true))), firstLeadingBit(reverseBits(firstTrailingBit(var_0.b.ywy))), 4233i, _wgslsmith_clamp_vec2_i32(var_0.b.yx, _wgslsmith_sub_vec2_i32(arg_1.b.c.zx, (vec2<i32>(var_0.b.x, arg_0) ^ var_0.b.yx) | (var_0.b.xy >> (vec2<u32>(57767u, 0u) % vec2<u32>(32u)))), -_wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, arg_0), vec2<i32>(-1i, 15217i))));
    global3 = all(select(!select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, true), var_0.a), select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a), var_0.a), vec2<bool>(true, true)), vec2<bool>(true, true))) || true;
    var var_2 = func_2(31477u, var_1.b.x);
    let var_3 = arg_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(648f - _wgslsmith_f_op_f32(max(var_1.a, -1317f))) - 782f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 1>();
    let var_0 = -countOneBits(u_input.b);
    global1 = array<i32, 19>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1390f + 430f))))) + _wgslsmith_f_op_f32(f32(-1f) * -176f));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(135f, 1187f, var_1) + vec3<f32>(var_1, -753f, 1000f))) * vec3<f32>(_wgslsmith_div_f32(var_1, -1285f), _wgslsmith_f_op_f32(var_1 * var_1), -1033f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, var_1, var_1))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1577f + 533f), var_1, _wgslsmith_f_op_f32(var_1 - -1662f))))));
    global3 = select(all(vec4<bool>(true, true, true, true)) | false, true, false);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_1)) - vec3<f32>(var_1, 308f, 217f)) * vec3<f32>(_wgslsmith_f_op_f32(step(var_2.x, 1000f)), _wgslsmith_f_op_f32(671f + -2266f), _wgslsmith_f_op_f32(func_1(3633i, global2[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1745f, -1145f, var_2.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(721f, 1113f, 1106f) - vec3<f32>(var_2.x, var_1, -1181f))) + vec3<f32>(var_2.x, var_1, var_1))));
    global0 = ~select(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 46421u), vec2<u32>(9936u, 1u)) >> (select(vec2<u32>(9447u, 1u), vec2<u32>(4294967295u, 54222u), vec2<bool>(true, true)) % vec2<u32>(32u)), ~(~vec2<u32>(43625u, 4294967295u))), reverseBits(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(1u, 1u))), false && all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~((i32(-1i) * -19343i) | -global1[_wgslsmith_index_u32(4294967295u, 19u)]) | ~(-_wgslsmith_div_i32(0i, -39822i)));
}


struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(25086i, 13969i, vec2<i32>(i32(-2147483648), 22394i)), Struct_1(49455i, 29789i, vec2<i32>(1i, -24416i)), vec2<f32>(-334f, 435f), Struct_1(-95272i, -12345i, vec2<i32>(21818i, -36973i)), vec2<i32>(1i, -43971i));

var<private> global1: array<Struct_5, 21>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_1) -> i32 {
    global0 = Struct_5(arg_2, arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f - global0.c.x) * _wgslsmith_f_op_f32(-1062f - _wgslsmith_f_op_f32(f32(-1f) * -1417f))), _wgslsmith_div_f32(-1584f, _wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(sign(global0.c.x))))), Struct_1(u_input.a, _wgslsmith_add_i32(select(-19235i, global0.d.c.x, false) | _wgslsmith_div_i32(u_input.b, u_input.e.x), u_input.b), _wgslsmith_mod_vec2_i32(reverseBits(firstLeadingBit(arg_2.c)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x) & arg_0.a.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.a, arg_2.c.x), arg_2.c, global0.b.c)))), vec2<i32>(arg_2.c.x, _wgslsmith_div_i32(-arg_2.c.x, firstLeadingBit(-2147483647i))) | _wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(-903i, ~(-2147483647i))));
    global1 = array<Struct_5, 21>();
    global0 = Struct_5(global0.d, arg_2, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f) + -745f), arg_0.c.x))), Struct_1(-1i, -1i, u_input.d), vec2<i32>(2832i, -arg_2.b));
    global0 = Struct_5(global0.d, arg_2, vec2<f32>(global0.c.x, -1000f), arg_2, _wgslsmith_add_vec2_i32(select(select(arg_0.d.c, vec2<i32>(-34900i, u_input.a), arg_1) & vec2<i32>(-8918i, u_input.a), reverseBits(u_input.d), true), ~global0.d.c));
    global0 = Struct_5(global0.b, Struct_1(-arg_0.b.a, arg_0.e.x, u_input.e), vec2<f32>(_wgslsmith_f_op_f32(-797f - -1604f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.x))))), arg_0.b, abs(countOneBits(-_wgslsmith_mult_vec2_i32(arg_2.c, vec2<i32>(arg_2.a, u_input.b)))));
    return -2147483647i;
}

fn func_1(arg_0: Struct_5) -> f32 {
    let var_0 = global0.d.b;
    var var_1 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(false, all(vec4<bool>(false, true, false, false)), true, func_2(vec3<f32>(-607f, -162f, arg_0.c.x)))));
    let var_2 = 5335u;
    var var_3 = Struct_1(max(_wgslsmith_mult_i32(-16645i, global0.b.a), 0i), ~min(_wgslsmith_sub_i32(-u_input.d.x, func_3(Struct_5(Struct_1(arg_0.a.a, arg_0.a.b, global0.e), Struct_1(u_input.d.x, -2903i, vec2<i32>(arg_0.d.a, u_input.d.x)), global0.c, arg_0.a, vec2<i32>(global0.a.b, global0.a.a)), var_1.x, Struct_1(0i, arg_0.e.x, u_input.e))), reverseBits(arg_0.a.a) | (0i << (u_input.c % 32u))), select(-vec2<i32>(abs(-4918i), u_input.d.x), min(global0.d.c, u_input.e), vec2<bool>(u_input.c > ~u_input.c, (var_2 >> (u_input.c % 32u)) > ~45961u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - global0.c.x))), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + -166f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * 496f) + _wgslsmith_f_op_f32(min(arg_0.c.x, global0.c.x)))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, global0.c.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(global0.b, global0.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(Struct_1(-2147483647i, 0i, u_input.d), global0.a, vec2<f32>(-917f, -1321f), global0.a, vec2<i32>(global0.b.a, -2147483647i))))), _wgslsmith_f_op_f32(func_1(Struct_5(global0.a, global0.b, global0.c, Struct_1(u_input.e.x, 2147483647i, vec2<i32>(-22899i, -22693i)), vec2<i32>(-41611i, 0i))))))), global0.a, firstTrailingBit(vec2<i32>(global0.d.a, _wgslsmith_add_i32(~u_input.d.x, min(global0.b.c.x, 2147483647i)))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(415f)), _wgslsmith_f_op_f32(trunc(global0.c.x)), global0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, global0.c.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1165f, global0.c.x, -671f), vec3<f32>(938f, 1180f, 411f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 676f, -762f) + vec3<f32>(-622f, global0.c.x, global0.c.x)))))), ~(~1u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x) * vec4<f32>(517f, 1675f, -2122f, -1555f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-722f, global0.c.x, global0.c.x, global0.c.x)))), vec4<f32>(1f, 1f, 1f, 1f))))), -1i, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.b.c.x, global0.b.c.x), abs(vec3<i32>(global0.e.x, u_input.d.x, -11808i))) & -27715i, ~global0.e.x, countOneBits(~u_input.e)));
    let var_1 = _wgslsmith_div_f32(var_0.a.x, -1646f);
    let var_2 = vec4<i32>(u_input.d.x, abs(_wgslsmith_sub_i32(~(9688i >> (u_input.c % 32u)), max(~(-2147483647i), -2147483647i))), 1i, var_0.d);
    global0 = global1[_wgslsmith_index_u32(~max((0u ^ max(var_0.b, 23054u)) << (_wgslsmith_sub_u32(5516u, min(u_input.c, 4294967295u)) % 32u), reverseBits(var_0.b)), 21u)];
    var var_3 = var_0.a.x;
    let var_4 = Struct_4(select(_wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(-792f, 537f)) <= _wgslsmith_f_op_f32(max(var_0.c.x, var_1)), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), true), !vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -827f))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_5(var_0.e, Struct_1(0i, 2147483647i ^ u_input.b, select(vec2<i32>(43594i, 17475i), vec2<i32>(2147483647i, var_2.x), false)), vec2<f32>(_wgslsmith_f_op_f32(max(global0.c.x, 541f)), _wgslsmith_f_op_f32(1578f + global0.c.x)), var_0.e, var_0.e.c))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(29837u, 40252u, _wgslsmith_mult_vec3_i32(abs(var_2.xzz), var_2.zzx));
}


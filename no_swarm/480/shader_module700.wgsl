struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: u32 = 1u;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, -807f))))));
    global0 = array<Struct_1, 3>();
    global1 = u_input.b;
    global0 = array<Struct_1, 3>();
    var var_1 = vec4<i32>(-1i, 46134i, u_input.a.x, 18411i);
    return var_0.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_add_i32(-25184i, _wgslsmith_div_i32(abs(-34491i ^ u_input.c.x), -1i)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-996f)) * 338f))), 536f, -880f, _wgslsmith_f_op_f32(func_3())), u_input.b, -(u_input.c & u_input.c));
    global0 = array<Struct_1, 3>();
    var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(u_input.c << (vec4<u32>(u_input.b, 17062u, 4294967295u, var_0.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, var_0.a, u_input.c.x)), _wgslsmith_clamp_vec4_i32(var_0.d, vec4<i32>(18951i, -2147483647i, var_0.a, 1i), var_0.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1609f, var_0.b.x, 391f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(424f, 289f, -854f, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.b))))), -1000f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, _wgslsmith_sub_u32(4294967295u, 18787u)) | select(vec3<u32>(u_input.b, 1u, 41305u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, 0u, var_0.c), vec3<u32>(0u, var_0.c, u_input.d)), true), vec3<u32>(abs(1u), ~min(113465u, u_input.d), 5542u)), u_input.c);
    var_0 = Struct_1(-u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * _wgslsmith_f_op_f32(879f * var_0.b.x)), 696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), var_0.b.x)), 25121u, u_input.c);
    let var_1 = var_0.b.x;
    return vec2<bool>(all(select(vec2<bool>(true, var_0.a == -51044i), vec2<bool>(true, true), true)), true);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    var var_0 = select(select(!select(arg_2.a.yx, !arg_2.a.xz, any(vec4<bool>(arg_2.a.x, arg_0, true, false))), select(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_2.a.x), vec2<bool>(true, true)), select(vec2<bool>(arg_2.a.x, false), arg_2.a.yx, vec2<bool>(arg_2.a.x, false)), !arg_2.a.xz), func_2(), true), vec2<bool>(false, false)), vec2<bool>(arg_2.a.x, arg_2.a.x || all(vec3<bool>(false, arg_0, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)) - 620f) >= _wgslsmith_f_op_f32(f32(-1f) * -590f));
    let var_1 = min(u_input.c.x, _wgslsmith_sub_i32(~(-2147483647i), max(_wgslsmith_sub_i32(-1i, -24900i << (arg_3.x % 32u)), 0i)));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1), arg_3.yy), ~1u, ~u_input.d, 25707u), ~vec4<u32>(11440u, u_input.b, 0u, arg_3.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(36404u, arg_1, 0u, 1u), vec4<u32>(1u, arg_3.x, arg_1, arg_3.x)), vec4<u32>(~136571u, 30044u, _wgslsmith_dot_vec4_u32(vec4<u32>(6549u, 4294967295u, 1u, u_input.d), vec4<u32>(21738u, arg_1, arg_1, arg_3.x)), min(0u, u_input.d))), _wgslsmith_mod_vec4_u32(max(~(~vec4<u32>(u_input.d, 1u, 0u, arg_1)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(30113u, arg_3.x, arg_1, arg_1), vec4<u32>(48794u, 1u, 0u, 1618u)), ~vec4<u32>(u_input.d, u_input.b, 19552u, 4294967295u))), min(firstTrailingBit(vec4<u32>(arg_1, 51726u, 4294967295u, arg_3.x)), ~abs(vec4<u32>(arg_1, arg_1, u_input.b, 23707u)))));
    var var_4 = Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1350f)))))));
    return 692f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(any(vec4<bool>(true, true, true, true)), 47075u, Struct_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(144f, -302f, 1025f))), ~vec3<u32>(u_input.b, 1u, u_input.b))), _wgslsmith_div_f32(-397f, 1242f))) != _wgslsmith_f_op_f32(269f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1313f + -1166f))), -330f, all(vec2<bool>(true, false)))));
    var_0 = true;
    let var_1 = select(abs(-37461i), u_input.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, -745f, 683f, -1973f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, 367f, 303f, 162f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_f_op_f32(f32(-1f) * -142f), -1724f, _wgslsmith_f_op_f32(trunc(363f)))))), vec3<i32>(i32(-1i) * -12778i, -(-var_1 >> (4294967295u % 32u)), ~(2147483647i >> (u_input.b % 32u))), vec3<u32>(_wgslsmith_div_u32(u_input.d, abs(1u)), ~abs(reverseBits(0u)), 0u));
}


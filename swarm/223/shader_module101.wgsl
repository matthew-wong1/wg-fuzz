struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    var var_1 = !vec3<bool>(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), -firstTrailingBit(-2147483647i) > reverseBits(-55378i), false);
    let var_2 = -u_input.b;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.yx, arg_0.yz)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -628f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -210f))))))), select(select(vec4<bool>(arg_1.x, true, true, !arg_1.x), vec4<bool>(any(vec3<bool>(false, arg_1.x, arg_1.x)), arg_1.x, select(arg_1.x, arg_1.x, false), any(vec3<bool>(arg_1.x, arg_1.x, false))), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), any(arg_1), all(vec3<bool>(arg_1.x, true, arg_1.x)), arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x), select(!vec4<bool>(true, true, true, arg_1.x), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(false, false, arg_1.x, false))), select(select(select(vec4<bool>(false, arg_1.x, false, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, false)), vec4<bool>(true, arg_1.x, true, true), !vec4<bool>(arg_1.x, true, true, true)), !(!vec4<bool>(arg_1.x, arg_1.x, true, false)), true)), select(select(vec2<i32>(arg_3, -2147483647i), ~u_input.b.zy, vec2<bool>(u_input.d.x == 2858u, true)), _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(arg_3), arg_3 >> (13400u % 32u)), vec2<i32>(u_input.e, 10455i) << (arg_2 % vec2<u32>(32u))), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), !all(vec4<bool>(arg_1.x, true, false, true)))));
    let var_2 = ~1u;
    var var_3 = true;
    var_3 = any(!vec3<bool>(!(var_1.c.x | false), select(647f <= var_1.b.x, true, arg_1.x), false));
    return u_input.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(4435u, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1590f), vec2<f32>(906f, 652f)))), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), u_input.d.yx, -(~2147483647i))), u_input.d.x, countOneBits(abs(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x)) & func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2142f)), vec2<bool>(true, true), _wgslsmith_div_vec2_u32(u_input.d.yy, vec2<u32>(1u, 0u)), -27242i)));
    global0 = array<vec3<u32>, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-818f, 439f) + vec2<f32>(-549f, 139f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, -984f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, 1744f) + vec2<f32>(-1089f, 1561f)), vec2<f32>(337f, -1341f)), vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_div_vec3_i32(u_input.b, countOneBits(~_wgslsmith_add_vec3_i32(u_input.c.ywy, vec3<i32>(u_input.a, u_input.b.x, u_input.a)))) | vec3<i32>(~(~u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.a, u_input.a), select(u_input.b, ~u_input.c.ywy, vec3<bool>(true, true, true))), -16388i);
    let var_3 = Struct_3(Struct_2(true, var_1, !vec4<bool>(all(vec2<bool>(false, false)), false, false, true), -vec2<i32>(1i, -2147483647i)), vec3<i32>(firstLeadingBit(1i ^ -var_2.x), u_input.b.x, var_2.x));
    return Struct_2(all(vec3<bool>(var_3.a.a, true, firstTrailingBit(0u) != var_0.x)), var_1, vec4<bool>((_wgslsmith_add_u32(0u, u_input.d.x) < countOneBits(17036u)) | !(var_3.a.b.x > var_1.x), var_3.a.c.x, !any(vec3<bool>(true, true, var_3.a.c.x)), true), abs(vec2<i32>(-8274i, var_2.x)) & -firstTrailingBit(vec2<i32>(27042i, var_3.a.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 27>();
    var var_0 = func_1();
    let var_1 = var_0.c;
    let var_2 = Struct_1(-1490f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -862f, var_0.b.x) + vec4<f32>(-1016f, -925f, var_0.b.x, 346f))))), vec4<f32>(1895f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) + _wgslsmith_f_op_f32(abs(var_0.b.x))), var_0.b.x), vec4<bool>(any(!var_0.c.wyz), true, func_1().a, true))), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x), firstLeadingBit(vec4<u32>(0u, 34161u, 4294967295u, 360u)))) != firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d, global0[_wgslsmith_index_u32(u_input.d.x, 27u)]) ^ _wgslsmith_mult_u32(4294967295u, u_input.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, ~u_input.d.x, abs(~u_input.d.x)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d.x, 40216u, u_input.d.x), vec4<u32>(u_input.d.x, 4009u, u_input.d.x, 2403u)))));
    global0 = array<vec3<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(-9263i >> (var_2.d.x % 32u), select(var_2.d.wz, u_input.d.zx >> (abs(~vec2<u32>(1u, 53555u)) % vec2<u32>(32u)), true), abs(~vec2<i32>(var_0.d.x, _wgslsmith_mod_i32(39221i, u_input.e))));
}


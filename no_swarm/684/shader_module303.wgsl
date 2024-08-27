struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = Struct_4(vec2<bool>(countOneBits(_wgslsmith_mult_i32(arg_2.d.x, -2147483647i)) == -arg_2.d.x, arg_2.c.b.x), arg_2.b, Struct_1(_wgslsmith_sub_i32(10555i, 20384i), arg_2.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.a.a.c)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.a.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec2<i32>(abs(2147483647i), -arg_2.d.x));
    var var_1 = _wgslsmith_add_u32(countOneBits(arg_0), u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.a.a.c.x, var_0.b.a.a.c.x, -288f)));
    var var_3 = var_2.x;
    var_3 = 318f;
    return select(vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1258f)))) >= -1337f, any(vec2<bool>(true, all(vec3<bool>(var_0.b.a.a.b.x, arg_2.b.a.a.b.x, var_0.a.x)))), any(select(select(vec4<bool>(arg_2.c.b.x, false, arg_2.a.x, var_0.b.b.b.x), vec4<bool>(var_0.c.b.x, arg_2.b.b.b.x, false, arg_2.b.b.b.x), var_0.c.b.x), vec4<bool>(var_0.a.x, true, true, true), vec4<bool>(true, arg_2.c.b.x, arg_2.c.b.x, false))), var_0.a.x), vec4<bool>(false, arg_1 > 0u, var_0.c.b.x, any(!select(vec3<bool>(var_0.b.a.a.b.x, arg_2.c.b.x, true), vec3<bool>(arg_2.b.a.a.b.x, false, false), false))), !(!select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b.a.a.b.x, false, true, false), var_0.c.a < -2897i)));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = select(!(!func_3(u_input.a << (u_input.a % 32u), firstTrailingBit(u_input.a), Struct_4(arg_1.a.b, Struct_3(Struct_2(arg_1.a), Struct_1(arg_1.a.a, arg_1.a.b, vec2<f32>(arg_0, 613f))), arg_1.a, vec2<i32>(-2147483647i, 19801i)))), select(!select(func_3(62936u, 3097u, Struct_4(vec2<bool>(false, arg_1.a.b.x), Struct_3(Struct_2(Struct_1(arg_1.a.a, vec2<bool>(arg_1.a.b.x, arg_1.a.b.x), arg_1.a.c)), arg_1.a), arg_1.a, vec2<i32>(arg_1.a.a, arg_1.a.a))), select(vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, true, true), vec4<bool>(true, true, arg_1.a.b.x, false), true), !vec4<bool>(false, false, false, arg_1.a.b.x)), select(!vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x), vec4<bool>(arg_1.a.b.x, 16591u >= u_input.a, arg_1.a.b.x && arg_1.a.b.x, all(vec3<bool>(true, false, false))), func_3(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_sub_u32(u_input.a, 11543u), Struct_4(vec2<bool>(true, false), Struct_3(Struct_2(arg_1.a), arg_1.a), arg_1.a, vec2<i32>(arg_1.a.a, arg_1.a.a))).x), !(!(!arg_1.a.b.x))), select(vec4<bool>(!(false | arg_1.a.b.x), false, _wgslsmith_mod_u32(4294967295u, 1u) >= countOneBits(u_input.a), !arg_1.a.b.x), select(!(!vec4<bool>(arg_1.a.b.x, true, false, false)), !vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, true, false), any(select(vec3<bool>(arg_1.a.b.x, false, true), vec3<bool>(true, false, false), true))), all(func_3(4294967295u, u_input.a, Struct_4(arg_1.a.b, Struct_3(Struct_2(Struct_1(2192i, vec2<bool>(false, arg_1.a.b.x), vec2<f32>(arg_0, -1065f))), Struct_1(-35889i, arg_1.a.b, vec2<f32>(arg_1.a.c.x, 892f))), arg_1.a, vec2<i32>(arg_1.a.a, 25569i))).zxz)));
    var_0 = select(!func_3(698u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 49013u), vec3<u32>(u_input.a, 69147u, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a))), Struct_4(func_3(1u, u_input.a, Struct_4(vec2<bool>(arg_1.a.b.x, false), Struct_3(arg_1, Struct_1(-17955i, vec2<bool>(false, var_0.x), arg_1.a.c)), Struct_1(30462i, vec2<bool>(var_0.x, true), arg_1.a.c), vec2<i32>(arg_1.a.a, arg_1.a.a))).wx, Struct_3(Struct_2(Struct_1(arg_1.a.a, var_0.wz, arg_1.a.c)), Struct_1(-2147483647i, arg_1.a.b, vec2<f32>(-1419f, -326f))), arg_1.a, vec2<i32>(arg_1.a.a, arg_1.a.a))), vec4<bool>(false, arg_1.a.b.x, u_input.a > u_input.a, true), !(!func_3(u_input.a, reverseBits(21712u), Struct_4(var_0.yy, Struct_3(arg_1, Struct_1(arg_1.a.a, var_0.xz, arg_1.a.c)), arg_1.a, vec2<i32>(arg_1.a.a, 7147i)))));
    global0 = array<vec4<i32>, 32>();
    let var_1 = func_3(~18738u, select(~4294967295u, ~_wgslsmith_add_u32(u_input.a, 3149u), var_0.x), Struct_4(!arg_1.a.b, Struct_3(Struct_2(arg_1.a), arg_1.a), arg_1.a, vec2<i32>(arg_1.a.a, ~arg_1.a.a))).x && true;
    var var_2 = Struct_2(Struct_1(-(~_wgslsmith_mult_i32(0i, arg_1.a.a)), var_0.xx, _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.c))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.c.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -103f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.a.c.x)), _wgslsmith_f_op_f32(round(138f)))), arg_1.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-595f, 685f), _wgslsmith_div_f32(-969f, var_2.a.c.x))) - 1192f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1637f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.c.x, -1108f, arg_1.a.c.x, -616f), vec4<f32>(-254f, -514f, 328f, -1543f)))) + vec4<f32>(_wgslsmith_f_op_f32(1879f + arg_1.a.c.x), arg_1.a.c.x, _wgslsmith_f_op_f32(min(-1000f, 704f)), arg_1.a.c.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.c.x, arg_1.a.c.x, arg_0, var_2.a.c.x)))))), any(select(vec3<bool>(var_2.a.b.x, all(vec3<bool>(false, var_1, var_0.x)), var_2.a.b.x), !(!var_0.zxx), true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5) -> Struct_4 {
    global0 = array<vec4<i32>, 32>();
    var var_0 = arg_1.c;
    let var_1 = Struct_1(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(var_0.a.a, arg_1.c.a.a)), func_3(4294967295u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(41206u, 0u, 10915u, u_input.a), vec4<bool>(true, arg_0.x, arg_0.x, true)), vec4<u32>(u_input.a, u_input.a, 4294967295u, 9887u)) >> (firstTrailingBit(firstTrailingBit(14845u)) % 32u), Struct_4(!(!arg_1.c.a.b), Struct_3(Struct_2(Struct_1(17640i, var_0.a.b, vec2<f32>(-114f, arg_1.a.x))), var_0.a), Struct_1(arg_1.c.a.a, !vec2<bool>(true, var_0.a.b.x), _wgslsmith_f_op_vec2_f32(-arg_1.a.zy)), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1.c.a.a, arg_1.c.a.a), firstLeadingBit(vec2<i32>(-44431i, 1i))))).zz, _wgslsmith_div_vec2_f32(vec2<f32>(-734f, arg_1.a.x), _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.wz))));
    let var_2 = -(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 32u)]);
    var_0 = Struct_2(arg_1.c.a);
    return Struct_4(var_0.a.b, Struct_3(arg_1.c, Struct_1(-9812i, vec2<bool>(func_3(0u, u_input.a, Struct_4(vec2<bool>(var_1.b.x, var_1.b.x), Struct_3(arg_1.c, Struct_1(var_1.a, vec2<bool>(arg_0.x, var_0.a.b.x), var_1.c)), arg_1.c.a, var_2.xx)).x, true), vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(arg_1.c.a.c.x))))), var_0.a, reverseBits(_wgslsmith_add_vec2_i32(var_2.yx, var_2.ww)));
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = func_4(vec3<bool>(arg_0, true, arg_0), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(757f, Struct_2(Struct_1(arg_1, vec2<bool>(true, false), vec2<f32>(-1000f, 929f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, 1421f, -683f, -1000f)))), vec4<bool>(false, !arg_0, any(!vec4<bool>(false, true, true, arg_0)), true), Struct_2(Struct_1(2147483647i, select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), _wgslsmith_div_vec2_f32(vec2<f32>(-769f, -737f), vec2<f32>(932f, -1000f))))));
    global0 = array<vec4<i32>, 32>();
    let var_1 = var_0.b;
    var var_2 = var_1.a.a;
    global0 = array<vec4<i32>, 32>();
    return var_1.a.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(-(~vec3<i32>(-19021i, 17074i, 1i))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, func_1(false, -1i), firstTrailingBit(8665i)), min(firstTrailingBit(vec3<i32>(4860i, 53612i, 6081i)), ~vec3<i32>(55781i, -15684i, 0i))) & abs(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(28556i, -36443i, 2147483647i), vec3<i32>(-25859i, 28068i, 2147483647i)), firstLeadingBit(vec3<i32>(2147483647i, 4852i, 26171i)))));
}


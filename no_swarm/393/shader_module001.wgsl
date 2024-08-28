struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(722f, -933f, -1137f, 1481f);

var<private> global1: i32;

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1362f);
    global1 = u_input.a;
    let var_1 = !arg_0.d;
    global2 = array<vec2<bool>, 28>();
    global2 = array<vec2<bool>, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)));
}

fn func_2() -> f32 {
    global2 = array<vec2<bool>, 28>();
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(1u, 28u)]);
    var var_1 = ~max(select(reverseBits(39203i), _wgslsmith_div_i32(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 31997i), vec3<i32>(-44286i, u_input.a, u_input.a))), false | all(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x))), abs(firstLeadingBit(_wgslsmith_sub_i32(u_input.a, -16533i))));
    let var_2 = firstLeadingBit(~u_input.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(min(u_input.b, vec4<u32>(u_input.b.x, u_input.d, var_2, 0u)), u_input.b.zzy, vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), true))), global0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + 1252f))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.b.x, u_input.b.x), u_input.b), vec3<u32>(~(~1u), 38342u, 1u), vec4<bool>(true, !arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))) > _wgslsmith_div_f32(_wgslsmith_div_f32(1717f, 2163f), _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-18656i, u_input.a, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(-50732i, -36630i, -14722i), vec3<i32>(2147483647i, 1i, arg_0))) != -21714i), arg_1.x);
    global2 = array<vec2<bool>, 28>();
    let var_1 = Struct_2(((abs(u_input.a) > ~arg_0) | true) || var_0.d);
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0.x, global0.x)))), global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), -725f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-415f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 768f) - vec4<f32>(243f, global0.x, 812f, global0.x)))))));
    global1 = 1i;
    return vec4<bool>(!var_1.a, arg_1.x, any(!select(!vec4<bool>(arg_1.x, var_1.a, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), any(var_0.c.xxy))), true);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_0, ~(~(-2147483647i)), u_input.a), select(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 5798i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, 61267i, -2147483647i), vec4<i32>(arg_0, -7079i, 2147483647i, arg_0)), 26623i), ~(-vec3<i32>(-20535i, 1i, 1i)), arg_2.zyy) >> (arg_1.b % vec3<u32>(32u)));
    var var_1 = Struct_3(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global0.x, global0.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(747f, -1595f, false)), -174f)))));
    return Struct_3(arg_1, arg_1, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var var_1 = select(_wgslsmith_add_u32(u_input.d, firstLeadingBit(_wgslsmith_mod_u32(~32678u, countOneBits(u_input.b.x)))), max(~u_input.b.x | (_wgslsmith_clamp_u32(23486u, 6064u, 10818u) >> ((u_input.d << (1u % 32u)) % 32u)), u_input.c), true);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, global0.x, -235f)))))), vec4<f32>(_wgslsmith_f_op_f32(526f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), 605f, _wgslsmith_f_op_f32(ceil(-262f))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(-global0.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(133f - 1235f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, -1629f)), 1293f)) + global0.x), _wgslsmith_f_op_f32(-1136f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-977f, -138f) + -1161f))));
    let var_2 = vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(-select(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 13186i, 41491i) >> (u_input.b.xwx % vec3<u32>(32u)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3731i, u_input.a, 27325i, -1i), vec4<i32>(-2147483647i, u_input.a, 34670i, u_input.a)), 1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.a), select(u_input.a, -40537i, true)), 18047i)));
    let var_3 = func_4(i32(-1i) * -(~(~(-67728i))), Struct_1(vec4<u32>(abs(4294967295u), u_input.d, 4294967295u, firstLeadingBit(63386u | u_input.d)), reverseBits(_wgslsmith_sub_vec3_u32(u_input.b.wxw, vec3<u32>(32056u, u_input.c, u_input.d)) | firstLeadingBit(u_input.b.xzz)), !select(func_1(-11000i, global2[_wgslsmith_index_u32(u_input.c, 28u)]), func_1(39654i, vec2<bool>(false, false)), true), 2177f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)), func_1(11123i, vec2<bool>(true, true)), Struct_4(!vec2<bool>(false, 0u > u_input.c)));
    let var_4 = Struct_2(true);
    let var_5 = _wgslsmith_f_op_f32(476f * global0.x);
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(461f, u_input.a);
}


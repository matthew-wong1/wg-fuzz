struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(259f, 2282f), vec2<f32>(2403f, 685f), vec2<f32>(-1593f, -1870f), vec2<f32>(-1000f, 956f), vec2<f32>(277f, -642f), vec2<f32>(-1000f, 154f), vec2<f32>(-262f, 1000f), vec2<f32>(-405f, -129f), vec2<f32>(1594f, -1077f), vec2<f32>(-1299f, 485f), vec2<f32>(-1000f, 1000f), vec2<f32>(-1717f, -1265f), vec2<f32>(-859f, -389f));

var<private> global1: array<Struct_3, 14>;

var<private> global2: f32 = -1106f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_4(_wgslsmith_add_i32(_wgslsmith_add_i32(reverseBits(_wgslsmith_div_i32(arg_2.a.a.c.x, u_input.a)), -arg_2.a.a.c.x), firstLeadingBit(_wgslsmith_add_i32(~0i, abs(u_input.a)))), -abs(79298i));
    var_0 = Struct_4(-2147483647i, _wgslsmith_mult_i32(u_input.a & reverseBits(_wgslsmith_div_i32(1i, u_input.a)), _wgslsmith_clamp_i32(max(i32(-1i) * -2147483647i, 46302i), firstTrailingBit(_wgslsmith_dot_vec4_i32(arg_2.c.c, arg_2.a.a.c)), -1i)));
    let var_1 = arg_2.c.c.xz;
    var var_2 = _wgslsmith_f_op_f32(-641f - arg_1.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c.d.x)))) - _wgslsmith_f_op_f32(arg_2.c.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(971f * arg_1.x))))));
    return arg_2.b;
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = arg_0;
    var var_1 = ~12914u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1488f, 1077f)) + -1957f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-212f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)), 679f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-804f, -1198f, 1282f, -2099f)))) - vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    var_0 = !arg_0 || true;
    return 91540i;
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_4 {
    let var_0 = arg_0.a.a.c.yzw;
    var var_1 = ~(-_wgslsmith_mult_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.a.c.x, var_0.x, -19464i, -1i), vec4<i32>(0i, var_0.x, 77i, 20424i))), ~(vec4<i32>(54074i, u_input.a, var_0.x, u_input.a) << (vec4<u32>(u_input.b, arg_0.a.e.x, 0u, arg_0.a.e.x) % vec4<u32>(32u)))));
    var var_2 = arg_0.a.d;
    let var_3 = Struct_1(select(any(arg_0.c.b), arg_0.a.b.x, true), vec2<bool>(any(vec3<bool>(arg_0.a.b.x, arg_0.c.a, true)), false), vec4<i32>(-1i) * -reverseBits(vec4<i32>(arg_0.a.a.c.x, -1507i, var_1.x, 35843i) >> (vec4<u32>(19979u, 2608u, 1u, arg_0.a.e.x) % vec4<u32>(32u))), arg_0.c.d);
    global1 = array<Struct_3, 14>();
    return Struct_4(-(~func_3(false) | ~(~u_input.a)), abs(reverseBits(15041i) << (arg_1 % 32u)));
}

fn func_4(arg_0: Struct_4) -> bool {
    global1 = array<Struct_3, 14>();
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    global1 = array<Struct_3, 14>();
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-416f)))) * _wgslsmith_f_op_f32(199f * _wgslsmith_div_f32(-405f, 211f))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(665f + -406f) * _wgslsmith_f_op_f32(floor(1197f))))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), arg_0.b < u_input.a))), all(vec4<bool>(all(vec2<bool>(false, false)), !func_1(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(u_input.b, 13u)], Struct_3(Struct_2(Struct_1(true, vec2<bool>(false, true), vec4<i32>(-29023i, u_input.a, u_input.a, arg_0.b), vec3<f32>(-409f, 337f, 1000f)), vec3<bool>(false, false, false), vec3<f32>(-215f, -380f, 360f), false, vec3<u32>(u_input.b, 1u, u_input.b)), true, Struct_1(true, vec2<bool>(true, true), vec4<i32>(arg_0.b, u_input.a, -1i, arg_0.a), vec3<f32>(1789f, 1000f, -783f)))), all(vec2<bool>(false, true)), !any(vec2<bool>(false, true)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(select(vec4<bool>(true, func_1(vec4<bool>(false, true, true, false), vec2<f32>(-588f, -796f), global1[_wgslsmith_index_u32(30780u, 14u)]), all(vec3<bool>(false, true, true)), u_input.b >= u_input.b), vec4<bool>(true, true, true, true), true)), true | func_4(func_2(Struct_3(Struct_2(Struct_1(false, vec2<bool>(false, false), vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.a), vec3<f32>(166f, 537f, 1000f)), vec3<bool>(false, true, false), vec3<f32>(693f, 716f, 685f), false, vec3<u32>(u_input.b, 0u, 50175u)), false, Struct_1(true, vec2<bool>(true, false), vec4<i32>(-13113i, 0i, u_input.a, -2147483647i), vec3<f32>(-679f, 935f, -1041f))), ~78426u)), !(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false))));
    let var_1 = Struct_4(u_input.a, firstLeadingBit(_wgslsmith_div_i32(0i >> (0u % 32u), func_3(any(vec4<bool>(false, true, true, false))))));
    var var_2 = true;
    global1 = array<Struct_3, 14>();
    var var_3 = max(u_input.a >> (u_input.b % 32u), var_1.a);
    global1 = array<Struct_3, 14>();
    var var_4 = global1[_wgslsmith_index_u32(~(1u & select(u_input.b, 1u, true)), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1985f, var_4.a.c.x, -1283f, -994f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1762f, var_4.a.c.x, var_4.a.a.d.x, -146f))), vec4<bool>(var_0.x, var_4.a.d, !var_4.b, true == var_0.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-482f, -1117f, -1872f, 913f), vec4<f32>(var_4.a.a.d.x, var_4.a.a.d.x, 109f, var_4.c.d.x)))))))), abs(vec2<u32>(41323u, _wgslsmith_sub_u32(u_input.b, u_input.b))) >> (firstTrailingBit(~(~vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), ~var_1.a);
}


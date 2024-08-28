struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(0i, 2476i, 1i), vec3<i32>(-36041i, 0i, -1i), vec3<i32>(2147483647i, -1i, -19108i), vec3<i32>(i32(-2147483648), -21569i, 2147483647i));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: bool = true;

var<private> global3: bool;

var<private> global4: array<vec3<i32>, 18>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))));
    global3 = false;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(848f))), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, -1818f)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), 1221f, _wgslsmith_f_op_f32(abs(879f)));
    global4 = array<vec3<i32>, 18>();
    return abs(vec2<u32>(~(~arg_0.b), ~_wgslsmith_mod_u32(30133u, u_input.b.x) & ~u_input.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))) * 1000f);
    let var_1 = Struct_2(arg_0);
    var var_2 = arg_3;
    var var_3 = !var_2.a.zwy;
    let var_4 = Struct_2(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(178f, 1524f), var_1.a.x) + _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, arg_0.x));
    return Struct_4(arg_3, -(arg_2 >> (44963u % 32u)), Struct_1(~u_input.b.x, ~u_input.b.x, !var_3.x, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, i32(-1i) * -1i, u_input.a), min(firstTrailingBit(vec4<i32>(arg_2, arg_2, arg_2, u_input.a)), ~vec4<i32>(1i, 2003i, -41498i, u_input.a))), _wgslsmith_dot_vec2_u32(func_3(Struct_1(u_input.c, u_input.c, true, vec4<i32>(33463i, 0i, -19150i, arg_2), 0u)), u_input.b.xx & u_input.b.xx)), arg_3);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    global3 = false;
    var var_0 = u_input.b.xz;
    var var_1 = reverseBits(vec2<i32>(firstTrailingBit(u_input.a), -1i)) & -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.c.d.zw, vec2<i32>(1i, 0i)) << (func_3(arg_1.c) % vec2<u32>(32u)), vec2<i32>(~u_input.a, -55328i ^ arg_1.c.d.x));
    global3 = global1.x;
    var var_2 = Struct_4(arg_1.d, arg_1.c.d.x, Struct_1(arg_1.c.a, _wgslsmith_sub_u32(~(~4294967295u), ~0u), !(!all(arg_1.a.a.xyx)), vec4<i32>(firstLeadingBit(u_input.a & var_1.x), 16275i, 0i, 1i), arg_1.c.a << (_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), ~arg_1.c.e) % 32u)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1146f)), _wgslsmith_f_op_f32(min(577f, -471f)), _wgslsmith_f_op_f32(-arg_2), -1124f)), func_2(vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, arg_2)), arg_2, -1000f, _wgslsmith_f_op_f32(-arg_2)), vec2<bool>(true, true), select(var_1.x, -1i, all(arg_1.a.a)), func_2(vec4<f32>(334f, arg_2, arg_2, -2026f), func_2(vec4<f32>(arg_2, -2114f, 484f, arg_2), vec2<bool>(arg_1.c.c, true), arg_0.x, Struct_3(arg_1.a.a)).d.a.zx, 54070i, arg_1.d).d).d.a.xx, 2147483647i, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1379f, -1332f, arg_2, arg_2), vec4<f32>(-758f, 608f, arg_2, arg_2))), func_2(vec4<f32>(146f, 692f, arg_2, arg_2), !arg_1.a.a.wx, u_input.a, arg_1.d).d.a.xy, _wgslsmith_dot_vec4_i32(arg_1.c.d, abs(vec4<i32>(-3105i, arg_1.b, arg_1.b, 2147483647i))), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, -263f, arg_2, -1093f))), vec2<bool>(global1.x, arg_1.d.a.x), var_1.x, arg_1.a).d).d).d);
    return arg_1.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32, arg_3: i32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c, arg_2, -1598f, arg_1.c), vec4<f32>(1679f, -464f, arg_2, 2540f))))), !(!(!arg_0.a.a.xx)), ~0i, arg_0.d).a;
    var var_1 = arg_1;
    var var_2 = 1117f;
    let var_3 = select(!(!arg_0.a.a.wy), vec2<bool>(!arg_0.a.a.x, all(var_0.a.zz)), var_0.a.x);
    global0 = array<vec3<i32>, 4>();
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-679f + 1165f), var_1.c, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1980f - _wgslsmith_f_op_f32(f32(-1f) * -495f)))), _wgslsmith_f_op_f32(f32(-1f) * -2773f)));
}

fn func_1() -> f32 {
    var var_0 = func_5(Struct_4(func_4(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 12925i, 42046i, -34552i), vec4<i32>(u_input.a, u_input.a, 1i, 34949i)), func_2(vec4<f32>(-935f, 705f, -396f, 1397f), vec2<bool>(true, true), u_input.a, Struct_3(vec4<bool>(false, false, global1.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-224f)))), 1i, func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), select(func_4(vec4<i32>(3624i, u_input.a, u_input.a, 1i), Struct_4(Struct_3(vec4<bool>(false, false, global1.x, false)), 25383i, Struct_1(u_input.c, 1u, global1.x, vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.a), 18242u), Struct_3(vec4<bool>(global1.x, true, false, true))), -522f).a.yz, !vec2<bool>(true, global1.x), select(true, false, global1.x)), u_input.a, func_4(min(vec4<i32>(u_input.a, u_input.a, -6050i, 29757i), vec4<i32>(u_input.a, u_input.a, -44756i, u_input.a)), Struct_4(Struct_3(vec4<bool>(global1.x, false, false, global1.x)), -47747i, Struct_1(u_input.b.x, u_input.c, true, vec4<i32>(u_input.a, u_input.a, -199i, u_input.a), u_input.c), Struct_3(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), 384f)).c, Struct_3(!vec4<bool>(global1.x, global1.x, false, global1.x))), Struct_5(~(~func_2(vec4<f32>(-1095f, 769f, 272f, 394f), vec2<bool>(global1.x, false), u_input.a, Struct_3(vec4<bool>(false, true, true, global1.x))).c.e), vec4<i32>(abs(u_input.a), ~_wgslsmith_add_i32(1903i, -1i), ~(-7216i), firstTrailingBit(~u_input.a)), _wgslsmith_f_op_f32(step(-821f, _wgslsmith_f_op_f32(floor(-318f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-242f)) * 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-982f, 1000f)))))), i32(-1i) * -_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(~41537u, 18u)], _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-7235i, u_input.a, u_input.a))));
    global2 = !global1.x;
    global0 = array<vec3<i32>, 4>();
    let var_1 = vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(28048u, countOneBits(9881u)) << (~u_input.c % 32u)), _wgslsmith_dot_vec3_u32(min(firstLeadingBit(vec3<u32>(9586u, 1u, u_input.b.x)), vec3<u32>(~u_input.c, 42418u ^ u_input.b.x, u_input.c)), ~vec3<u32>(1u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(33528u, 1u, 0u, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c)))), 1u, _wgslsmith_mod_u32(~4294967295u, 4294967295u));
    var var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(-(~vec2<i32>(3031i, u_input.a))), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, -1i), vec2<i32>(firstTrailingBit(66699i), u_input.a))), vec2<i32>(~(~(-1i)), _wgslsmith_add_i32(-1i >> (0u % 32u), u_input.a)), vec2<i32>(u_input.a, _wgslsmith_mult_i32(-39136i, -31992i)));
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_f_op_f32(func_1()))) + 214f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f - -514f) * _wgslsmith_f_op_f32(sign(-374f))) * _wgslsmith_f_op_f32(f32(-1f) * -778f))));
    var var_1 = func_5(Struct_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-234f + -1641f), -913f), vec2<bool>(all(vec3<bool>(global1.x, global1.x, false)), global1.x), u_input.a, Struct_3(func_4(vec4<i32>(55808i, 2147483647i, u_input.a, u_input.a), Struct_4(Struct_3(vec4<bool>(global1.x, false, false, true)), u_input.a, Struct_1(u_input.c, 1793u, global1.x, vec4<i32>(16560i, u_input.a, u_input.a, u_input.a), 108995u), Struct_3(vec4<bool>(false, global1.x, global1.x, true))), var_0.x).a)).d, -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 5749i), vec2<i32>(2147483647i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 12433i, u_input.a, u_input.a), vec4<i32>(1i, -47243i, 0i, u_input.a))), Struct_1(~(~11421u), ~_wgslsmith_clamp_u32(u_input.b.x, 31600u, 62428u), all(vec3<bool>(true, global1.x, global1.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-37701i, 0i, -3856i, 0i), vec4<i32>(-2147483647i, -1i, 2147483647i, 52165i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~92728u), func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1616f, var_0.x, -1136f)), func_4(vec4<i32>(51754i, -42983i, 0i, u_input.a), Struct_4(Struct_3(vec4<bool>(false, true, global1.x, true)), -90208i, Struct_1(22490u, 18730u, global1.x, vec4<i32>(u_input.a, 448i, -2147483647i, 2147483647i), 44013u), Struct_3(vec4<bool>(global1.x, true, true, global1.x))), var_0.x).a.xx, max(u_input.a, u_input.a), Struct_3(vec4<bool>(true, false, global1.x, true))).c.d, func_2(vec4<f32>(1000f, 232f, var_0.x, 1201f), func_4(vec4<i32>(u_input.a, 1i, -383i, u_input.a), Struct_4(Struct_3(vec4<bool>(global1.x, global1.x, true, global1.x)), -35712i, Struct_1(u_input.b.x, 90491u, global1.x, vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), u_input.c), Struct_3(vec4<bool>(true, global1.x, global1.x, global1.x))), 536f).a.wz, abs(2147483647i), Struct_3(vec4<bool>(global1.x, true, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -787f))), Struct_5(50160u, _wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(-25745i, -2147483647i, 1i, u_input.a)), vec4<i32>(2147483647i, select(44071i, u_input.a, true), 2147483647i, 1i)), _wgslsmith_f_op_f32(-var_0.x)), var_0.x, -2147483647i);
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x))));
    let var_4 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.a)) - _wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_1.a.x, 1564f, -473f, var_3))))), vec2<bool>(true, true), ~abs(max(-45106i, var_2)), Struct_3(!(!(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -var_4.c.d) ^ var_4.c.d, _wgslsmith_add_vec4_i32(~firstTrailingBit(_wgslsmith_mod_vec4_i32(var_4.c.d, vec4<i32>(var_2, 1927i, 1i, var_2))), (select(var_4.c.d, var_4.c.d, global1.x) >> (vec4<u32>(u_input.c, var_4.c.e, var_4.c.b, u_input.b.x) % vec4<u32>(32u))) ^ vec4<i32>(2147483647i, -1i, var_4.c.d.x, ~var_2)));
}


struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2273f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(u_input.c.x);
    let var_1 = Struct_5(vec3<i32>(60837i ^ var_0.a, countOneBits(countOneBits(min(-28458i, -2147483647i))), 1i), ~u_input.d.x);
    global0 = -216f;
    var var_2 = -reverseBits(~_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, var_0.a, var_1.a.x, u_input.c.x)) | reverseBits(firstLeadingBit(u_input.c)));
    let var_3 = !(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true))));
    return !var_3.x;
}

fn func_2() -> Struct_4 {
    let var_0 = !select(select(vec4<bool>(true, true, all(vec4<bool>(false, true, true, false)), true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), true), vec4<bool>(true, true, true, true)), vec4<bool>(!all(vec2<bool>(true, true)), func_3() | true, false, true != (u_input.c.x != u_input.c.x)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, true, true), true));
    global0 = -2546f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1702f)), 1150f)))) - -1000f);
    global0 = -241f;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1404f * _wgslsmith_f_op_f32(-468f - -836f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1701f + -434f) * _wgslsmith_f_op_f32(max(507f, -794f))))))), _wgslsmith_div_f32(258f, _wgslsmith_f_op_f32(f32(-1f) * -1563f))));
    return Struct_4(Struct_2(u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-336f, -302f)) - _wgslsmith_f_op_f32(-110f - 922f)), 1836f))), u_input.c.x, !vec2<bool>(false, var_0.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = func_2();
    var_1 = Struct_4(Struct_2(2147483647i), arg_0.b, -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c, arg_0.c), vec2<i32>(1i, u_input.c.x) << (vec2<u32>(u_input.a.x, 33926u) % vec2<u32>(32u))), select(u_input.c.zz, vec2<i32>(1i, u_input.c.x), vec2<bool>(true, false)) & select(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.c.x, 2147483647i), var_0.d)), !arg_0.d);
    let var_2 = !arg_0.d.x;
    var_0 = arg_0;
    return Struct_3(_wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(u_input.c, max(vec4<i32>(-94471i, var_0.c, -1i, var_0.a.a), vec4<i32>(var_1.c, var_0.a.a, arg_2.a.a, u_input.c.x))), u_input.c, arg_0.d.x), -(~vec4<i32>(var_1.c, 2147483647i, -14297i, arg_0.a.a))), func_3(), _wgslsmith_f_op_f32(round(var_0.b)));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_5) -> Struct_4 {
    var var_0 = Struct_1(min(u_input.a.zy, u_input.d.zy), func_2().b, _wgslsmith_f_op_f32(abs(748f)));
    var_0 = Struct_1(u_input.d.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_f32(trunc(859f)));
    var var_1 = arg_2;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c)));
    let var_2 = vec2<bool>(arg_2.b, true);
    return Struct_4(func_2().a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_2().b))), arg_2.a.x, select(select(select(select(var_2, vec2<bool>(true, var_1.b), var_2), var_2, var_2), vec2<bool>(!var_1.b, u_input.c.x > arg_3.a.x), any(select(vec3<bool>(arg_2.b, var_1.b, true), vec3<bool>(arg_2.b, false, var_2.x), vec3<bool>(false, var_2.x, true)))), select(var_2, var_2, var_2), false));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = ~arg_2.a.a;
    var var_1 = arg_2.d.x;
    var_0 = 1i;
    var var_2 = arg_2.a;
    var var_3 = vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + -2078f), _wgslsmith_f_op_f32(abs(arg_0.x))))))), -1171f);
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, arg_2.b, -2599f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(676f))), -1371f), _wgslsmith_f_op_f32(f32(-1f) * -1445f))));
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 39673i, 0i, 31189i), abs(u_input.c | -u_input.c)), u_input.c, firstTrailingBit(u_input.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-504f, 1000f) + vec2<f32>(-413f, -1350f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, 2536f) + vec2<f32>(-1000f, -300f))), vec3<u32>(18229u, firstTrailingBit(40494u), 0u | u_input.b.x), func_4(vec4<i32>(-29183i, var_1.x, 2147483647i, 1734i), min(var_1.x, var_1.x), func_1(Struct_4(Struct_2(u_input.c.x), 258f, -1i, vec2<bool>(false, false)), Struct_1(vec2<u32>(u_input.b.x, 96653u), -1000f, -1184f), Struct_4(Struct_2(u_input.c.x), 1000f, var_1.x, vec2<bool>(true, false)), var_1.x), Struct_5(u_input.c.zyx, u_input.b.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(570f, -550f, 1019f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -504f))), _wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_div_f32(func_2().b, 1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(845f, var_2.x)) * _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)));
    var var_3 = func_2().a;
    let var_4 = Struct_1(vec2<u32>(u_input.b.x, 61286u), _wgslsmith_f_op_f32(func_4(u_input.c, var_1.x, func_1(Struct_4(Struct_2(28704i), var_2.x, u_input.c.x, vec2<bool>(false, false)), Struct_1(u_input.b.yy, var_2.x, var_2.x), func_2(), -1i | var_3.a), Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_3.a, 12074i), vec3<i32>(-1i, 1i, var_1.x)), u_input.a.x)).b + var_2.x), _wgslsmith_f_op_f32(max(var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)));
}


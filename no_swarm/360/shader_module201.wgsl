struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(true, false, true, true), true), Struct_1(vec4<bool>(true, false, false, false), true), Struct_1(vec4<bool>(false, true, false, true), true), Struct_1(vec4<bool>(false, false, false, true), true), Struct_1(vec4<bool>(false, true, true, false), false), Struct_1(vec4<bool>(true, false, true, false), false), Struct_1(vec4<bool>(false, true, false, true), true), Struct_1(vec4<bool>(false, false, false, false), false), Struct_1(vec4<bool>(true, true, true, false), true), Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(true, false, true, true), false), Struct_1(vec4<bool>(false, false, true, false), false), Struct_1(vec4<bool>(false, true, false, false), false), Struct_1(vec4<bool>(false, true, true, false), false), Struct_1(vec4<bool>(true, true, true, false), false), Struct_1(vec4<bool>(false, true, false, false), true), Struct_1(vec4<bool>(true, true, false, true), true), Struct_1(vec4<bool>(true, false, true, false), true), Struct_1(vec4<bool>(false, true, true, false), false), Struct_1(vec4<bool>(true, false, true, false), false), Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(false, false, true, false), true), Struct_1(vec4<bool>(true, false, false, true), false), Struct_1(vec4<bool>(true, false, false, true), false), Struct_1(vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(true, false, false, false), false), Struct_1(vec4<bool>(false, true, false, true), false), Struct_1(vec4<bool>(false, true, false, true), false), Struct_1(vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(false, false, false, false), true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec3<bool> {
    let var_0 = reverseBits(40311u);
    global0 = array<Struct_1, 31>();
    let var_1 = vec2<i32>(abs((-2147483647i ^ abs(u_input.a.x)) | (_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) | u_input.a.x)), ~min(abs(abs(u_input.a.x)), u_input.a.x));
    let var_2 = arg_1.c.ww;
    var var_3 = Struct_3(Struct_2(arg_1.d.a), max(var_0 | ~(~1u), var_0));
    return vec3<bool>(arg_1.a.x, any(vec2<bool>(var_3.a.a.b || arg_1.b, -2147483647i > var_1.x)) == ((98521u <= (var_0 & var_3.b)) & arg_1.a.x), false);
}

fn func_2() -> i32 {
    let var_0 = Struct_5(vec4<bool>(any(!func_3(1391f, Struct_5(vec4<bool>(true, false, false, true), false, vec4<f32>(-185f, 796f, -1508f, -1000f), Struct_2(Struct_1(vec4<bool>(true, false, false, false), true))))), true && !select(false, true, false), !all(vec2<bool>(false, true)), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), false || (_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(388f))) == -264f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, _wgslsmith_f_op_f32(f32(-1f) * -1155f), -193f, _wgslsmith_f_op_f32(step(1120f, -1304f)))))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), select(0u, firstLeadingBit(12147u), true)), 31u)]));
    global0 = array<Struct_1, 31>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    let var_2 = _wgslsmith_dot_vec2_i32(max(-select(select(u_input.a.ww, u_input.a.wx, var_0.a.wy), -u_input.a.yx, true), u_input.a.yy), vec2<i32>(-12274i, u_input.a.x));
    var var_3 = var_0.d;
    return min(_wgslsmith_add_i32(firstTrailingBit(-(2147483647i & var_2)), -_wgslsmith_mod_i32(u_input.a.x, abs(0i))), -19152i);
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_2 {
    return Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 31u)]);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_0 = func_4(u_input.a.x, -vec3<i32>(2147483647i, -func_2(), u_input.a.x), firstTrailingBit(u_input.a.xwx));
    var var_1 = var_0;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.x, 752f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f + 373f)))))));
    return func_4(u_input.a.x | -_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, u_input.a.x), _wgslsmith_mod_i32(-11131i, -3498i)), vec3<i32>(~(func_2() << (max(1u, 22389u) % 32u)), 1i, firstLeadingBit(firstLeadingBit(u_input.a.x))), vec3<i32>(-22193i, u_input.a.x | _wgslsmith_add_i32(37945i, -1286i), -(-11003i & u_input.a.x)) ^ reverseBits(vec3<i32>(abs(124i), reverseBits(u_input.a.x), u_input.a.x))).a;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5) -> Struct_5 {
    let var_0 = arg_2.c.wx;
    var var_1 = arg_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(Struct_2(func_1(vec3<f32>(486f, -1000f, -1000f), vec3<bool>(true, true, true))), ~1u), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 96081u, 14744u, 71299u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_5(vec4<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), func_4(1i, -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)).a.b, !func_3(-1613f, Struct_5(vec4<bool>(true, true, false, true), true, vec4<f32>(1000f, 229f, 1136f, -821f), Struct_2(Struct_1(vec4<bool>(true, false, false, false), true)))).x), false, vec4<f32>(1580f, -1036f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1185f, -1017f) + _wgslsmith_f_op_f32(-491f * 587f)), _wgslsmith_f_op_f32(max(-1787f, -251f))), Struct_2(func_4(firstLeadingBit(5427i), vec3<i32>(u_input.a.x, u_input.a.x, 39258i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 26956i), u_input.a.zyy)).a)));
    var_0 = Struct_5(vec4<bool>(any(vec4<bool>(all(vec2<bool>(true, var_0.b)), var_0.d.a.b, true, var_0.c.x < 329f)), !var_0.d.a.a.x & all(vec4<bool>(var_0.b, true, true, var_0.d.a.a.x)), true, true), all(vec2<bool>(!var_0.a.x, var_0.b)) || var_0.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_f32(var_0.c.x - 1365f), 1301f, var_0.c.x), Struct_2(Struct_1(func_4(4516i, ~vec3<i32>(-12964i, u_input.a.x, -1i), u_input.a.wwx).a.a, true)));
    var var_1 = _wgslsmith_mod_vec2_i32(u_input.a.ww, ~abs(~(u_input.a.yy ^ u_input.a.xy)));
    var_1 = (min(abs(select(u_input.a.wz, vec2<i32>(-1i, 23190i), vec2<bool>(true, false))), select(u_input.a.xw, vec2<i32>(u_input.a.x, var_1.x), vec2<bool>(var_0.b, false)) << (vec2<u32>(31346u, 8485u) % vec2<u32>(32u))) ^ vec2<i32>(~(~15870i), -_wgslsmith_div_i32(-31006i, u_input.a.x))) << (~firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(sign(var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(round(-208f))))));
}


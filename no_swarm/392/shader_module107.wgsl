struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: f32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = arg_0.e.x;
    let var_0 = u_input.c;
    global0 = arg_0.e.x;
    var var_1 = select(arg_0.a.zzx, vec3<bool>(any(vec3<bool>(arg_0.a.x, arg_0.a.x, false)) && any(arg_0.a.ww), arg_0.a.x, select(true, arg_0.a.x, any(!arg_0.a.wy))), vec3<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -751f) != arg_0.e.x), all(arg_0.a.zy), true));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.e)))), Struct_3(arg_0.a.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, var_0, var_0), vec4<i32>(-2147483647i, 21316i, u_input.c, -2147483647i)) | (u_input.c ^ -22741i)), Struct_1(select(!arg_0.a, select(vec4<bool>(true, arg_0.a.x, var_1.x, true), arg_0.a, arg_0.a.x), any(vec2<bool>(true, true))), ~_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 0u, 4294967295u, arg_0.b.x)), ~min(arg_0.c, u_input.c), vec2<u32>(arg_0.b.x, _wgslsmith_add_u32(arg_0.d.x, 17194u)), arg_0.e)), -(~vec2<i32>(2147483647i, arg_0.c)));
    return vec2<bool>(select(true, any(vec4<bool>(u_input.c >= var_0, var_2.b.c.b.x != var_2.b.c.d.x, arg_0.e.x >= -1224f, true)), true), any(select(select(arg_0.a.xzx, select(vec3<bool>(false, var_2.b.a, false), arg_0.a.wxy, arg_0.a.yzz), arg_0.a.x), arg_0.a.zzz, var_2.b.c.a.ywx)));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec2<u32> {
    let var_0 = arg_0.c;
    let var_1 = arg_0.c;
    var var_2 = Struct_2(22094u, arg_0.c);
    return select(var_0.b.ww, vec2<u32>(max(~var_1.d.x, _wgslsmith_add_u32(var_1.b.x, var_0.b.x)), 1u) | (arg_0.c.d & u_input.b), !func_3(Struct_1(!vec4<bool>(var_1.a.x, var_2.b.a.x, false, arg_0.a), vec4<u32>(var_2.a, var_1.d.x, 18688u, 7819u), var_1.c, ~vec2<u32>(4294967295u, u_input.a), var_1.e)));
}

fn func_1() -> vec4<bool> {
    var var_0 = any(!(!vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-612f, -186f)));
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.d.zw, _wgslsmith_add_vec2_u32(u_input.d.yx, firstLeadingBit(max(func_2(Struct_3(false, u_input.c, Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(32947u, 17402u, u_input.a, 4294967295u), u_input.c, u_input.b, vec2<f32>(var_1.x, 1355f))), 80278u), vec2<u32>(u_input.d.x, 4294967295u)))));
    global0 = -1277f;
    var var_3 = _wgslsmith_mod_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 41733u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 25601u), vec2<u32>(51209u, 4294967295u) | u_input.b)), u_input.d.ww), vec2<u32>(_wgslsmith_mod_u32(func_2(Struct_3(false, 0i, Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(u_input.d.x, 30126u, 1u, var_2), 1i, vec2<u32>(u_input.a, u_input.a), vec2<f32>(var_1.x, 1278f))), var_2).x ^ _wgslsmith_add_u32(12083u, var_2), ~(~var_2)), _wgslsmith_clamp_u32(countOneBits(1u), u_input.a, 1u)));
    return !(!vec4<bool>(false, func_3(Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(40536u, var_3.x, 4561u, 26120u), u_input.c, u_input.b, vec2<f32>(-1013f, -570f))).x, true, all(vec4<bool>(false, true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<bool>(true, false, true, true), select(select(func_1(), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, func_3(Struct_1(vec4<bool>(false, true, true, false), u_input.d, 2147483647i, u_input.d.wy, vec2<f32>(437f, 1745f))).x, true), true), true), _wgslsmith_mod_vec4_u32(u_input.d, u_input.d), 7837i, ~u_input.d.yz << (~u_input.d.ww % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-418f + -1051f), _wgslsmith_f_op_f32(sign(548f)))))));
    var_0 = Struct_1(select(vec4<bool>(true, false, var_0.a.x, true), !func_1(), vec4<bool>(!var_0.a.x, false, false, u_input.d.x <= max(77988u, 1u))), var_0.b, var_0.c, var_0.d, vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1236f, var_0.e.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.e.x))))));
    var_0 = Struct_1(var_0.a, _wgslsmith_sub_vec4_u32(countOneBits(u_input.d), vec4<u32>(1u, 57974u, 4294967295u, u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(32048i, var_0.c, 23807i, u_input.c) | -vec4<i32>(0i, u_input.c, -2147483647i, u_input.c), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, var_0.c, -20993i, 2147483647i)), reverseBits(vec4<i32>(-1i, 15786i, u_input.c, var_0.c)))), (u_input.c ^ -u_input.c) | u_input.c, -33489i), max(vec2<u32>(~0u, 41568u) >> (vec2<u32>(var_0.b.x << (u_input.b.x % 32u), var_0.b.x) % vec2<u32>(32u)), abs(u_input.d.wx)), var_0.e);
    global0 = -1507f;
    var var_1 = var_0.a.x;
    var var_2 = Struct_1(!vec4<bool>(var_0.a.x, !var_0.a.x, var_0.a.x, any(vec2<bool>(var_0.a.x, false))), ~(var_0.b ^ abs(_wgslsmith_mod_vec4_u32(vec4<u32>(54112u, 0u, 1u, 0u), vec4<u32>(var_0.b.x, 0u, 60972u, 4294967295u)))), 22954i << ((~49141u | var_0.b.x) % 32u), u_input.d.xy, var_0.e);
    let var_3 = ~select(-_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c, 2147483647i), select(vec2<i32>(1i, -39533i), vec2<i32>(1i, 0i), vec2<bool>(var_2.a.x, true))), _wgslsmith_div_vec2_i32(firstLeadingBit(-vec2<i32>(-56989i, 0i)), reverseBits(firstLeadingBit(vec2<i32>(-38783i, var_2.c)))), true);
    var_2 = Struct_1(!var_0.a, var_2.b, 1i, (_wgslsmith_sub_vec2_u32(abs(var_0.d), var_0.b.yw) >> (func_2(Struct_3(var_2.a.x, 0i, Struct_1(vec4<bool>(var_0.a.x, true, true, true), var_2.b, -5662i, vec2<u32>(var_0.b.x, var_0.d.x), var_2.e)), select(4294967295u, u_input.b.x, false)) % vec2<u32>(32u))) >> (vec2<u32>(var_2.d.x, var_2.d.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.e.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.e)) * _wgslsmith_f_op_vec2_f32(-var_0.e)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e.x, 259f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}


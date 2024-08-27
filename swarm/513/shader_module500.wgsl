struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(20405i, -1555i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = vec2<i32>(3536i, ~_wgslsmith_add_i32(global0.x, global0.x) & 2147483647i) << (~abs(vec2<u32>(u_input.a.x & u_input.a.x, 0u)) % vec2<u32>(32u));
    let var_0 = arg_0;
    let var_1 = 62472u;
    global0 = firstTrailingBit(-max(vec2<i32>(-19091i, global0.x), reverseBits(vec2<i32>(-36177i, 1i))));
    var var_2 = Struct_2(Struct_1(select(0u, firstTrailingBit(8144u), !all(vec4<bool>(true, true, false, false)))), true, _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x) | vec2<i32>(-37668i, global0.x), vec2<i32>(-1i, 2147483647i)), ~_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(65940i, global0.x, -9204i))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(true, true, true)));
    return all(var_2.d);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_3(1u, true, u_input.a.x, -2875f, Struct_2(Struct_1(~u_input.a.x), true, reverseBits(global0.x), !select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, true), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, true), true))));
    var var_1 = Struct_2(Struct_1(~var_0.c), select(var_0.e.d.x, true, !(false & var_0.b)), ~_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(1i, var_0.e.c)), vec2<i32>(var_0.e.c, 1i) ^ ~vec2<i32>(var_0.e.c, -1i)), !vec3<bool>(arg_0, false, arg_0));
    var var_2 = !select(vec3<bool>(true, var_0.b, func_3(Struct_1(2640u))), vec3<bool>(any(var_1.d.zz), false, any(vec4<bool>(true, arg_0, true, var_0.e.b))), select(var_1.d, !var_1.d, var_0.e.d));
    global0 = -select(vec2<i32>(1i, var_1.c), reverseBits(vec2<i32>(var_1.c, var_1.c) & vec2<i32>(51269i, 1i)), select(var_2.zy, !var_1.d.zy, var_1.d.zy)) & min(select(max(vec2<i32>(var_0.e.c, 5713i), countOneBits(vec2<i32>(1i, -2710i))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e.c, global0.x) | vec2<i32>(2147483647i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-17286i, -19720i), vec2<i32>(global0.x, var_1.c))), !var_1.d.yx), abs(vec2<i32>(~var_1.c, global0.x)));
    let var_3 = Struct_3(~1u, any(vec4<bool>(true, arg_0, false, any(var_0.e.d.yy))), _wgslsmith_mod_u32(var_1.a.a, var_1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - 1066f) * -848f), var_0.e);
    return var_3.e;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) - -213f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1417f + 1084f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -576f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, -180f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(149f, -2265f)))));
    var var_1 = Struct_3(~u_input.a.x, any(arg_0.zw), 1u, -476f, func_2(true));
    var var_2 = -firstLeadingBit(abs(vec4<i32>(-2147483647i << (u_input.a.x % 32u), ~(-27362i), max(var_1.e.c, 12443i), firstTrailingBit(global0.x))));
    let var_3 = Struct_1(min(_wgslsmith_sub_u32(func_2(all(vec3<bool>(false, true, arg_0.x))).a.a, ~u_input.a.x), u_input.a.x));
    var_1 = Struct_3(~var_1.a, all(arg_0.yyx), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.d)), var_1.d))), func_2(arg_0.x));
    return Struct_3(_wgslsmith_add_u32(33287u, reverseBits(var_1.e.a.a)) << (0u % 32u), !arg_0.x, abs(~_wgslsmith_add_u32(~4294967295u, _wgslsmith_mult_u32(var_1.e.a.a, 4294967295u))), _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(trunc(2645f))), var_1.e);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = func_2(select(func_1(vec4<bool>(false, false, false, true)).c <= arg_1, arg_0.e.b, !(true || !arg_0.b))).a;
    global0 = firstTrailingBit(((abs(vec2<i32>(arg_3.e.c, arg_3.e.c)) ^ -vec2<i32>(global0.x, 57697i)) | abs(vec2<i32>(2147483647i, 1i))) & vec2<i32>(1i, _wgslsmith_mod_i32(~global0.x, arg_3.e.c)));
    let var_1 = Struct_2(arg_0.e.a, any(vec2<bool>(arg_3.b, arg_0.e.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, reverseBits(global0.x)) << (vec2<u32>(arg_1 >> (var_0.a % 32u), abs(u_input.a.x)) % vec2<u32>(32u)), min(vec2<i32>(firstLeadingBit(22732i), firstTrailingBit(global0.x)), vec2<i32>(_wgslsmith_add_i32(arg_0.e.c, -36788i), 1768i))), !arg_3.e.d);
    let var_2 = Struct_2(Struct_1(var_1.a.a), true, var_1.c, arg_0.e.d);
    global0 = vec2<i32>(select(_wgslsmith_div_i32(-14949i, var_2.c), countOneBits(_wgslsmith_add_i32(0i, var_1.c)), ~var_0.a < arg_0.c) & 1i, reverseBits(2147483647i));
    return _wgslsmith_div_f32(arg_3.d, _wgslsmith_f_op_f32(select(1625f, _wgslsmith_f_op_f32(func_1(select(vec4<bool>(var_2.d.x, arg_3.b, var_2.b, arg_0.b), vec4<bool>(var_1.b, true, false, true), vec4<bool>(false, true, arg_0.b, true))).d * _wgslsmith_f_op_f32(-arg_2)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec4<bool>(false, false, false, false)), u_input.a.x, _wgslsmith_f_op_f32(115f + 487f), func_1(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - 1f))), _wgslsmith_f_op_f32(f32(-1f) * -1187f)));
    let var_1 = Struct_3(max(func_1(vec4<bool>(true, true, true, true)).c, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a.x)), select(!(_wgslsmith_div_f32(var_0.x, -1476f) < -365f), select(true, true, true), all(func_1(vec4<bool>(false, false, true, false)).e.d.xz)), ~u_input.a.x, 1137f, func_2(func_2(all(vec4<bool>(true, false, false, true))).b && false));
    let var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, var_1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1717f)))) - var_0.yz))));
    let var_4 = var_1.e.c;
    let var_5 = Struct_2(Struct_1(~(~(~14519u))), true, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(var_1.e.c, global0.x)), 9218i, ~1i) | -37871i, vec3<bool>(var_1.b, false, false));
    var var_6 = var_4 == var_1.e.c;
    let x = u_input.a;
    s_output = StorageBuffer(-1706f, vec2<i32>(-(~var_5.c), global0.x), ~u_input.a.x, var_5.a.a);
}


struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-694f, 720f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-412f * -1128f))) + _wgslsmith_f_op_f32(1f * -744f)))), 441f, vec3<bool>(true, true, true), Struct_3(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec4<bool>(false, true, true, true)), true, all(vec4<bool>(true, true, false, true)))), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, 589f, -498f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, 309f, 196f)))))), true, 1i));
    let var_1 = -867f;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-var_0.a), var_0.a, !select(var_0.d.a.xyy, !select(var_0.d.a.wxz, vec3<bool>(true, true, var_0.c.x), true), (true == var_0.c.x) && true), var_0.d);
    var var_3 = var_0.d.e;
    var_0 = var_2;
    return var_0.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = u_input.d;
    var var_1 = all(select(select(vec2<bool>(true, arg_1), vec2<bool>(any(vec3<bool>(arg_1, false, false)), true), !vec2<bool>(false, arg_1)), vec2<bool>(true, arg_1), func_3(vec4<u32>(1u, u_input.b.x, arg_2.a.x ^ 4294967295u, arg_2.a.x))));
    var var_2 = ~2991u;
    var var_3 = i32(-1i) * -_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.xx, u_input.e), u_input.d.zx));
    var var_4 = -(u_input.d.zz << (_wgslsmith_div_vec2_u32(~u_input.b & vec2<u32>(arg_2.a.x, 4094u), ~(~arg_2.a)) % vec2<u32>(32u)));
    return false;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = firstLeadingBit(~vec4<i32>(_wgslsmith_clamp_i32(~28260i, firstTrailingBit(u_input.c), u_input.a.x), u_input.a.x, ~(-1i ^ u_input.e.x), _wgslsmith_add_i32(i32(-1i) * -32647i, firstTrailingBit(u_input.d.x))));
    var var_1 = !(arg_1.x || func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1936f, 151f, 1081f)))), true, Struct_1(arg_2.a)));
    var_1 = arg_1.x;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1045f))) - -1166f)), _wgslsmith_f_op_f32(f32(-1f) * -3300f), vec3<bool>(true, !(arg_1.x || arg_1.x), arg_1.x), Struct_3(select(vec4<bool>(true, !arg_1.x, arg_1.x, !arg_1.x), select(vec4<bool>(false, arg_1.x, true, true), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), true), vec4<bool>(true, false, !arg_1.x, arg_1.x)), false, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(378f, 1000f, 1834f))))), arg_1.x, ~max(var_0.x, var_0.x) << (reverseBits(~16350u) % 32u)));
    let var_3 = var_2.d.c.yx;
    return Struct_4(_wgslsmith_f_op_f32(min(1051f, 1153f)), var_2.d.c.x, vec3<bool>(func_3(max(~vec4<u32>(44420u, u_input.b.x, 68322u, 1u), countOneBits(vec4<u32>(7457u, arg_2.a.x, arg_2.a.x, arg_0)))), all(!vec4<bool>(true, arg_1.x, false, false)), true), var_2.d);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<f32>) -> bool {
    var var_0 = func_4(u_input.b.x, !vec2<bool>(!func_2(arg_3.zyx, arg_1, Struct_1(vec2<u32>(0u, arg_2.x))), false), Struct_1(~firstTrailingBit(u_input.b) >> (u_input.b % vec2<u32>(32u))));
    var_0 = Struct_4(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), vec3<bool>(select(true, arg_1, (var_0.d.c.x < var_0.d.c.x) & arg_0), true, any(!vec4<bool>(arg_1, arg_0, true, true))), func_4(~firstLeadingBit(1u), var_0.d.a.zz, Struct_1(vec2<u32>(1u, ~1760u))).d);
    var var_1 = Struct_2(arg_3);
    let var_2 = var_0.d.c.xx;
    return any(!vec2<bool>(!(!arg_1), 1i < _wgslsmith_div_i32(u_input.e.x, var_0.d.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.b.x, select(1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 5161u), vec2<u32>(u_input.b.x, 0u)), u_input.b), func_1(any(vec2<bool>(true, true)) | true, all(vec3<bool>(false, false, true)), ~vec2<u32>(50755u, 31492u) >> ((vec2<u32>(u_input.b.x, u_input.b.x) << (vec2<u32>(u_input.b.x, 16745u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 534f, -192f, 375f), vec4<f32>(423f, -1390f, 284f, 643f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(993f, -760f, -548f, -188f))))), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(~(u_input.b.x << (u_input.b.x % 32u)), 54915u >> (select(24515u, u_input.b.x, false) % 32u))));
    var var_1 = -min(u_input.a.x, 1i);
    var_1 = -1i;
    var_1 = max(-u_input.a.x, max(u_input.c, select(-42370i | u_input.d.x, 0i, true))) >> (17705u % 32u);
    let var_2 = vec3<i32>(func_4(u_input.b.x, !func_4(0u << (u_input.b.x % 32u), vec2<bool>(false, false), Struct_1(vec2<u32>(u_input.b.x, 25677u))).d.a.zz, Struct_1(var_0.xx)).d.e, _wgslsmith_mult_i32(1i, firstTrailingBit(max(firstLeadingBit(13259i), ~u_input.c))), _wgslsmith_mod_i32(u_input.c, -_wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i)));
    var var_3 = 2147483647i;
    var_1 = abs(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(func_4(0u, select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec2<u32>(7342u, u_input.b.x))).d.e), min(func_4(~_wgslsmith_add_u32(u_input.b.x, 1u), vec2<bool>(true, true), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), u_input.b))).d.e, ~abs(1i)), ~u_input.b);
}


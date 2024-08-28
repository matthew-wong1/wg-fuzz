struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: array<Struct_3, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_4(vec4<i32>(u_input.e, min(-2147483647i, u_input.e ^ -47334i), ~_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), -1i) >> (~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 34714u, u_input.a), vec4<u32>(37907u, 13539u, u_input.a, 34586u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 1i) ^ vec4<i32>(u_input.e, 1i, 1i, 11400i)) | _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.e, 107162i, u_input.e), vec4<i32>(u_input.c.x, 10078i, u_input.e, u_input.e)), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, u_input.e))), abs(-vec4<i32>(-2147483647i, 4555i, 6876i, 0i) ^ vec4<i32>(-20226i, u_input.c.x, u_input.e, u_input.c.x))), select(_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 0u, 24999u)), vec4<u32>(~u_input.a, ~0u, u_input.b >> (1u % 32u), 1u << (u_input.d % 32u))), firstTrailingBit(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.d, u_input.a, u_input.b, 27311u), vec4<u32>(u_input.a, 36439u, 1u, u_input.d), true), vec4<u32>(u_input.d, 4294967295u, 1u, 0u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(countOneBits(_wgslsmith_add_i32(u_input.c.x, u_input.c.x)), ~(~1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~u_input.c)), Struct_2(Struct_1(u_input.e, 4294967295u, vec4<bool>(true, 4294967295u <= u_input.d, true, true), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -56826i, 26280i), u_input.c) | firstLeadingBit(vec3<i32>(-36051i, u_input.c.x, u_input.e)))));
    global0 = array<vec4<f32>, 27>();
    return !var_0.e.a.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_2(Struct_1(~1i, ~34144u << (u_input.b % 32u), !select(!vec4<bool>(true, false, arg_0.c.x, arg_0.c.x), !vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x), select(vec4<bool>(arg_0.a, arg_0.c.x, arg_0.a, arg_0.a), vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.a), vec4<bool>(arg_0.c.x, false, arg_0.c.x, true))), u_input.c));
    var var_1 = Struct_1(-(~(~u_input.c.x)), 1405u, vec4<bool>(!arg_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(245f * -1827f))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(1175f, -102f) * _wgslsmith_f_op_f32(1549f + -1192f)), !(arg_0.a & true), !(u_input.d >= 1u) & func_3()), vec3<i32>(arg_0.d, -arg_1.x, -arg_0.d ^ var_0.a.a));
    let var_2 = vec3<bool>(!any(var_0.a.c), true, any(!vec4<bool>(var_0.a.c.x, arg_0.a, var_0.a.c.x, var_0.a.c.x)) & !var_1.c.x);
    var_1 = Struct_1(reverseBits(arg_1.x), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, u_input.d, var_1.b), ~vec3<u32>(var_1.b, u_input.d, 4294967295u))), 0u), vec4<bool>(true, select(true, all(select(vec3<bool>(var_1.c.x, false, false), var_0.a.c.wzx, arg_0.a)), true), true, true), abs(reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, arg_1.x, arg_0.d), vec3<i32>(var_0.a.d.x, 3959i, -63528i)), 34457i, var_1.d.x))));
    var var_3 = any(!(!(!select(var_1.c.wx, vec2<bool>(var_0.a.c.x, true), arg_0.c))));
    return ~(~u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_1(u_input.c.x, 66172u, arg_0.c, vec3<i32>(38559i, arg_0.a, select(arg_0.d.x, max(0i, 1i), _wgslsmith_mult_u32(0u, 38815u) != firstTrailingBit(arg_0.b))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-231f, 710f, arg_0.c.x)))), _wgslsmith_f_op_f32(538f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -595f))))), _wgslsmith_f_op_f32(step(-1043f, _wgslsmith_f_op_f32(-389f - -766f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-994f * _wgslsmith_f_op_f32(select(-531f, _wgslsmith_f_op_f32(floor(783f)), !var_0.c.x))))));
    let var_2 = _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c.x, -(i32(-1i) * -2147483647i)), arg_1.zw);
    var_0 = Struct_1(var_0.a, u_input.a, select(select(!select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), var_0.c, arg_0.c), arg_0.c, arg_0.c.x), var_0.c, false != select(var_0.c.x & false, true, arg_0.c.x)), var_0.d);
    var_0 = arg_0;
    return _wgslsmith_div_i32(var_2.x, 0i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<u32> {
    global1 = array<Struct_3, 24>();
    var var_0 = _wgslsmith_mod_i32(func_4(Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.d.x, -2681i, -4183i), vec4<i32>(-17659i, 17521i, 24119i, arg_0.d.x)), ~func_2(Struct_3(false, 1000f, vec2<bool>(true, arg_0.c.x), -11277i), vec3<i32>(46203i, -1i, 0i)), select(!arg_1.c, select(arg_1.c, arg_0.c, false), all(arg_0.c)), u_input.c ^ countOneBits(u_input.c)), abs(reverseBits(~vec4<i32>(arg_0.d.x, arg_0.d.x, 2147483647i, 37037i)))), ~0i);
    var var_1 = firstLeadingBit(arg_1.a);
    global0 = array<vec4<f32>, 27>();
    global1 = array<Struct_3, 24>();
    return (~reverseBits(~arg_2.xz) << ((countOneBits(min(arg_2.yz, vec2<u32>(arg_0.b, arg_2.x))) | (vec2<u32>(arg_2.x, 81557u) ^ arg_2.zy)) % vec2<u32>(32u))) & (vec2<u32>(abs(u_input.d), max(func_2(global1[_wgslsmith_index_u32(arg_2.x, 24u)], vec3<i32>(28256i, 0i, u_input.e)), select(103050u, arg_1.b, arg_1.c.x))) | _wgslsmith_sub_vec2_u32(~arg_2.xw, ~vec2<u32>(u_input.b, 24301u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(func_1(Struct_1(u_input.c.x, 0u, vec4<bool>(true, false, true, true), vec3<i32>(u_input.c.x, -42538i, 1i)), Struct_1(u_input.e, u_input.a, vec4<bool>(false, false, true, true), u_input.c), vec4<u32>(u_input.b, u_input.d, 4294967295u, u_input.b)) ^ vec2<u32>(63717u, 1u)) | ~(min(vec2<u32>(u_input.d, 52797u), vec2<u32>(27246u, u_input.a)) >> (min(vec2<u32>(u_input.d, u_input.a), vec2<u32>(30269u, 4294967295u)) % vec2<u32>(32u))));
    let var_1 = global1[_wgslsmith_index_u32(20820u, 24u)];
    let var_2 = Struct_3(-236f > _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) * _wgslsmith_f_op_f32(f32(-1f) * -869f)))))), !select(select(var_1.c, vec2<bool>(var_1.a, true), false | var_1.c.x), vec2<bool>(var_1.a, any(vec3<bool>(var_1.c.x, var_1.a, true))), select(!vec2<bool>(var_1.a, var_1.a), !vec2<bool>(var_1.a, false), var_1.c)), _wgslsmith_mult_i32(-abs(~u_input.e), -1i));
    var var_3 = _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(u_input.c.x, var_1.d), abs(-var_2.d))) ^ -_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(var_1.d, 2147483647i & var_2.d));
    var_3 = var_1.d;
    var var_4 = global0[_wgslsmith_index_u32(36511u, 27u)];
    global0 = array<vec4<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, vec3<u32>(~var_0.x, _wgslsmith_sub_u32(u_input.a, 53446u), (func_1(Struct_1(var_1.d, var_0.x, vec4<bool>(var_1.c.x, true, var_1.c.x, var_2.a), vec3<i32>(37108i, var_1.d, var_2.d)), Struct_1(var_2.d, 4294967295u, vec4<bool>(true, var_1.a, var_2.c.x, true), vec3<i32>(u_input.c.x, -2147483647i, var_1.d)), vec4<u32>(1u, 7493u, u_input.d, 58778u)).x | 1u) | (var_0.x << (1u % 32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 302f) - vec2<f32>(var_1.b, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-217f, -568f), var_4.wy, var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_f_op_f32(ceil(-549f)))))));
}


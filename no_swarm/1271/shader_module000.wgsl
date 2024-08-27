struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -1657f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(554f, -1000f))))));
    global0 = array<vec3<bool>, 19>();
    var var_1 = firstLeadingBit(28578u);
    var_1 = ~firstLeadingBit(~_wgslsmith_mult_u32(select(u_input.a.x, u_input.a.x, arg_1), select(8840u, 31683u, false)));
    let var_2 = global1.a.x | -2147483647i;
    return true;
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 1076f) * -332f))));
    var var_1 = vec4<bool>(func_3(Struct_1(_wgslsmith_div_vec4_i32(global1.a, vec4<i32>(-22782i, global1.a.x, -80182i, global1.a.x))), _wgslsmith_mod_u32(arg_0.x, u_input.a.x) < arg_0.x) || !((arg_0.x ^ 4294967295u) > abs(arg_0.x)), false, false, select(false, ~(~u_input.a.x) >= ~u_input.a.x, global1.a.x < (-global1.a.x >> (~u_input.a.x % 32u))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(489f, var_0, all(vec2<bool>(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(var_0 + 787f));
    let var_3 = !select(var_1.xz, vec2<bool>(var_1.x | any(vec3<bool>(false, false, true)), false), vec2<bool>(select(!var_1.x, select(var_1.x, var_1.x, false), true), !any(vec3<bool>(var_1.x, true, false))));
    let var_4 = Struct_4(any(select(var_1.yyx, vec3<bool>(!var_3.x, var_3.x & true, -1130f == var_0), select(!var_3.x, any(vec3<bool>(true, var_1.x, var_3.x)), !var_3.x))), Struct_2(_wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(4294967295u, arg_0.x) & ~arg_0.x), Struct_1(reverseBits(global1.a) | global1.a), select(global1.a.zy, global1.a.ww, _wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(-1769f * 497f)), ~global1.a.xww));
    return Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, 1193f, -649f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, 630f), vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_4.a, true, var_3.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(433f, var_2.x, var_2.x), vec3<f32>(var_2.x, 336f, 755f)))))))), -863f);
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = func_2(max(abs(~vec3<u32>(1u, 4294967295u, arg_0.b.a)), vec3<u32>(_wgslsmith_sub_u32(arg_0.b.a, ~4294967295u), u_input.a.x, 15835u)));
    let var_1 = Struct_3(arg_0.b, reverseBits(vec2<i32>(1i, -2147483647i & arg_0.b.c.x)), vec4<bool>(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + 2160f), _wgslsmith_f_op_f32(step(-1917f, var_0.a.x))) < var_0.a.x, false, false));
    global1 = Struct_1(select(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global1.a.x, -3132i, global1.a.x, arg_0.b.c.x)), -global1.a), -vec4<i32>(var_1.b.x, -1i, -19063i, -41556i), var_1.c) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(0i), 1i, _wgslsmith_dot_vec3_i32(var_1.a.d, vec3<i32>(arg_0.b.d.x, arg_0.b.d.x, -51264i)), var_1.b.x), _wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a.d.x, -2595i, var_1.b.x, 1i), abs(vec4<i32>(var_1.a.b.a.x, 1i, global1.a.x, 17589i)))));
    global1 = var_1.a.b;
    let var_2 = _wgslsmith_f_op_f32(-var_0.b);
    return arg_0.b.a;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    var var_0 = -(firstTrailingBit(_wgslsmith_div_i32(~(-1i), -6225i)) & min(abs(global1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.d.x, -473i, arg_1.x, -2147483647i), vec4<i32>(0i, arg_1.x, -1i, 12464i))));
    let var_1 = global1.a.x;
    var var_2 = select(any(vec2<bool>(all(select(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(arg_2, 19u)], false)), false)), false, true);
    var var_3 = ~vec3<i32>(2147483647i, reverseBits(abs(countOneBits(35383i))), -48987i);
    global0 = array<vec3<bool>, 19>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - -836f), _wgslsmith_f_op_f32(step(-485f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(582f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec3<f32>(-544f, _wgslsmith_f_op_f32(func_4(Struct_4(true, Struct_2(u_input.a.x, Struct_1(vec4<i32>(global1.a.x, -89123i, global1.a.x, global1.a.x)), vec2<i32>(-9948i, global1.a.x), global1.a.xzw)), -_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, -2147483647i, global1.a.x), vec4<i32>(global1.a.x, -2147483647i, -2147483647i, global1.a.x)), _wgslsmith_clamp_u32(func_1(Struct_4(false, Struct_2(u_input.a.x, Struct_1(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, -1i)), global1.a.wz, vec3<i32>(-31072i, global1.a.x, 1i)))), ~u_input.a.x, u_input.a.x ^ 691u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1212f, 338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f))))), _wgslsmith_f_op_f32(-1163f * _wgslsmith_f_op_f32(func_4(Struct_4(false, Struct_2(0u, Struct_1(vec4<i32>(global1.a.x, global1.a.x, 0i, global1.a.x)), global1.a.zw, vec3<i32>(0i, 0i, global1.a.x))), vec4<i32>(_wgslsmith_clamp_i32(global1.a.x, global1.a.x, -2147483647i), global1.a.x, countOneBits(global1.a.x), _wgslsmith_sub_i32(global1.a.x, global1.a.x)), u_input.a.x))));
    let var_1 = Struct_2(u_input.a.x, Struct_1(vec4<i32>(firstTrailingBit(0i), -2147483647i, abs(4333i), global1.a.x | global1.a.x) << (~min(vec4<u32>(65079u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 53745u, u_input.a.x, 1u)) % vec4<u32>(32u))), global1.a.zy, min(global1.a.zzy, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x, -31290i, 1i), global1.a.wwx)) | global1.a.wxw));
    let var_2 = _wgslsmith_clamp_u32(countOneBits(var_1.a), _wgslsmith_mult_u32(16178u, ~abs(~1u)), _wgslsmith_mod_u32(~(~1u), u_input.a.x));
    let var_3 = var_2;
    global1 = var_1.b;
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    global0 = array<vec3<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, global1.a.zz, _wgslsmith_f_op_f32(-func_2(max(vec3<u32>(0u, 4294967295u, 1u), select(vec3<u32>(var_2, var_3, 0u), vec3<u32>(var_1.a, var_3, var_1.a), true))).b), 0u >> (((35374u ^ var_3) | max(68786u, abs(64830u))) % 32u));
}


struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 843f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1822f, 1626f, _wgslsmith_f_op_f32(-arg_0.x), 1182f), arg_1.a.a)), _wgslsmith_f_op_vec4_f32(select(arg_1.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + arg_0)), vec4<bool>(select(arg_1.b.d.x, arg_2, arg_2), true, false, all(vec3<bool>(arg_1.a.d.x, arg_2, true)))))), u_input.b ^ (abs(u_input.a.zx) | ~(~vec2<i32>(u_input.a.x, u_input.b.x))), 31285i << (0u % 32u), !vec2<bool>(!(true & arg_2), all(select(vec3<bool>(false, false, arg_2), vec3<bool>(arg_1.b.d.x, arg_2, true), false))), u_input.a.x);
    var var_1 = arg_1.a;
    var var_2 = !arg_1.b.d.x;
    let var_3 = _wgslsmith_f_op_f32(floor(arg_1.b.a.x));
    global0 = 997f;
    return -254f;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    global0 = arg_0.x;
    let var_0 = Struct_3(abs(~u_input.c.xx), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 393f, arg_0.x, arg_0.x))), vec2<i32>(u_input.b.x, i32(-1i) * -20151i), -16659i, select(vec2<bool>(true, true), vec2<bool>(true, true), true), 0i), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, 827f, arg_0.x, arg_0.x))), select(vec2<i32>(-1i, u_input.b.x), -u_input.a.wz, vec2<bool>(true, true)), ~(6681i | u_input.b.x), vec2<bool>(true, true), max(-19408i, _wgslsmith_add_i32(u_input.b.x, 10751i)))));
    let var_1 = var_0.b;
    global0 = _wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, var_1.a.a.x, 1751f)))), Struct_2(var_1.b, Struct_1(var_0.b.a.a, vec2<i32>(var_1.b.e, -1674i), var_1.a.c, vec2<bool>(var_1.a.d.x, var_0.b.b.d.x), var_0.b.a.b.x)), var_1.a.d.x)) + 774f));
    let var_2 = u_input.c.yz;
    return !(!select(vec3<bool>(var_1.b.d.x || var_1.a.d.x, var_1.a.e > var_1.b.c, var_1.a.d.x), vec3<bool>(false, var_0.b.b.d.x, false), select(vec3<bool>(var_1.b.d.x, var_0.b.a.d.x, false), !vec3<bool>(false, var_0.b.b.d.x, true), vec3<bool>(false, var_1.b.d.x, false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    global0 = -743f;
    global0 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_0 = Struct_3(u_input.d.wz, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, -431f, 780f, 653f)))), vec2<i32>(-55355i, _wgslsmith_mod_i32(1i, u_input.b.x)), u_input.a.x, vec2<bool>(any(arg_0), false), _wgslsmith_mod_i32(countOneBits(0i), 11957i)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(333f, arg_2.x, -209f, arg_2.x) - vec4<f32>(arg_2.x, -998f, arg_2.x, arg_2.x)) - vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1132f)), _wgslsmith_add_vec2_i32(min(vec2<i32>(2147483647i, 45518i), u_input.b), ~vec2<i32>(-2147483647i, 1i)), u_input.a.x, !(!arg_0.xz), i32(-1i) * -27416i)));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -575f);
    return var_0.b.a;
}

fn func_1() -> Struct_1 {
    var var_0 = -u_input.b.x;
    var var_1 = func_4(select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), func_2(vec4<f32>(_wgslsmith_f_op_f32(-139f + 665f), _wgslsmith_f_op_f32(-238f * 745f), _wgslsmith_f_op_f32(-839f + -1071f), _wgslsmith_f_op_f32(select(603f, 1269f, false)))), vec3<bool>(true, true, true)), reverseBits(u_input.d.x), vec3<f32>(-257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-992f + 2714f) - -1369f), 1f));
    global0 = var_1.a.x;
    let var_2 = var_1.c;
    let var_3 = max(_wgslsmith_add_i32(i32(-1i) * -reverseBits(-5383i), ~u_input.b.x), 0i);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.a)) + var_1.a), -u_input.a.yz, ~(-u_input.a.x) & (-2147483647i ^ abs(u_input.a.x)), !(!var_1.d), -_wgslsmith_clamp_i32(var_3 ^ ~(-1i), -17149i, u_input.b.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.a.xw * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-924f, -1325f))), vec2<f32>(_wgslsmith_f_op_f32(-2363f - -221f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1007f, 210f)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1953f, var_0.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(911f + _wgslsmith_f_op_f32(round(-217f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) - -1160f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(arg_0.a.a.x - -661f)))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-1000f * 1035f))));
    let var_2 = !arg_1;
    var var_3 = max(1u, u_input.d.x);
    return ~(~(~27299u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1324f;
    global0 = 1084f;
    var var_0 = select(firstTrailingBit(func_5(Struct_2(func_1(), func_4(vec3<bool>(false, true, false), u_input.c.x, vec3<f32>(-503f, -1233f, 374f))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), false))), u_input.c.x, true);
    var var_1 = Struct_2(Struct_1(vec4<f32>(-1656f, -545f, -1058f, -886f), u_input.a.xz << (u_input.c.yy % vec2<u32>(32u)), firstTrailingBit(0i), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(min(2147483647i, 41855i), _wgslsmith_div_i32(17200i, u_input.b.x), u_input.a.x, ~6792i), -vec4<i32>(40834i, u_input.a.x, -1i, u_input.a.x))), func_1());
    let var_2 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a.x, var_1.b.e), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(51954i << (u_input.c.x % 32u), var_1.a.b.x, 25182i), i32(-1i) * -u_input.b.x, _wgslsmith_mod_i32(-2147483647i, ~u_input.b.x)), -u_input.a.wzx), ~(_wgslsmith_add_vec3_u32(u_input.c, abs(vec3<u32>(12937u, u_input.e.x, 23195u))) & vec3<u32>(abs(36598u), ~22482u, 1u)));
}


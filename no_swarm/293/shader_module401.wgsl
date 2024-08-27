struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
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

var<private> global0: vec4<f32> = vec4<f32>(2261f, -314f, -1144f, -1635f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = arg_1.c.x;
    var var_1 = arg_1.c.wxw >> (~select(min(arg_1.c.zzw, arg_1.c.yxw) >> (arg_1.c.wzw % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~arg_1.c.zwx, _wgslsmith_clamp_vec3_u32(arg_1.c.zyw, arg_1.c.yxz, vec3<u32>(93855u, 1u, var_0))), vec3<bool>(global0.x <= global0.x, false, !arg_0.a)) % vec3<u32>(32u));
    var_1 = vec3<u32>(122986u, min(max(~arg_1.c.x, 0u) | var_0, 0u), var_0);
    var var_2 = Struct_1(true);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)) - global0.x), _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-432f - arg_2)) * arg_2), 135f));
    return 27518u;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = true != select(any(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), any(vec2<bool>(true, true)), false);
    var_0 = false;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.c, u_input.c) >> (47114u % 32u), firstTrailingBit(u_input.c) << (func_3(Struct_1(false), Struct_3(Struct_1(true), Struct_1(true), vec4<u32>(u_input.c, 0u, u_input.c, 1u), Struct_2(vec4<i32>(arg_0.x, 1i, 1i, arg_0.x), 0i)), -792f) % 32u)), ~(~_wgslsmith_mod_u32(~u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.c, 13226u))), 102573u);
    let var_2 = Struct_1(true);
    var_0 = var_2.a;
    return var_2.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = select(!arg_0, arg_0, all(select(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, false, false), arg_2.a), !arg_0.wyw, !arg_0.wxy)) || !(!func_2(vec4<i32>(14657i, u_input.e, -112827i, u_input.b), u_input.d.x)));
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_div_i32(-20945i, i32(-1i) * -2147483647i), -u_input.e ^ _wgslsmith_sub_i32(abs(2147483647i), -u_input.b), u_input.a.x, _wgslsmith_mod_i32(-_wgslsmith_div_i32(14683i, -5670i), 1i)), -(~u_input.d.x));
    var var_2 = ~61611u;
    var var_3 = -1i;
    let var_4 = _wgslsmith_f_op_f32(-128f - arg_1.x);
    return Struct_3(arg_2, Struct_1(global0.x < _wgslsmith_f_op_f32(-global0.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c, u_input.c, u_input.c, 19636u), vec4<u32>(19950u, u_input.c, u_input.c, 13820u)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), u_input.c, 1u, 3276u) >> (~vec4<u32>(u_input.c, ~u_input.c, u_input.c ^ u_input.c, ~43442u) % vec4<u32>(32u)), Struct_2(u_input.a, ~u_input.e));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = reverseBits(u_input.e);
    var var_1 = func_1(vec4<bool>(true, !arg_0.b.a, true, all(select(select(vec3<bool>(arg_0.a.a, arg_0.b.a, false), vec3<bool>(arg_0.b.a, false, arg_0.a.a), arg_0.b.a), select(vec3<bool>(arg_0.a.a, true, arg_0.a.a), vec3<bool>(arg_0.a.a, false, arg_0.b.a), true), vec3<bool>(arg_0.a.a, arg_0.a.a, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, global0.x, global0.x) * global0.wxz)) - _wgslsmith_f_op_vec3_f32(-global0.yzz))), arg_0.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 715f, global0.x)))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(floor(global0.x)), var_2.x, var_2.x))), vec4<f32>(176f, var_2.x, _wgslsmith_div_f32(537f, -1913f), _wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(sign(-972f)), false)))));
    global0 = _wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_f_op_vec4_f32(round(var_2)));
    return func_1(vec4<bool>(true, true, !(var_1.d.a.x >= -2147483647i), true), global0.yxz, Struct_1(false)).b;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = arg_2.d;
    let var_1 = func_1(vec4<bool>(false, arg_0, func_2(u_input.a, 1194i), arg_0), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.wzy), _wgslsmith_f_op_vec3_f32(max(global0.yww, vec3<f32>(arg_1, -755f, 398f))), select(vec3<bool>(true, false, false), vec3<bool>(false, arg_2.a.a, arg_2.a.a), vec3<bool>(arg_0, arg_2.b.a, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.xwz, global0.wxx)), select(vec3<bool>(arg_2.a.a, false, arg_0), vec3<bool>(false, false, arg_2.a.a), !vec3<bool>(arg_0, true, false)))), global0.yzz)), arg_2.a);
    let var_2 = var_1;
    var var_3 = true;
    let var_4 = -9912i;
    return vec4<f32>(-284f, -988f, 1483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(max(1441f, arg_1))))) - 168f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~0u, 4294967295u), u_input.c);
    var var_1 = Struct_2(u_input.a, select(u_input.b, ~43412i, true || (1u > u_input.c)) & _wgslsmith_sub_i32(2147483647i, ~(-19134i)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(!(u_input.d.x < 0i) | false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), Struct_3(Struct_1(false), func_4(func_1(vec4<bool>(true, true, true, false), global0.yzw, Struct_1(true))), vec4<u32>(1u, u_input.c, 33511u, ~1u), Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, 1i, -32549i, u_input.a.x), vec4<i32>(var_1.b, -2147483647i, u_input.a.x, var_1.b)), -var_1.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-3017f, 2008f, global0.x, _wgslsmith_f_op_f32(1206f * _wgslsmith_f_op_vec4_f32(func_5(false, global0.x, Struct_3(Struct_1(true), Struct_1(true), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), Struct_2(vec4<i32>(-67432i, -2147483647i, var_1.a.x, 11359i), u_input.e)))).x))));
    let var_2 = _wgslsmith_mult_u32(59007u << (abs(countOneBits(u_input.c)) % 32u), ~abs(_wgslsmith_mod_u32(u_input.c, 29479u))) << (u_input.c % 32u);
    let var_3 = 497f;
    var var_4 = func_2(_wgslsmith_add_vec4_i32(func_1(vec4<bool>(false, true, true, false), global0.zyx, func_1(vec4<bool>(false, true, true, false), global0.zzy, Struct_1(false)).b).d.a, abs(-var_1.a)) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e & 1i, u_input.e, 2147483647i, ~0i), var_1.a >> (vec4<u32>(4294967295u, var_2, 0u, 31547u) % vec4<u32>(32u))), var_1.b);
    let var_5 = Struct_2(u_input.a, ~u_input.a.x);
    var_4 = !(!(max(_wgslsmith_mult_u32(var_2, 40875u), 4294967295u) <= 4294967295u));
    var var_6 = firstLeadingBit(u_input.c | func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-global0.xxz), func_4(Struct_3(Struct_1(true), Struct_1(false), vec4<u32>(var_2, var_2, var_2, 88513u), var_5))).c.x) < 63623u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_5.b, 1i));
}


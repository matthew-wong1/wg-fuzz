struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: vec2<f32> = vec2<f32>(857f, 1059f);

var<private> global1: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    global1 = vec2<i32>(u_input.b, _wgslsmith_mult_i32(1i, ~(~u_input.b)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1782f, -806f), vec2<f32>(777f, -189f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, global0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x - -206f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.x)))))));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1488f);
    global1 = -arg_2.yz;
    global1 = vec2<i32>(u_input.c, -1i);
    return _wgslsmith_f_op_f32(ceil(global0.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: f32) -> vec2<i32> {
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-375f, arg_1.c.a))), -1607f, arg_1.c.a), arg_1.b, Struct_1(1630f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.d))) - arg_1.d)), _wgslsmith_mod_vec2_i32(firstTrailingBit(arg_0) ^ vec2<i32>(global1.x, -u_input.b), select(-min(vec2<i32>(arg_1.e.x, global1.x), arg_1.e), vec2<i32>(56276i, 2147483647i) >> (vec2<u32>(u_input.e.x, 1u) % vec2<u32>(32u)), vec2<bool>(all(arg_1.b.a.yy), all(vec3<bool>(arg_1.b.a.x, arg_1.b.a.x, true))))));
    var var_1 = _wgslsmith_f_op_f32(1771f - 214f);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2355f)), -202f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-982f * -656f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, arg_1.a.x, -752f, -301f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, 1051f, -552f, arg_1.c.a)), !all(vec2<bool>(arg_1.b.a.x, false))))), Struct_2(vec4<bool>(true, true, all(vec4<bool>(true, true, arg_1.b.a.x, arg_1.b.a.x)), arg_1.c.a <= 617f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b.b, vec3<f32>(var_0.b.b.x, 851f, global0.x)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3)))), (30568u | arg_2.x) | _wgslsmith_add_u32(arg_2.x & var_0.b.d, min(var_0.b.d, 33053u))), arg_1.c, var_0.b.b.zy, var_0.e);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.a.ww))));
    var_0 = arg_1;
    return ~select(arg_0, ~arg_1.e, !var_0.b.a.zy) >> (vec2<u32>(~(~firstLeadingBit(arg_1.b.d)), 1u) % vec2<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global1 = vec2<i32>(1i, u_input.c);
    global1 = ~select(vec2<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, u_input.c ^ u_input.c, u_input.b)), select(vec2<i32>(u_input.b | -21529i, -31212i), ~(~vec2<i32>(u_input.c, u_input.c)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(arg_0, arg_0)) > _wgslsmith_f_op_f32(func_2(firstLeadingBit(u_input.e.yz), ~arg_1.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(-53053i, 0i, u_input.c, 1i), vec4<i32>(10952i, u_input.c, global1.x, -2147483647i), vec4<i32>(-13600i, 0i, global1.x, global1.x)), arg_1.yy)));
    let var_0 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -9045i), vec2<i32>(global1.x, u_input.c)), vec2<i32>(abs(5990i), ~0i))), -_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, global1.x), _wgslsmith_div_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(2147483647i, u_input.c))), func_3(~vec2<i32>(0i, -16827i), Struct_4(vec4<f32>(-545f, global0.x, global0.x, 630f), Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(arg_0, arg_0, 1585f), Struct_1(182f), u_input.e.x), Struct_1(-2441f), vec2<f32>(global0.x, global0.x), vec2<i32>(global1.x, -2147483647i)), max(u_input.e.xw, vec2<u32>(arg_1.x, 65784u)), global0.x), max(-vec2<i32>(-2147483647i, 1i), vec2<i32>(-5947i, global1.x) ^ vec2<i32>(global1.x, -2147483647i))));
    let var_1 = u_input.e.wz;
    let var_2 = reverseBits(vec3<u32>(4294967295u, arg_1.x, ~_wgslsmith_mod_u32(arg_1.x & u_input.d, u_input.a)));
    return global0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1088f, arg_0.a, _wgslsmith_f_op_f32(func_2(reverseBits(u_input.e.yw), _wgslsmith_add_u32(arg_2.x, 4294967295u), vec4<i32>(u_input.b, -31665i, 15351i, u_input.c) << (vec4<u32>(0u, arg_2.x, 26734u, 15045u) % vec4<u32>(32u)), abs(vec2<u32>(u_input.e.x, 4294967295u)))), arg_1.b.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(arg_1.c.a, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -775f), 440f, global0.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(159f, arg_1.b.x, global0.x, -228f), vec4<f32>(arg_0.a, arg_0.a, 720f, arg_0.a)))))))), Struct_2(select(arg_1.a, vec4<bool>(true, false, all(vec3<bool>(false, arg_1.a.x, arg_1.a.x)), !arg_1.a.x), arg_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, arg_1.b.x, _wgslsmith_f_op_f32(floor(global0.x)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1013f)), 4294967295u), Struct_1(_wgslsmith_div_f32(774f, -662f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.c.a, 139f)), _wgslsmith_f_op_f32(172f - global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(-119f, -1000f)))), arg_1.a.zw)), -countOneBits(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, u_input.c), vec2<i32>(global1.x, 19334i)))));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1299f, arg_0.a) - var_0.b.b.yy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(arg_1.b.xy)), var_0.a.yx))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_1.c.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 1000f) - arg_1.b.zy))))));
    let var_1 = var_0.d;
    var var_2 = 15656i > u_input.b;
    let var_3 = var_0.e.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 481f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1318f, _wgslsmith_f_op_f32(select(global0.x, global0.x, true)), _wgslsmith_f_op_f32(sign(-134f)), _wgslsmith_f_op_f32(global0.x - global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 911f, global0.x, global0.x), vec4<f32>(877f, 499f, 924f, 348f)))) + vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(global0.x * -516f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1502f, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, global0.x, global0.x, -1530f) * vec4<f32>(global0.x, global0.x, global0.x, 537f)))))));
    global1 = firstLeadingBit(vec2<i32>(u_input.c, global1.x | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(18074i, global1.x), vec2<i32>(global1.x, -1i)), abs(67065i))));
    var var_1 = _wgslsmith_f_op_f32(trunc(1017f));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(min(_wgslsmith_mod_i32(global1.x, global1.x), ~u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, global1.x), vec4<i32>(-23137i, 21719i, 1i, global1.x))), -min(vec2<i32>(-2147483647i, u_input.b), -vec2<i32>(1i, -29061i))) << (~abs(1u) % 32u);
    var_2 = global1.x;
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(1746f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f - var_0.x) - var_0.x), _wgslsmith_f_op_f32(-var_0.x))), var_0.xy);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0.x, var_0.x, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, 332f)) - vec4<f32>(-1000f, var_0.x, 434f, -505f))))));
    let var_3 = Struct_3(!select(vec3<bool>(false, true, var_0.x < 235f), vec3<bool>(true, true, true), true & any(vec3<bool>(true, false, true))), func_4(Struct_1(_wgslsmith_f_op_f32(func_1(global0.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, 37613u, 0u), vec3<u32>(u_input.a, 0u, 25677u), u_input.e.wyw)))), Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(sign(var_0.wwz)), Struct_1(1192f), reverseBits(u_input.a)), abs(~_wgslsmith_div_vec2_u32(vec2<u32>(18498u, 4294967295u), u_input.e.wx))), all(select(vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, false, false)), global1.x <= u_input.c), vec3<bool>(true, true, 614f == global0.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), 742f >= _wgslsmith_f_op_f32(1000f + global0.x)), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), true), select(vec3<bool>(true, false, false), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, var_0.x != var_0.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))));
}


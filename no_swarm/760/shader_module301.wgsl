struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> f32 {
    var var_0 = arg_0.b;
    global0 = Struct_3(2565f, _wgslsmith_f_op_vec4_f32(min(global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))), _wgslsmith_dot_vec4_i32(global0.e.a, arg_2.a.c.a), global0.a, Struct_1(global0.e.a));
    var var_1 = arg_2.b;
    var var_2 = vec2<bool>(arg_0.b, arg_0.b);
    var_2 = select(!(!(!vec2<bool>(var_2.x, false))), !select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, var_2.x), !vec2<bool>(arg_0.b, false)), vec2<bool>(arg_0.b, !var_2.x), arg_0.b), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(419f)))))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<f32> {
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global0.e, any(vec3<bool>(false, true, false)), global0.e), ~u_input.a << (u_input.c % 32u), Struct_4(Struct_2(Struct_1(global0.e.a), true, global0.e), Struct_1(vec4<i32>(global0.e.a.x, u_input.a, -15783i, 23595i)), global0.e.a))), global0.d), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b, global0.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1398f, global0.d, global0.b.x, 597f) * vec4<f32>(-454f, global0.d, 634f, 1621f))))))), 1i, 548f, global0.e);
    var var_0 = !vec3<bool>(!any(vec3<bool>(true, false, false)) | any(vec4<bool>(false, false, true, true)), ~_wgslsmith_mod_u32(44187u, 77207u) <= u_input.c, all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_2(global0.e, true, Struct_1(-abs(firstLeadingBit(global0.e.a))));
    let var_2 = global0.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1517f, global0.a, global0.a) * vec4<f32>(200f, 1000f, global0.d, 621f))))) * _wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(global0.b - global0.b))))), _wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.d, 1879f, global0.a, global0.d))))), all(vec3<bool>(!var_1.b, var_0.x, any(vec2<bool>(false, true)))))), select(vec4<bool>(all(!vec4<bool>(var_0.x, var_1.b, var_1.b, var_1.b)), abs(arg_0.x) >= 17862u, !(global0.c <= u_input.a), true), !select(select(vec4<bool>(var_1.b, true, var_1.b, false), vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(false, false, var_1.b, true)), !vec4<bool>(false, var_0.x, true, var_1.b), vec4<bool>(var_0.x, true, false, true)), select(select(vec4<bool>(true, false, var_0.x, var_1.b), vec4<bool>(var_0.x, var_0.x, true, var_1.b), var_1.b | var_1.b), !select(vec4<bool>(var_0.x, true, var_1.b, false), vec4<bool>(var_1.b, var_0.x, var_1.b, true), var_1.b), all(vec2<bool>(true, true))))));
    return _wgslsmith_f_op_vec3_f32(-var_3.xyy);
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(~vec2<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(26031u, u_input.b), vec2<u32>(6905u, 68786u))) ^ abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.c), ~vec2<u32>(1u, u_input.c)))));
    var var_1 = Struct_5(global0.b.xx, !vec2<bool>((u_input.c ^ 49250u) >= u_input.c, true), Struct_4(Struct_2(Struct_1(global0.e.a), true, Struct_1(abs(vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)))), arg_1.e, vec4<i32>(4121i, i32(-1i) * -7184i, _wgslsmith_mult_i32(2147483647i, global0.e.a.x), -13364i) << (~vec4<u32>(u_input.c, u_input.b, 1u, 4294967295u) % vec4<u32>(32u))), !(min(reverseBits(-49039i), arg_1.c) < firstLeadingBit(-global0.e.a.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.b.zzz))));
    var var_2 = var_1.b.x && any(select(select(!vec2<bool>(arg_0, true), !var_1.b, select(var_1.b, var_1.b, vec2<bool>(arg_0, var_1.c.a.b))), vec2<bool>(true, var_1.d || var_1.c.a.b), vec2<bool>(!var_1.c.a.b, true | var_1.b.x)));
    let var_3 = 49640i;
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = func_1(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, select(false, false, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true))), arg_0);
    return func_1(_wgslsmith_dot_vec3_u32(reverseBits(arg_1.zxy), firstLeadingBit(vec3<u32>(var_0, 4294967295u, 1u))) < countOneBits(~arg_1.x), Struct_3(_wgslsmith_f_op_f32(-661f * var_1.b.x), global0.b, -firstLeadingBit(func_1(false, var_1).c), _wgslsmith_f_op_f32(440f - var_1.d), global0.e)).e;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    return func_4(func_1(true, func_1(all(vec4<bool>(var_0, var_0, true, false)), func_1(var_0, func_1(var_0, Struct_3(1000f, arg_2.b, 19550i, arg_0.x, arg_2.e))))), ~vec4<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.b), firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.c, u_input.b))), u_input.c, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * global0.b))), func_4(func_1(false, Struct_3(-790f, _wgslsmith_div_vec4_f32(global0.b, global0.b), u_input.a, 152f, Struct_1(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))), ~abs(vec4<u32>(0u, 116181u, 0u, 1u))), func_1(false & (false || any(vec4<bool>(false, false, false, false))), func_1(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)), func_1(true, Struct_3(global0.b.x, vec4<f32>(global0.b.x, global0.b.x, 290f, global0.a), global0.c, -457f, global0.e)))), -_wgslsmith_dot_vec4_i32(select(~vec4<i32>(1i, -29094i, u_input.a, u_input.a), abs(global0.e.a), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), -(~global0.e.a)));
    global0 = func_1(true, func_1(true, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1632f, 247f, 758f, -148f) - vec4<f32>(global0.d, 161f, global0.d, -1000f))), _wgslsmith_dot_vec3_i32(var_0.a.ywz, var_0.a.wzz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), func_5(_wgslsmith_f_op_vec4_f32(-global0.b), func_1(true, Struct_3(global0.b.x, vec4<f32>(global0.d, -435f, 463f, -341f), var_0.a.x, 555f, Struct_1(global0.e.a))).e, Struct_3(global0.d, global0.b, global0.c, 1000f, var_0), ~1i))));
    var var_1 = Struct_4(Struct_2(global0.e, all(vec2<bool>(true, false)), global0.e), var_0, -vec4<i32>(u_input.a, 3033i << ((u_input.c & u_input.b) % 32u), reverseBits(~var_0.a.x), i32(-1i) * -1i));
    var_1 = Struct_4(Struct_2(global0.e, false, var_1.a.a), func_5(_wgslsmith_f_op_vec4_f32(-global0.b), global0.e, Struct_3(_wgslsmith_f_op_f32(sign(global0.d)), vec4<f32>(-1000f, -357f, _wgslsmith_div_f32(global0.a, 1583f), _wgslsmith_f_op_f32(global0.a + -692f)), -abs(32880i), -130f, var_1.b), ~(-_wgslsmith_mod_i32(var_1.c.x, global0.e.a.x))), var_1.a.c.a);
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(-func_1(var_1.a.b || var_1.a.b, func_1(var_1.a.b, Struct_3(global0.b.x, global0.b, global0.e.a.x, global0.a, global0.e))).b.xy), vec2<bool>(any(vec2<bool>(true, true)), var_1.a.b | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 9708u), vec2<u32>(4294967295u, 52328u)) <= ~u_input.c)), Struct_4(var_1.a, func_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.d, global0.d, -195f, global0.a))), Struct_1(vec4<i32>(u_input.a, -1i, 2334i, 1i)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -852f), vec4<f32>(-1751f, global0.d, global0.d, global0.d), u_input.a, _wgslsmith_f_op_f32(abs(global0.b.x)), var_0), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), -var_1.b.a.x)), var_1.c), !(!(!var_1.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<i32>(min(u_input.a, ~func_4(Struct_3(var_2.a.x, global0.b, u_input.a, var_2.a.x, global0.e), vec4<u32>(14824u, 24354u, 35528u, 1u)).a.x), 2816i, -_wgslsmith_clamp_i32(var_0.a.x ^ 16841i, 1i, -2147483647i), var_0.a.x), -1138f);
}


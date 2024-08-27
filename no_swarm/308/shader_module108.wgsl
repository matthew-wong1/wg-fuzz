struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = u_input.e;
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global0.a);
    var var_1 = global1.x;
    return Struct_4(global0.a);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    var var_0 = vec2<f32>(global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f + 266f) * 1f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global0.a + -116f), _wgslsmith_div_f32(433f, -171f), global0.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global0.a, 919f), vec3<f32>(-1572f, var_0.x, 806f)) + vec3<f32>(1000f, global0.a, global0.a))))));
    let var_2 = arg_1.zzw;
    let var_3 = func_2(vec4<bool>(!arg_0, true, !any(!global1.zyy), true));
    global1 = select(select(vec4<bool>(u_input.e < (i32(-1i) * -51544i), false, false, true), vec4<bool>(global1.x, select(arg_0, arg_0, false) == true, false, arg_0), !any(vec2<bool>(false, true))), select(select(!select(vec4<bool>(arg_0, arg_0, global1.x, arg_0), vec4<bool>(true, true, true, false), vec4<bool>(global1.x, false, true, arg_0)), select(!vec4<bool>(true, arg_0, true, global1.x), vec4<bool>(false, global1.x, arg_0, false), vec4<bool>(true, arg_0, false, true)), !(false | global1.x)), !(!select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, arg_0, false, false), false)), !vec4<bool>(true, u_input.e == 42196i, false, arg_0)), !global1.x);
    return vec3<i32>(u_input.e, u_input.a.x, firstTrailingBit(~(~2147483647i))) & select(vec3<i32>(~u_input.e, u_input.a.x, 21611i), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, 14220i, 28038i), abs(vec3<i32>(-36335i, u_input.e, u_input.a.x))), !select(!global1.yzz, select(vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, false), arg_0), !vec3<bool>(global1.x, false, global1.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = 1u >> (u_input.b % 32u);
    let var_1 = Struct_3(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -arg_1.a.x, u_input.e, 0i), vec4<i32>(-1i) * -(vec4<i32>(arg_1.a.x, u_input.e, 0i, arg_1.a.x) | vec4<i32>(-262i, u_input.a.x, 46545i, -28199i))), firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_1.a, (vec3<i32>(arg_1.a.x, u_input.a.x, arg_1.a.x) ^ vec3<i32>(0i, u_input.a.x, 60315i)) | vec3<i32>(arg_1.a.x, u_input.e, -11480i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(320f, arg_1.d, arg_1.d, global0.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -788f, global0.a, 2487f)))))), select(global1.x, !all(select(vec3<bool>(global1.x, arg_1.e.x, global1.x), vec3<bool>(true, false, global1.x), arg_1.e.xyw)), true), arg_1);
    global1 = var_1.e.e;
    let var_2 = max(vec4<u32>(u_input.d, 1u, u_input.c, 47537u), ~vec4<u32>(28525u, 1u, 1u, 13006u) >> ((min(vec4<u32>(7429u, 4294967295u, 4294967295u, u_input.d), vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.c)) & min(vec4<u32>(u_input.d, 0u, u_input.d, u_input.b), vec4<u32>(u_input.b, 1u, 3737u, 5209u))) % vec4<u32>(32u))) | vec4<u32>(u_input.b, 1u, abs(u_input.d), u_input.c);
    let var_3 = arg_1;
    return Struct_2(0u, _wgslsmith_clamp_u32(22162u, 7410u, 57697u), ~4294967295u, Struct_1(_wgslsmith_clamp_vec3_i32(var_3.a, var_1.b, var_1.e.a), -1139f, _wgslsmith_f_op_f32(step(global0.a, global0.a)), 508f, vec4<bool>(any(var_1.e.e.yw), !all(vec3<bool>(arg_2, var_1.d, false)), false, !(!arg_2))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1333f))))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    global0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.wz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - -2639f), arg_3)))), func_4(func_2(!select(arg_2.e.e, arg_2.e.e, true)), Struct_1(func_3(any(vec2<bool>(true, global1.x)), vec4<u32>(u_input.d, u_input.c, 1u, 3826u), ~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) - global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1225f * -1365f), _wgslsmith_f_op_f32(select(896f, -225f, arg_2.e.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a)), -1854f), !vec4<bool>(arg_0, arg_0, false, true)), arg_2.e.e.x & all(global1.zww)));
    let var_0 = func_4(func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(arg_2.c.wx, vec2<f32>(arg_3, 615f))), _wgslsmith_f_op_vec2_f32(abs(arg_2.c.yy)), arg_2.e.e.x)))), _wgslsmith_f_op_f32(-535f * func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -281f) - arg_1.wy), arg_3, Struct_2(u_input.c, u_input.c, 22702u, Struct_1(vec3<i32>(-49983i, arg_2.b.x, 9153i), arg_1.x, arg_2.c.x, arg_1.x, vec4<bool>(global1.x, false, true, true)))).a), func_4(Struct_4(-1153f), Struct_1(arg_2.b, _wgslsmith_f_op_f32(arg_2.e.d - 851f), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 * arg_1.x), func_4(Struct_4(arg_1.x), Struct_1(arg_2.e.a, -144f, arg_1.x, global0.a, arg_2.e.e), arg_0).d.e), all(arg_2.e.e.wzx))), arg_2.e, !global1.x).d;
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(max(firstTrailingBit(~vec3<u32>(u_input.c, 4294967295u, 30885u)), ~vec3<u32>(1u, 38214u, 48534u)), vec3<u32>(abs(28350u), 16544u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 24822u)), vec2<u32>(60454u, 27354u)))), ~u_input.b, ~max(~_wgslsmith_sub_u32(53201u, u_input.d), 4294967295u), func_4(Struct_4(arg_3), var_0, any(vec2<bool>(global0.a > global0.a, all(vec3<bool>(false, false, true))))).d);
    let var_2 = 0i;
    var_1 = Struct_2(u_input.c, ~u_input.d >> (8773u % 32u), u_input.d, arg_2.e);
    return 1703f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.zzw;
    let var_1 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(34586i, u_input.e, u_input.a.x), vec3<i32>(u_input.e, u_input.a.x, 2147483647i)), ~vec3<i32>(u_input.a.x, u_input.e, u_input.e)), abs(vec3<i32>(u_input.e, u_input.a.x, u_input.a.x))), u_input.a.x), ~(vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, 0i, u_input.e))), vec4<f32>(_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(318f, global0.a, global0.a, global0.a)))), Struct_3(~u_input.e, vec3<i32>(u_input.a.x, 1i, 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1418f, global0.a, 2068f, 981f) + vec4<f32>(global0.a, global0.a, -1000f, global0.a)), global1.x, Struct_1(vec3<i32>(u_input.a.x, u_input.e, u_input.a.x), global0.a, global0.a, global0.a, vec4<bool>(false, true, true, var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(506f, global0.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a))) * -421f), 914f, func_2(vec4<bool>(false, select(true, true, global1.x), func_4(Struct_4(global0.a), Struct_1(vec3<i32>(u_input.e, u_input.a.x, -52363i), -196f, 691f, global0.a, vec4<bool>(var_0.x, var_0.x, global1.x, false)), false).d.e.x, !var_0.x)).a), true, func_4(Struct_4(_wgslsmith_f_op_f32(-global0.a)), func_4(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1586f, 1980f)), func_5(vec2<f32>(global0.a, global0.a), -125f, Struct_2(u_input.d, 1215u, u_input.d, Struct_1(vec3<i32>(-1i, 1i, u_input.a.x), global0.a, -1367f, global0.a, vec4<bool>(true, var_0.x, true, global1.x)))).a, func_4(Struct_4(469f), Struct_1(vec3<i32>(-21520i, u_input.a.x, -69838i), 1000f, global0.a, -1275f, vec4<bool>(var_0.x, false, var_0.x, true)), global1.x)), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(44461i, 11698i, -27651i), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.e, u_input.a.x, u_input.e)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a), global0.a, vec4<bool>(var_0.x, global1.x, global1.x, global1.x)), true).d, !global1.x).d);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-145f + global0.a) - -1772f)))) + _wgslsmith_f_op_f32(-global0.a));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-353f, global0.a)))));
    let var_4 = var_1.e.b;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_5)), vec2<f32>(var_3.a, var_5)), var_1.c.yw))));
}


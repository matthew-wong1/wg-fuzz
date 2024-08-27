struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), 310f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    global1 = Struct_1(!global1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1270f)))));
    var var_0 = 4294967295u;
    var var_1 = global1.b;
    var_1 = global1.b;
    global0 = vec2<bool>(~u_input.e < min(firstLeadingBit(min(2147483647i, u_input.e)), -29791i), global1.a.x);
    return 2147483647i;
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = abs(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 11786u, 4294967295u), reverseBits(u_input.a)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, arg_0.x, u_input.a.x, 1u) ^ u_input.a, u_input.a)));
    var var_1 = vec3<i32>(i32(-1i) * -1247i, u_input.e, i32(-1i) * -1i);
    var var_2 = Struct_2(firstTrailingBit(firstLeadingBit(2147483647i)), Struct_1(global1.a, _wgslsmith_f_op_f32(step(383f, 1000f))));
    global0 = select(vec2<bool>(min(_wgslsmith_mult_i32(var_2.a, 18638i), firstLeadingBit(31379i)) < var_1.x, all(select(select(vec4<bool>(global0.x, global0.x, true, var_2.b.a.x), vec4<bool>(global1.a.x, true, false, true), var_2.b.a.x), vec4<bool>(false, true, false, var_2.b.a.x), select(vec4<bool>(false, var_2.b.a.x, global1.a.x, global0.x), vec4<bool>(true, global1.a.x, false, false), var_2.b.a.x)))), vec2<bool>(true, true), vec2<bool>(global0.x, global0.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, global1.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.b, var_2.b.b))), all(var_2.b.a.yy))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.b, 411f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.b.b)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b, 815f) + vec2<f32>(var_2.b.b, -1147f)))))), !(!select(var_2.b.a.zy, var_2.b.a.zz, false)))));
    return global0.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    global0 = vec2<bool>(!(!all(!global1.a.xx)), any(!(!global1.a.xx)));
    var var_0 = Struct_2(~28350i & _wgslsmith_div_i32(u_input.b >> (_wgslsmith_div_u32(u_input.c, 1u) % 32u), 908i), Struct_1(select(select(select(vec3<bool>(false, arg_0.a.x, arg_1), global1.a, vec3<bool>(false, true, false)), vec3<bool>(arg_0.a.x, global1.a.x, arg_2), vec3<bool>(false, arg_2, global1.a.x)), select(arg_0.a, !vec3<bool>(true, global1.a.x, true), !global1.a), vec3<bool>(global1.a.x, true, arg_1)), -749f));
    let var_1 = Struct_2(~var_0.a, Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f * var_0.b.b)), global1.b, select(false, true, 0u != u_input.a.x)))));
    let var_2 = u_input.a;
    global1 = var_0.b;
    return -256f;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(!select(arg_0, select(vec3<bool>(true, true, arg_0.x), !global1.a, true), true), global1.b);
    var var_1 = vec2<u32>(~u_input.a.x, ~_wgslsmith_clamp_u32(~u_input.a.x >> ((u_input.c >> (u_input.a.x % 32u)) % 32u), (u_input.c | 9384u) >> (1u % 32u), ~u_input.c));
    var var_2 = arg_1;
    var_1 = firstLeadingBit(min(~firstTrailingBit(u_input.a.zz), ~vec2<u32>(1u, var_1.x)) & u_input.a.zz);
    var_1 = vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(17474u, 53503u)), abs(var_1.x)), (select(var_1.x, 4294967295u, false) ^ _wgslsmith_mod_u32(u_input.c, 4294967295u)) << (45224u % 32u)) & u_input.a.xz;
    return var_2.b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(!vec3<bool>(!(false | global1.a.x), global1.a.x, !all(vec3<bool>(true, global1.a.x, global0.x))), Struct_2(func_2(), Struct_1(global1.a, _wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(true, global1.a.x, false), -1064f), true, func_3(u_input.a.xw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1720f, global1.b, 754f)))))), global1.b);
    let var_1 = _wgslsmith_f_op_f32(-global1.b);
    var var_2 = u_input.c;
    global1 = func_5(!vec3<bool>(!(!global0.x), all(!vec3<bool>(global1.a.x, global1.a.x, true)), any(vec4<bool>(true, var_0.a.x, global1.a.x, true))), Struct_2(-2167i, func_5(!(!vec3<bool>(false, global0.x, var_0.a.x)), Struct_2(u_input.d, Struct_1(var_0.a, var_0.b)), -326f)), var_0.b);
    let var_3 = countOneBits(~1u);
    return func_5(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(-global1.b)) <= 347f, var_0.a.x, !(!(!global0.x))), Struct_2(~2147483647i, func_5(select(vec3<bool>(global1.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, true, true), func_5(vec3<bool>(false, global1.a.x, global1.a.x), Struct_2(u_input.b, Struct_1(var_0.a, -1548f)), var_1).a), Struct_2(u_input.b & u_input.d, func_5(var_0.a, Struct_2(99115i, Struct_1(var_0.a, -345f)), var_0.b)), 460f)), _wgslsmith_f_op_f32(var_0.b * var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-2147483647i, func_1());
    let var_1 = Struct_1(!global1.a, global1.b);
    global0 = vec2<bool>(any(select(!vec3<bool>(false, var_0.b.a.x, global1.a.x), func_1().a, vec3<bool>(global0.x, 2147483647i >= var_0.a, global0.x))), any(vec2<bool>(false, var_0.b.a.x)));
    global0 = vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))) > global1.b, any(var_0.b.a));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_f32(var_0.b.b - -1130f) < var_1.b;
    global1 = var_0.b;
    global0 = global1.a.yy;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(500f)), global1.b))), _wgslsmith_f_op_f32(1f * var_1.b))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.a.wyy, _wgslsmith_mult_vec3_u32(~u_input.a.xxw, u_input.a.yww)) >> (firstTrailingBit(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), u_input.c | u_input.c)) % vec3<u32>(32u)));
}


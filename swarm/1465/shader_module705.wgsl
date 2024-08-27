struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool) -> vec3<f32> {
    var var_0 = arg_1.e;
    global0 = global1.a.e;
    let var_1 = var_0.d.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e.d.a))));
    let var_3 = global1.a.d.b;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(f32(-1f) * -1020f), arg_0.e.d.a) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.d.a, var_2, var_0.b.a), vec3<f32>(1300f, 323f, 352f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.e.d.a))), -438f, var_2))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_1(475f, abs(global1.a.b.b), !arg_0, _wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.a), _wgslsmith_sub_u32(~global1.b, max(global1.a.b.b.x, 1u)), global1.c), global1.a.d.b.wzy), 1u);
    global2 = vec3<bool>(false, true, all(!global2.xy));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_5(_wgslsmith_mult_u32(abs(1u), ~global1.b), abs(var_0.e), vec3<i32>(abs(_wgslsmith_mod_i32(1i, 1i)), 2147483647i, u_input.c), u_input.a, Struct_2(_wgslsmith_sub_u32(global1.b, global1.c), var_0, true, var_0, arg_1.xxy)), Struct_5(4294967295u, 46674u, select(global1.a.e, vec3<i32>(-arg_1.x, -1i, 1i), true), max(_wgslsmith_mult_u32(30291u, var_0.b.x), reverseBits(u_input.a)) ^ ((u_input.a & u_input.a) & 6812u), global1.a), global2.x));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)), -286f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1558f), true)) + global1.a.b.a))));
    var_1 = vec3<f32>(-1419f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, -1513f)))), var_1.x)), _wgslsmith_f_op_f32(1026f + _wgslsmith_f_op_f32(floor(global1.a.d.a))));
    return !any(select(!vec2<bool>(true, arg_0), vec2<bool>(true, !arg_0), false));
}

fn func_1(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1900f);
    global0 = vec3<i32>(countOneBits(53645i), abs((u_input.c | global1.a.e.x) | min(u_input.c | global0.x, firstLeadingBit(-16638i))), -36799i);
    global2 = select(vec3<bool>(((global1.a.e.x << (0u % 32u)) != arg_0.a.e.x) & (global1.a.b.c == (false | global1.a.c)), true, select(global1.a.d.c, true, (75906i >= u_input.b) && func_2(false, vec4<i32>(u_input.b, arg_0.a.e.x, 5638i, global1.a.e.x)))), !select(select(select(vec3<bool>(global2.x, false, arg_0.a.d.c), vec3<bool>(false, false, arg_0.a.c), arg_0.a.c), !vec3<bool>(global1.a.c, global1.a.d.c, true), 289f < global1.a.b.a), vec3<bool>(u_input.a >= 22482u, arg_0.a.d.c, 68509u >= u_input.a), select(!vec3<bool>(arg_0.a.d.c, true, false), select(vec3<bool>(false, true, true), vec3<bool>(arg_0.a.c, arg_0.a.b.c, false), vec3<bool>(global1.a.b.c, global1.a.c, true)), !vec3<bool>(global1.a.b.c, global1.a.c, arg_0.a.b.c))), vec3<bool>(!func_2(func_2(arg_0.a.b.c, vec4<i32>(global1.a.e.x, arg_0.a.e.x, arg_0.a.e.x, global1.a.e.x)), vec4<i32>(53807i, u_input.b, -1i, global1.a.e.x)), !all(select(vec3<bool>(global1.a.d.c, global1.a.b.c, arg_0.a.b.c), vec3<bool>(global1.a.c, global1.a.d.c, false), global2.x)), all(vec2<bool>(any(vec4<bool>(global1.a.b.c, true, global1.a.b.c, true)), select(true, arg_0.a.c, true)))));
    var var_1 = 1000f;
    let var_2 = _wgslsmith_sub_vec3_u32(~(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, global1.c), vec3<u32>(u_input.a, 1u, global1.b), vec3<u32>(126021u, 64460u, 1u)), countOneBits(vec3<u32>(global1.b, 1u, u_input.a))) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(17322u, u_input.a), arg_0.a.d.b.zx), 4294967295u, ~arg_0.b)), select(arg_0.a.d.d ^ vec3<u32>(~global1.a.a, u_input.a ^ 4294967295u, _wgslsmith_sub_u32(4294967295u, 26590u)), select(~arg_0.a.b.d | reverseBits(global1.a.d.b.zwy), ~global1.a.d.b.yyw, !all(vec4<bool>(true, arg_0.a.b.c, global1.a.b.c, global2.x))), vec3<bool>(true, false, ~151829u >= (global1.c >> (arg_0.a.d.d.x % 32u)))));
    return _wgslsmith_mult_vec3_i32((abs(~global1.a.e) & min(arg_0.a.e, countOneBits(arg_0.a.e))) << (arg_0.a.d.b.zwz % vec3<u32>(32u)), vec3<i32>(-(~_wgslsmith_div_i32(u_input.b, global0.x)), arg_0.a.e.x, reverseBits(_wgslsmith_div_i32(53122i, -2147483647i)) | arg_0.a.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~35588u, 4294967295u, -vec3<i32>(~countOneBits(global1.a.e.x), -11188i, global0.x), u_input.a, global1.a);
    global1 = Struct_3(Struct_2(global1.a.d.e, global1.a.b, true, Struct_1(492f, var_0.e.b.b, any(vec3<bool>(global1.a.b.c, global2.x, true)) || true, vec3<u32>(1u, u_input.a, ~68375u), 73536u), _wgslsmith_sub_vec3_i32(func_1(Struct_3(global1.a, 46648u, var_0.a)), vec3<i32>(_wgslsmith_sub_i32(global1.a.e.x, -2594i), 2147483647i, max(68429i, u_input.b)))), _wgslsmith_mod_u32(~(~countOneBits(global1.a.b.e)), var_0.b), ~12762u);
    let var_1 = global1.a.b;
    var var_2 = Struct_3(Struct_2(abs(~0u) & ~min(global1.a.d.d.x, 33524u), global1.a.b, false, Struct_1(1233f, ~vec4<u32>(global1.c, global1.b, global1.a.d.e, var_0.a), !var_0.e.c, _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 1u, 26185u), var_0.e.b.d), _wgslsmith_dot_vec3_u32(~global1.a.d.b.yxw, max(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(1u, global1.b, 23623u)))), global1.a.e), 95690u, _wgslsmith_dot_vec2_u32(select(countOneBits(select(var_0.e.b.d.zy, var_0.e.b.b.xx, vec2<bool>(false, false))), _wgslsmith_div_vec2_u32(~var_0.e.b.d.zz, ~var_0.e.b.d.zx), var_0.e.c), select(~vec2<u32>(986u, global1.c) | firstLeadingBit(vec2<u32>(global1.a.b.d.x, 101280u)), vec2<u32>(17438u, ~var_0.d), !(!vec2<bool>(var_0.e.c, global2.x)))));
    let var_3 = func_1(Struct_3(var_2.a, abs(var_1.b.x), 8690u)).xz << (_wgslsmith_div_vec2_u32(global1.a.d.d.zz | vec2<u32>(abs(var_2.a.b.b.x), var_0.b), var_2.a.d.d.zz) % vec2<u32>(32u));
    global2 = select(select(select(select(vec3<bool>(var_1.c, global2.x, true), select(vec3<bool>(true, var_2.a.d.c, true), vec3<bool>(false, true, var_2.a.b.c), var_0.e.b.c), global1.a.b.c | true), vec3<bool>(!var_1.c, false, var_2.a.d.c), 36957u == var_0.a), vec3<bool>(global2.x, abs(4294967295u) < var_0.e.d.d.x, func_2(global1.a.c, vec4<i32>(var_3.x, -48908i, var_3.x, global0.x)) || any(vec4<bool>(var_2.a.c, false, global2.x, false))), vec3<bool>(true, true, func_2(func_2(global1.a.c, vec4<i32>(var_3.x, var_0.e.e.x, u_input.b, var_3.x)), min(vec4<i32>(global0.x, var_3.x, u_input.b, -16398i), vec4<i32>(21971i, global0.x, -35041i, var_3.x))))), select(!(!(!vec3<bool>(global2.x, var_2.a.c, var_0.e.d.c))), vec3<bool>(true, false, true), vec3<bool>(!var_1.c, true, (var_1.b.x < 17271u) != (var_2.a.b.a > var_1.a))), select(vec3<bool>(true | var_1.c, all(select(global2.zx, vec2<bool>(var_2.a.b.c, true), vec2<bool>(true, global2.x))), true), vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), var_1.b.xyw) > (0u ^ global1.c), -8193i >= _wgslsmith_dot_vec3_i32(global1.a.e, var_2.a.e), global2.x), false));
    var_2 = Struct_3(Struct_2(_wgslsmith_sub_u32(~var_0.d, 1u >> (~u_input.a % 32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-276f, var_0.e.b.a, var_0.e.d.c)) - -1000f), ~var_0.e.d.b >> (var_0.e.b.b % vec4<u32>(32u)), (u_input.c >= -2147483647i) && var_0.e.b.c, vec3<u32>(46285u, 28297u, 1u) & _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1.b.x, var_1.b.x), vec3<u32>(var_2.b, u_input.a, 1u)), var_1.d.x), 4294967295u == u_input.a, Struct_1(global1.a.b.a, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_2.c, 1u), var_0.e.b.b ^ global1.a.d.b), global2.x, var_2.a.b.d >> (vec3<u32>(global1.c, 4294967295u, 115778u) % vec3<u32>(32u)), 1u), global1.a.e), var_2.c, 1u);
    let var_4 = vec3<bool>(false, global2.x, any(select(select(!vec4<bool>(global2.x, true, true, global1.a.c), select(vec4<bool>(false, false, true, var_0.e.c), vec4<bool>(var_1.c, global1.a.c, var_1.c, var_2.a.d.c), var_2.a.c), select(vec4<bool>(global1.a.b.c, true, true, var_0.e.b.c), vec4<bool>(global1.a.c, false, global1.a.b.c, global2.x), vec4<bool>(global1.a.b.c, global1.a.d.c, false, var_0.e.c))), !(!vec4<bool>(var_0.e.c, false, true, true)), true)));
    let var_5 = countOneBits(abs(reverseBits(min(var_3.x, -1i)) ^ -45541i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_0.e.b.a)), vec3<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e.d.a * -631f))))), _wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(135f * -726f) - var_0.e.b.a), _wgslsmith_f_op_f32(220f * _wgslsmith_f_op_f32(var_1.a - 1137f))))), _wgslsmith_f_op_f32(-var_0.e.b.a), 1f, _wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(abs(var_1.a))));
}


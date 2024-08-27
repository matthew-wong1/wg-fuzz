struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global0 = Struct_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x - arg_1.x), arg_1.x))), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(select(-252f, -1061f, true))))), _wgslsmith_mult_u32(u_input.c.x, ~(~20472u)), vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - -537f)), global0.b, _wgslsmith_f_op_f32(-arg_1.x)), global1.x);
    global1 = vec2<bool>(arg_1.x > 437f, !(!global1.x));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(145f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_div_f32(-420f, -508f))), reverseBits(_wgslsmith_mult_u32(~u_input.d, 20127u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.d, global0.d)))))), all(select(vec2<bool>(global1.x, false), select(!vec2<bool>(arg_2, false), select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), vec2<bool>(global1.x, true)), !vec2<bool>(false, arg_2)), true)));
    let var_0 = true;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global0.d.x, global0.d.x, arg_2)), _wgslsmith_f_op_f32(floor(arg_1.x))))), arg_1.x, u_input.b & (4294967295u >> (1u % 32u)), global0.d, all(!select(vec2<bool>(true, true), select(vec2<bool>(true, var_0), vec2<bool>(false, true), false), select(vec2<bool>(true, global1.x), vec2<bool>(global0.e, true), arg_2))));
    return global0.e || true;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global1 = vec2<bool>(false, func_3(-vec3<i32>(0i, 1i, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.yzw)), true));
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(reverseBits(15135i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -73125i), vec2<i32>(-8931i, 38026i))), 1i), ~(vec2<i32>(0i, 0i) ^ select(vec2<i32>(0i, 0i), vec2<i32>(-28027i, -89098i), vec2<bool>(global1.x, global0.e))), -countOneBits(vec2<i32>(-10738i, 42662i))), vec2<u32>(global0.c, u_input.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, -587f, global0.d.x)));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.c.yz * global0.d.xw), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, -355f), vec2<f32>(global0.d.x, var_0.c.x))), true)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2814f, var_0.c.x)), var_0.c.zx))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.c.yx)))), global0.b, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_mult_u32(firstTrailingBit(arg_0.a.x), ~31515u), u_input.a.x), select(var_0.b.x, global0.c, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.d)) * global0.d))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.d.x, var_0.c.x, global0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -499f, global0.a.x, var_0.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, var_0.c.x, -503f))))), global0.e);
    let var_1 = 0u;
    var var_2 = !vec3<bool>(true, global0.e, !global0.e);
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    global0 = Struct_4(global0.d.zx, 656f, ~(_wgslsmith_div_u32(max(arg_0.x, 39999u), 54511u) | arg_1), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(round(global0.b)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(global0.b - -574f))))), !any(vec3<bool>(true, true, true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a));
    var var_1 = ~(~(~(~vec4<u32>(4294967295u, 60047u, 47826u, arg_1))) >> (~vec4<u32>(arg_0.x, select(6810u, u_input.c.x, global1.x), _wgslsmith_mult_u32(arg_2, 53558u), ~4294967295u) % vec4<u32>(32u)));
    let var_2 = !(!(!vec3<bool>(true, !global0.e, true)));
    var var_3 = ~(~23717u);
    return Struct_2(arg_0);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4((abs(vec3<u32>(global0.c, global0.c, u_input.b) << (vec3<u32>(4294967295u, global0.c, 25645u) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_mult_u32(1u, 1u), u_input.a.x, u_input.a.x ^ u_input.c.x)) | vec3<u32>(u_input.b, ~u_input.c.x, _wgslsmith_add_u32(max(u_input.d, u_input.d), u_input.b)), ~_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(~u_input.d, 38007u)), ~(~func_2(Struct_2(vec3<u32>(4294967295u, 4294967295u, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-global0.d);
    let var_2 = ~(~abs(select(vec4<u32>(0u, 4294967295u, 1u, global0.c), vec4<u32>(u_input.b, global0.c, var_0.a.x, 0u), false) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(5417u, global0.c, global0.c, global0.c), vec4<u32>(global0.c, 1u, u_input.a.x, var_0.a.x))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1085f, 513f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - global0.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a)))))), -847f, _wgslsmith_dot_vec2_u32(var_2.yy, select(~vec2<u32>(u_input.c.x, global0.c), abs(vec2<u32>(var_2.x, 27446u)), true) & reverseBits(u_input.c)), _wgslsmith_f_op_vec4_f32(select(global0.d, _wgslsmith_f_op_vec4_f32(-global0.d), !vec4<bool>(any(vec2<bool>(true, global0.e)), true && global1.x, true, false))), true);
    let var_3 = ~(vec3<u32>(_wgslsmith_mult_u32(0u, u_input.b << (u_input.b % 32u)), firstLeadingBit(_wgslsmith_mod_u32(24188u, 11985u)), u_input.c.x) << ((var_0.a >> (vec3<u32>(abs(34012u), var_0.a.x & global0.c, var_2.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_4(var_1.yx, _wgslsmith_f_op_f32(ceil(-883f)), 0u, vec4<f32>(_wgslsmith_f_op_f32(ceil(1123f)), -188f, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(min(-1042f, global0.d.x)), select(true, func_3(vec3<i32>(-8141i, -2147483647i, 0i), global0.d.ywz, global0.e), false & global0.e))), _wgslsmith_f_op_f32(264f * 669f)), !any(vec2<bool>(true, global0.e && global0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 28747i, -39478i) >> (vec3<u32>(u_input.b, 4633u, 18217u) % vec3<u32>(32u)), -vec3<i32>(-1i, 0i, 2147483647i)) << (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), vec3<i32>(~(~0i), _wgslsmith_mod_i32(countOneBits(40668i), firstTrailingBit(0i)), 1i)));
    var var_1 = func_1();
    global1 = !vec2<bool>(!all(vec2<bool>(true, true)), select(var_0.x >= abs(var_0.x), func_3(select(vec3<i32>(-13395i, var_0.x, var_0.x), var_0, false), _wgslsmith_f_op_vec3_f32(-global0.d.wwz), true), !global1.x));
    global1 = select(vec2<bool>(!(true || any(vec3<bool>(false, global1.x, false))), !var_1.e), !(!(!vec2<bool>(false, global0.e))), !select(select(select(vec2<bool>(var_1.e, global0.e), vec2<bool>(global1.x, var_1.e), vec2<bool>(false, global1.x)), !vec2<bool>(global1.x, var_1.e), select(vec2<bool>(true, true), vec2<bool>(global1.x, true), global1.x)), !select(vec2<bool>(var_1.e, global0.e), vec2<bool>(global0.e, var_1.e), global0.e), !select(vec2<bool>(true, true), vec2<bool>(false, var_1.e), true)));
    var var_2 = firstTrailingBit(vec4<i32>(~(-2147483647i), _wgslsmith_mod_i32(39111i, -8992i), 1i, _wgslsmith_mod_i32(18223i, _wgslsmith_sub_i32(1i, var_0.x)))) ^ abs((_wgslsmith_sub_vec4_i32(vec4<i32>(4705i, var_0.x, -1i, var_0.x), vec4<i32>(0i, 0i, var_0.x, var_0.x)) >> (~vec4<u32>(global0.c, 0u, 0u, 29465u) % vec4<u32>(32u))) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, 0i, 0i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)) << (~vec4<u32>(global0.c, 0u, 4294967295u, 23937u) % vec4<u32>(32u))));
    var var_3 = 1255f;
    let var_4 = -_wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(select(23521i, countOneBits(var_2.x), global0.e & global0.e), -16710i));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(~57858i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2314i, 83i, -1i), vec4<i32>(-2147483647i, var_4, 0i, -31107i)), ~0i), min(var_2.xyy, ~var_2.wxy)) ^ vec3<i32>(0i, reverseBits(13663i), ~(var_0.x >> (var_1.c % 32u))), ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(14071i, -2147483647i, var_4, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_4, var_2.x, 1i, var_0.x), vec4<i32>(1i, var_2.x, var_4, var_0.x))), -vec4<i32>(524i, -30775i, -1i, var_4) & -vec4<i32>(33584i, var_0.x, var_0.x, -60309i)), firstLeadingBit(vec4<i32>(var_2.x, var_4, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 11655i, 10926i), vec3<i32>(-32726i, var_0.x, 0i)), var_2.x), ~var_4 << (abs(7982u) % 32u))), ~select(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.b, 4294967295u, 69899u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, global0.c, u_input.a.x, 1u), vec4<u32>(27517u, u_input.a.x, var_1.c, var_1.c))), vec4<u32>(var_1.c, var_1.c ^ 43520u, u_input.b, _wgslsmith_mod_u32(7108u, 120563u)), !select(vec4<bool>(true, false, false, var_1.e), vec4<bool>(var_1.e, true, global1.x, false), vec4<bool>(false, global1.x, false, false))), -(~27028i));
}


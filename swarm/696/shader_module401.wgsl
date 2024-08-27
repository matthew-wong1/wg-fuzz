struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-265f, -2455f, 707f, 488f);

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = vec4<u32>(~_wgslsmith_sub_u32(50520u, global1.b.e), reverseBits(~(global1.c.d.x << (92643u % 32u))), ~var_0.c.d.x, ~5994u) >> (vec4<u32>(1u >> (select(~4294967295u, 47357u, arg_1.x) % 32u), _wgslsmith_dot_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 32448u), vec2<u32>(global1.c.b.x, global1.b.b.x)), vec2<u32>(var_0.c.a, 4294967295u)), global1.c.d ^ (vec2<u32>(66084u, var_0.c.a) << (global1.c.b % vec2<u32>(32u)))), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.a, 0u, 4991u, u_input.a.x), u_input.a), vec4<u32>(arg_0.c.b.x, arg_0.c.e, 45972u, 0u) << (u_input.a % vec4<u32>(32u))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(3547u, 67070u, u_input.a.x), firstLeadingBit(vec3<u32>(0u, global1.b.b.x, 30639u)))) % vec4<u32>(32u));
    return _wgslsmith_mod_vec2_i32(-vec2<i32>(~(-12503i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(global1.a, arg_2))), vec2<i32>(-1i) * -vec2<i32>(~5286i, 22561i));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = global1.c;
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_i32(func_3(Struct_2(1i, global1.c, global1.b), select(vec4<bool>(true, false, false, arg_1.b.x), vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), all(vec2<bool>(arg_1.b.x, false))), _wgslsmith_sub_i32(1i, global1.a)), -arg_1.a, _wgslsmith_add_vec2_i32(arg_1.a, arg_1.a)), select(vec3<bool>(!arg_1.b.x, (true || arg_1.b.x) || false, !all(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, false))), select(arg_1.b, vec3<bool>(arg_1.b.x, true, true), vec3<bool>(all(arg_1.b), false, arg_1.b.x)), any(vec3<bool>(!arg_1.b.x, true, true))), arg_1.c);
    let var_2 = Struct_3(var_1.a, arg_1.b, _wgslsmith_sub_i32(~arg_1.a.x, var_1.a.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-global0.x)), global0.x)), var_0.c.x, -235f);
    global1 = Struct_2(0i, global1.c, global1.c);
    return Struct_1(_wgslsmith_add_u32(41865u, ~_wgslsmith_clamp_u32(arg_0.x, u_input.a.x, global1.b.b.x)) >> (97901u % 32u), abs(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.b.b.x), u_input.a.xw))), _wgslsmith_f_op_vec4_f32(-var_0.c), vec2<u32>(_wgslsmith_sub_u32(27536u, ~(~26845u)), 0u), (_wgslsmith_dot_vec3_u32(u_input.a.zyx, u_input.a.zwz) >> (arg_0.x % 32u)) << (_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(arg_0.x, _wgslsmith_sub_u32(global1.b.a, u_input.a.x), ~1u, abs(global1.b.b.x))) % 32u));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32) -> f32 {
    global1 = Struct_2(global1.a, func_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.c.a, 58344u, arg_2), select(vec3<u32>(1u, 17830u, global1.c.d.x), u_input.a.xyy, vec3<bool>(arg_0, arg_0, arg_0))), Struct_3(vec2<i32>(-1i) * -vec2<i32>(-36780i, global1.a), !vec3<bool>(arg_0, false, arg_0), global1.a | -1i)), func_2(min(firstLeadingBit(select(u_input.a.xwz, vec3<u32>(global1.b.e, u_input.a.x, 1u), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_u32(select(u_input.a.wyy, vec3<u32>(1u, arg_2, global1.c.e), vec3<bool>(arg_0, true, true)), ~u_input.a.zyx)), Struct_3(~(-vec2<i32>(global1.a, global1.a)), vec3<bool>(true, false, true), ~2147483647i)));
    global1 = Struct_2(func_3(Struct_2(_wgslsmith_add_i32(global1.a | 1i, _wgslsmith_add_i32(-1i, global1.a)), func_2(u_input.a.zxz, Struct_3(vec2<i32>(21582i, 75102i), vec3<bool>(arg_0, false, arg_0), global1.a)), func_2(~vec3<u32>(global1.b.d.x, arg_2, global1.b.a), Struct_3(vec2<i32>(0i, 1i), vec3<bool>(true, arg_0, true), global1.a))), !vec4<bool>(true, !arg_0, all(vec3<bool>(arg_0, true, true)), !arg_0), 1i).x, global1.c, func_2(~select(u_input.a.zzy, u_input.a.yxz ^ u_input.a.xzy, !arg_0), Struct_3(firstLeadingBit(select(vec2<i32>(1i, global1.a), vec2<i32>(global1.a, global1.a), false)), vec3<bool>(!arg_0, arg_0 != arg_0, !arg_0), ~global1.a & abs(-12387i))));
    var var_0 = func_2(_wgslsmith_mod_vec3_u32(u_input.a.wzx, countOneBits(~u_input.a.xyx >> (~vec3<u32>(1u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), Struct_3(min(select(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a, 66709i), vec2<i32>(-2147483647i, global1.a)), vec2<i32>(-1i, 2147483647i), true), firstTrailingBit(vec2<i32>(global1.a, global1.a) & vec2<i32>(global1.a, -5132i))), vec3<bool>(all(!vec3<bool>(true, true, arg_0)), true, arg_0), _wgslsmith_dot_vec2_i32(-vec2<i32>(global1.a, global1.a), -vec2<i32>(global1.a, -9400i))));
    let var_1 = reverseBits(_wgslsmith_add_i32(-2147483647i, abs(i32(-1i) * -11221i)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.x + global1.b.c.x), _wgslsmith_f_op_f32(-var_0.c.x), !arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2484f)) + _wgslsmith_f_op_f32(select(global1.b.c.x, global0.x, arg_0))))) - -754f), var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1240f)) + _wgslsmith_f_op_f32(floor(1151f))) + func_2(u_input.a.yzy, Struct_3(vec2<i32>(505i, var_1) >> (u_input.a.ww % vec2<u32>(32u)), !vec3<bool>(false, arg_0, false), -1i)).c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f - global1.c.c.x)))))));
    return _wgslsmith_f_op_f32(-1195f - _wgslsmith_f_op_f32(trunc(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.b.c.x)), _wgslsmith_div_f32(global0.x, global1.b.c.x), _wgslsmith_f_op_f32(max(1943f, global1.b.c.x)), _wgslsmith_div_f32(global1.b.c.x, global1.b.c.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(global1.b.c)), _wgslsmith_f_op_vec4_f32(-global1.c.c))))));
    global0 = _wgslsmith_f_op_vec4_f32(-global1.b.c);
    var var_0 = global0.xwy;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.c.c.x, global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(all(vec2<bool>(false, false)), 330f, 28442u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(trunc(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(347f)))));
    let var_1 = global1.b.c.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(-50087i, 1i, 1i, func_3(Struct_2(global1.a, global1.b, global1.b), vec4<bool>(false, true, true, true), -1i).x), ~reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.b.e, 41732u, global1.b.a), _wgslsmith_sub_vec3_u32(u_input.a.wyx, u_input.a.wzz))), ~global1.a, global1.b.c.ywz);
}


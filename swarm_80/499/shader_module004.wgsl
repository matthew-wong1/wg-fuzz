struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), 69261i, vec3<bool>(true, false, true), -2905i, vec4<i32>(-46855i, 1i, 11559i, -22705i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<i32> {
    var var_0 = 1u;
    let var_1 = 4294967295u;
    let var_2 = min(54353u, u_input.b.x);
    global0 = Struct_1(!select(arg_0.a, !(!vec2<bool>(false, global0.c.x)), global0.a), global0.b, arg_0.c, max(~arg_0.d, arg_0.b), vec4<i32>(1i, -firstLeadingBit(global0.d), global0.d | 14650i, global0.d));
    let var_3 = vec2<f32>(-678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -3485f));
    return min(firstLeadingBit(vec3<i32>(max(arg_0.b, -10259i) | select(arg_0.b, global0.e.x, false), select(-20933i ^ arg_0.e.x, 25194i ^ global0.e.x, true), 54202i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(21243i, arg_0.b, -2147483647i), vec3<i32>(reverseBits(2147483647i), 2147483647i, arg_0.b)), _wgslsmith_mult_i32(0i, min(~35810i, ~arg_0.e.x)), 1i));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> vec4<i32> {
    global0 = Struct_1(vec2<bool>(false, arg_0 || arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_1.x, arg_1.x), vec2<i32>(0i, ~_wgslsmith_div_i32(28892i, global0.d))), vec3<bool>(true, true, true), ~select(~arg_1.x, -16646i, global0.a.x), vec4<i32>(1i, 41740i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_1.x, arg_1.x ^ 8298i, ~global0.d), firstLeadingBit(1i)), arg_1.x));
    global0 = Struct_1(!(!global0.c.yz), -26568i >> (0u % 32u), select(vec3<bool>(select(true, true, global0.a.x), global0.c.x, true), vec3<bool>(true, global0.c.x, false || any(vec4<bool>(false, global0.c.x, arg_0, global0.c.x))), select(select(vec3<bool>(true, global0.a.x, false), !global0.c, !vec3<bool>(arg_0, false, arg_0)), global0.c, vec3<bool>(arg_0 && global0.c.x, true, false))), -global0.b, global0.e >> (vec4<u32>(min(u_input.b.x, 1u), _wgslsmith_sub_u32(~15858u, u_input.a.x), _wgslsmith_add_u32(u_input.b.x, u_input.a.x), reverseBits(~u_input.a.x)) % vec4<u32>(32u)));
    global0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(!global0.a.x, true), vec2<bool>(true, global0.a.x)), _wgslsmith_dot_vec3_i32(abs(~_wgslsmith_add_vec3_i32(global0.e.xxy, arg_1.wzx)), select(vec3<i32>(-45456i, arg_1.x, abs(arg_1.x)), min(arg_1.zzy, vec3<i32>(8705i, 0i, global0.b)), all(!vec3<bool>(global0.c.x, global0.a.x, false)))), !vec3<bool>(global0.a.x, arg_0, true | (global0.c.x || arg_0)), _wgslsmith_mod_i32(~global0.b, ~1177i), _wgslsmith_mult_vec4_i32(min(global0.e, select(arg_1, -vec4<i32>(-2147483647i, -41422i, global0.d, arg_1.x), vec4<bool>(true, false, true, true))), vec4<i32>(~global0.d, 0i, abs(select(global0.e.x, global0.b, true)), _wgslsmith_dot_vec3_i32(~global0.e.yyz, arg_1.xyz))));
    let var_0 = Struct_1(!global0.a, 2147483647i, !global0.c, _wgslsmith_dot_vec4_i32(arg_1, countOneBits(global0.e)), vec4<i32>(-(~arg_1.x) << (1u % 32u), _wgslsmith_mod_i32(627i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, 2147483647i)), _wgslsmith_sub_vec2_i32(global0.e.yx, vec2<i32>(arg_1.x, arg_1.x)))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.e.x, ~(-20538i), -12472i), abs(arg_1.x)), 1i));
    global0 = var_0;
    return vec4<i32>(min(func_3(var_0, _wgslsmith_div_u32(u_input.a.x, u_input.b.x) >> (_wgslsmith_div_u32(u_input.b.x, u_input.a.x) % 32u)).x, _wgslsmith_sub_i32(~41431i, i32(-1i) * -44655i)), var_0.d, global0.d, arg_1.x);
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = func_4(true, vec4<i32>(~global0.e.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(136105i, -52214i, global0.b), func_3(Struct_1(vec2<bool>(global0.c.x, global0.c.x), global0.b, vec3<bool>(false, global0.c.x, false), 2147483647i, vec4<i32>(2147483647i, global0.e.x, 2147483647i, -43685i)), 28851u)), global0.e.x, select(-1i, -2147483647i, true)));
    var_0 = vec4<i32>(-1i) * -(~firstLeadingBit(-global0.e));
    var_0 = func_4(false, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(abs(-1i), -1i), reverseBits(2490i << (u_input.b.x % 32u)), global0.e.x, var_0.x), abs(global0.e), global0.e));
    var_0 = -(~(-vec4<i32>(_wgslsmith_dot_vec3_i32(global0.e.wwy, vec3<i32>(global0.b, global0.d, 14326i)), global0.d, func_3(Struct_1(vec2<bool>(global0.a.x, global0.a.x), var_0.x, global0.c, 0i, global0.e), 54951u).x, 2147483647i)));
    let var_1 = -1i;
    return !vec2<bool>(!global0.c.x, all(select(select(vec4<bool>(global0.c.x, true, global0.a.x, true), vec4<bool>(false, global0.c.x, false, false), vec4<bool>(global0.c.x, global0.a.x, true, global0.a.x)), !vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), select(vec4<bool>(global0.a.x, true, true, global0.c.x), vec4<bool>(false, global0.a.x, true, global0.c.x), false))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = all(!vec4<bool>(global0.c.x, !(arg_1.c.x || global0.a.x), 2147483647i == func_3(Struct_1(vec2<bool>(true, true), global0.b, arg_1.c, 44680i, vec4<i32>(global0.e.x, 2147483647i, 1i, global0.b)), 0u).x, !(!global0.c.x)));
    let var_1 = vec3<f32>(-1397f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1993f, -272f)), _wgslsmith_f_op_f32(f32(-1f) * -220f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-197f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1360f, 645f)))));
    global0 = arg_1;
    var var_2 = Struct_2(arg_1, Struct_1(select(global0.a, select(arg_0.yx, vec2<bool>(true, true), arg_1.a), any(arg_1.a) || !arg_1.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i & global0.e.x, global0.e.x, -1i, arg_1.b), arg_1.e), !arg_1.c, arg_1.e.x, vec4<i32>(-global0.e.x, -2147483647i, 0i, _wgslsmith_dot_vec2_i32(global0.e.yw | global0.e.xx, vec2<i32>(61387i, -2777i)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, var_1.x)), 444f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-687f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(648f, -1000f, var_2.a.c.x)), _wgslsmith_div_f32(1000f, var_1.x))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(688f, _wgslsmith_f_op_f32(select(var_1.x, 685f, false))) - _wgslsmith_f_op_f32(-var_1.x))));
    return var_2.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> i32 {
    global0 = func_5(!global0.c, Struct_1(select(!(!arg_2.yy), arg_2.yx, select(vec2<bool>(false, false), func_2(-1000f), global0.c.zy)), global0.d, arg_2, -31602i, min(-vec4<i32>(global0.b, -64937i, global0.e.x, -2147483647i), global0.e ^ -global0.e)));
    var var_0 = Struct_1(vec2<bool>(arg_2.x, !global0.c.x), -(~global0.b << (~u_input.b.x % 32u)), vec3<bool>(false, !(!(!global0.c.x)), arg_2.x), global0.b | ~global0.d, ~(-(~(-global0.e))));
    var_0 = Struct_1(vec2<bool>(!(!func_2(arg_0.x).x), arg_2.x), -2147483647i, !func_5(vec3<bool>(!global0.c.x, var_0.e.x <= var_0.e.x, true), Struct_1(!var_0.c.yy, -2147483647i, vec3<bool>(arg_2.x, global0.c.x, false), global0.d, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, global0.d, var_0.e.x, var_0.d), vec4<i32>(-4033i, var_0.b, global0.b, var_0.b)))).c, _wgslsmith_dot_vec3_i32(vec3<i32>(max(global0.b, select(2147483647i, 23927i, false)), countOneBits(i32(-1i) * -18728i), -(~(-38750i))), vec3<i32>(_wgslsmith_add_i32(2147483647i, global0.b) >> (arg_3.x % 32u), func_4(all(vec2<bool>(var_0.a.x, var_0.c.x)), _wgslsmith_div_vec4_i32(var_0.e, vec4<i32>(var_0.e.x, var_0.b, -2147483647i, global0.e.x))).x, -_wgslsmith_mod_i32(1060i, -2147483647i))), global0.e);
    let var_1 = !global0.c;
    let var_2 = Struct_2(Struct_1(select(func_5(func_5(var_0.c, Struct_1(var_0.c.yy, global0.d, arg_2, 29090i, vec4<i32>(-2147483647i, var_0.e.x, global0.b, -1i))).c, func_5(vec3<bool>(false, true, arg_2.x), Struct_1(arg_2.yz, 25940i, var_1, -18927i, global0.e))).a, vec2<bool>(true, arg_2.x), var_1.x), ~(-2147483647i), vec3<bool>(!var_1.x != (false && var_0.a.x), any(vec3<bool>(arg_2.x, true, true)), var_1.x), ~(~firstTrailingBit(-11186i)), vec4<i32>(abs(~(-31719i)), var_0.e.x >> (~54227u % 32u), -firstLeadingBit(global0.b), ~(-1i))), Struct_1(!vec2<bool>(select(false, var_1.x, false), false), _wgslsmith_mult_i32(max(global0.d, -2147483647i), global0.d) << (max(0u, arg_3.x) % 32u), !global0.c, 4630i, ~max(vec4<i32>(global0.e.x, global0.e.x, -1i, global0.d), vec4<i32>(-2147483647i, var_0.e.x, -92010i, var_0.d))));
    return -var_2.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.c.yy, ~global0.d, vec3<bool>((_wgslsmith_sub_u32(0u, u_input.b.x) >> (u_input.b.x % 32u)) < abs(_wgslsmith_mod_u32(1u, u_input.b.x)), !global0.c.x, global0.a.x), _wgslsmith_add_i32(1i, global0.b), ~vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(2147483647i, -2147483647i)), -1i, func_1(vec3<f32>(159f, -628f, 568f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1719f, 480f, 1046f))), select(vec3<bool>(false, global0.c.x, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), u_input.b), func_1(vec3<f32>(357f, -381f, 717f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2198f, 717f, 417f))), func_5(global0.c, Struct_1(vec2<bool>(global0.a.x, true), global0.b, global0.c, 0i, global0.e)).c, firstLeadingBit(u_input.b))));
    let var_0 = global0.c.x;
    var var_1 = _wgslsmith_add_i32(i32(-1i) * -16713i, 49592i);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(913f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(802f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f + -1272f) * _wgslsmith_f_op_f32(f32(-1f) * -1194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1218f)) - _wgslsmith_f_op_f32(1000f + 1642f)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) - var_2.x) - var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(344f - 1631f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1327f - 1f)))));
    var_1 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_5(func_5(vec3<bool>(false, global0.c.x, global0.a.x), func_5(vec3<bool>(global0.c.x, global0.a.x, false), Struct_1(vec2<bool>(global0.c.x, global0.a.x), -24312i, vec3<bool>(true, global0.c.x, global0.c.x), global0.e.x, vec4<i32>(global0.e.x, -811i, 38463i, global0.d)))).c, func_5(select(global0.c, vec3<bool>(true, true, global0.c.x), false), Struct_1(global0.a, global0.b, vec3<bool>(false, global0.a.x, global0.c.x), 47260i, vec4<i32>(-5859i, global0.b, 6827i, -2147483647i)))).b, 1i));
}


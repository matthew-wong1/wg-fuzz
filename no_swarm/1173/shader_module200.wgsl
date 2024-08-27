struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(474f, -325f, -250f), vec3<u32>(59485u, 74528u, 0u), -625f, i32(-2147483648), vec4<i32>(70058i, 17518i, 1i, -1i));

var<private> global1: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-327f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(1021f * -2017f)))), _wgslsmith_clamp_vec3_u32(select(~(~global0.b), global0.b, global1.wwz), _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(10179u, global0.b.x, 34801u), vec3<u32>(global0.b.x, u_input.a, global0.b.x))), vec3<u32>(_wgslsmith_div_u32(u_input.a, 85815u), _wgslsmith_div_u32(0u, global0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 347u, u_input.a), global0.b))), vec3<u32>(firstTrailingBit(u_input.a >> (67447u % 32u)), ~(~4294967295u), global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1324f * global0.a.x) + global0.a.x), global0.e.x, global0.e);
    let var_0 = -global0.e.wy;
    global1 = vec4<bool>(!global1.x, false, !(!global1.x), global1.x);
    let var_1 = -global0.d;
    let var_2 = 0u;
    return -_wgslsmith_mod_vec3_i32(abs(vec3<i32>(global0.e.x, i32(-1i) * -1i, -43171i)), max(global0.e.yxy, ~(-vec3<i32>(-1i, 19175i, -13128i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> vec4<bool> {
    global1 = select(vec4<bool>(all(vec2<bool>(global1.x & arg_2.d.x, global0.b.x <= arg_2.a.b.x)), arg_2.b, true, select(true, global1.x, 1u == ~arg_3.a.b.x)), vec4<bool>(any(!select(global1.zw, arg_3.d.yz, arg_2.d.x)), true, false, all(global1.zx) || true), global1.x);
    return !(!select(select(!vec4<bool>(false, true, true, global1.x), vec4<bool>(arg_2.d.x, true, global1.x, true), select(vec4<bool>(arg_2.b, true, arg_3.d.x, arg_2.d.x), vec4<bool>(true, arg_2.d.x, arg_2.b, arg_3.b), arg_3.d.x)), !vec4<bool>(global1.x, false, false, false), vec4<bool>(true, true, true, true)));
}

fn func_2() -> vec3<i32> {
    var var_0 = 1626f;
    var var_1 = global0.c;
    global1 = !vec4<bool>(false && all(select(global1.xzz, vec3<bool>(false, false, true), false)), global1.x, global1.x, !(!all(global1.www)));
    global1 = func_4(vec3<i32>(global0.e.x, ~(~(-1i)), 2147483647i) >> (~vec3<u32>(1u ^ global0.b.x, global0.b.x, 35001u) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), -260f, global0.c, -1040f), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(max(global0.a, _wgslsmith_div_vec3_f32(vec3<f32>(678f, global0.c, global0.c), vec3<f32>(814f, global0.a.x, 776f)))), ~abs(global0.b), 513f, ~global0.e.x, global0.e), global0.a.x < global0.a.x, ~func_3(), global1.zzx), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(747f, global0.a.x, global0.c))))), vec3<u32>(21590u, ~0u, 0u), 2395f, _wgslsmith_mod_i32(global0.d, global0.e.x), -(global0.e & vec4<i32>(global0.d, 41403i, 7271i, global0.e.x))), any(!(!global1.yzy)), _wgslsmith_add_vec3_i32(func_3(), ~abs(vec3<i32>(global0.e.x, -1i, global0.d))), select(vec3<bool>(true, any(global1.zzw), -1000f > global0.a.x), vec3<bool>(false, true, global1.x), select(!global1.zyz, global1.wyz, vec3<bool>(global1.x, false, global1.x)))));
    let var_2 = -1000f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(918f - global0.a.x))), -216f));
    return func_3();
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_3(arg_1.a, global1.x, _wgslsmith_div_vec3_i32(reverseBits(~reverseBits(vec3<i32>(arg_1.c.x, arg_0.x, -15219i))), ~func_2()), !global1.wyy);
    var var_1 = max(~max(vec3<i32>(-37331i, arg_0.x, abs(var_0.a.e.x)), ~vec3<i32>(-20613i, 1i, 0i)), abs(vec3<i32>(global0.d, _wgslsmith_sub_i32(-arg_3.c.x, _wgslsmith_sub_i32(arg_3.a.d, global0.e.x)), 60523i)));
    var var_2 = Struct_3(var_0.a, all(vec2<bool>(arg_1.b, arg_1.d.x)), ~(-firstLeadingBit(vec3<i32>(var_0.c.x, 0i, -7513i))), !select(select(vec3<bool>(var_0.b, true, false), select(vec3<bool>(false, true, arg_3.d.x), global1.xyy, arg_3.b), func_4(global0.e.yzy, vec4<f32>(-588f, arg_1.a.c, -308f, arg_1.a.c), arg_3, Struct_3(Struct_1(vec3<f32>(-479f, arg_3.a.c, 443f), vec3<u32>(var_0.a.b.x, 4294967295u, var_0.a.b.x), arg_1.a.a.x, 26237i, vec4<i32>(2147483647i, var_1.x, arg_1.c.x, -1i)), false, arg_1.c, arg_3.d)).x), func_4(vec3<i32>(37578i, 0i, global0.e.x) >> (arg_3.a.b % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.a.x, 239f, global0.a.x, -1609f)), Struct_3(Struct_1(arg_3.a.a, arg_1.a.b, -106f, global0.d, arg_0), true, arg_3.a.e.wzy, global1.xxx), Struct_3(var_0.a, false, arg_1.a.e.yzw, arg_1.d)).zzw, var_0.b));
    var_1 = arg_3.c ^ ~(vec3<i32>(var_0.a.e.x, ~(-45714i), ~arg_1.c.x) | arg_0.wzy);
    return -936f;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = true;
    var var_1 = _wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, select(_wgslsmith_div_u32(_wgslsmith_add_u32(3749u, arg_3.a.b.x), u_input.a), _wgslsmith_div_u32(24709u, max(44034u, arg_3.a.b.x)), !(global1.x || arg_3.d.x))) > u_input.a;
    let var_2 = max(max(_wgslsmith_add_i32(-arg_2.x, arg_1.x) << (~max(19719u, 50929u) % 32u), arg_2.x), 2147483647i);
    let var_3 = !((select(any(global1.xw), 1i != var_2, false) == (arg_0.a.x >= 1420f)) | func_4(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_0.e.x), arg_0.e.zxx), 1i, _wgslsmith_div_i32(-43326i, 9311i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, 180f, arg_3.a.a.x, 1784f)))), Struct_3(arg_0, !arg_3.d.x, select(arg_3.c, arg_3.a.e.xzz, false), !arg_3.d), arg_3).x);
    var var_4 = Struct_2(-121f, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, arg_3.a.a.x, arg_0.c)), vec3<f32>(_wgslsmith_div_f32(arg_3.a.a.x, 539f), arg_3.a.c, _wgslsmith_f_op_f32(-arg_0.a.x)))), select(vec3<u32>(2578u, 5290u, arg_0.b.x), select(vec3<u32>(arg_3.a.b.x, global0.b.x, 0u), vec3<u32>(0u, 16450u, u_input.a), arg_3.d), vec3<bool>(arg_3.b, true, true)) << (global0.b % vec3<u32>(32u)), arg_0.c, -1i, -vec4<i32>(0i, 1i, arg_1.x, 1i) & vec4<i32>(~arg_2.x, reverseBits(-1i), var_2, -31072i)));
    return ~min(~abs(countOneBits(arg_1)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 43840u;
    let var_1 = Struct_1(global0.a, vec3<u32>(u_input.a, _wgslsmith_mult_u32(min(1u, firstTrailingBit(u_input.a)), u_input.a >> (global0.b.x % 32u)), 1u), global0.c, 1i, ~global0.e);
    global0 = var_1;
    let var_2 = max(func_5(Struct_1(vec3<f32>(global0.a.x, global0.c, var_1.c), global0.b, _wgslsmith_f_op_f32(func_1(vec4<i32>(-1i, -2147483647i, 1278i, global0.d), Struct_3(var_1, global1.x, var_1.e.zxz, global1.wxy), var_1.c, Struct_3(var_1, global1.x, vec3<i32>(17012i, -22118i, global0.e.x), vec3<bool>(true, global1.x, global1.x)))), reverseBits(0i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e.x, 2147483647i, -6614i, var_1.d), vec4<i32>(global0.e.x, var_1.d, global0.e.x, 2147483647i))), var_1.e.zz, var_1.e.xz, Struct_3(Struct_1(vec3<f32>(var_1.a.x, -1117f, 1102f), var_1.b, 1277f, global0.e.x, vec4<i32>(16481i, 26719i, global0.e.x, -7504i)), true || global1.x, vec3<i32>(-19051i, -1i, var_1.d), vec3<bool>(false, global1.x, global1.x))), ~func_5(var_1, func_2().yz, ~var_1.e.yx, Struct_3(var_1, global1.x, global0.e.xzy, global1.yzw))) << (_wgslsmith_mult_vec2_u32(~firstLeadingBit(abs(vec2<u32>(u_input.a, 1u))), ~var_1.b.zx) % vec2<u32>(32u));
    global0 = var_1;
    var_0 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(countOneBits(var_2.x), 5783i, _wgslsmith_mult_i32(countOneBits(var_1.d), -(~var_2.x))), firstLeadingBit(~32698u) >> ((_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.b, global0.b), select(global0.b, vec3<u32>(27595u, 0u, var_1.b.x), vec3<bool>(false, true, global1.x))) & var_1.b.x) % 32u));
}


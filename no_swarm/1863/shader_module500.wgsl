struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(1294f, 927f);

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(-769f, vec3<i32>(-15261i, -27148i, 2147483647i)), Struct_3(615f, vec3<i32>(-26898i, 2147483647i, 34290i)), Struct_3(-124f, vec3<i32>(18248i, -1i, 24533i)), Struct_3(797f, vec3<i32>(-35654i, 14418i, -1i)), Struct_3(830f, vec3<i32>(33067i, -8627i, 2147483647i)), Struct_3(994f, vec3<i32>(i32(-2147483648), -1202i, -408i)), Struct_3(528f, vec3<i32>(i32(-2147483648), 0i, 1i)), Struct_3(1214f, vec3<i32>(2147483647i, 22251i, -1i)), Struct_3(-824f, vec3<i32>(2147483647i, 13153i, 40491i)), Struct_3(1000f, vec3<i32>(25213i, -28868i, -27403i)), Struct_3(-991f, vec3<i32>(53025i, 18175i, -16940i)), Struct_3(383f, vec3<i32>(11225i, -15952i, i32(-2147483648))), Struct_3(-1798f, vec3<i32>(-4581i, 2147483647i, 2147483647i)), Struct_3(-1573f, vec3<i32>(2147483647i, 39224i, 25378i)), Struct_3(-1011f, vec3<i32>(-15701i, 2147483647i, 2147483647i)), Struct_3(-1000f, vec3<i32>(5786i, -1i, 2147483647i)), Struct_3(1000f, vec3<i32>(2147483647i, -3657i, -38921i)), Struct_3(1351f, vec3<i32>(2147483647i, 17441i, 11405i)), Struct_3(1375f, vec3<i32>(0i, 0i, 0i)), Struct_3(-1185f, vec3<i32>(-47904i, -1i, i32(-2147483648))), Struct_3(-322f, vec3<i32>(-1i, 1i, -23277i)), Struct_3(260f, vec3<i32>(9088i, 8561i, 13011i)), Struct_3(1780f, vec3<i32>(27187i, 1i, -1i)), Struct_3(1000f, vec3<i32>(-45719i, -3863i, 2147483647i)), Struct_3(2261f, vec3<i32>(0i, 13801i, -9327i)), Struct_3(303f, vec3<i32>(-1i, 1i, -28726i)), Struct_3(-137f, vec3<i32>(-3937i, -8881i, -18690i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), 4294967295u, _wgslsmith_add_u32(u_input.b, u_input.b)), vec3<u32>(~firstTrailingBit(u_input.b), u_input.b, reverseBits(countOneBits(4294967295u)))), !(_wgslsmith_dot_vec2_u32(~vec2<u32>(319u, 0u), vec2<u32>(u_input.b, 4294967295u) << (vec2<u32>(45943u, 1u) % vec2<u32>(32u))) <= u_input.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-767f)))))), _wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(1i, 0i, -51643i)), -vec3<i32>(-2307i, 2147483647i, 10350i)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.wzz, vec3<i32>(u_input.c, -21739i, 6577i)) & -u_input.a.yzw, u_input.a.xwy)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-597f * _wgslsmith_f_op_f32(-1380f + 1453f)))), ~var_0.d);
    global1 = array<Struct_3, 27>();
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(var_0.a.x), 27u)];
    var var_3 = var_1;
    return vec4<bool>(any(select(vec3<bool>(false, -11555i < var_1.b.x, false), vec3<bool>(var_0.b, true, all(vec3<bool>(true, var_0.b, false))), !select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(var_0.b, var_0.b, arg_2.x), vec3<bool>(true, var_0.b, arg_2.x)))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 2u)]) + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b, 2u)])))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.a)))), _wgslsmith_f_op_f32(max(var_1.a, -1748f)))), all(vec4<bool>(all(select(arg_2, arg_2, true)), var_0.b, 0u != u_input.b, true)));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = 1u;
    global0 = array<f32, 2>();
    global1 = array<Struct_3, 27>();
    var var_1 = abs(select(vec4<u32>(min(_wgslsmith_sub_u32(26749u, var_0), 40095u), 6025u, abs(u_input.b), u_input.b), ~(~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, var_0, u_input.b))), select(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true), false), arg_1, select(13867u >= var_0, true, true == arg_1.x))));
    let var_2 = global0[_wgslsmith_index_u32(~(~(~(~u_input.b))), 2u)];
    return vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.yz, var_1.yw), 40214u, _wgslsmith_mult_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 308u), vec2<u32>(u_input.b, var_1.x)) << ((var_0 << (99519u % 32u)) % 32u)), 24166u & var_0));
}

fn func_2() -> bool {
    global1 = array<Struct_3, 27>();
    let var_0 = Struct_1(func_4(-2147483647i, select(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false))), select(func_3(global0[_wgslsmith_index_u32(u_input.b, 2u)], Struct_2(global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), false), true == any(vec4<bool>(true, false, false, false)))), func_3(-1398f, Struct_2(_wgslsmith_f_op_f32(abs(-488f))), select(vec2<bool>(true, true), func_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20801u, 2u)]), Struct_2(-593f), vec2<bool>(true, true)).yz, select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)))).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 2u)]))), vec3<i32>(i32(-1i) * -22699i, _wgslsmith_clamp_i32(u_input.c, 1i, countOneBits(-53163i)), firstLeadingBit(-(~u_input.c))));
    var var_1 = global1[_wgslsmith_index_u32(~(~1u << (_wgslsmith_mult_u32(u_input.b, ~var_0.a.x | _wgslsmith_mult_u32(u_input.b, var_0.a.x)) % 32u)), 27u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) * var_0.c)), global0[_wgslsmith_index_u32(firstTrailingBit(abs(var_0.a.x)), 2u)], var_0.c, var_0.c) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, -1424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 2u)]) - global0[_wgslsmith_index_u32(23829u, 2u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(821f, var_1.a, global0[_wgslsmith_index_u32(var_0.a.x, 2u)], 2049f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, -590f, var_1.a, var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -2423f, var_1.a, -523f)))))));
    var var_3 = !(!vec2<bool>(all(func_3(global0[_wgslsmith_index_u32(25316u, 2u)], Struct_2(1408f), vec2<bool>(var_0.b, true)).xw), var_0.b));
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    global1 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_div_i32(u_input.a.x, max(~2147483647i, -2147483647i) << (_wgslsmith_sub_u32(0u, 0u) % 32u));
    global1 = array<Struct_3, 27>();
    var_0 = -(_wgslsmith_mult_i32(~u_input.c, -3297i) >> (select(0u, arg_1, func_2()) % 32u)) >> (u_input.b % 32u);
    var var_1 = false;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global1 = array<Struct_3, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, _wgslsmith_div_f32(-848f, global0[_wgslsmith_index_u32(1u, 2u)])))));
    let var_2 = Struct_1(~vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(u_input.b, u_input.b, var_0)), _wgslsmith_clamp_u32(2975u, 10783u, min(37372u, var_0))), !(u_input.a.x < min(-33792i, -10968i)) || (true && select(true, 77194u <= u_input.b, true)), var_1.x, u_input.a.yxy);
    let var_3 = select(~(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, var_2.d.x)), abs(_wgslsmith_sub_vec2_i32(~(var_2.d.yz ^ vec2<i32>(u_input.c, -23745i)), min(~u_input.a.yy, vec2<i32>(2752i, var_2.d.x) & vec2<i32>(-59142i, 41812i)))), false);
    var var_4 = var_2.b;
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(7767u, 2u)] - 819f) - _wgslsmith_f_op_f32(-var_2.c)))))));
    var var_6 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.c))), var_1.x, _wgslsmith_f_op_f32(func_1(vec3<f32>(-883f, var_1.x, global0[_wgslsmith_index_u32(51263u, 2u)]), 60255u, Struct_2(1334f))) <= _wgslsmith_f_op_f32(-420f * var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-842f - 162f) * var_1.x))));
    var var_7 = vec4<i32>(u_input.a.x, var_3.x, _wgslsmith_div_i32(~firstTrailingBit(_wgslsmith_sub_i32(var_3.x, var_3.x)), -21183i), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-283f, var_1.x, var_2.b))), var_6.x, _wgslsmith_f_op_f32(step(var_6.x, 1259f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 329f, true)))))), u_input.b, ~abs(~(var_2.a.zy & vec2<u32>(67656u, 4294967295u))));
}


struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1000f, 1000f, -1104f), vec3<f32>(1994f, 101f, -667f), vec3<f32>(-1601f, 1301f, 162f), vec3<f32>(2772f, 1004f, -110f), vec3<f32>(-1000f, 643f, 1003f), vec3<f32>(-234f, -606f, 1049f), vec3<f32>(-427f, 1460f, 742f), vec3<f32>(116f, -674f, 884f), vec3<f32>(593f, 285f, -493f), vec3<f32>(540f, 876f, 465f), vec3<f32>(-1881f, -3774f, 424f), vec3<f32>(-1117f, -464f, 1000f), vec3<f32>(-1048f, -318f, 887f), vec3<f32>(1918f, 686f, -398f), vec3<f32>(-174f, 615f, 833f), vec3<f32>(414f, 2143f, 788f));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec4<f32> = vec4<f32>(795f, -2243f, 1000f, 197f);

var<private> global3: Struct_1 = Struct_1(false, vec2<f32>(704f, -1191f), 0u, vec2<i32>(0i, 6454i), 397f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_add_vec2_i32(select(abs(vec2<i32>(global3.d.x, -2147483647i)), abs(global3.d), any(vec4<bool>(global1.x, true, global1.x, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(global3.d.x, global3.d.x) << (vec2<u32>(10756u, global3.c) % vec2<u32>(32u)), global3.d)) | vec2<i32>(u_input.d, _wgslsmith_clamp_i32(-1i, -2147483647i, 2147483647i) & 58115i);
    global1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, global1.x), vec2<bool>(false, true), global1.x)), select(vec2<bool>(true, true), !vec2<bool>(global3.a, global1.x), select(vec2<bool>(global3.a, true), vec2<bool>(false, global1.x), vec2<bool>(true, false)))), !(!select(vec2<bool>(true, true), vec2<bool>(global3.a, true), vec2<bool>(false, global3.a))), select(select(!vec2<bool>(true, global1.x), select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), vec2<bool>(false, global1.x)), 1259f >= global2.x), vec2<bool>(global3.a, true), true));
    global3 = Struct_1(select((1i > u_input.a) == !global3.a, !global1.x, any(!vec4<bool>(global3.a, global1.x, global1.x, true))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -663f)), ~global3.c, ~u_input.b.zx, -1552f);
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(false | global3.a, true), false));
    var var_2 = Struct_1(select(false, any(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global3.a, true, false), vec3<bool>(global1.x, true, global1.x)), vec3<bool>(global3.a, false, false), vec3<bool>(global3.a, global1.x, var_1.x))), all(vec4<bool>(any(vec3<bool>(false, global3.a, var_1.x)), -48040i <= global3.d.x, 482f <= global3.e, global1.x))), global2.wx, 11465u ^ _wgslsmith_mod_u32(global3.c, global3.c), vec2<i32>(-2147483647i, 1i), _wgslsmith_f_op_f32(global2.x * -593f));
    return global3.b.x;
}

fn func_2() -> vec2<f32> {
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, -977f, global3.a)))), global3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * -865f), _wgslsmith_div_f32(-789f, global2.x), _wgslsmith_f_op_f32(global3.b.x + -1817f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    var var_0 = Struct_2(vec4<u32>(min(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c, 0u, global3.c, 45505u), vec4<u32>(1u, global3.c, global3.c, 1u))), reverseBits(65417u) | _wgslsmith_div_u32(global3.c, global3.c)), 6402u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global3.c, 0u), ~0u), ~_wgslsmith_add_vec2_u32(vec2<u32>(15484u, 92085u), vec2<u32>(global3.c, global3.c))), reverseBits(global3.c)), 4294967295u, vec3<u32>(_wgslsmith_sub_u32(15699u, global3.c), 0u, ~global3.c), Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(-global2.xz), 0u, abs(vec2<i32>(abs(u_input.c.x), 11633i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * -944f)), Struct_1(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)), global2.wy, (global3.c < 36814u) || true)), _wgslsmith_div_u32(abs(global3.c), firstLeadingBit(0u)), abs(-select(global3.d, global3.d, vec2<bool>(true, true))), 1697f));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b.x, -239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2004f * var_0.e.e))), var_0.d.b.x));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) - -232f), _wgslsmith_f_op_f32(-global3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + global3.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, global2.x))));
    var var_1 = min(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global3.c >> (143078u % 32u), 1u) << (var_0.a.yxx % vec3<u32>(32u)), countOneBits(_wgslsmith_mod_vec3_u32(var_0.a.yyz, var_0.c))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~var_0.c, var_0.a.zzz), var_0.c));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.e.b + var_0.d.b))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1535f, global3.b.x))))) * var_0.e.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global3 = Struct_1(all(arg_2) && false, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.b))), 46084u << ((1u | abs(0u | arg_0.c)) % 32u), arg_1.d, _wgslsmith_f_op_f32(-arg_1.b.x));
    var var_0 = global2.x;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(abs(reverseBits(98224u)), arg_0.c), ~(~abs(1u))), ~(~_wgslsmith_clamp_u32(~0u, ~global3.c, _wgslsmith_add_u32(0u, 4294967295u))));
    let var_2 = Struct_2(firstLeadingBit(max(~(vec4<u32>(arg_0.c, global3.c, 1u, 4294967295u) >> (vec4<u32>(65256u, arg_0.c, arg_1.c, arg_0.c) % vec4<u32>(32u))), abs(vec4<u32>(0u, arg_0.c, 1u, arg_1.c) & vec4<u32>(46296u, 4294967295u, 73243u, arg_0.c)))), ~30531u, select(select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 22537u, arg_1.c) >> (vec3<u32>(15652u, 4294967295u, 0u) % vec3<u32>(32u)), ~vec3<u32>(64396u, arg_0.c, 30054u)), ~vec3<u32>(arg_1.c, 4294967295u, arg_1.c) << (countOneBits(vec3<u32>(arg_1.c, arg_0.c, arg_0.c)) % vec3<u32>(32u)), global3.c >= (arg_1.c & global3.c)), ~vec3<u32>(~12247u, min(arg_0.c, 102264u), firstLeadingBit(arg_0.c)), vec3<bool>(!global1.x, any(arg_2), any(vec4<bool>(true, false, global1.x, false)))), arg_0, arg_0);
    let var_3 = _wgslsmith_sub_u32(global3.c, 1u);
    return arg_0;
}

fn func_1() -> u32 {
    global3 = func_4(Struct_1(!(~23701u > abs(global3.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - _wgslsmith_div_vec2_f32(global3.b, global2.wy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global3.b.x) + global3.b)), _wgslsmith_sub_u32(global3.c, ~min(global3.c, global3.c)), u_input.c.xw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))) * -204f)), Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.b.x, 1369f))), _wgslsmith_f_op_vec2_f32(round(global3.b))) * vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(select(global2.x, global2.x, false)))), ~28755u, u_input.b.xz, _wgslsmith_f_op_f32(step(1318f, global3.b.x))), !select(!(!vec2<bool>(true, global3.a)), vec2<bool>(true, all(vec2<bool>(global1.x, global1.x))), vec2<bool>(global1.x, true)));
    var var_0 = Struct_2(~(vec4<u32>(global3.c | global3.c, global3.c | global3.c, global3.c, max(488u, 13710u)) & _wgslsmith_div_vec4_u32(select(vec4<u32>(global3.c, global3.c, global3.c, 0u), vec4<u32>(1u, global3.c, global3.c, global3.c), false), vec4<u32>(1u, 17590u, 0u, global3.c) ^ vec4<u32>(global3.c, 49558u, 0u, global3.c))), global3.c, vec3<u32>(~global3.c, global3.c, _wgslsmith_div_u32(109486u, ~global3.c) ^ firstLeadingBit(54421u)), Struct_1(global1.x, vec2<f32>(global3.b.x, _wgslsmith_f_op_vec2_f32(func_2()).x), 6619u, select(firstLeadingBit(-u_input.b.zy), u_input.c.xz, vec2<bool>(true, !global1.x)), global3.b.x), Struct_1(true, _wgslsmith_f_op_vec2_f32(func_2()), ~global3.c, vec2<i32>(4643i, _wgslsmith_mod_i32(1i, 2147483647i | u_input.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_4(Struct_1(global3.a, vec2<f32>(global3.e, global3.b.x), global3.c, vec2<i32>(u_input.a, -16572i), -2691f), Struct_1(false, vec2<f32>(-221f, global3.e), global3.c, vec2<i32>(-16236i, -7681i), -1050f), vec2<bool>(false, global3.a)).b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(global3.e)))))));
    var var_1 = -min(u_input.c, vec4<i32>(-46797i, -_wgslsmith_mod_i32(0i, global3.d.x), -1i, 13186i));
    var var_2 = func_4(var_0.d, func_4(var_0.e, var_0.d, vec2<bool>(true, true)), vec2<bool>((~global3.c > 1u) == all(vec2<bool>(global1.x, false)), false));
    var var_3 = var_0.a;
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4737u & (_wgslsmith_dot_vec3_u32(var_3.xyy, vec3<u32>(4294967295u, 9041u, 21392u)) << (~1u % 32u)), var_0.c.x, _wgslsmith_dot_vec3_u32(var_0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, 30347u, var_0.c.x), vec3<u32>(var_2.c, 0u, 25749u)) | firstLeadingBit(var_3.wyy))), _wgslsmith_dot_vec2_u32(var_0.c.zx, ~abs(countOneBits(vec2<u32>(1188u, global3.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(1000f, global2.x)), global2.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.b.x, 1162f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.e), -1000f, -1000f) * global2.zyw)));
    global0 = array<vec3<f32>, 16>();
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(func_1()), func_1(), select(~(~global3.c), global3.c, !all(vec3<bool>(global1.x, global1.x, true)))), firstTrailingBit(~(~firstLeadingBit(vec3<u32>(global3.c, 4294967295u, global3.c)))), ~(~min(vec3<u32>(global3.c, 0u, 4294967295u) & vec3<u32>(global3.c, 12767u, 45561u), vec3<u32>(1u, global3.c, global3.c))));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(global3.d.x ^ u_input.b.x, firstLeadingBit(-39403i)), firstLeadingBit(~global3.d) >> ((var_2.zy | reverseBits(~var_2.zz)) % vec2<u32>(32u)));
    let var_4 = vec2<bool>(false, !(!(false && global1.x)) | (_wgslsmith_dot_vec2_i32(var_3 & vec2<i32>(u_input.b.x, -25438i), firstLeadingBit(u_input.b.zx)) > u_input.b.x));
    let var_5 = countOneBits(18162i);
    let var_6 = Struct_1((~47512u != var_2.x) || global3.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-322f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.b.x, 464f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1663f)), var_1.x), false))), ~global3.c, select(u_input.b.yx, global3.d, !select(select(vec2<bool>(global1.x, var_4.x), vec2<bool>(global3.a, global1.x), true), var_4, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), var_6.d.x), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(52488u, 16u)]), _wgslsmith_mult_i32(7550i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(global3.d.x, var_5, global3.d.x, var_5), vec4<i32>(-12390i, -1i, var_3.x, var_6.d.x)), max(u_input.c, u_input.c) & ~u_input.c)), _wgslsmith_div_vec2_u32(var_2.yy, vec2<u32>(func_4(var_6, var_6, var_4).c, ~4294967295u) & _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_2.zx)), ~u_input.b << (abs(~(~var_2)) % vec3<u32>(32u)));
}


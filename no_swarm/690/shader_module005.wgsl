struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(567f, -1218f, 480f, -640f) + vec4<f32>(584f, 1079f, -1890f, -375f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-564f, 368f, -979f, 542f), vec4<f32>(671f, 1000f, 729f, 337f))) + vec4<f32>(1148f, -1166f, -1406f, -781f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(264f, 1006f) + _wgslsmith_f_op_f32(f32(-1f) * -1328f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(267f + _wgslsmith_div_f32(1000f, 909f)) * _wgslsmith_f_op_f32(step(341f, -723f))))), Struct_2(vec2<i32>(-41831i, _wgslsmith_add_i32(0i, 0i)), Struct_1(u_input.a.x), u_input.a, u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(818f)));
    let var_2 = Struct_2(~countOneBits(u_input.b.zy), Struct_1(~var_0.d.b.a), ~max(~(~var_0.d.c), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33153u, var_0.d.b.a, var_0.d.b.a, var_0.d.c.x), u_input.a), firstLeadingBit(1u), firstTrailingBit(4060u), u_input.d.x)), u_input.b.x);
    global0 = !(1410f <= _wgslsmith_f_op_f32(-var_0.b.x));
    var var_3 = Struct_4(Struct_3(vec4<bool>(any(var_0.a.yxx), all(select(vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.a, false)), false, false), vec4<f32>(_wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(var_1 + 284f)), 1436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, -1440f, var_0.a.x))), _wgslsmith_f_op_f32(var_1 * var_0.b.x)), -1000f, var_0.d));
    return 24268u;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = -1i;
    var var_1 = Struct_4(Struct_3(vec4<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, arg_0.x, 9707i), vec4<i32>(u_input.e, 1i, var_0, 2147483647i)) < _wgslsmith_add_i32(-1i, -43913i), !(u_input.d.x != u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1157f, -1901f), _wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(1075f * 761f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1439f)) - -1907f)), Struct_2(u_input.b.zy, Struct_1(0u), select(select(vec4<u32>(u_input.a.x, u_input.a.x, 4503u, u_input.d.x), u_input.a, true), select(vec4<u32>(u_input.c.x, u_input.d.x, u_input.a.x, u_input.a.x), u_input.a, true), any(vec3<bool>(true, true, false))), abs(u_input.b.x ^ var_0))));
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.c.ww), var_1.a.d.c.zy, ~var_1.a.d.c.yy), vec2<u32>(_wgslsmith_div_u32(22107u, ~func_3()), u_input.a.x));
    let var_3 = func_3();
    var var_4 = Struct_2(-_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, var_0), var_1.a.d.a) << (select(vec2<u32>(u_input.c.x, var_2.x) ^ select(var_2, vec2<u32>(u_input.c.x, var_2.x), vec2<bool>(var_1.a.a.x, var_1.a.a.x)), reverseBits(reverseBits(vec2<u32>(1u, u_input.c.x))), var_1.a.a.zy) % vec2<u32>(32u)), Struct_1(_wgslsmith_mult_u32(var_3, _wgslsmith_clamp_u32(~48596u, 1u, abs(var_2.x)))), u_input.a, var_1.a.d.a.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c - 1526f)), _wgslsmith_f_op_f32(abs(var_1.a.c))) >= var_1.a.c;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = true || !select(arg_0.a <= ~arg_0.a, !func_2(vec3<i32>(u_input.b.x, u_input.e, u_input.b.x)), true);
    global0 = (_wgslsmith_clamp_u32(1u, func_3(), arg_0.a) ^ ~43212u) > 48425u;
    global0 = any(!vec4<bool>(true, true, false, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)))));
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b.x, u_input.e)) | vec2<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, u_input.e), -1i), u_input.b.xx), Struct_1(~0u), ~(~_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(32865u, 5847u, arg_0.a, 10615u))) >> (max(_wgslsmith_mult_vec4_u32(u_input.a, ~vec4<u32>(0u, 40632u, u_input.d.x, arg_0.a)), u_input.c) % vec4<u32>(32u)), u_input.b.x);
    let var_1 = -368f;
    return var_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = arg_1.b.a;
    var var_1 = ~countOneBits(_wgslsmith_mod_u32(~abs(41388u), firstLeadingBit(~u_input.c.x)));
    global0 = false;
    var var_2 = u_input.b.x;
    global0 = true;
    return i32(-1i) * -_wgslsmith_div_i32(min(func_1(Struct_1(0u)).d, ~arg_1.d), 30213i);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = func_1(Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x, 1u), _wgslsmith_clamp_u32(20875u, _wgslsmith_clamp_u32(u_input.d.x, 0u, 31032u), u_input.c.x)))).b;
    var var_1 = !arg_2;
    global0 = all(select(!vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, true, !arg_2), !vec3<bool>(any(vec3<bool>(false, false, arg_2)), arg_2, true)));
    return func_1(func_1(func_1(Struct_1(firstLeadingBit(28783u))).b).b).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b >> (u_input.a.wzw % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.e, -1935i))), abs(countOneBits(firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -67669i))))), vec2<i32>(-2147483647i, (-1i & u_input.e) << (~1u % 32u)) & vec2<i32>(func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(633f, -1000f, 590f, 913f))), func_1(Struct_1(18904u)), -1i), -u_input.e), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true))));
    global0 = (-141f != _wgslsmith_f_op_f32(select(1684f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1199f * 1039f))), true))) && func_2(~vec3<i32>(u_input.b.x, 63776i, _wgslsmith_add_i32(-1i, 0i)));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(45787u >> (u_input.d.x % 32u), _wgslsmith_sub_u32(u_input.a.x, countOneBits(u_input.c.x))), ~vec2<u32>(13212u, 4294967295u));
    let var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.x, 24059u, u_input.d.x, 81047u), ~func_1(var_0).c), u_input.a & ~vec4<u32>(4294967295u, u_input.c.x, var_1.x, var_1.x));
    global0 = true;
    let var_3 = any(select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, false, all(vec4<bool>(true, true, true, false)) && false), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false)), func_2(u_input.b)));
    var var_4 = ~select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.e, 13420i, -61818i), vec4<i32>(u_input.e, 42800i, 2147483647i, u_input.b.x), vec4<i32>(1i, -12136i, u_input.e, u_input.b.x)), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.e, u_input.e, u_input.b.x), vec4<i32>(u_input.e, u_input.b.x, u_input.b.x, u_input.e)), vec4<i32>(-1i, 0i, 0i, u_input.e), select(vec4<bool>(false, false, true, true), vec4<bool>(var_3, true, var_3, false), var_3)), func_2(u_input.b)) >> (abs(vec4<u32>(~(0u << (var_0.a % 32u)), var_0.a, (u_input.a.x ^ var_0.a) | (u_input.c.x | 0u), ~var_1.x ^ var_0.a)) % vec4<u32>(32u));
    global0 = var_3 | var_3;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}


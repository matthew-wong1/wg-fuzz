struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2233f, arg_0.x) - arg_1.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.xxz), _wgslsmith_f_op_vec3_f32(round(arg_0))))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true)))));
    var var_1 = global0.d >> (abs(u_input.e) % 32u);
    global0 = Struct_2(-1000f, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.c.zxy, vec3<u32>(69080u, 1u, 1u)), select(vec3<u32>(global0.c.x, 9518u, u_input.c), vec3<u32>(global0.e.a, arg_1.b, 1u), vec3<bool>(false, true, false)))), 20046u), reverseBits(vec4<u32>(global0.c.x, ~1u, ~(~u_input.e), arg_1.e.a)), 1i, Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(9208u, 0u), global0.c.yy), vec3<u32>(62199u, global0.b, global0.c.x)));
    var_1 = -arg_1.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-592f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(global0.a, arg_2.x, false))))))));
}

fn func_4(arg_0: f32) -> i32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_0), true)))))), u_input.c, global0.c, firstTrailingBit(global0.d), global0.e);
    global0 = Struct_2(741f, 0u, abs(select(~vec4<u32>(4294967295u, global0.c.x, global0.e.b.x, u_input.e), ~reverseBits(vec4<u32>(1u, 45720u, 16619u, 4294967295u)), vec4<bool>(true, select(true, true, false), true, true))), _wgslsmith_dot_vec4_i32(u_input.d << ((vec4<u32>(13406u, 37239u, u_input.c, u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, global0.e.b.x, 112046u), vec4<u32>(u_input.e, 53700u, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.d), Struct_1(15259u, ~(~(global0.e.b >> (vec3<u32>(global0.c.x, u_input.e, 0u) % vec3<u32>(32u))))));
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -563f), u_input.e, ~global0.c & abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(17254u, 72175u, global0.c.x, 0u), global0.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(min(global0.d, u_input.b), u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, -17193i), u_input.d.yy)), ~vec3<i32>(global0.d, -13258i, global0.d)) ^ u_input.d.x, global0.e);
    let var_0 = vec2<u32>(_wgslsmith_div_u32(reverseBits(global0.c.x & 28084u), 33898u << (_wgslsmith_mult_u32(~u_input.e, ~0u) % 32u)), u_input.e);
    let var_1 = !vec4<bool>(false, true, select(false || all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true)), true), false);
    return u_input.a;
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_f32(1444f, global0.a), 4294967295u, vec4<u32>(75737u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 24467u, 1u, arg_0.c.e), vec4<u32>(4294967295u, 0u, 28570u, 0u)), vec4<u32>(arg_3.d, 95531u, 1u, 1u) & vec4<u32>(u_input.c, 28791u, 59186u, 39791u)) | (~u_input.c | max(arg_0.c.b.b.x, arg_3.c.e)), arg_2.a.b.x, 4620u), func_4(_wgslsmith_f_op_f32(func_3(arg_3.a, Struct_2(global0.a, firstTrailingBit(36139u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.c.e, 0u, 44239u, arg_3.c.b.b.x), global0.c, vec4<u32>(arg_2.a.a, global0.b, arg_0.d, 39011u)), _wgslsmith_mult_i32(arg_3.c.d.x, global0.d), Struct_1(85761u, vec3<u32>(32875u, 79344u, 4294967295u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1587f, -1000f, 783f, arg_1), vec4<f32>(-1329f, arg_3.a.x, -221f, arg_3.a.x)))))), global0.e);
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1109f), _wgslsmith_dot_vec2_u32(var_0.e.b.zx, _wgslsmith_sub_vec2_u32(arg_0.c.b.b.xx, ~firstLeadingBit(vec2<u32>(4294967295u, 34885u)))), var_0.c, 2147483647i, Struct_1(4294967295u, _wgslsmith_clamp_vec3_u32(arg_0.c.a.b, arg_2.b.b, ~(vec3<u32>(24376u, arg_0.d, 56022u) | arg_2.b.b))));
    var var_3 = reverseBits(-_wgslsmith_mod_i32(var_0.d, arg_3.c.c.x));
    var_0 = Struct_2(arg_0.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, max(~var_0.c.x, 4294967295u ^ var_2.e.b.x)), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.b, 23753u), arg_3.c.b.b), arg_2.b.b >> (vec3<u32>(arg_3.b, 1u, 1u) % vec3<u32>(32u)))), global0.c | vec4<u32>(u_input.c | (global0.b ^ u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(0u, 4294967295u)) << (abs(0u) % 32u), 58071u, 32447u ^ arg_2.a.a), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_2.c.x | (var_2.d & 3295i), arg_3.c.c.x), _wgslsmith_mod_i32(~(-2147483647i), 48866i)), arg_3.c.b);
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_3.c.a.b.x, ~var_2.b), var_0.c.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.c.a.b, var_2.e.b | arg_0.c.a.b), vec3<u32>(arg_3.d, global0.e.a, select(var_0.b, u_input.c, true)), arg_2.b.b) << (abs(abs(~global0.e.b)) % vec3<u32>(32u)));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_2;
    var var_0 = -arg_2.d;
    global0 = arg_2;
    var_0 = select(u_input.d.x | firstLeadingBit(20067i), 39685i, select(false | !(arg_0 <= arg_0), select(_wgslsmith_sub_u32(u_input.c, u_input.e) <= ~31194u, any(vec3<bool>(true, true, true)), false), true));
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(-countOneBits(arg_2.d), -2147483647i), -select(global0.d, _wgslsmith_div_i32(i32(-1i) * -20986i, _wgslsmith_clamp_i32(arg_0, u_input.a, global0.d)), true), -2147483647i, -2147483647i | _wgslsmith_dot_vec4_i32(select(-vec4<i32>(arg_0, -2147483647i, arg_2.d, arg_0), u_input.d, true), vec4<i32>(520i, 21149i, -17145i, arg_0)));
    return Struct_1(~func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(611f, 572f, -1209f)), arg_2.b, Struct_3(Struct_1(1u, vec3<u32>(4294967295u, u_input.e, 135378u)), Struct_1(u_input.c, global0.e.b), vec2<i32>(-1i, 1i), vec4<i32>(global0.d, global0.d, -29378i, arg_2.d), arg_2.c.x), _wgslsmith_clamp_u32(u_input.c, arg_2.e.b.x, global0.b), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(arg_1 * 170f)), Struct_3(Struct_1(arg_2.b, vec3<u32>(global0.e.b.x, 4924u, 24373u)), func_2(Struct_4(vec3<f32>(arg_2.a, arg_2.a, -566f), 1u, Struct_3(Struct_1(arg_2.c.x, global0.c.yzw), arg_2.e, var_1.yw, vec4<i32>(u_input.a, global0.d, arg_0, 0i), arg_2.c.x), 16282u, vec3<bool>(true, true, true)), 154f, Struct_3(global0.e, Struct_1(arg_2.e.b.x, arg_2.c.xxw), var_1.yx, vec4<i32>(arg_2.d, arg_0, 0i, 2147483647i), 0u), Struct_4(vec3<f32>(arg_2.a, -1000f, 105f), 4294967295u, Struct_3(Struct_1(31643u, arg_2.e.b), arg_2.e, u_input.d.ww, u_input.d, 30103u), 66902u, vec3<bool>(false, false, true))), var_1.yx, ~u_input.d, ~global0.b), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, arg_2.a, -1000f)), ~global0.b, Struct_3(Struct_1(arg_2.b, global0.c.zyy), arg_2.e, u_input.d.ww, vec4<i32>(-13462i, 0i, arg_2.d, -73006i), u_input.c), 1u, vec3<bool>(true, true, true))).b.x, vec3<u32>(arg_2.b, _wgslsmith_div_u32(~u_input.c >> (95346u % 32u), ~arg_2.c.x), _wgslsmith_add_u32(23664u, _wgslsmith_sub_u32(arg_2.b, 8469u) << (select(u_input.e, u_input.c, false) % 32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 431f, _wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, global0.a)))), global0.b, Struct_3(Struct_1(global0.e.a, global0.e.b << (vec3<u32>(1u, u_input.e, 22832u) % vec3<u32>(32u))), func_5(~_wgslsmith_mult_i32(2147483647i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1078f, global0.a))), Struct_2(_wgslsmith_div_f32(203f, -700f), 19229u, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.x, global0.e.a, u_input.e, 26212u), global0.c), _wgslsmith_div_i32(6726i, u_input.d.x), func_2(Struct_4(vec3<f32>(arg_2.x, -309f, 293f), 31692u, Struct_3(global0.e, global0.e, vec2<i32>(arg_0.x, 1i), vec4<i32>(29253i, global0.d, 1i, -13911i), 1u), 4294967295u, vec3<bool>(false, true, false)), 2487f, Struct_3(global0.e, Struct_1(u_input.e, global0.e.b), u_input.d.xy, u_input.d, u_input.e), Struct_4(vec3<f32>(722f, -322f, -1000f), global0.e.a, Struct_3(global0.e, global0.e, vec2<i32>(u_input.d.x, -22312i), arg_0, u_input.c), global0.c.x, vec3<bool>(false, false, true))))), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -2147483647i), arg_0.xw, u_input.d.zz)), arg_0, u_input.e), _wgslsmith_dot_vec3_u32(global0.e.b, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, global0.b, u_input.c), select(global0.e.b, global0.c.wyz, true)))), !vec3<bool>(-6332i >= arg_0.x, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a, var_0.a.x, -1000f)))))), var_0.c.e ^ firstLeadingBit(var_0.d), Struct_3(func_5(_wgslsmith_sub_i32(~22787i, ~u_input.b), 422f, Struct_2(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), 43195u, global0.c, _wgslsmith_sub_i32(-2147483647i, arg_1), Struct_1(global0.b, global0.e.b))), var_0.c.b, vec2<i32>(-1i) * -(vec2<i32>(6091i, 9293i) >> (vec2<u32>(u_input.c, u_input.e) % vec2<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(var_0.c.d.x, -7439i, 17944i, 0i), ~firstTrailingBit(global0.c.x >> (var_0.d % 32u))), func_2(Struct_4(var_0.a, func_2(Struct_4(vec3<f32>(var_0.a.x, -858f, var_0.a.x), 37849u, Struct_3(Struct_1(global0.c.x, vec3<u32>(var_0.b, global0.b, u_input.e)), var_0.c.a, var_0.c.c, var_0.c.d, 4294967295u), 14966u, var_0.e), arg_2.x, Struct_3(global0.e, var_0.c.b, u_input.d.wz, vec4<i32>(arg_1, arg_0.x, u_input.b, -2147483647i), 48493u), Struct_4(var_0.a, 9737u, var_0.c, 0u, var_0.e)).a, var_0.c, global0.e.a, var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -571f), Struct_3(var_0.c.a, var_0.c.b, vec2<i32>(arg_0.x, u_input.b), _wgslsmith_add_vec4_i32(arg_0, vec4<i32>(arg_0.x, 3999i, global0.d, 24299i)), _wgslsmith_mod_u32(global0.e.b.x, global0.c.x)), Struct_4(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_mult_u32(global0.e.b.x, var_0.d), var_0.c, ~u_input.c, vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x))).a & _wgslsmith_mult_u32(77963u, ~func_2(Struct_4(vec3<f32>(global0.a, arg_2.x, arg_2.x), var_0.b, Struct_3(var_0.c.b, Struct_1(31159u, global0.c.www), vec2<i32>(var_0.c.c.x, 0i), u_input.d, 0u), global0.e.a, vec3<bool>(var_0.e.x, false, true)), -145f, var_0.c, Struct_4(var_0.a, 0u, Struct_3(Struct_1(var_0.b, global0.e.b), Struct_1(39299u, vec3<u32>(u_input.c, u_input.e, 32456u)), vec2<i32>(global0.d, var_0.c.d.x), arg_0, 4294967295u), global0.e.b.x, vec3<bool>(true, false, var_0.e.x))).b.x), !select(select(vec3<bool>(var_0.e.x, true, false), var_0.e, all(vec2<bool>(true, false))), select(vec3<bool>(var_0.e.x, var_0.e.x, true), vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), vec3<bool>(false, true, false)), all(vec4<bool>(var_0.e.x, true, true, var_0.e.x))));
    let var_2 = _wgslsmith_dot_vec4_i32(select(max(vec4<i32>(1i, var_0.c.d.x, global0.d, arg_1), _wgslsmith_mod_vec4_i32(var_1.c.d, vec4<i32>(-1i, 8610i, -2147483647i, 61014i))), vec4<i32>(abs(0i), global0.d, _wgslsmith_mult_i32(var_1.c.c.x, 41857i), ~1i), vec4<bool>(var_1.e.x | var_1.e.x, var_0.e.x, any(vec4<bool>(var_1.e.x, false, false, var_0.e.x)), false)), vec4<i32>(~_wgslsmith_mod_i32(global0.d, u_input.d.x), global0.d, u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c.d, vec4<i32>(var_1.c.d.x, -1i, 2147483647i, 14001i)), var_1.c.d))) ^ 1i;
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1897f)))), ~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(1u, var_1.d)), countOneBits(~global0.c.zw)), vec4<u32>(abs(16259u), max(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.a, 4294967295u, 1u, 84818u), vec4<u32>(var_0.d, 1u, var_1.b, var_0.d))), 1u), func_5(var_1.c.d.x, _wgslsmith_f_op_f32(ceil(1f)), Struct_2(var_0.a.x, 4294967295u, global0.c << (vec4<u32>(var_1.c.b.a, 19395u, 33796u, 1u) % vec4<u32>(32u)), var_1.c.c.x >> (u_input.c % 32u), func_2(Struct_4(vec3<f32>(-169f, global0.a, -660f), u_input.c, Struct_3(var_1.c.b, Struct_1(1u, var_1.c.a.b), arg_0.zy, u_input.d, global0.e.b.x), 12717u, var_0.e), global0.a, var_1.c, Struct_4(vec3<f32>(-421f, var_1.a.x, global0.a), global0.e.b.x, var_0.c, 0u, var_0.e)))).a, 4294967295u & _wgslsmith_sub_u32(9439u, u_input.e)), _wgslsmith_mult_i32(global0.d, firstLeadingBit(min(var_2, 53309i))), func_5(firstLeadingBit(_wgslsmith_mult_i32(arg_1 << (14336u % 32u), u_input.d.x ^ -34906i)), var_0.a.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) * _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x))), _wgslsmith_dot_vec3_u32(~var_1.c.a.b, vec3<u32>(1u, 52662u, var_0.c.e)), max(global0.c << (global0.c % vec4<u32>(32u)), global0.c), ~(-1i), Struct_1(firstTrailingBit(17014u), abs(vec3<u32>(var_0.c.e, 4294967295u, 33576u))))));
    var_0 = Struct_4(var_1.a, ~countOneBits(min(4294967295u, global0.b) | u_input.c), var_1.c, var_3.b, var_1.e);
    return ~global0.e.a;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~4294967295u;
    var var_1 = -reverseBits(arg_2.d.xxz);
    var var_2 = u_input.d.wwx;
    global0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(719f)))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.e, 4294967295u), vec2<u32>(global0.c.x, var_0))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a ^ arg_2.a.b.x, arg_0.x), arg_2.a.b.zx), vec4<u32>(u_input.e, global0.e.b.x, (~global0.b ^ 68419u) >> (~global0.e.a % 32u), 151866u), -4051i, func_5(-1i, _wgslsmith_f_op_f32(-global0.a), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -989f))), 26963u, _wgslsmith_div_vec4_u32(~global0.c, global0.c), max(var_2.x, abs(8849i)), arg_2.a)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, -624f, -1000f)) * vec3<f32>(arg_1.x, -1299f, -534f)))), arg_1.yxw)), reverseBits(arg_2.a.a), arg_2, ~64598u, select(select(vec3<bool>(global0.a > global0.a, arg_1.x < global0.a, any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !all(vec2<bool>(false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec4<bool>(true, false, true, false))), !vec3<bool>(any(vec2<bool>(false, false)), arg_2.d.x > -2147483647i, true)));
    return Struct_2(_wgslsmith_f_op_f32(-1375f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_1.wwz, Struct_2(global0.a, 0u, vec4<u32>(23961u, var_3.c.e, 0u, 75316u), var_3.c.c.x, global0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, var_3.a.x, var_3.a.x) + arg_1)))))), 26129u, vec4<u32>(var_0, min(~var_3.d, 88019u), ~28052u, var_3.d), _wgslsmith_dot_vec4_i32(~arg_2.d, -vec4<i32>(i32(-1i) * -2147483647i, min(u_input.d.x, var_1.x), var_1.x, ~17508i)), arg_2.b);
}

fn func_7(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, ~u_input.e), _wgslsmith_mult_vec2_u32(arg_0.e.b.yy, firstLeadingBit(~global0.c.zy)), global0.c.ww) << (select(arg_0.c.xz, ~vec2<u32>(global0.b, ~arg_0.c.x), !any(vec3<bool>(true, true, true))) % vec2<u32>(32u));
    let var_1 = !select(select(vec4<bool>(arg_0.a == arg_0.a, any(vec2<bool>(true, true)), select(false, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), all(vec3<bool>(false, true, true))), all(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, all(vec2<bool>(true, true)), select(true, false, false), any(vec2<bool>(false, false))), !select(true, false, false)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.a)) * global0.a))));
    var_2 = global0.a;
    var_2 = arg_0.a;
    return StorageBuffer(_wgslsmith_mod_u32(abs(firstLeadingBit(0u)) << (u_input.e % 32u), ~(~u_input.c | 0u)), -u_input.d.xyz & vec3<i32>(global0.d, _wgslsmith_add_i32(-1i | global0.d, -21347i), -firstTrailingBit(8088i)), arg_0.c, arg_0.d | 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(vec2<u32>(~func_1(u_input.d, u_input.d.x, vec2<f32>(global0.a, global0.a)), ~u_input.c & 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, 2282f, -423f, global0.a))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a, 1202f, global0.a, global0.a))))), Struct_3(func_5(i32(-1i) * -71121i, 321f, Struct_2(-465f, 17675u, vec4<u32>(global0.e.b.x, 18957u, 4294967295u, 4294967295u), u_input.a, Struct_1(4294967295u, global0.e.b))), global0.e, u_input.d.wx & u_input.d.yw, reverseBits(u_input.d), 1u)));
}


struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 0u, 1u);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: u32;

var<private> global4: f32 = -945f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<bool>) -> i32 {
    var var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1564f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894f - 349f) + _wgslsmith_f_op_f32(arg_1.x + 197f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(885f, arg_1.x, -1176f, 621f))), arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1109f, 1000f, -222f, -923f) + vec4<f32>(arg_1.x, -322f, -237f, arg_1.x))))))));
    global2 = arg_0;
    global1 = arg_0;
    return arg_0.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.zy, _wgslsmith_clamp_vec2_u32(global0.wy, vec2<u32>(22317u, global0.x | 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 0u), _wgslsmith_div_vec2_u32(global0.zz, vec2<u32>(4294967295u, 35176u))))), global0.x);
    global2 = Struct_1(reverseBits(vec2<i32>(global2.c, _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_add_vec3_i32(u_input.a.wzx, u_input.a.zxx)))), true, func_3(Struct_1(global1.a, global1.d, -3181i, global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, _wgslsmith_f_op_f32(abs(905f)), _wgslsmith_f_op_f32(598f + 140f), 228f)), vec2<bool>(!all(vec4<bool>(global2.b, false, global1.b, false)), any(!vec4<bool>(global2.d, global1.b, global2.b, global1.b)))), false);
    global0 = max(~(~(~vec4<u32>(global0.x, 20085u, var_0, var_0))), ~(~(~vec4<u32>(0u, 1u, 7839u, global0.x)))) >> (vec4<u32>(firstLeadingBit(~(~global0.x)), _wgslsmith_sub_u32(select(countOneBits(4294967295u), global0.x, true), 0u), var_0, 4294967295u | (_wgslsmith_mult_u32(var_0, var_0) | _wgslsmith_div_u32(1u, global0.x))) % vec4<u32>(32u));
    global3 = var_0;
    global4 = _wgslsmith_f_op_f32(max(-102f, _wgslsmith_div_f32(1000f, -470f)));
    return Struct_1(u_input.c.yz, false, global1.c, global1.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = vec4<u32>(22297u, ~8509u, reverseBits(0u), 0u);
    global2 = arg_2;
    global0 = abs(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.x, 24620u, arg_1), _wgslsmith_sub_vec4_u32(vec4<u32>(54419u, 0u, 70805u, 12251u), vec4<u32>(0u, 0u, 4294967295u, arg_0.x))), ~vec4<u32>(global0.x, arg_1, 4294967295u, arg_1) << (vec4<u32>(0u, 1u, 27306u, arg_1) % vec4<u32>(32u))));
    global2 = func_2();
    var var_0 = !any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(global2.b, false, arg_2.d), vec3<bool>(global1.b, false, global2.b)), func_2().b), vec3<bool>(true, false, false), !arg_2.b));
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(vec3<u32>(_wgslsmith_add_u32(min(~global0.x, global0.x << (global0.x % 32u)), firstTrailingBit(1u)), ~(global0.x << (93633u % 32u)) ^ ~global0.x, ~12412u), global0.x, func_2());
    global1 = func_4(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, global0.x, 9485u), global0.xxx, global0.ywx)) | _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(global0.x, global0.x, global0.x)), vec3<u32>(~global0.x, ~global0.x, global0.x)), 41923u, func_4(_wgslsmith_add_vec3_u32(global0.wxz, vec3<u32>(~global0.x, global0.x & 0u, _wgslsmith_mod_u32(14527u, global0.x))), reverseBits(reverseBits(23852u)), Struct_1(vec2<i32>(u_input.c.x, -5719i & var_0.c), !global2.d, ~2147483647i | (17464i | global2.a.x), true)));
    var var_1 = select(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, 25537i, 31056i, global2.a.x)), vec4<i32>(_wgslsmith_mult_i32(var_0.c, global2.a.x), -40821i, u_input.a.x, func_3(var_0, vec4<f32>(-1490f, -238f, -139f, 537f), vec2<bool>(var_0.d, false)))), abs(u_input.a), !vec4<bool>(false, any(vec3<bool>(global1.b, var_0.b, global1.b)), global2.d, false)) ^ u_input.a;
    var var_2 = var_0;
    var var_3 = true;
    return Struct_2(!var_0.d, func_2(), Struct_1(_wgslsmith_mod_vec2_i32(var_1.wz, vec2<i32>(_wgslsmith_add_i32(var_0.a.x, var_1.x), var_0.c & 0i)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, 11174u), vec4<u32>(0u, global0.x, global0.x, global0.x)) <= _wgslsmith_mod_u32(18615u >> (0u % 32u), 1u), u_input.b, false), Struct_1(var_2.a, func_2().b, 0i, !(global1.d == func_4(global0.yxw, global0.x, var_0).d)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global2 = func_1().d;
    global4 = 411f;
    var var_0 = func_1();
    global1 = Struct_1(abs(func_2().a), true, -(18389i >> (0u % 32u)), global1.b);
    var var_1 = _wgslsmith_f_op_f32(ceil(-662f)) == _wgslsmith_div_f32(-1671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1260f + 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(692f)))));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(max(firstTrailingBit(-1i), func_5(global0.x, func_1(), func_1())), 2147483647i, 1i, -32558i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f + -689f) * _wgslsmith_f_op_f32(max(456f, 1607f)))))));
    global3 = reverseBits(global0.x);
    var var_2 = vec3<i32>(~_wgslsmith_div_i32(countOneBits(u_input.a.x), global1.a.x & u_input.a.x) & 2147483647i, -(reverseBits(abs(u_input.a.x)) >> (global0.x % 32u)), 0i);
    global2 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(var_0.wyy, vec3<i32>(func_3(Struct_1(global2.a, global2.b, var_0.x, global1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1354f, 2078f, 888f, 515f)), !vec2<bool>(true, global1.b)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_0.x, var_0.x, 1i), u_input.a), _wgslsmith_sub_i32(var_0.x, global2.c), global1.b), var_0.x)));
}


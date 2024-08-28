struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-486f, -1000f, -289f), vec3<f32>(373f, 1994f, 316f), vec3<f32>(-1444f, 1443f, -1576f), vec3<f32>(1451f, -407f, 1556f), vec3<f32>(1702f, 772f, -745f), vec3<f32>(-454f, -896f, -386f), vec3<f32>(-1640f, 361f, 1263f), vec3<f32>(-352f, 1364f, 397f), vec3<f32>(785f, -747f, -240f));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1 = Struct_1(1u, vec4<i32>(0i, -1i, -39243i, 12202i), vec2<u32>(1u, 68571u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    global1 = vec3<i32>(abs(min(~(global4.b.x & u_input.c), 1i)), -2147483647i, ~countOneBits(u_input.c));
    let var_0 = abs(-_wgslsmith_add_i32(17994i, arg_1.b.x));
    let var_1 = ~(~(~_wgslsmith_mod_u32(firstLeadingBit(arg_1.c.x), _wgslsmith_mod_u32(global4.c.x, 1u))));
    var var_2 = min(61785u, 4294967295u);
    let var_3 = var_0;
    return !(!vec3<bool>(arg_1.a < global4.a, global3.x, true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(u_input.b, ~vec4<i32>(1i, _wgslsmith_dot_vec4_i32(min(arg_1.b, global4.b), global4.b), select(arg_2.x, 0i, global3.x) ^ u_input.c, -(i32(-1i) * -1i)), arg_1.c);
    let var_1 = arg_1;
    var var_2 = firstLeadingBit(2147483647i);
    let var_3 = arg_1;
    let var_4 = min(abs(0u), ~abs(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.a, u_input.d, 14802u), min(36394u, 67447u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_1.a, var_1.a, 0u), vec4<u32>(16419u, 39175u, var_1.c.x, 4294967295u)))));
    return countOneBits(var_3.b.x);
}

fn func_2() -> Struct_1 {
    global4 = Struct_1(global4.a, firstTrailingBit(abs(global4.b)), global4.c);
    let var_0 = Struct_1(_wgslsmith_add_u32(1u, ~_wgslsmith_mult_u32(u_input.d >> (4294967295u % 32u), 0u)), vec4<i32>(-u_input.c, func_4(select(select(vec3<bool>(false, global3.x, true), vec3<bool>(global3.x, global3.x, global3.x), global3.x), func_3(vec3<u32>(global4.c.x, u_input.b, 62251u), Struct_1(53625u, vec4<i32>(-1i, u_input.c, 1i, u_input.c), global4.c), vec2<f32>(-466f, 467f)), func_3(vec3<u32>(u_input.b, 1u, 0u), Struct_1(1u, global4.b, global4.c), vec2<f32>(273f, 361f))), Struct_1(1u, -global4.b, vec2<u32>(23769u, u_input.b)), vec3<i32>(_wgslsmith_sub_i32(185i, -41197i), _wgslsmith_dot_vec3_i32(global4.b.xyy, vec3<i32>(global1.x, 1i, 32806i)), -u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, 381f, -561f, 1268f))), firstLeadingBit(~(-1416i)), _wgslsmith_sub_i32(global1.x, _wgslsmith_div_i32(_wgslsmith_add_i32(global4.b.x, 0i), _wgslsmith_mod_i32(u_input.c, global1.x)))), vec2<u32>(min(countOneBits(~u_input.d), ~(~u_input.b)), u_input.b));
    global0 = array<vec3<f32>, 18>();
    var var_1 = global3.x;
    var var_2 = Struct_1(85280u, var_0.b, max(~vec2<u32>(~84094u, ~u_input.b), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c, ~var_0.c), global4.c)));
    return var_0;
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0;
    global1 = max(var_0.b.xzx, ~_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, -64687i, global4.b.x), vec3<i32>(-44347i, -41629i, u_input.c))) << ((min(~vec3<u32>(4294967295u, u_input.b, 40256u), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, arg_0.a), vec3<u32>(global4.a, arg_0.c.x, 0u)), ~vec3<u32>(11383u, 4294967295u, 1u))) >> (vec3<u32>(~(~arg_0.a), _wgslsmith_sub_u32(1u, max(u_input.a, var_0.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global4.c.x, var_0.c.x, u_input.d), vec4<u32>(58444u, global4.c.x, arg_0.c.x, 17899u)), 31753u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = Struct_1(~(~global4.a), ~arg_0.b, ~var_0.c);
    var var_1 = !(!(select(true, u_input.c > 36717i, true) || (any(vec4<bool>(false, global3.x, global3.x, true)) | global3.x)));
    let var_2 = global1.x;
    return -(var_0.b ^ _wgslsmith_sub_vec4_i32(global4.b, vec4<i32>(u_input.c, -10072i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(arg_0.b.x, var_0.b.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> f32 {
    global4 = Struct_1(_wgslsmith_div_u32(global4.c.x, arg_0.x) | u_input.a, global4.b, vec2<u32>(11300u, firstLeadingBit(4294967295u)));
    let var_0 = func_5(func_2());
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c, -(~(-1i)), ~var_0.x), _wgslsmith_dot_vec4_i32((global4.b << (vec4<u32>(global4.a, 4294967295u, global4.a, 1u) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(arg_0, arg_0, arg_0) % vec4<u32>(32u)), countOneBits(~vec4<i32>(-33192i, var_0.x, 38779i, 44370i))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1279f * -339f), _wgslsmith_f_op_f32(floor(598f))))), -947f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, -1292f) - vec2<f32>(-1035f, -415f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(464f, 1659f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-397f, 146f), vec2<f32>(-591f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1570f, -1000f) - vec2<f32>(2742f, -1352f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 477f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1368f, -713f))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-343f, _wgslsmith_f_op_f32(step(-1042f, 1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(789f, -677f), vec2<f32>(-1663f, 1167f), global3.x))))))));
    return var_3.x;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global2 = array<vec3<f32>, 9>();
    global1 = max(arg_1.b.zyw << (select(vec3<u32>(u_input.b, ~0u, arg_1.a), vec3<u32>(select(22248u, 23462u, global3.x), ~arg_1.c.x, ~23004u), !(!vec3<bool>(false, global3.x, global3.x))) % vec3<u32>(32u)), arg_1.b.wzz);
    let var_1 = Struct_1(1u, max(~arg_1.b, global4.b), vec2<u32>(43845u, var_0.a));
    var var_2 = !select(vec2<bool>(true, true), !select(!vec2<bool>(global3.x, global3.x), select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x), vec2<bool>(false, false)), global3.x), !vec2<bool>(any(vec4<bool>(global3.x, false, true, global3.x)), any(vec2<bool>(true, true))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, select(any(!(!vec4<bool>(global3.x, global3.x, false, global3.x))), false, global3.x), true);
    global0 = array<vec3<f32>, 18>();
    let var_1 = func_6(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(abs(vec4<u32>(43246u, global4.c.x, global4.a, 1u)), 11352u >> (global4.a % 32u), true)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1110f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f))), _wgslsmith_f_op_f32(172f + -500f)), Struct_1(u_input.a >> (~1u % 32u), vec4<i32>(func_4(vec3<bool>(global3.x, global3.x, global3.x), Struct_1(u_input.d, global4.b, vec2<u32>(4294967295u, u_input.a)), vec3<i32>(global1.x, 3073i, 34199i), vec4<f32>(-1138f, 1379f, -113f, -1587f)) & (i32(-1i) * -1i), 1i, global4.b.x, global1.x), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 48681u), _wgslsmith_mod_vec2_u32(vec2<u32>(global4.a, 69383u), global4.c)), _wgslsmith_add_vec2_u32(vec2<u32>(global4.a, u_input.d), ~global4.c))));
    let var_2 = 803f;
    let var_3 = !global3.x;
    global2 = array<vec3<f32>, 9>();
    let var_4 = Struct_1(global4.a, firstTrailingBit(_wgslsmith_sub_vec4_i32(global4.b, var_1.b)), vec2<u32>(max(max(14383u, var_1.c.x), _wgslsmith_mod_u32(var_1.a, var_1.c.x)) | (u_input.b << (1u % 32u)), ~var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(2934u, 28333u, 12099u, 0u)) >> (~(~vec4<u32>(u_input.a, 4294967295u, var_1.c.x, var_1.a)) % vec4<u32>(32u)), vec4<u32>(var_4.c.x, 1u, ~1u, ~4778u)));
}


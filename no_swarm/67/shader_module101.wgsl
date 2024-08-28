struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(1000f, 1275f, 1000f), vec3<f32>(-1388f, 526f, 800f), vec3<f32>(279f, -1222f, -169f), vec3<f32>(-202f, 119f, 809f));

var<private> global1: Struct_2 = Struct_2(false, -272f, false, -2256f);

var<private> global2: vec4<u32> = vec4<u32>(19386u, 0u, 32440u, 18308u);

var<private> global3: array<vec3<bool>, 8>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = array<vec3<f32>, 4>();
    return true;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    var var_0 = select(_wgslsmith_div_vec3_i32(vec3<i32>(abs(2147483647i), ~0i, 23276i | _wgslsmith_dot_vec3_i32(arg_0, arg_0)), vec3<i32>(u_input.c, 2147483647i, -1i)), vec3<i32>(~_wgslsmith_div_i32(-117568i, -36308i), 1i, ~u_input.c), !vec3<bool>(firstTrailingBit(arg_0.x) == u_input.c, global1.c, (86123u < u_input.d.x) & false));
    var_0 = ~(~arg_0) & -(abs(~arg_0) | arg_0);
    let var_1 = reverseBits(vec3<u32>(u_input.b >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 35298u, u_input.b)), ~vec3<u32>(global2.x, global2.x, u_input.b)) % 32u), ~reverseBits(global2.x), _wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1, 4294967295u), vec4<u32>(u_input.b, 1u, 3881u, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 5753u, u_input.d.x, global2.x)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global2.x, 4294967295u), u_input.a)))));
    let var_2 = Struct_1(global2.xw);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-920f)) - _wgslsmith_f_op_f32(abs(global1.d))), -1095f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(679f))), -599f, global1.b));
    return var_3.x;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global1 = arg_0;
    var var_0 = 853f;
    return Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(15816u, global2.x)), ~u_input.d), abs(global2.x)) <= ((u_input.d.x >> (4421u % 32u)) | u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c, 17485i, -1i), ~1u)))), true, arg_0.b);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<bool> {
    global1 = func_2(func_2(arg_1));
    global1 = Struct_2(true, -400f, !(abs(u_input.d.x >> (4294967295u % 32u)) <= 0u), 1000f);
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(abs(~max(vec2<i32>(u_input.c, 43926i), vec2<i32>(u_input.c, 1335i))), max(~(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(u_input.d.x, 20451u) % vec2<u32>(32u))), abs(max(vec2<i32>(u_input.c, -29792i), vec2<i32>(u_input.c, 2147483647i))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, _wgslsmith_add_i32(30984i, u_input.c >> (1u % 32u))), _wgslsmith_add_i32(u_input.c, u_input.c)), -u_input.c, u_input.c);
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.wzx, vec3<i32>(_wgslsmith_clamp_i32(7121i, u_input.c, u_input.c), max(var_0.x, var_0.x), -1i)), min(var_0.wzz, (var_0.yxx >> (vec3<u32>(39457u, 4294967295u, 11695u) % vec3<u32>(32u))) << (global2.yzz % vec3<u32>(32u)))), 8958u));
    let var_2 = !(!(!(!select(vec4<bool>(false, arg_1.c, false, false), vec4<bool>(false, arg_1.c, arg_0, global1.c), vec4<bool>(false, true, false, arg_1.c)))));
    return var_2.wz;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = func_2(func_2(Struct_2(global1.a, 1289f, (arg_2.x & true) & !global1.c, global1.d)));
    let var_1 = max(global2.zx, vec2<u32>(32806u, arg_0));
    let var_2 = _wgslsmith_f_op_f32(step(var_0.d, var_0.d));
    let var_3 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~(~0u), min(arg_0, ~50178u)), u_input.d));
    global0 = array<vec3<f32>, 4>();
    return select(!(!arg_2), !select(vec2<bool>(func_1(-13542i, var_3), true), arg_2, vec2<bool>(func_1(-7581i, Struct_1(var_1)), false)), !select(!(!vec2<bool>(true, var_0.c)), !arg_2, arg_2.x));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<vec3<f32>, 4>();
    global1 = func_2(func_2(Struct_2(!arg_0, _wgslsmith_f_op_f32(abs(-656f)), func_1(reverseBits(1i), arg_1), global1.d)));
    global2 = ~select(vec4<u32>(firstLeadingBit(1u), arg_2.x, reverseBits(countOneBits(arg_1.a.x)), 68595u), select(~u_input.a, _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.d.x, arg_2.x, 42876u)), vec4<u32>(arg_2.x, u_input.d.x, global2.x, 19221u), u_input.a | u_input.a), all(!vec2<bool>(arg_0, true))), !(!(!vec4<bool>(true, true, false, global1.a))));
    var var_0 = func_2(Struct_2(select(global1.c, true, u_input.d.x <= arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d))), -1000f, true)), all(select(select(global3[_wgslsmith_index_u32(arg_2.x, 8u)], vec3<bool>(false, arg_0, global1.c), vec3<bool>(global1.a, true, global1.a)), global3[_wgslsmith_index_u32(4294967295u, 8u)], select(vec3<bool>(true, global1.a, false), global3[_wgslsmith_index_u32(33564u, 8u)], vec3<bool>(true, false, global1.a)))), global1.b));
    var var_1 = Struct_1(global2.ww);
    return Struct_1(~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(any(func_5(firstLeadingBit(u_input.a.x) & 17503u, vec4<i32>(-16424i, -1i, u_input.c, -20271i) & vec4<i32>(u_input.c, 2147483647i, 2147483647i, u_input.c), func_4(func_1(-15716i, Struct_1(vec2<u32>(global2.x, u_input.d.x))), func_2(Struct_2(true, -695f, false, 741f)), vec3<u32>(21855u, 4294967295u, 0u)))), Struct_1(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(78309u, global2.x, u_input.d.x, u_input.a.x), ~u_input.a))), max(vec2<u32>(u_input.b, ~u_input.d.x), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 0u), u_input.d), _wgslsmith_sub_u32(global2.x, 0u))), -vec4<i32>(i32(-1i) * -52790i, u_input.c, (i32(-1i) * -3149i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.c), vec3<i32>(-1i, -1i, -2147483647i)), u_input.c));
    var var_1 = func_6(global1.c, func_6(global1.a, Struct_1(~_wgslsmith_clamp_vec2_u32(var_0.a, vec2<u32>(9261u, 0u), global2.yw)), global2.zy, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -2147483647i, u_input.c) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, 0i), vec4<i32>(2147483647i, 25766i, u_input.c, -1i))) >> (u_input.a % vec4<u32>(32u))), var_0.a << (vec2<u32>(0u, ~(~global2.x)) % vec2<u32>(32u)), min(vec4<i32>(6639i, u_input.c, u_input.c, 0i) ^ abs(~vec4<i32>(u_input.c, 2147483647i, -2147483647i, 35681i)), vec4<i32>(-26726i, -15610i, ~u_input.c, -1i)));
    global1 = Struct_2(global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d + 206f), -1000f, false)), select(global1.a | global1.a, !(!any(vec2<bool>(global1.a, global1.a))), true), -1131f);
    var_1 = func_6(global1.a && ((_wgslsmith_div_i32(u_input.c, u_input.c) > u_input.c) == all(!vec4<bool>(global1.a, true, false, global1.a))), Struct_1(vec2<u32>(9289u, var_0.a.x)), global2.wy, ((vec4<i32>(-1000i, u_input.c, u_input.c, u_input.c) | (vec4<i32>(u_input.c, -2147483647i, u_input.c, 1i) >> (vec4<u32>(49852u, 1u, global2.x, u_input.b) % vec4<u32>(32u)))) & firstTrailingBit(vec4<i32>(-21359i, 2147483647i, u_input.c, u_input.c) & vec4<i32>(-40110i, -1i, 2147483647i, u_input.c))) ^ ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(countOneBits(46092u) >> ((u_input.d.x ^ var_1.a.x) % 32u), 4u)] + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.d.x, 1u), vec3<u32>(4294967295u, u_input.b, 4294967295u)), u_input.a.zwy)), 4u)])));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(global2.x, 4u)], vec4<i32>(u_input.c & u_input.c, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.c, 56922i, -2147483647i)), vec3<i32>(1i, ~u_input.c, max(0i, u_input.c))), -1i, -29653i));
}


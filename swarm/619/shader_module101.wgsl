struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec4<f32>, 4>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec3<i32>, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> vec2<i32> {
    let var_0 = ~global2.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.a, 4u)]);
    var var_2 = -u_input.d.zw | (u_input.d.zx << (select(~(u_input.c.wz & vec2<u32>(1u, 56524u)), vec2<u32>(countOneBits(27713u), reverseBits(u_input.e.x)), true) % vec2<u32>(32u)));
    global3 = array<vec3<i32>, 1>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1108f, var_1.x, -171f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1088f, -831f, 1581f, var_1.x) - global1[_wgslsmith_index_u32(u_input.c.x, 4u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 4u)])))))));
    return vec2<i32>(var_2.x, u_input.d.x) & _wgslsmith_add_vec2_i32(u_input.d.wy, u_input.d.wz);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_2 {
    global0 = array<i32, 32>();
    global1 = array<vec4<f32>, 4>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, -1290f) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(398f, -998f) - vec2<f32>(855f, -183f)))))), true, 1897f, Struct_1(func_2().x, any(vec3<bool>(true, true, true)) || true, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -196f, 179f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(229f, -842f, 1001f))), true))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    global1 = array<vec4<f32>, 4>();
    var var_0 = vec2<i32>(0i, u_input.d.x);
    global0 = array<i32, 32>();
    var var_1 = func_3(countOneBits(_wgslsmith_mod_vec2_i32(func_2(), u_input.d.yw)), vec4<u32>(~4294967295u, max(_wgslsmith_mult_u32(arg_1.a.c, _wgslsmith_div_u32(11388u, u_input.e.x)), arg_1.a.c), 0u, arg_1.a.c));
    let var_2 = Struct_4(arg_1.a.a, !(var_1.d.b || false), ~_wgslsmith_sub_u32(0u, 0u), arg_1.a.e, func_3(_wgslsmith_mod_vec2_i32(select(countOneBits(u_input.d.wy), -u_input.d.xz, vec2<bool>(true, arg_1.a.d.b)), vec2<i32>(-1i) * -vec2<i32>(var_1.d.a, -1i)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), arg_1.a.c, _wgslsmith_mult_u32(31544u, u_input.e.x))));
    return Struct_3(arg_1.b, vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c, 4294967295u, 936u, 17984u), u_input.c ^ vec4<u32>(u_input.c.x, 0u, var_2.c, u_input.a)) & arg_1.a.c, 32u)], 2147483647i, -_wgslsmith_div_i32(~9763i, func_3(u_input.d.ww, vec4<u32>(18995u, var_2.c, var_2.c, arg_1.a.c)).d.a)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> vec2<f32> {
    global3 = array<vec3<i32>, 1>();
    var var_0 = u_input.e;
    var var_1 = select(select(!(!vec2<bool>(arg_0.a.c, false)), !vec2<bool>(true, all(vec4<bool>(false, arg_0.a.c, false, true))), vec2<bool>(all(select(vec4<bool>(arg_0.a.c, false, arg_0.a.c, false), vec4<bool>(arg_0.a.b, arg_0.a.c, arg_0.a.b, false), false)), !(global2.x < -2147483647i))), select(vec2<bool>(func_3(select(vec2<i32>(global2.x, arg_0.a.a), arg_2.yx, vec2<bool>(arg_0.a.c, true)), vec4<u32>(6843u, arg_1, 0u, 0u) | u_input.e).b, arg_0.a.b), select(!(!vec2<bool>(arg_0.a.c, arg_0.a.c)), select(vec2<bool>(true, true), select(vec2<bool>(arg_0.a.c, arg_0.a.c), vec2<bool>(arg_0.a.c, true), true), false), arg_0.a.c), true), false);
    let var_2 = _wgslsmith_clamp_u32((4294967295u >> (firstTrailingBit(_wgslsmith_mult_u32(1u, var_0.x)) % 32u)) ^ ~_wgslsmith_div_u32(firstTrailingBit(42878u), _wgslsmith_mult_u32(arg_1, 0u)), 0u, _wgslsmith_dot_vec2_u32(abs(var_0.ww), vec2<u32>(_wgslsmith_sub_u32(4294967295u, abs(arg_1)), _wgslsmith_dot_vec3_u32(var_0.xzy, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, arg_1, u_input.c.x), var_0.wyy, vec3<u32>(1u, var_0.x, 32273u))))));
    let var_3 = -381f;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(arg_0.a.d.xy, arg_0.a.d.zz)), arg_0.a.d.zx, select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), false)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3, var_3))), _wgslsmith_f_op_vec2_f32(-arg_0.a.d.zz)))), arg_0.a.d.yz, any(!vec2<bool>(var_1.x, all(vec2<bool>(arg_0.a.b, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.e.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, -604f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, -1000f) - vec2<f32>(-282f, 1231f)))), _wgslsmith_f_op_vec2_f32(func_4(func_1(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(34632u, 4u)]), Struct_5(Struct_4(vec4<bool>(true, false, true, true), false, 0u, Struct_2(vec2<f32>(471f, 1116f), true, -881f, Struct_1(global2.x, false, false, vec3<f32>(-1344f, 600f, 1372f))), Struct_2(vec2<f32>(860f, 717f), false, 157f, Struct_1(-23451i, false, false, vec3<f32>(-617f, 597f, 1763f)))), Struct_1(u_input.d.x, false, true, vec3<f32>(-986f, -1331f, -778f)), -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(79021i, -25547i, 19352i), u_input.d.zyw)), ~var_0, vec3<i32>(-2147483647i, -1257i, u_input.b) << (u_input.e.xwz % vec3<u32>(32u)), func_3(u_input.d.zx, ~vec4<u32>(u_input.e.x, u_input.a, u_input.e.x, u_input.c.x)).d.d.x)))), true, _wgslsmith_f_op_vec2_f32(func_4(Struct_3(func_1(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_0, 4u)] - global1[_wgslsmith_index_u32(u_input.a, 4u)]), Struct_5(Struct_4(vec4<bool>(false, false, true, true), true, 0u, Struct_2(vec2<f32>(1675f, -123f), false, -699f, Struct_1(3066i, true, true, vec3<f32>(755f, 602f, -897f))), Struct_2(vec2<f32>(573f, -303f), false, 871f, Struct_1(2147483647i, false, false, vec3<f32>(905f, 177f, -302f)))), Struct_1(39i, true, false, vec3<f32>(-204f, -206f, 1300f)), -3124i), 2147483647i).a, u_input.d.zww), min(~u_input.c.x, _wgslsmith_mod_u32(~0u, u_input.c.x)), vec3<i32>(7404i, -2147483647i, 41009i), func_3(_wgslsmith_mult_vec2_i32(~u_input.d.ww, -u_input.d.zz), vec4<u32>(var_0, var_0 ^ u_input.c.x, firstTrailingBit(var_0), select(0u, var_0, false))).c)).x, Struct_1(i32(-1i) * -(i32(-1i) * -1i), !select(all(vec3<bool>(true, false, false)), u_input.d.x == global0[_wgslsmith_index_u32(var_0, 32u)], any(vec2<bool>(true, true))), 1i > (u_input.d.x ^ u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-468f, 812f, 1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1151f, 599f, 269f) - vec3<f32>(549f, -661f, -1000f))))));
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.d.ww, firstLeadingBit(~(-u_input.d.xy))) >> (select(vec2<u32>(1u << (_wgslsmith_div_u32(var_0, var_0) % 32u), ~(u_input.c.x << (74237u % 32u))), u_input.c.yw, func_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(42964u, var_0, u_input.e.x), 4u)], Struct_5(Struct_4(vec4<bool>(var_1.d.b, true, true, true), true, u_input.e.x, Struct_2(vec2<f32>(-447f, 480f), true, 237f, var_1.d), Struct_2(var_1.d.d.xx, false, 1390f, var_1.d)), Struct_1(global0[_wgslsmith_index_u32(20073u, 32u)], var_1.d.b, var_1.d.b, var_1.d.d), -1i), -var_1.d.a).b.x != (46193i ^ countOneBits(global0[_wgslsmith_index_u32(var_0, 32u)]))) % vec2<u32>(32u));
    var_2 = u_input.d.yy << (~vec2<u32>(1u, ~(~0u)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_sub_i32(~1i, ~_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(u_input.d.x, ~global0[_wgslsmith_index_u32(var_0, 32u)])));
    let var_4 = Struct_3(func_3(vec2<i32>(~(global2.x | global2.x), -_wgslsmith_div_i32(19439i, -1i)), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(87232u, 14892u, 53945u, 4294967295u)), min(u_input.c, firstLeadingBit(vec4<u32>(4294967295u, var_0, 53648u, var_0))))).d, vec3<i32>(1i >> ((~1u << (u_input.a % 32u)) % 32u), 55222i, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.d.a, 23175i, 0i), vec3<i32>(var_2.x, global2.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(u_input.c.yx, u_input.c.zw));
}


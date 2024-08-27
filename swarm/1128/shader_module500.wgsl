struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, true, vec2<bool>(true, true), Struct_1(true), 1i);

var<private> global1: array<vec3<u32>, 2>;

var<private> global2: array<vec3<f32>, 8>;

var<private> global3: vec2<i32> = vec2<i32>(-34075i, -23052i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global0 = arg_0;
    global0 = arg_0;
    global2 = array<vec3<f32>, 8>();
    var var_0 = Struct_1(!any(select(!vec3<bool>(false, global0.b, false), vec3<bool>(arg_0.c.x, arg_0.d.a, false), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.c.x, true), false))));
    global0 = arg_0;
    return ~(~_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(29812i, -10583i, 3222i, 25895i), vec4<i32>(-41154i, 5667i, global3.x, 24287i)), ~vec4<i32>(arg_0.e, -2147483647i, global0.e, 428i)) << (vec4<u32>(arg_0.a, 20897u, u_input.b, min(41652u ^ u_input.b, ~9047u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    global0 = Struct_2(~1047u, all(arg_1.c.zx), vec2<bool>(global0.b, false), Struct_1(!any(!arg_1.c.yx)), _wgslsmith_div_i32(global3.x, max(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(-15141i, -43357i, arg_2.x, global3.x)), global0.e) >> (~(global0.a & 1u) % 32u)));
    let var_0 = arg_0.x;
    global2 = array<vec3<f32>, 8>();
    global0 = Struct_2(min(arg_1.d.x, ~select(global0.a, arg_1.d.x, global0.d.a)) << (abs(15177u) % 32u), select(all(vec4<bool>(true, global0.d.a, true, all(vec4<bool>(true, global0.b, arg_1.a, global0.b)))), _wgslsmith_sub_u32(u_input.d.x, arg_1.d.x << (4294967295u % 32u)) >= _wgslsmith_mod_u32(min(arg_1.d.x, 51945u), ~0u), true && (u_input.a.x <= (u_input.c & 20953i))), !select(!select(global0.c, arg_1.c.xy, global0.b), select(select(vec2<bool>(false, arg_1.c.x), vec2<bool>(false, global0.c.x), false), vec2<bool>(true, arg_1.b), arg_1.b & arg_1.c.x), true), Struct_1(all(select(vec4<bool>(global0.c.x, arg_1.a, arg_1.c.x, arg_1.a), select(vec4<bool>(arg_1.b, false, true, true), vec4<bool>(arg_1.a, true, global0.c.x, false), vec4<bool>(global0.b, false, global0.d.a, false)), !vec4<bool>(arg_1.a, false, arg_1.c.x, global0.b)))), global3.x);
    let var_1 = Struct_1(global0.d.a);
    return ~global0.a;
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(-min(vec2<i32>(0i, -1i), -u_input.a.yz), u_input.a.zy), -1i);
    var var_1 = 1u | func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(259f, -677f, -1080f, -833f) - vec4<f32>(-610f, 1090f, 137f, -1496f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, 339f, 528f, 654f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(2800f, -1000f, 1197f, -1343f))), arg_0, _wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.x & global3.x, abs(global3.x), -11714i), func_3(Struct_2(arg_0.d.x, global0.d.a, arg_0.c.yx, Struct_1(true), global3.x))));
    var_1 = min(arg_0.d.x, global0.a);
    var var_2 = Struct_1(select(!all(select(vec4<bool>(true, true, arg_0.b, arg_0.c.x), vec4<bool>(true, false, false, true), true)), arg_0.b, all(!arg_0.c.zz)));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1846f, _wgslsmith_f_op_f32(abs(1f)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(542f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(354f, 684f)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1743f, 1316f)) * _wgslsmith_div_f32(-1998f, 473f)))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> vec3<bool> {
    global2 = array<vec3<f32>, 8>();
    global2 = array<vec3<f32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f));
    let var_1 = Struct_2((min(~83435u, ~arg_0.d.x) | 18469u) ^ (4294967295u << (_wgslsmith_mod_u32(u_input.d.x, 4294967295u) % 32u)), false, arg_0.c.zz, Struct_1(any(select(vec4<bool>(arg_0.c.x, arg_0.c.x, global0.b, false), select(vec4<bool>(global0.c.x, arg_0.a, global0.b, global0.c.x), vec4<bool>(arg_0.c.x, false, false, global0.c.x), true), !vec4<bool>(false, false, arg_0.c.x, arg_0.c.x)))), _wgslsmith_mult_i32(global3.x, _wgslsmith_div_i32(-u_input.c, func_3(Struct_2(1u, true, vec2<bool>(true, arg_0.a), global0.d, global0.e)).x) << (0u % 32u)));
    global1 = array<vec3<u32>, 2>();
    return select(select(!(!arg_0.c), vec3<bool>(!global0.d.a, select(func_2(arg_0), var_1.c.x, var_1.e != 1i), arg_0.b), true), arg_0.c, arg_0.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = -616f;
    let var_1 = vec3<bool>(arg_1.a, false, all(func_5(Struct_3(-33380i < arg_0.x, func_2(Struct_3(true, arg_1.a, vec3<bool>(true, global0.b, false), vec4<u32>(4294967295u, global0.a, global0.a, global0.a))), select(vec3<bool>(true, true, false), vec3<bool>(global0.d.a, true, arg_1.a), vec3<bool>(global0.c.x, arg_1.a, false)), ~vec4<u32>(4294967295u, u_input.b, global0.a, u_input.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(413f, 687f))))));
    var var_2 = max(firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, 0i, arg_0.x, u_input.c), vec4<i32>(arg_0.x, -26653i, 2147483647i, 1i) ^ vec4<i32>(global3.x, -21974i, global3.x, -2147483647i))) & u_input.c, -2147483647i);
    return Struct_2(47778u, arg_1.a, !var_1.xx, arg_1, _wgslsmith_dot_vec2_i32(select(arg_0.yy, min(u_input.a.yx, arg_0.xz), false), reverseBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(-7985i, global0.e), vec2<i32>(-4635i, u_input.a.x)))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = arg_0.x;
    let var_1 = vec2<bool>(arg_2.a, func_2(arg_3));
    var var_2 = min(u_input.a.yz, vec2<i32>(arg_1.e, countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3070i, 0i, -26422i, u_input.c), vec4<i32>(-14682i, 2147483647i, -7516i, u_input.a.x)), _wgslsmith_div_i32(global0.e, 11706i)))));
    return vec3<bool>(var_1.x, false, func_5(arg_3, arg_0.x).x & arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(reverseBits(_wgslsmith_clamp_u32(global0.a, global0.a, u_input.d.x)), reverseBits(~_wgslsmith_sub_u32(4294967295u, 1u)), global0.c.x), true || all(global0.c), global0.c, Struct_1(global0.c.x), -1i);
    let var_1 = _wgslsmith_div_i32(global0.e, -29284i);
    let var_2 = all(select(select(func_6(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-562f, 1000f))), func_1(vec3<i32>(global3.x, -32572i, 48403i), global0.d, vec4<f32>(824f, -198f, -1711f, 1000f)), Struct_1(global0.d.a), Struct_3(false, true, vec3<bool>(false, true, true), vec4<u32>(global0.a, u_input.b, u_input.d.x, u_input.b))), vec3<bool>(global3.x > 8692i, any(vec4<bool>(false, false, true, false)), false), all(vec2<bool>(var_0.c.x, var_0.b))), vec3<bool>(global0.b, false, global0.d.a || !global0.b), vec3<bool>(true, false | func_6(vec2<f32>(725f, -419f), Struct_2(103546u, false, vec2<bool>(false, global0.c.x), var_0.d, 18280i), var_0.d, Struct_3(var_0.b, var_0.c.x, vec3<bool>(var_0.b, var_0.c.x, global0.c.x), vec4<u32>(103036u, 4294967295u, var_0.a, u_input.d.x))).x, !(1i > var_0.e))));
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 8u)];
    global0 = Struct_2(func_1(~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), func_1(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, 15895i, global0.e)), func_3(Struct_2(5546u, false, global0.c, Struct_1(var_0.b), global0.e)).x, reverseBits(0i)), func_1(u_input.a, func_1(vec3<i32>(var_0.e, u_input.c, 43732i), global0.d, vec4<f32>(var_3.x, var_3.x, var_3.x, 862f)).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(440f, -563f, -1404f, 552f) - vec4<f32>(var_3.x, -1066f, var_3.x, 1780f))).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 2287f, var_3.x, 1679f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1832f, var_3.x, var_3.x, var_3.x))))).d, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x + 329f), _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))), 928f, var_3.x)).a, true, global0.c, var_0.d, firstTrailingBit(-global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(16228u), var_0.e);
}


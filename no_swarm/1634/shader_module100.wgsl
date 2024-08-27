struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: vec3<i32> = vec3<i32>(39786i, 1i, i32(-2147483648));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<f32, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = all(vec3<bool>(true, true, true));
    global3 = array<f32, 13>();
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 21302u), vec2<u32>(~arg_0.x ^ (32465u & arg_1.c.c.x), arg_0.x));
    global0 = array<vec4<bool>, 7>();
    global3 = array<f32, 13>();
    return true;
}

fn func_2() -> Struct_2 {
    global2 = vec2<bool>(abs(_wgslsmith_div_u32(u_input.d, 173950u)) < (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~17646u) | ~(~u_input.e.x)), true);
    global3 = array<f32, 13>();
    global2 = vec2<bool>(all(vec4<bool>(true, false, !(!global2.x), any(vec4<bool>(global2.x, false, true, false)))), any(vec4<bool>(select(func_3(vec4<u32>(u_input.d, 1u, 4294967295u, u_input.b.x), Struct_2(Struct_1(global3[_wgslsmith_index_u32(1u, 13u)], u_input.a, u_input.b.yx, global2.x), vec2<bool>(global2.x, true), Struct_1(1290f, -58449i, u_input.b.xy, false)), u_input.d, Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 13u)], -14894i, u_input.b.wx, global2.x), vec2<bool>(global2.x, false), Struct_1(global3[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.c, vec2<u32>(4294967295u, u_input.d), global2.x))), true | global2.x, 695f <= global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), any(vec3<bool>(false, global2.x, false)) | true, false, u_input.a > global1.x)));
    global3 = array<f32, 13>();
    var var_0 = true;
    return Struct_2(Struct_1(822f, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.x, global1.x, u_input.c, global1.x), vec4<i32>(-2147483647i, -1i, u_input.a, u_input.c), vec4<bool>(false, true, true, global2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global1.x, -8592i, -1i), vec4<i32>(global1.x, 1i, 0i, u_input.c))), vec2<u32>(4294967295u << ((34680u ^ u_input.e.x) % 32u), max(u_input.e.x, countOneBits(u_input.b.x))), any(select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x)), vec2<bool>(true, true), true))), select(select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), !vec2<bool>(true, global2.x)), vec2<bool>(true, true), !vec2<bool>(true, global2.x)), !vec2<bool>(global2.x, u_input.c >= global1.x), !(!select(global2.x, true, global2.x))), Struct_1(-1000f, -_wgslsmith_add_i32(max(1i, global1.x), -u_input.c), ~u_input.b.wz, global2.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> i32 {
    global2 = arg_0.b;
    var var_0 = arg_1;
    global0 = array<vec4<bool>, 7>();
    var var_1 = -1654f;
    let var_2 = Struct_2(arg_0.c, arg_0.b, arg_1);
    return _wgslsmith_add_i32(~var_2.a.b, _wgslsmith_add_i32(~(-1445i), 19302i));
}

fn func_1() -> Struct_2 {
    global1 = vec3<i32>(i32(-1i) * -1946i, _wgslsmith_mult_i32(func_4(func_2(), Struct_1(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(0u, 13u)])), global1.x, vec2<u32>(u_input.d, u_input.d), false), global2.x), -(i32(-1i) * -1i)), global1.x);
    let var_0 = func_2();
    let var_1 = -1i;
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(34052i, -34456i, u_input.c) | ~(vec3<i32>(26253i, u_input.a, -14721i) & vec3<i32>(global1.x, global1.x, u_input.c)), _wgslsmith_mult_vec3_i32(max(vec3<i32>(var_1, 20733i, global1.x) << (vec3<u32>(1u, 0u, 7133u) % vec3<u32>(32u)), ~vec3<i32>(49953i, global1.x, var_0.a.b)), select(-vec3<i32>(u_input.c, global1.x, -2555i), firstLeadingBit(vec3<i32>(1i, global1.x, 61325i)), all(vec3<bool>(true, global2.x, global2.x)))));
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.a);
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-710f, arg_1.a), _wgslsmith_f_op_f32(trunc(1000f)));
    var var_1 = max(~(_wgslsmith_mult_i32(~arg_0.a.b, max(u_input.c, 5868i)) | 0i), ~func_4(arg_0, Struct_1(-1128f, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.b, global1.x, 16261i, arg_1.b), vec4<i32>(global1.x, 2147483647i, -2147483647i, 62840i)), arg_0.a.c << (vec2<u32>(4294967295u, arg_2.c.x) % vec2<u32>(32u)), arg_2.d), !global2.x));
    global2 = select(!vec2<bool>(!(!arg_1.d), false), vec2<bool>(~(~1u) > arg_0.a.c.x, !arg_2.d), any(arg_0.b));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(0i, arg_1.b), _wgslsmith_mult_i32(u_input.c, 1i)), vec3<i32>(max(arg_1.b, u_input.a), u_input.a, 1i)), -1i), _wgslsmith_mult_i32(~(-(~u_input.a)), _wgslsmith_mult_i32(arg_2.b, _wgslsmith_mod_i32(-23788i << (0u % 32u), -arg_2.b))));
    let var_3 = Struct_3(arg_0, true, func_1().c, arg_0.a.b, func_1());
    return 1688f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(func_1(), Struct_1(global3[_wgslsmith_index_u32(1u, 13u)], u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.zw), true), func_1().a)), 358f)), select(_wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(0i), u_input.c), global1.x), u_input.c, false), (vec2<u32>(0u, _wgslsmith_div_u32(u_input.b.x, 10714u)) << (_wgslsmith_mod_vec2_u32(countOneBits(u_input.e), _wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(u_input.b.x, u_input.d))) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(u_input.b.x, 1u) | vec2<u32>(1u, 17087u)), _wgslsmith_add_vec2_u32(u_input.b.zy | u_input.b.xx, ~vec2<u32>(u_input.b.x, 47878u))), (u_input.d << (u_input.d % 32u)) != 4294967295u);
    var var_1 = var_0;
    global1 = vec3<i32>(~abs(countOneBits(u_input.a)), max(var_1.b, -1i), ~firstLeadingBit(firstLeadingBit(countOneBits(global1.x))));
    var_1 = Struct_1(global3[_wgslsmith_index_u32(min(firstTrailingBit(14932u), (~9588u << (var_0.c.x % 32u)) | 49127u), 13u)], 73199i, firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.e, reverseBits(var_1.c) | select(var_1.c, vec2<u32>(var_1.c.x, 1u), vec2<bool>(true, false)))), _wgslsmith_sub_u32(1u, u_input.e.x) < ~var_1.c.x);
    global2 = select(select(vec2<bool>(func_2().c.d, any(select(vec3<bool>(true, var_1.d, global2.x), vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, global2.x, false)))), vec2<bool>(global1.x > _wgslsmith_mult_i32(u_input.a, global1.x), true), vec2<bool>(~u_input.d != 41635u, ~var_1.c.x == _wgslsmith_mod_u32(u_input.d, 455u))), func_1().b, !(!func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wxw, func_2().c.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-1246f - var_1.a)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1219f, 1000f)))))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~15677u, 13u)] * -680f));
}


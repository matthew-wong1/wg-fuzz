struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<i32, 12>;

var<private> global2: array<vec4<u32>, 10>;

var<private> global3: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(arg_2)), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(542f, 1839f, arg_1) - vec3<f32>(263f, arg_1, -1239f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_1, 1606f) - vec3<f32>(-1113f, arg_2, arg_1))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(432f, arg_1, _wgslsmith_f_op_f32(382f * -1154f))))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, arg_0.x), 12u)], vec2<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2)), -u_input.d);
    global0 = array<Struct_3, 31>();
    let var_1 = !vec3<bool>(all(vec3<bool>(var_0.a.b.x, true, !var_0.a.b.x)), abs(u_input.a.x) == 1i, var_0.a.b.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, arg_1, true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(406f)), _wgslsmith_f_op_f32(-arg_2), var_1.x & var_0.a.b.x)) * var_0.a.a), arg_1));
    let var_3 = ~(-max(0i, reverseBits(0i)));
    return var_3;
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.c;
    let var_1 = Struct_3(abs(1i), vec2<u32>(~(~u_input.c.x), var_0.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + -273f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, -741f, -565f) + vec3<f32>(922f, -1249f, 1474f)), _wgslsmith_div_vec3_f32(vec3<f32>(-511f, 2114f, -1040f), vec3<f32>(137f, 435f, -446f)), vec3<bool>(true, true, true))), vec3<f32>(1416f, -1541f, 1000f))), max(u_input.d.x, func_3(~var_0, _wgslsmith_f_op_f32(1000f * -319f), _wgslsmith_f_op_f32(1415f + -116f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1120f + 1822f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, -u_input.d), reverseBits(~u_input.d))), true);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(round(var_1.c.b.x)), var_1.c.b, var_1.c.c | u_input.d.x);
    let var_3 = Struct_4(var_2.a, _wgslsmith_f_op_vec3_f32(-var_2.b), -(i32(-1i) * -var_2.c));
    let var_4 = false;
    return Struct_4(-656f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(var_3.b, vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(589f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -420f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - var_3.a)))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(i32(-1i) * -1i, ~(-22524i)) << ((~4294967295u >> (~4294967295u % 32u)) % 32u), -min(var_3.c, ~40953i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 726f, -1393f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, arg_0.b.x, arg_2.c.b.x, arg_0.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1362f, 959f, -304f, arg_0.b.x) + vec4<f32>(arg_2.c.a.a, arg_0.a, arg_0.b.x, arg_0.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.b.x, arg_0.b.x, -1778f)))))));
    var var_1 = Struct_5(arg_2.d);
    global3 = 0i | -func_3(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, u_input.c.x), arg_2.b, arg_2.c.a.b), u_input.c), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-364f, -1201f, true))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-390f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(550f - -292f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(var_0.x * -1017f)), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -376f, _wgslsmith_f_op_f32(arg_2.c.d.x * arg_2.c.b.x)))), _wgslsmith_f_op_vec3_f32(arg_0.b * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)), _wgslsmith_f_op_vec3_f32(var_0.yyy * vec3<f32>(arg_2.c.a.a, -301f, arg_2.c.b.x))))))), arg_2.c.e.x);
    global0 = array<Struct_3, 31>();
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = func_2();
    global2 = array<vec4<u32>, 10>();
    global2 = array<vec4<u32>, 10>();
    let var_2 = _wgslsmith_clamp_i32(abs(-21074i), -arg_1, -2147483647i) < u_input.d.x;
    return Struct_3(-(0i >> (min(u_input.c.x, _wgslsmith_mod_u32(0u, u_input.c.x)) % 32u)), countOneBits(select(vec2<u32>(1u, 24758u), vec2<u32>(u_input.c.x, 29983u), false)) ^ u_input.c, Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f + -789f) - arg_0.b.x), vec2<bool>(select(var_2, false, true), var_2)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1300f, -702f, var_1.b.x), var_1.b)))))), func_3(select(u_input.c >> (u_input.c % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.c.x), var_2), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(abs(var_1.b.x)))), var_1.b.zx, u_input.d ^ (vec4<i32>(-1i) * -vec4<i32>(arg_0.c, var_0.c, 27449i, 2147483647i))), var_2);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global2 = array<vec4<u32>, 10>();
    let var_0 = func_5(func_4(func_2(), -select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(55348u, 12u)], 2147483647i, 2147483647i, 2147483647i), true) << (vec4<u32>(~u_input.c.x, 1u, u_input.c.x, _wgslsmith_mod_u32(4294967295u, 26899u)) % vec4<u32>(32u)), Struct_3(_wgslsmith_dot_vec2_i32(u_input.d.wz, ~vec2<i32>(16513i, 2301i)), u_input.c, Struct_2(Struct_1(-762f, vec2<bool>(arg_0, false)), vec3<f32>(-2266f, 1545f, 355f), -global1[_wgslsmith_index_u32(u_input.c.x, 12u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1307f, 681f)), ~vec4<i32>(0i, 0i, 40770i, -6151i)), all(select(vec3<bool>(arg_0, false, false), vec3<bool>(true, arg_0, true), arg_0)))), global1[_wgslsmith_index_u32(24516u, 12u)]);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.a.a), -574f));
    var var_2 = var_0.c.a.a;
    let var_3 = Struct_3(-2147483647i >> (reverseBits(~u_input.c.x) % 32u), ~select(~u_input.c, countOneBits(u_input.c), !vec2<bool>(var_0.d, var_0.d)) | var_0.b, func_5(Struct_4(-710f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.a, var_0.c.b.x, -1618f))), global1[_wgslsmith_index_u32(4294967295u >> (1u % 32u), 12u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -var_0.c.e.wyx, var_0.c.e.zxy)).c, true);
    return var_3.c.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2365f, select(vec2<bool>(true, true), vec2<bool>(all(func_1(false)), false), vec2<bool>(!select(false, true, true), !select(true, true, true))));
    let var_1 = global2[_wgslsmith_index_u32(82502u, 10u)];
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-276f)))), vec2<bool>(any(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(true, var_0.b.x, false), vec3<bool>(true, false, true))), false)), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a + func_5(func_4(Struct_4(-2535f, vec3<f32>(var_0.a, var_0.a, var_0.a), global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), u_input.d, global0[_wgslsmith_index_u32(1u, 31u)]), global1[_wgslsmith_index_u32(1440u, 12u)] ^ 51963i).c.b.x), 661f), -71228i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(397f, var_0.a)) + func_4(Struct_4(_wgslsmith_f_op_f32(-347f * 857f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1303f, var_0.a)), -12985i & u_input.d.x), vec4<i32>(global1[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 12u)], 9899i, ~global1[_wgslsmith_index_u32(var_1.x, 12u)], 58590i), global0[_wgslsmith_index_u32(~u_input.c.x, 31u)]).b.yz), min(max(vec4<i32>(global1[_wgslsmith_index_u32(~4294967295u, 12u)], u_input.b, 1i, ~0i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-52393i, -135i, global1[_wgslsmith_index_u32(37u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), vec4<i32>(18128i, global1[_wgslsmith_index_u32(27142u, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_sub_vec4_i32(u_input.d, select(select(u_input.d, vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], u_input.d.x, 0i, 1i), vec4<bool>(false, false, true, var_0.b.x)), ~vec4<i32>(-54612i, -2147483647i, 2147483647i, global1[_wgslsmith_index_u32(74208u, 12u)]), !vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x)))));
    let var_3 = global0[_wgslsmith_index_u32(5468u, 31u)];
    global0 = array<Struct_3, 31>();
    global3 = func_4(func_4(func_4(Struct_4(_wgslsmith_f_op_f32(var_2.a.a - -620f), _wgslsmith_f_op_vec3_f32(-var_2.b), 0i), var_2.e, func_5(func_2(), -11487i)), abs(-max(vec4<i32>(var_3.c.e.x, 2147483647i, 27630i, 20526i), vec4<i32>(-2147483647i, 2147483647i, 21691i, 26383i))), func_5(Struct_4(_wgslsmith_f_op_f32(-var_3.c.b.x), vec3<f32>(var_2.b.x, var_3.c.d.x, -329f), 2147483647i & global1[_wgslsmith_index_u32(var_1.x, 12u)]), 0i << ((var_1.x & var_3.b.x) % 32u))), reverseBits(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(var_3.a, u_input.a.x, global1[_wgslsmith_index_u32(51269u, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)])), _wgslsmith_div_vec4_i32(var_2.e << (global2[_wgslsmith_index_u32(86419u, 10u)] % vec4<u32>(32u)), vec4<i32>(var_3.a, -1i, var_2.e.x, var_3.c.c)))), func_5(func_2(), u_input.b)).c;
    let var_4 = select(firstTrailingBit(_wgslsmith_mult_vec3_u32(var_1.zzw | var_1.xxz, ~var_1.zyx)), var_1.yxw, (func_1(false).x || true) && false);
    var var_5 = ~select(reverseBits(abs(var_2.e.yyx)) ^ ~(-var_2.e.yzw), vec3<i32>(countOneBits(func_4(Struct_4(2385f, var_2.b, u_input.a.x), var_2.e, Struct_3(-16254i, var_4.zx, var_2, false)).c), _wgslsmith_clamp_i32(min(-59686i, -2147483647i), -51554i, u_input.d.x), 2147483647i), !select(select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(false, var_0.b.x, var_0.b.x), false), vec3<bool>(true, true, true), select(vec3<bool>(var_0.b.x, var_3.d, var_2.a.b.x), vec3<bool>(true, var_2.a.b.x, false), vec3<bool>(var_2.a.b.x, true, var_2.a.b.x))));
    var var_6 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 481f) + 388f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-575f, var_0.a), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1091f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1208f, var_2.b.x, var_2.b.x) * var_2.b), var_2.b, var_2.a.b.x == true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(343f, var_0.a, var_2.d.x) * vec3<f32>(-681f, var_3.c.d.x, var_2.d.x)) - var_2.b))), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, min(u_input.d.x, -27415i), countOneBits(26380i)), vec3<i32>(47131i, -7311i, -4713i)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.e.x);
}


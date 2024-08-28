struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-559f, -382f, -184f, 758f), vec4<f32>(579f, 1421f, -732f, -204f), vec4<f32>(259f, 1883f, -611f, -777f));

var<private> global2: vec3<bool>;

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, -18102i), vec2<i32>(-9333i, -1i), vec2<i32>(1338i, 1i), vec2<i32>(48096i, -12491i), vec2<i32>(-7478i, 17036i), vec2<i32>(-9311i, -1i), vec2<i32>(-67566i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 48174i), vec2<i32>(-1i, 35241i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1994i, i32(-2147483648)), vec2<i32>(-45719i, -1i), vec2<i32>(-33966i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(40282i, 24903i));

var<private> global4: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> Struct_1 {
    let var_0 = 2364f;
    var var_1 = -1151f;
    global0 = array<u32, 26>();
    let var_2 = -1159f;
    var_1 = var_2;
    return Struct_1(!(global2.x == true));
}

fn func_3() -> bool {
    global0 = array<u32, 26>();
    var var_0 = ~(~firstTrailingBit(firstTrailingBit(vec4<u32>(2761u, 51710u, 15578u, global4.x) << (u_input.c % vec4<u32>(32u)))));
    let var_1 = ~vec4<i32>(-(i32(-1i) * -u_input.e), u_input.e & ~(-u_input.e), firstLeadingBit(u_input.e), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), global3[_wgslsmith_index_u32(u_input.c.x, 17u)]))));
    var var_2 = Struct_2(Struct_1(global2.x), Struct_1(global2.x));
    global2 = vec3<bool>(!any(!(!vec3<bool>(false, var_2.b.a, global2.x))), true, func_1().a);
    return 4294967295u < global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(75056u, abs(u_input.c.x))), vec2<u32>(~min(49944u, 9021u), 1u)), 26u)];
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(!(!all(select(vec4<bool>(true, true, arg_0.a.a, true), vec4<bool>(arg_1.a.a, false, global2.x, true), vec4<bool>(true, arg_3.a, false, true)))));
    let var_1 = arg_1;
    let var_2 = arg_0.b;
    global3 = array<vec2<i32>, 17>();
    global3 = array<vec2<i32>, 17>();
    return Struct_2(Struct_1(func_3()), func_1());
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_1 {
    global2 = select(select(select(vec3<bool>(arg_3.a.a, true, true == arg_1.a), select(vec3<bool>(arg_1.a, arg_3.a.a, global2.x), select(vec3<bool>(arg_0.x, arg_1.a, global2.x), vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, false, true)), true), false), !vec3<bool>(global2.x, func_3(), all(vec3<bool>(arg_3.b.a, true, global2.x))), !select(!vec3<bool>(arg_0.x, false, arg_0.x), !vec3<bool>(false, arg_0.x, false), true)), vec3<bool>(arg_3.a.a, !(!any(vec3<bool>(false, arg_3.b.a, global2.x))), true), !vec3<bool>(all(!vec2<bool>(arg_3.a.a, true)), arg_3.b.a, !arg_0.x || (arg_2.x < 1i)));
    global2 = !vec3<bool>(true, func_3(), !all(vec2<bool>(arg_3.a.a, global2.x)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1995f * 477f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1984f - -1725f) + -628f)))));
    global2 = select(vec3<bool>(false, !(!arg_1.a), any(select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, arg_0.x), !arg_1.a))), !vec3<bool>(global2.x, all(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, false))), any(vec3<bool>(false, true, false))), arg_1.a);
    let var_1 = func_1();
    return func_1();
}

fn func_5(arg_0: Struct_1) -> bool {
    global3 = array<vec2<i32>, 17>();
    global2 = !vec3<bool>(global2.x, all(select(vec2<bool>(global2.x, true), global2.yy, global2.xz)), true);
    global3 = array<vec2<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-499f, -305f, 478f), vec3<f32>(1485f, -979f, -897f), global2.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1278f, -418f, 145f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1320f, -703f, 1002f)))))), !(!(!global2.x))))));
    global1 = array<vec4<f32>, 3>();
    return arg_0.a;
}

fn func_6(arg_0: bool) -> u32 {
    let var_0 = 1u;
    var var_1 = u_input.e <= (~412i & u_input.e);
    var var_2 = Struct_2(Struct_1(true), func_4(select(vec2<bool>(arg_0 == global2.x, all(global2.xz)), select(!global2.zy, vec2<bool>(false, false), vec2<bool>(global2.x, arg_0)), !global2.yz), func_2(Struct_2(Struct_1(arg_0), func_2(Struct_2(Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true)), vec2<u32>(u_input.b, var_0), Struct_1(false)).a), func_2(func_2(Struct_2(Struct_1(global2.x), Struct_1(false)), Struct_2(Struct_1(global2.x), Struct_1(arg_0)), u_input.c.zy, Struct_1(false)), Struct_2(Struct_1(true), Struct_1(arg_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(20945u, 4294967295u), vec2<u32>(0u, global0[_wgslsmith_index_u32(global4.x, 26u)])), func_2(Struct_2(Struct_1(arg_0), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true)), vec2<u32>(1u, 1u), Struct_1(arg_0)).b), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(86823u, 26u)]), vec2<u32>(var_0, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], u_input.c.x)), u_input.c.yw >> (global4.zy % vec2<u32>(32u))), Struct_1(2147483647i >= u_input.e)).b, _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e, -35807i, u_input.e, 0i) | -vec4<i32>(u_input.e, u_input.e, 22545i, 15209i), vec4<i32>(0i, -24598i, -2147483647i, _wgslsmith_mod_i32(u_input.e, -6263i))), Struct_2(func_2(Struct_2(Struct_1(global2.x), Struct_1(false)), func_2(Struct_2(Struct_1(false), Struct_1(arg_0)), Struct_2(Struct_1(global2.x), Struct_1(global2.x)), global4.zx, Struct_1(global2.x)), ~vec2<u32>(u_input.d.x, var_0), func_2(Struct_2(Struct_1(arg_0), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(arg_0)), vec2<u32>(1u, u_input.a.x), Struct_1(false)).b).a, func_4(global2.yy, Struct_1(global2.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, 22442i, u_input.e, u_input.e), vec4<i32>(-2147483647i, u_input.e, u_input.e, u_input.e)), func_2(Struct_2(Struct_1(arg_0), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(false)), vec2<u32>(62938u, 4081u), Struct_1(true))))));
    let var_3 = var_2.a;
    global0 = array<u32, 26>();
    return abs(_wgslsmith_mod_u32(1u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(vec2<bool>(true, global2.x && false), Struct_1(global2.x), abs(abs(vec4<i32>(u_input.e, u_input.e, 24037i, -31561i))), func_2(Struct_2(Struct_1(global2.x), Struct_1(global2.x)), Struct_2(Struct_1(true), Struct_1(true)), abs(vec2<u32>(u_input.d.x, 1u)), func_1()))));
    let var_1 = 31544u;
    var var_2 = max(reverseBits(vec4<i32>(-1i) * -(~vec4<i32>(u_input.e, -11705i, -2521i, u_input.e))), -countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, 2147483647i, u_input.e)) >> (u_input.c % vec4<u32>(32u))));
    global4 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.d.x), 28347u, global4.x), global4.yyz), _wgslsmith_mult_u32(0u, ~54371u & _wgslsmith_sub_u32(global4.x, 4294967295u)), 12032u, ~1u);
    global1 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, firstTrailingBit(vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, var_2.x, u_input.e), var_2.xzy)), ~(~(-4913i)), _wgslsmith_add_i32(0i << (u_input.c.x % 32u), ~2147483647i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(545f * 349f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1082f)))))))), 245f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, -354f)))));
}


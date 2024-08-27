struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global1: f32 = -959f;

var<private> global2: vec3<i32>;

var<private> global3: vec4<u32> = vec4<u32>(84968u, 0u, 47630u, 1u);

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = !arg_3.d;
    let var_1 = global0.x & _wgslsmith_mult_u32(reverseBits(4294967295u | firstTrailingBit(global0.x)), 21560u);
    var var_2 = Struct_2(Struct_1(arg_3.a.a.a, arg_1.a.a.b, global4.c), arg_2.b, ~(~_wgslsmith_add_vec4_u32(arg_3.a.c, arg_1.a.c)), 37283i, arg_2.b);
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_2.c.zz, vec2<u32>(var_1, arg_0.x)), u_input.b.yx), ~arg_1.a.c.x, ~1u);
    let var_4 = vec2<i32>(abs(abs(global4.a.x)) | _wgslsmith_dot_vec3_i32(arg_3.a.b.a.xyx, _wgslsmith_div_vec3_i32(arg_2.a.a.yyx & vec3<i32>(global4.a.x, arg_1.a.e.a.x, 0i), vec3<i32>(var_2.b.a.x, 15285i, global4.a.x))), _wgslsmith_dot_vec3_i32(arg_1.a.e.a.wwz, vec3<i32>(var_2.b.a.x, 84744i, global4.a.x)) << (var_1 % 32u));
    return var_2.e.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = any(!vec2<bool>(arg_3.x, !select(false, false, false)));
    return Struct_3(Struct_1(select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, 2147483647i, -857i), firstLeadingBit(global4.a)), func_3(vec3<u32>(1u, 28941u, global3.x), Struct_4(Struct_2(Struct_1(global4.a, global4.b, arg_2.x), Struct_1(vec4<i32>(517i, 1i, -1i, -81091i), 15269u, -1000f), vec4<u32>(27587u, 4294967295u, global4.b, global0.x), 2147483647i, Struct_1(vec4<i32>(global4.a.x, global2.x, global4.a.x, global2.x), 8446u, arg_2.x)), arg_3.x, 13527u, vec2<bool>(arg_3.x, false)), Struct_2(Struct_1(vec4<i32>(global4.a.x, global4.a.x, -2147483647i, 1i), 23307u, 340f), Struct_1(global4.a, global0.x, arg_1), vec4<u32>(1u, 77558u, 31340u, 46619u), -25812i, Struct_1(vec4<i32>(18328i, 32360i, 1i, 55984i), global0.x, arg_2.x)), Struct_4(Struct_2(Struct_1(global4.a, arg_0.x, global4.c), Struct_1(global4.a, 0u, 275f), vec4<u32>(global3.x, global0.x, arg_0.x, global0.x), global2.x, Struct_1(vec4<i32>(-2147483647i, global4.a.x, -1i, global2.x), u_input.b.x, arg_2.x)), false, 32195u, vec2<bool>(arg_3.x, false))), vec4<bool>(!arg_3.x, 1020f < arg_1, true, arg_3.x)), ~countOneBits(u_input.a.x), 500f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_2.b.a, ~32353u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1816f - -1000f))), func_2(~vec3<u32>(global0.x, 1u, 11055u) << (vec3<u32>(22319u, _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u) % vec3<u32>(32u)), -624f, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(-361f)), _wgslsmith_f_op_f32(arg_0.a.c + 2027f), _wgslsmith_f_op_f32(-arg_1.a.b.c)))), vec3<bool>(!any(vec3<bool>(arg_1.b, false, arg_1.d.x)), arg_1.d.x, true)).a, vec4<u32>(_wgslsmith_sub_u32(1u, ~(~arg_1.a.e.b)), arg_1.a.e.b, ~global0.x >> (62558u % 32u), func_2(u_input.b, _wgslsmith_f_op_f32(ceil(634f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1078f, global4.c, arg_1.a.e.c)))), vec3<bool>(true | arg_1.b, false, all(vec4<bool>(true, true, true, arg_1.d.x)))).a.b), global4.a.x, arg_0.a);
    var var_1 = ~arg_2.c.x;
    global1 = arg_2.a.c;
    var var_2 = Struct_4(Struct_2(func_2(vec3<u32>(22908u, firstLeadingBit(14435u), 6102u), var_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1309f, var_0.e.c, -382f) - vec3<f32>(var_0.b.c, 1000f, arg_2.a.c))), select(vec3<bool>(true, arg_1.d.x, false), !vec3<bool>(true, arg_1.b, true), arg_1.b && true)).a, Struct_1(abs(func_3(var_0.c.xzy, Struct_4(Struct_2(arg_0.a, var_0.a, vec4<u32>(1u, 1u, 984u, var_0.c.x), global4.a.x, arg_2.e), arg_1.b, 4294967295u, arg_1.d), arg_1.a, arg_1)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c))), arg_2.c, min(var_0.a.a.x, _wgslsmith_clamp_i32(global4.a.x, arg_1.a.b.a.x, ~arg_2.d)), func_2(~select(arg_1.a.c.xzw, var_0.c.wzw, true), arg_0.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1767f, arg_0.a.c, global4.c))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(963f, -1094f, -445f)))), select(!vec3<bool>(arg_1.d.x, false, true), select(vec3<bool>(arg_1.b, false, false), vec3<bool>(true, true, arg_1.b), vec3<bool>(false, true, arg_1.d.x)), true)).a), arg_1.d.x, 52291u, arg_1.d);
    let var_3 = ~(~_wgslsmith_div_i32(arg_1.a.a.a.x, -arg_2.e.a.x));
    return var_0.e;
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_4) -> f32 {
    let var_0 = arg_1;
    return arg_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> vec4<u32> {
    global4 = Struct_1(_wgslsmith_div_vec4_i32(global4.a, arg_2.a.a.a), 102117u, global4.c);
    global1 = _wgslsmith_f_op_f32(func_5(true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, arg_1.a.c, 925f, -983f)), vec4<f32>(898f, arg_2.a.b.c, 366f, global4.c)))))), -global4.a.zz, Struct_4(Struct_2(arg_1.e, arg_1.b, ~vec4<u32>(1u, global3.x, global4.b, global3.x), _wgslsmith_sub_i32(arg_1.d, _wgslsmith_div_i32(-1041i, global2.x)), func_4(func_2(global3.yww, 229f, vec3<f32>(-1230f, 760f, -1000f), vec3<bool>(arg_2.b, false, arg_2.b)), Struct_4(arg_1, false, u_input.b.x, arg_2.d), arg_1)), select(true, arg_2.d.x, !(!arg_2.b)), ~_wgslsmith_dot_vec2_u32(~global3.zx, ~u_input.b.zy), arg_2.d)));
    global4 = func_4(Struct_3(Struct_1(arg_2.a.e.a, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(251f, 1307f)) + arg_2.a.e.c))), Struct_4(arg_1, false, global4.b >> (_wgslsmith_clamp_u32(global0.x, ~2361u, ~global0.x) % 32u), !select(select(vec2<bool>(true, arg_2.d.x), arg_2.d, false), select(arg_2.d, arg_2.d, arg_2.d.x), arg_2.d)), arg_2.a);
    let var_0 = func_2(arg_1.c.yzx, _wgslsmith_f_op_f32(arg_1.a.c * _wgslsmith_f_op_f32(-global4.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, arg_2.a.b.c, arg_1.e.c) - vec3<f32>(1000f, global4.c, arg_2.a.e.c)))))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(arg_2.b, false, false))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.b.c) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(true, vec4<f32>(arg_1.b.c, arg_2.a.e.c, var_0.a.c, global4.c), -vec2<i32>(global4.a.x, -8231i), arg_2)), _wgslsmith_f_op_f32(-func_2(vec3<u32>(4294967295u, 1u, 1u), arg_2.a.e.c, vec3<f32>(995f, arg_1.b.c, arg_1.b.c), vec3<bool>(arg_2.d.x, arg_2.b, true)).a.c)))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(70880u, ~939u, _wgslsmith_div_u32(global4.b, u_input.b.x), min(~countOneBits(1u), ~(~global4.b))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 35477u)), global3.x, select(global4.b, select(global0.x, u_input.a.x, false), any(vec3<bool>(true, false, true)))), select(min(vec4<u32>(23151u, 51136u, 52285u, global3.x), func_1(global4.b, Struct_2(Struct_1(global4.a, global3.x, 1351f), Struct_1(vec4<i32>(global2.x, -1i, 27096i, global4.a.x), 4294967295u, global4.c), vec4<u32>(117152u, u_input.b.x, 1u, 7617u), -80575i, Struct_1(vec4<i32>(global2.x, global4.a.x, global4.a.x, global4.a.x), global4.b, global4.c)), Struct_4(Struct_2(Struct_1(global4.a, 4294967295u, global4.c), Struct_1(global4.a, 1u, 433f), vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.a.x), -15959i, Struct_1(vec4<i32>(global4.a.x, global2.x, 2147483647i, 1i), 36022u, global4.c)), true, global3.x, vec2<bool>(true, false)))), _wgslsmith_mult_vec4_u32(vec4<u32>(35031u, 1892u, 0u, 3621u), vec4<u32>(4294967295u, 0u, global0.x, global4.b)) | vec4<u32>(global3.x, 27447u, global0.x, 4294967295u), global3.x != (global4.b ^ 1u)), ~firstTrailingBit(vec4<u32>(24740u, 35887u, 1u, global3.x) | vec4<u32>(global4.b, u_input.b.x, global4.b, 0u)));
    let var_0 = _wgslsmith_f_op_f32(-1500f * global4.c);
    let x = u_input.a;
    s_output = StorageBuffer(53430u | ~global0.x, global2.x, _wgslsmith_mult_i32(-2147483647i, ~(-func_4(Struct_3(Struct_1(global4.a, 63659u, -1000f)), Struct_4(Struct_2(Struct_1(vec4<i32>(global4.a.x, global2.x, global4.a.x, global4.a.x), global3.x, -1485f), Struct_1(global4.a, 42488u, global4.c), vec4<u32>(76632u, u_input.a.x, global0.x, global4.b), -8482i, Struct_1(global4.a, global4.b, -142f)), true, 4294967295u, vec2<bool>(false, true)), Struct_2(Struct_1(vec4<i32>(-29155i, global2.x, 0i, global2.x), 4294967295u, var_0), Struct_1(vec4<i32>(global2.x, global2.x, global4.a.x, 0i), 41289u, global4.c), vec4<u32>(0u, global0.x, global0.x, global0.x), global4.a.x, Struct_1(global4.a, global4.b, var_0))).a.x)), global4.a.xxz);
}


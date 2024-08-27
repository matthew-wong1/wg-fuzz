struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(118649u, 46288u), vec2<u32>(49280u, 4294967295u), vec2<u32>(4294967295u, 60758u), vec2<u32>(1u, 1u), vec2<u32>(56965u, 80827u), vec2<u32>(102151u, 23688u), vec2<u32>(33361u, 1u), vec2<u32>(1u, 6996u), vec2<u32>(25493u, 37004u), vec2<u32>(81674u, 0u), vec2<u32>(10500u, 0u), vec2<u32>(35899u, 1u), vec2<u32>(71455u, 4825u), vec2<u32>(31016u, 1u), vec2<u32>(24856u, 39945u), vec2<u32>(0u, 78688u), vec2<u32>(4294967295u, 81175u), vec2<u32>(14057u, 4294967295u), vec2<u32>(24616u, 0u), vec2<u32>(1u, 1u), vec2<u32>(38089u, 0u), vec2<u32>(0u, 0u), vec2<u32>(78351u, 0u), vec2<u32>(3243u, 4294967295u), vec2<u32>(4294967295u, 4456u), vec2<u32>(1u, 21377u), vec2<u32>(64730u, 61248u));

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = global2.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1623f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -879f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a, global0.a))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(316f, -1000f))))));
    let var_2 = Struct_2(select(vec3<bool>(any(vec4<bool>(global2.c, true, global2.c, global2.c)), true, var_1.x >= global0.a), !select(!vec3<bool>(false, global2.c, true), !vec3<bool>(arg_0.x, false, global2.c), arg_0.x), select(vec3<bool>(arg_0.x, global2.c, any(vec2<bool>(false, true))), select(vec3<bool>(true, global2.c, global2.c), vec3<bool>(arg_0.x, false, global2.c), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, true), true)), !global2.c)), Struct_1(global0.a), true, u_input.d, !global2.c);
    let var_3 = var_2;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 1557f, true))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f - arg_2.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(905f - global0.a) - _wgslsmith_f_op_f32(arg_2.a - arg_0.a))) * _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true)))));
    var var_0 = select(vec4<u32>(0u, 1u, ~1u, u_input.b), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(global2.b, 0u, 18228u, global2.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(12486u, 43503u, 0u, global2.b), vec4<u32>(93463u, 8045u, u_input.b, global2.b)) ^ vec4<u32>(~1u, 55626u, ~global2.b, min(global2.b, global2.b))), vec4<bool>(global2.c, any(vec3<bool>(any(vec3<bool>(false, true, false)), true, !arg_1.x)), all(select(select(vec4<bool>(arg_1.x, global2.c, global2.c, global2.c), vec4<bool>(true, false, arg_1.x, global2.c), vec4<bool>(false, arg_1.x, false, false)), !vec4<bool>(true, global2.c, arg_1.x, false), !vec4<bool>(false, true, true, global2.c))), global2.c));
    var var_1 = Struct_3(min(u_input.c.x, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.e, -11489i, u_input.e), ~global2.a)), 4294967295u, all(!select(select(vec2<bool>(global2.c, global2.c), arg_1, true), !arg_1, !arg_1)));
    var_0 = countOneBits(~select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(29622u, 0u, 4294967295u, u_input.d), ~vec4<u32>(1u, u_input.d, u_input.b, 0u), vec4<u32>(1u, u_input.b, 16730u, 0u) & vec4<u32>(global2.b, 19008u, var_0.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, 0u), vec4<u32>(var_0.x, global2.b, global2.b, 0u) >> (vec4<u32>(4294967295u, 0u, u_input.d, 0u) % vec4<u32>(32u))), vec4<bool>(true, 4294967295u == u_input.b, true, true)));
    var var_2 = _wgslsmith_sub_vec3_i32(min(-countOneBits(u_input.c), -vec3<i32>(global2.a, 1i, -1i)), u_input.c);
    return Struct_2(select(select(vec3<bool>(all(vec3<bool>(false, false, false)), arg_1.x || arg_1.x, select(global2.c, arg_1.x, global2.c)), select(select(vec3<bool>(global2.c, var_1.c, global2.c), vec3<bool>(var_1.c, arg_1.x, var_1.c), true), vec3<bool>(false, arg_1.x, global2.c), !vec3<bool>(true, arg_1.x, false)), select(select(vec3<bool>(var_1.c, global2.c, arg_1.x), vec3<bool>(true, true, false), vec3<bool>(arg_1.x, arg_1.x, var_1.c)), !vec3<bool>(global2.c, arg_1.x, var_1.c), select(vec3<bool>(arg_1.x, true, false), vec3<bool>(global2.c, false, true), vec3<bool>(false, arg_1.x, true)))), !(!(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), vec3<bool>(all(arg_1) && (true || global2.c), global2.c, !(!global2.c))), arg_2, arg_1.x, 37671u, true);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = 14644i;
    global2 = Struct_3(global2.a, abs(global2.b), true);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(1106f + _wgslsmith_f_op_f32(round(arg_1.a))), _wgslsmith_f_op_f32(global0.a - global0.a) > _wgslsmith_f_op_f32(f32(-1f) * -841f)))));
    let var_1 = func_2(arg_1, vec2<bool>(!global2.c, global2.c), arg_1);
    let var_2 = select(select(select(!var_1.a.yx, select(func_2(Struct_1(-220f), vec2<bool>(true, false), arg_1).a.xy, func_2(Struct_1(global0.a), vec2<bool>(true, global2.c), var_1.b).a.xy, true), vec2<bool>(any(vec4<bool>(true, arg_2.c, global2.c, var_1.e)), all(var_1.a))), select(!vec2<bool>(true, arg_2.c), vec2<bool>(true, true), !(!vec2<bool>(var_1.e, arg_2.c))), select(select(func_2(arg_1, var_1.a.zy, arg_1).a.zy, vec2<bool>(global2.c, true), true), !var_1.a.xy, false)), !(!select(var_1.a.zy, vec2<bool>(arg_2.c, false), var_1.a.yz)), var_1.a.xx);
    return vec3<bool>(var_1.e || (-firstTrailingBit(-2147483647i) >= max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.a.x, 7074i, arg_2.a), vec4<i32>(global2.a, var_0, global2.a, u_input.e)), _wgslsmith_div_i32(1i, -7727i))), arg_1.a >= -946f, true);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = Struct_3(global2.a, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1.d, _wgslsmith_mult_u32(31995u, 15184u), global2.b, u_input.d & 41943u)), ~(vec4<u32>(arg_1.d, u_input.d, u_input.b, 1u) >> (vec4<u32>(u_input.b, u_input.d, global2.b, u_input.d) % vec4<u32>(32u)))), true);
    let var_0 = 10958u;
    let var_1 = Struct_3(abs(arg_0), firstTrailingBit(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.b, 0u), vec3<u32>(arg_1.d, 1u, global2.b)))), !all(vec2<bool>(true, !arg_1.c)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, arg_1.b.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1122f, -262f), vec2<f32>(1823f, -1033f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, -2011f))), true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, 330f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1749f)), arg_1.b.a), vec2<bool>(true, false || var_1.c))), arg_1.a.xy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.a * arg_1.b.a), _wgslsmith_f_op_f32(f32(-1f) * -720f)) - vec2<f32>(-257f, _wgslsmith_f_op_f32(518f * -162f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.a, arg_1.b.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(221f, 1002f)))))));
    let var_3 = select(~(vec4<u32>(~var_0, 4294967295u, firstTrailingBit(4294967295u), var_0) ^ vec4<u32>(var_1.b, var_1.b & var_1.b, _wgslsmith_mod_u32(u_input.d, u_input.d), countOneBits(u_input.d))), min(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 4294967295u, ~45776u), ~(~0u), ~_wgslsmith_mult_u32(32337u, global2.b), ~var_0), vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.d), var_0, ~4294967295u, ~arg_1.d << (_wgslsmith_add_u32(1u, u_input.d) % 32u))), !vec4<bool>(!(u_input.c.x <= arg_0), any(arg_1.a), true, false));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x, ~select(u_input.e, u_input.c.x, true), -1i), vec4<i32>(-8322i, _wgslsmith_add_i32((i32(-1i) * -9644i) ^ _wgslsmith_add_i32(global2.a, global2.a), i32(-1i) * -2147483647i), global2.a, -3465i));
    global0 = func_4(abs(u_input.c.x), Struct_2(select(select(select(vec3<bool>(false, global2.c, false), vec3<bool>(false, global2.c, global2.c), global2.c), func_1(4294967295u, Struct_1(global0.a), Struct_3(6445i, global2.b, true)), true), !select(vec3<bool>(false, global2.c, true), vec3<bool>(false, global2.c, true), vec3<bool>(false, global2.c, global2.c)), !vec3<bool>(global2.c, false, true)), Struct_1(_wgslsmith_f_op_f32(940f + -166f)), all(select(!vec4<bool>(true, global2.c, global2.c, false), select(vec4<bool>(global2.c, global2.c, true, true), vec4<bool>(global2.c, global2.c, true, global2.c), global2.c), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, global2.c, false), vec4<bool>(false, true, true, false)))), u_input.d, global2.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 452f));
    var var_2 = Struct_2(vec3<bool>(true, true, true), func_4(-52190i, func_2(Struct_1(622f), vec2<bool>(global2.c, true), func_2(Struct_1(-773f), select(vec2<bool>(true, global2.c), vec2<bool>(true, true), vec2<bool>(true, global2.c)), Struct_1(-1349f)).b)), func_2(Struct_1(var_1.x), func_2(Struct_1(var_1.x), vec2<bool>(!global2.c, true), Struct_1(global0.a)).a.xx, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.x)), -1209f))).e, ~4294967295u, false);
    let var_3 = _wgslsmith_dot_vec2_u32(select(abs(global1[_wgslsmith_index_u32(min(~0u, 12671u), 27u)]), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 4294967295u, u_input.d, var_2.d), vec4<u32>(72022u, 0u, var_2.d, global2.b)), 98356u), vec2<bool>(global2.c, global2.c)), ~vec2<u32>(countOneBits(44163u), var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.d, _wgslsmith_add_u32(119440u, 0u), _wgslsmith_div_u32(~max(1u, 4294967295u), 13943u)), _wgslsmith_f_op_f32(f32(-1f) * -274f));
}


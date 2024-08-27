struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 22>;

var<private> global2: vec4<f32> = vec4<f32>(-299f, 220f, -266f, -668f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = 1u;
    var var_1 = (-(-vec2<i32>(global0.b.a, -24779i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 83392u), vec2<u32>(0u, 0u)) % vec2<u32>(32u))) << (vec2<u32>(~74929u, ~(~4294967295u)) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, ~0u)) % vec2<u32>(32u));
    var var_2 = Struct_1(-1314f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.a) * global2.x)))), global0.a);
    let var_3 = countOneBits(reverseBits(vec2<u32>(1u, 1u)));
    var var_4 = 1u;
    return var_3;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    global0 = global1[_wgslsmith_index_u32(arg_2, 22u)];
    let var_0 = (_wgslsmith_mod_vec4_i32(vec4<i32>(~(-863i), global0.b.a, global0.b.a, arg_0.a), -vec4<i32>(49454i, 67959i, u_input.a, global0.b.a)) ^ ~vec4<i32>(~global0.b.a, ~51582i, global0.b.a, -11288i)) | -abs(abs(max(vec4<i32>(global0.b.a, -1i, arg_0.a, global0.b.a), vec4<i32>(-36256i, arg_0.a, u_input.a, 1i))));
    var var_1 = firstTrailingBit(vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(arg_2, arg_2) & ~34255u), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~arg_2), ~func_3(vec2<i32>(global0.b.a, -14664i)))));
    var_1 = vec2<u32>(0u, max(firstLeadingBit(4294967295u), arg_2)) | vec2<u32>(firstTrailingBit(arg_2), (_wgslsmith_mult_u32(4294967295u, var_1.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(57515u, 68409u)) % 32u)) << (1u % 32u));
    global1 = array<Struct_3, 22>();
    return global1[_wgslsmith_index_u32(var_1.x, 22u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(-63904i, -1i, -32359i), max(vec3<i32>(31677i, 1i, arg_1.b.a), vec3<i32>(32303i, arg_1.b.a, u_input.a)))), ~(~min(0i, -1i))), ~vec2<i32>(2147483647i, i32(-1i) * -1i), select(_wgslsmith_div_vec2_i32(u_input.b >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(global0.b.a, arg_0.b.a)), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, arg_1.a)), vec2<bool>(arg_1.a, false), !arg_0.a)) ^ -u_input.b);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, ~_wgslsmith_div_u32(3740u, 1u) << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 45621u, 41208u), 1u) % 32u), ~(~(~37447u)), 1u));
    let var_2 = func_2(Struct_2(~(-2147483647i), _wgslsmith_f_op_f32(exp2(arg_1.b.d.a)) == _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(min(arg_0.b.d.a, -1000f))), func_2(func_2(func_2(global0.b, Struct_1(global2.x, arg_1.b.e.a, global0.a), 124769u).b, global0.b.c, _wgslsmith_mult_u32(23860u, 15239u)).b, func_2(func_2(arg_0.b, arg_1.b.d, 1u).b, func_2(Struct_2(2147483647i, false, Struct_1(642f, -2517f, false), global0.b.d, Struct_1(1175f, arg_0.b.d.b, arg_0.a)), arg_0.b.d, 16486u).b.d, 1u).b.d, 0u).b.c, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x + -226f), _wgslsmith_f_op_f32(step(global2.x, arg_0.b.d.b)))), global0.b.e.b, global0.a), arg_1.b.c), func_2(arg_1.b, func_2(func_2(arg_0.b, arg_1.b.d, _wgslsmith_dot_vec3_u32(vec3<u32>(92494u, 51714u, 1577u), vec3<u32>(1u, 4294967295u, 1u))).b, Struct_1(1005f, arg_0.b.e.a, all(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.b.c.c))), 19182u).b.e, _wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(48954u, _wgslsmith_clamp_u32(3901u, 17881u, 61077u)))).b.c, 4294967295u).b;
    var var_3 = -select(_wgslsmith_div_vec4_i32(max(vec4<i32>(global0.b.a, 1i, var_2.a, -29885i), vec4<i32>(arg_1.b.a, 2147483647i, 62292i, var_0.x)), vec4<i32>(arg_0.b.a, 1i, arg_1.b.a, 1i)), vec4<i32>(~(-1i), ~arg_0.b.a, countOneBits(var_0.x), min(arg_1.b.a, 0i)), any(!vec4<bool>(false, true, true, arg_0.a))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(func_3(~u_input.b).x, ~min(1875u, 0u), ~(~26601u), ~1u), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, 85186u, 0u, 0u)), select(~vec4<u32>(1u, 20123u, 29135u, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 1u, 6158u), !vec4<bool>(arg_0.b.e.c, arg_0.b.d.c, false, false)))) % vec4<u32>(32u));
    global0 = Struct_3(!all(vec2<bool>(!global0.b.e.c, false)), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.b.a, arg_0.b.a) << (vec3<u32>(0u, 35040u, 48239u) % vec3<u32>(32u)), reverseBits(var_3.ywz) & -var_3.yxw), true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.e.b * -320f) + global2.x), _wgslsmith_f_op_f32(-arg_0.b.d.a), any(vec4<bool>(false, arg_0.b.b, var_2.b, true)) || any(vec2<bool>(true, arg_1.b.b))), func_2(func_2(func_2(arg_0.b, Struct_1(154f, var_2.d.a, arg_1.b.e.c), 0u).b, func_2(var_2, Struct_1(global0.b.d.a, -1000f, arg_0.a), 0u).b.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1258u, 1u), vec2<u32>(3658u, 50263u))).b, func_2(Struct_2(-1i, false, Struct_1(global2.x, 144f, true), global0.b.c, global0.b.d), Struct_1(725f, global2.x, true), 1u).b.e, _wgslsmith_add_u32(firstTrailingBit(1u), 26903u)).b.e, global0.b.e));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    global0 = func_4(func_2(Struct_2(2147483647i, select(true, global0.a || arg_1.c.c, arg_1.e.c | arg_1.d.c), Struct_1(global2.x, _wgslsmith_f_op_f32(sign(global0.b.e.b)), arg_1.b), Struct_1(_wgslsmith_f_op_f32(global0.b.c.a * -1000f), _wgslsmith_f_op_f32(577f * -1251f), all(vec2<bool>(arg_1.b, true))), arg_1.c), arg_1.e, ~1u), func_2(func_2(Struct_2(~global0.b.a, true, global0.b.d, func_2(Struct_2(arg_1.a, true, arg_1.e, Struct_1(-297f, arg_1.c.a, false), Struct_1(global2.x, -304f, arg_1.d.c)), Struct_1(-918f, 2109f, global0.a), 4294967295u).b.e, func_2(Struct_2(-15512i, global0.b.b, arg_1.c, Struct_1(arg_1.e.b, arg_1.d.a, false), Struct_1(arg_1.c.a, global2.x, global0.b.c.c)), Struct_1(arg_1.d.a, 1000f, global0.a), 32587u).b.e), func_2(Struct_2(48033i, false, arg_1.c, Struct_1(1384f, 800f, global0.a), Struct_1(-848f, arg_1.c.b, true)), Struct_1(global0.b.d.a, 301f, global0.a), _wgslsmith_add_u32(0u, 92095u)).b.e, 1u).b, global0.b.e, 26042u));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(abs(1u) >> (~4294967295u % 32u)) & _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(40516u, 141747u, 42736u)))), 22u)];
    global1 = array<Struct_3, 22>();
    let var_1 = var_0.b.c;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, 294f, -1295f, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1886f, 979f, 572f, -694f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-220f)), -439f, _wgslsmith_f_op_f32(-1084f + var_0.b.e.b), _wgslsmith_f_op_f32(-774f - global2.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1131f, var_1.a, arg_1.c.a), vec4<f32>(-1206f, -356f, -300f, var_1.a)), vec4<f32>(580f, 397f, -798f, global2.x), !vec4<bool>(var_0.a, true, var_1.c, arg_1.e.c))))));
    return StorageBuffer(~abs(1u), var_0.b.a, -_wgslsmith_mult_vec4_i32(min(~vec4<i32>(arg_1.a, arg_1.a, var_0.b.a, arg_1.a), max(vec4<i32>(u_input.a, u_input.a, arg_1.a, arg_1.a), vec4<i32>(arg_1.a, arg_1.a, 2147483647i, u_input.a))), -(vec4<i32>(global0.b.a, 11245i, global0.b.a, -1i) & vec4<i32>(u_input.a, 1i, 18629i, global0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.d.a;
    global1 = array<Struct_3, 22>();
    var var_1 = global0.b;
    var var_2 = Struct_1(-694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), !any(!(!vec4<bool>(var_1.c.c, false, var_1.e.c, true))));
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    let x = u_input.a;
    s_output = func_1(global2.x, global0.b);
}


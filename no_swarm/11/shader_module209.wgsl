struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: Struct_3;

var<private> global2: vec4<i32> = vec4<i32>(-14930i, 69041i, -6531i, i32(-2147483648));

var<private> global3: i32;

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<u32>(35147u, 1u, 104703u), 1000f, -8060i, -449f, vec4<i32>(-7447i, 2147483647i, 1i, 2147483647i)), Struct_3(vec3<u32>(8553u, 50683u, 30212u), -946f, 1i, -212f, vec4<i32>(-41634i, -50256i, -1i, 49124i)), Struct_3(vec3<u32>(30787u, 1u, 0u), 229f, i32(-2147483648), -2443f, vec4<i32>(-21830i, 2147483647i, -62211i, i32(-2147483648))), Struct_3(vec3<u32>(72064u, 31072u, 31959u), -2517f, -1i, 1548f, vec4<i32>(0i, 1i, i32(-2147483648), i32(-2147483648))), Struct_3(vec3<u32>(1u, 54421u, 53990u), 368f, 1i, -1000f, vec4<i32>(23334i, -1i, 1i, 10147i)), Struct_3(vec3<u32>(70516u, 1u, 17508u), 569f, 32299i, 442f, vec4<i32>(2147483647i, -1i, -34641i, -52119i)), Struct_3(vec3<u32>(75011u, 1u, 0u), 855f, 2147483647i, 420f, vec4<i32>(31585i, 25049i, 0i, -7366i)), Struct_3(vec3<u32>(0u, 0u, 5925u), 1799f, 35727i, 1000f, vec4<i32>(17606i, -25136i, 0i, 2147483647i)), Struct_3(vec3<u32>(0u, 11231u, 3680u), 1000f, -7398i, 1350f, vec4<i32>(-2074i, -12388i, -16339i, 16422i)), Struct_3(vec3<u32>(1u, 34774u, 53259u), 918f, 0i, -266f, vec4<i32>(-48231i, 0i, -1i, 1i)), Struct_3(vec3<u32>(88945u, 4294967295u, 57089u), -470f, 6036i, -411f, vec4<i32>(-47010i, 2147483647i, i32(-2147483648), 1i)), Struct_3(vec3<u32>(1u, 4294967295u, 29720u), -130f, 1i, 1000f, vec4<i32>(0i, 32632i, 32239i, i32(-2147483648))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_3(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0, 34799u, global1.a.x), vec4<u32>(arg_0, 1u, u_input.a.x, u_input.c)), u_input.c, ~(~6518u)) ^ _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, global1.a.x, 4294967295u), vec3<u32>(u_input.a.x, 75306u, global1.a.x) & vec3<u32>(32829u, global1.a.x, 1u), arg_1.d), global1.a, ~vec3<u32>(arg_0, global1.a.x, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-1143f * global1.d))), _wgslsmith_f_op_f32(-arg_1.c.c), true))), firstLeadingBit(1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1256f - _wgslsmith_f_op_f32(-172f + arg_1.a.c)) - 1890f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d + 620f), _wgslsmith_f_op_f32(arg_1.c.c * 278f), true)) + 1000f)), (global1.e ^ global1.e) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, global1.a.x, 46783u, u_input.b.x), ~vec4<u32>(global1.a.x, 4294967295u, u_input.b.x, 1u)) % vec4<u32>(32u)));
    var var_1 = vec4<bool>(arg_1.d && all(vec3<bool>(true, arg_1.d, true)), true, arg_1.d, max(arg_0, _wgslsmith_add_u32(0u, 27198u)) > _wgslsmith_mod_u32(1u, ~(var_0.a.x << (1u % 32u))));
    var var_2 = global4[_wgslsmith_index_u32(4294967295u ^ u_input.c, 12u)];
    var_1 = vec4<bool>(true, false, false, !(false | select(select(var_1.x, var_1.x, true), false, true)));
    var var_3 = var_2.c;
    return !(_wgslsmith_f_op_f32(-var_0.b) > arg_1.a.c);
}

fn func_2() -> i32 {
    var var_0 = vec3<bool>(true, !func_3(31484u, Struct_2(Struct_1(58835i, vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -46867i), global1.d, global2.x, 21971i), 5570i, Struct_1(0i, u_input.e, global1.b, 1i, u_input.e.x), false, u_input.e.x)), true);
    let var_1 = global1.c;
    global3 = -2538i;
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, 4294967295u ^ u_input.c), 12u)];
    let var_3 = 462f;
    return max(31774i ^ (~_wgslsmith_mult_i32(global1.e.x, u_input.d.x) >> (_wgslsmith_clamp_u32(1u, ~20325u, 1u) % 32u)), min(-_wgslsmith_dot_vec4_i32(global1.e, _wgslsmith_div_vec4_i32(var_2.e, global1.e)), firstLeadingBit(global2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, reverseBits(~firstLeadingBit(u_input.b.x)), 0u), reverseBits(global1.a));
    var_0 = abs(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 0u)));
    let var_1 = firstLeadingBit(~max(global1.a.x, u_input.b.x));
    var var_2 = Struct_3(vec3<u32>(53539u, _wgslsmith_add_u32(var_1, u_input.b.x), _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b.x, global1.a.x), global1.a.yx) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(~var_1, ~global1.a.x))), 233f, _wgslsmith_dot_vec3_i32(abs(global2.zyw), ~(-global0[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c, -1154f))) - arg_1.c.c) - 1214f), u_input.e);
    var_2 = Struct_3(vec3<u32>(u_input.b.x, 40037u, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)) * arg_1.a.c), ~13976i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2275f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1660f - 1281f), _wgslsmith_f_op_f32(f32(-1f) * -1360f))), true))), arg_1.a.b);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> vec4<i32> {
    global3 = countOneBits(~global2.x);
    let var_0 = func_4(Struct_1(abs(func_2()), vec4<i32>(_wgslsmith_mod_i32(-global2.x, 1i), ~reverseBits(1i), select(-1i, _wgslsmith_mod_i32(u_input.d.x, global1.c), false), func_2()), global1.d, global1.e.x | 40969i, u_input.d.x), Struct_2(Struct_1(~(-22062i), min(vec4<i32>(2147483647i, u_input.e.x, u_input.d.x, u_input.d.x), global1.e), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_0 - arg_2)), _wgslsmith_mod_i32(-u_input.d.x, -24744i), -u_input.d.x), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 1i), _wgslsmith_sub_i32(u_input.e.x, global1.c), 9495i), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.e.yw, global1.e.yx, global1.e.zx), abs(vec2<i32>(global1.e.x, u_input.d.x))), vec4<i32>(-1i, 1i, global1.e.x, max(-54535i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1245f), -global1.c, _wgslsmith_mod_i32(global2.x, func_2())), true, u_input.e.x));
    return -vec4<i32>(func_4(var_0.c, func_4(var_0.c, var_0)).a.b.x, _wgslsmith_div_i32((var_0.a.a | 1i) ^ -u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, global2.x, -2147483647i, global2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-38176i, u_input.d.x, -70889i, global1.c), global1.e))), 41259i, ~(-61445i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_sub_vec4_i32(vec4<i32>(~0i, global2.x, ~global2.x, 19946i), _wgslsmith_mod_vec4_i32(func_1(_wgslsmith_f_op_f32(step(661f, global1.b)), vec3<f32>(1f, 1f, 1f), global1.b, u_input.a.x), global1.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.d, global1.d, 930f, global1.d))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, global1.d, -1008f, 442f))))));
    global4 = array<Struct_3, 12>();
    var var_2 = 1i;
    var var_3 = func_4(func_4(Struct_1(~firstLeadingBit(-37459i), global1.e, _wgslsmith_f_op_f32(abs(-2931f)), 45275i, _wgslsmith_mod_i32(_wgslsmith_add_i32(global2.x, -31738i), u_input.d.x)), func_4(Struct_1(global1.c, vec4<i32>(var_0.x, u_input.d.x, u_input.e.x, 28243i), var_1.x, u_input.e.x, -global1.e.x), Struct_2(func_4(Struct_1(global2.x, vec4<i32>(global2.x, 0i, 1i, var_0.x), -1000f, 2147483647i, 1i), Struct_2(Struct_1(var_0.x, vec4<i32>(-7797i, -2147483647i, global2.x, var_0.x), global1.d, 1i, -1i), u_input.e.x, Struct_1(u_input.d.x, global1.e, 619f, global1.e.x, 20977i), false, u_input.d.x)).c, -1i, Struct_1(var_0.x, vec4<i32>(0i, var_0.x, global1.e.x, 50816i), var_1.x, 1i, 0i), all(vec3<bool>(true, true, false)), _wgslsmith_sub_i32(13343i, 19318i)))).a, Struct_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 23862i), vec2<i32>(-50006i, 1i)), abs(20302i)), countOneBits(u_input.e), var_1.x, ~0i, func_4(Struct_1(var_0.x, vec4<i32>(var_0.x, u_input.d.x, -1i, global2.x), -1000f, global1.c, u_input.d.x), Struct_2(Struct_1(20854i, global1.e, var_1.x, u_input.e.x, -2147483647i), -2147483647i, Struct_1(u_input.d.x, global1.e, var_1.x, 0i, u_input.e.x), true, 1i)).c.e), abs(_wgslsmith_mod_i32(72969i, ~var_0.x)), func_4(func_4(func_4(Struct_1(1i, u_input.d, var_1.x, 1i, global2.x), Struct_2(Struct_1(0i, vec4<i32>(0i, global2.x, global1.c, global2.x), var_1.x, u_input.e.x, u_input.d.x), var_0.x, Struct_1(-9383i, u_input.d, -1000f, var_0.x, 2147483647i), false, u_input.e.x)).a, func_4(Struct_1(u_input.e.x, vec4<i32>(u_input.e.x, 49230i, var_0.x, var_0.x), 578f, -2147483647i, -2147483647i), Struct_2(Struct_1(0i, vec4<i32>(19863i, var_0.x, global1.c, var_0.x), 327f, u_input.e.x, 63913i), u_input.e.x, Struct_1(853i, global1.e, -1929f, global2.x, global2.x), false, u_input.d.x))).a, Struct_2(func_4(Struct_1(2147483647i, vec4<i32>(u_input.d.x, global2.x, -1i, -2147483647i), var_1.x, -11857i, -2147483647i), Struct_2(Struct_1(global1.e.x, vec4<i32>(1i, 2147483647i, global2.x, 20465i), var_1.x, u_input.d.x, 1i), 2147483647i, Struct_1(global1.e.x, vec4<i32>(global2.x, var_0.x, var_0.x, var_0.x), global1.b, u_input.d.x, -1i), true, -2433i)).a, global2.x, Struct_1(global2.x, vec4<i32>(-9254i, global1.c, global2.x, 37683i), -598f, 18453i, u_input.d.x), true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, global2.x), global1.e.yx))).a, true, u_input.d.x)).a;
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_i32(-2147483647i, min(var_3.a, var_3.b.x) << (0u % 32u)), max(u_input.d << (vec4<u32>(0u, global1.a.x, u_input.c, global1.a.x) % vec4<u32>(32u)), select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.e.x, 23916i), global1.e, false)) & -max(vec4<i32>(2147483647i, var_0.x, global2.x, 17935i), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(723f)) * global1.d)), global1.c, reverseBits(select(var_0.x, 0i, false)) << ((firstTrailingBit(4294967295u) | 1u) % 32u)), firstLeadingBit(-32631i), Struct_1(var_0.x, abs(vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, -1i, 2147483647i, -50456i)), _wgslsmith_f_op_f32(min(var_3.c, 2483f)), ~(-u_input.d.x >> (0u % 32u)), abs(-_wgslsmith_sub_i32(var_3.e, -2732i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2321f)), global1.d, true)) > global1.d, -40758i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec3_f32(-var_1.yzw), _wgslsmith_f_op_f32(floor(var_3.c)), 4294967295u).zwy, vec3<i32>(18946i, var_4.b, _wgslsmith_div_i32(func_2(), ~2147483647i))), ~global1.c);
}


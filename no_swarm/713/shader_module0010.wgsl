struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: Struct_3 = Struct_3(0u, vec4<u32>(4294967295u, 76831u, 0u, 4294967295u));

var<private> global4: array<bool, 23>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = vec3<u32>(arg_1, _wgslsmith_mult_u32(_wgslsmith_add_u32(~global3.a, ~global3.b.x), 0u), ~abs(~12184u)) & (vec3<u32>(global3.a, u_input.b.x, 59940u) ^ _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.b), global3.b.ywy));
    global3 = Struct_3(~_wgslsmith_dot_vec4_u32(global3.b, vec4<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_u32(global3.b, vec4<u32>(var_0.x, u_input.b.x, 17189u, global3.a)), ~global3.b.x)), global3.b);
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_sub_u32(reverseBits(~global3.b.x), 40442u)) & 1u;
    global3 = Struct_3(firstLeadingBit(17931u), ~(countOneBits(abs(global3.b)) << (global3.b % vec4<u32>(32u))));
    global3 = Struct_3(~_wgslsmith_add_u32(1u, var_0.x), max(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(77345u, 26443u), reverseBits(global3.a), global3.a) ^ vec4<u32>(_wgslsmith_mult_u32(var_1, 46252u), 1u, ~1u, 0u >> (var_1 % 32u)), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global3.a, 4294967295u, 57378u, 1u), global3.b))));
    return var_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = u_input.b.x;
    global2 = array<Struct_1, 27>();
    var var_1 = -u_input.a.x;
    let var_2 = global4[_wgslsmith_index_u32(~62448u, 23u)];
    var var_3 = ~min(35457u, ~global3.a);
    return func_3(u_input.a.x, ~33740u);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(((reverseBits(1u) << (global3.a % 32u)) ^ ~42217u) << (_wgslsmith_sub_u32((u_input.b.x >> (30416u % 32u)) >> ((u_input.b.x ^ 90968u) % 32u), u_input.b.x) % 32u), max(global3.b >> (~(~global3.b) % vec4<u32>(32u)), ~(select(global3.b, vec4<u32>(1u, global3.a, 0u, u_input.b.x), vec4<bool>(global4[_wgslsmith_index_u32(global3.b.x, 23u)], global4[_wgslsmith_index_u32(global3.b.x, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)])) | global3.b)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, global3.b.x), ~1u) << (global3.b.x % 32u)), ~4294967295u), 27u)];
    let var_2 = reverseBits(vec3<u32>(min(~20226u, u_input.b.x & 1u) << (~_wgslsmith_sub_u32(1u, var_1.d) % 32u), func_4(Struct_2(Struct_1(vec4<f32>(330f, 1394f, var_1.b, -1340f), 2377f, var_1.c, 53642u), vec2<bool>(true, true), global1[_wgslsmith_index_u32(firstLeadingBit(5511u), 7u)], select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 23u)], global4[_wgslsmith_index_u32(var_0.a, 23u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(var_0.a, 23u)], global4[_wgslsmith_index_u32(0u, 23u)]), var_1.c.x), -1627f), global1[_wgslsmith_index_u32(func_3(20743i, _wgslsmith_sub_u32(78015u, 0u)), 7u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.a.x), var_1.a.xw), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1145f, 667f), vec2<f32>(var_1.b, -1123f))), var_1.c))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13033u, 7965u, 14u), min(vec3<u32>(global3.a, var_1.d, var_1.d), u_input.b)), 21187u)));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(~(~u_input.b.x), 27u)], var_1.c, global2[_wgslsmith_index_u32(3824u, 27u)], !(!vec3<bool>(var_1.c.x | global4[_wgslsmith_index_u32(var_1.d, 23u)], !global4[_wgslsmith_index_u32(u_input.b.x, 23u)], var_1.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))));
    return Struct_3(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(select(var_3.a.d, u_input.b.x, false), 9076u), _wgslsmith_add_u32(59332u >> (var_0.b.x % 32u), ~15516u)), 10641u), vec4<u32>(_wgslsmith_sub_u32(var_0.b.x, func_3(u_input.a.x, _wgslsmith_mod_u32(global3.a, 4294967295u))), var_1.d, var_1.d, u_input.b.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = ~select(~min(_wgslsmith_clamp_vec3_u32(vec3<u32>(27252u, u_input.b.x, global3.a), arg_0.b.yyw, vec3<u32>(global3.a, arg_0.b.x, 1u)), ~u_input.b), _wgslsmith_div_vec3_u32(arg_0.b.ywx, reverseBits(reverseBits(u_input.b))), !select(!arg_1, !vec3<bool>(arg_1.x, true, false), arg_1));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -4347i, ~u_input.a.x), abs(u_input.a)) >> (85235u % 32u);
    let var_1 = arg_0;
    global0 = firstLeadingBit(u_input.a.x);
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, ~_wgslsmith_add_i32(u_input.a.x, -3911i), reverseBits(~u_input.a.x), 2147483647i), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(1i, -16403i, u_input.a.x, 0i)), ~vec4<i32>(u_input.a.x, 30049i, -19626i, 2147483647i) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i), vec4<i32>(0i, u_input.a.x, 693i, u_input.a.x)))), firstTrailingBit(vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, -34909i), _wgslsmith_sub_i32(u_input.a.x, 0i)), 1i, 0i | ~u_input.a.x)));
    return func_2();
}

fn func_1() -> f32 {
    global0 = -11556i;
    global1 = array<Struct_1, 7>();
    var var_0 = false;
    global2 = array<Struct_1, 27>();
    let var_1 = func_5(func_2(), vec3<bool>(any(select(vec3<bool>(true, true, false), !vec3<bool>(global4[_wgslsmith_index_u32(global3.b.x, 23u)], global4[_wgslsmith_index_u32(1u, 23u)], true), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], global4[_wgslsmith_index_u32(37078u, 23u)], false))), !(!(true | global4[_wgslsmith_index_u32(global3.a, 23u)])), global4[_wgslsmith_index_u32(~(~(~1u)), 23u)]));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(f32(-1f) * -769f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1840f, 103f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1107f - 800f), 1275f))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = abs(63797u);
    var_0 = u_input.b.x;
    global3 = func_2();
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(1u, 27u)], arg_1.c, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.b, 179f, arg_1.b)) - _wgslsmith_f_op_vec4_f32(-arg_1.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.b * arg_1.b), arg_1.b)), 1177f, select(select(select(vec2<bool>(false, arg_1.c.x), vec2<bool>(arg_1.c.x, arg_1.c.x), global4[_wgslsmith_index_u32(global3.b.x, 23u)]), vec2<bool>(global4[_wgslsmith_index_u32(5945u, 23u)], arg_1.c.x), any(vec4<bool>(false, false, false, arg_1.c.x))), select(arg_1.c, arg_1.c, vec2<bool>(global4[_wgslsmith_index_u32(0u, 23u)], true)), arg_1.c.x), ~0u), select(vec3<bool>(arg_1.c.x, arg_1.c.x, global4[_wgslsmith_index_u32(global3.a, 23u)]), !vec3<bool>(false, !arg_1.c.x, !global4[_wgslsmith_index_u32(arg_1.d, 23u)]), select(!vec3<bool>(global4[_wgslsmith_index_u32(global3.a, 23u)], false, false), !select(vec3<bool>(arg_1.c.x, global4[_wgslsmith_index_u32(arg_1.d, 23u)], arg_1.c.x), vec3<bool>(false, true, true), true), false)), _wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)));
    var var_2 = -(~(~(-abs(vec3<i32>(-2147483647i, 1i, u_input.a.x)))));
    return func_5(arg_2, vec3<bool>(var_1.a.c.x, arg_1.c.x, !(var_1.e <= _wgslsmith_f_op_f32(select(var_1.c.a.x, 344f, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2328f, 2063f, 625f, -154f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-272f, -106f, 1000f, -433f) + vec4<f32>(-1021f, 362f, -602f, -600f)))) + vec4<f32>(976f, 1590f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -2500f))), -290f, !select(vec2<bool>(true, true), !vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)], false), vec2<bool>(global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, max(47733u, 66445u), 24727u, 54365u), select(min(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u), global3.b), firstLeadingBit(vec4<u32>(1u, u_input.b.x, 1u, 80137u)), global4[_wgslsmith_index_u32(~0u, 23u)]))), Struct_3(countOneBits(global3.a), vec4<u32>(47638u, countOneBits(_wgslsmith_add_u32(21256u, 0u)), func_3(max(u_input.a.x, u_input.a.x), reverseBits(4294967295u)), 1u)));
    global4 = array<bool, 23>();
    global1 = array<Struct_1, 7>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(167f - 1453f), _wgslsmith_f_op_f32(f32(-1f) * -998f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1435f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f + 203f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1498f)) - _wgslsmith_f_op_f32(f32(-1f) * -713f)), _wgslsmith_f_op_f32(sign(1000f)))));
    var var_1 = Struct_3(4294967295u, ~func_5(func_5(func_2(), select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], false, true), vec3<bool>(global4[_wgslsmith_index_u32(42320u, 23u)], false, global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), true)), select(select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(global3.b.x, 23u)]), vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(global3.b.x, 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), global4[_wgslsmith_index_u32(global3.b.x, 23u)]), !vec3<bool>(global4[_wgslsmith_index_u32(global3.a, 23u)], global4[_wgslsmith_index_u32(28566u, 23u)], true), true)).b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1094f, var_0.x, -1373f), vec4<f32>(var_0.x, -217f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-650f, 729f, 1000f, var_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 861f, 540f, 599f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1366f, -1319f, -462f), vec4<f32>(-771f, 173f, var_0.x, var_0.x))))), select(vec4<bool>(true, all(vec2<bool>(global4[_wgslsmith_index_u32(98484u, 23u)], true)), false, !global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec4<bool>(any(vec2<bool>(global4[_wgslsmith_index_u32(global3.a, 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)])), all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], true, global4[_wgslsmith_index_u32(0u, 23u)], global4[_wgslsmith_index_u32(1u, 23u)])), true, global4[_wgslsmith_index_u32(1u, 23u)]), global4[_wgslsmith_index_u32(0u & global3.b.x, 23u)]))), var_0.x, !vec2<bool>((true || global4[_wgslsmith_index_u32(29715u, 23u)]) & true, !global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), 36453u);
    global4 = array<bool, 23>();
    var var_3 = -_wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 26305i, -35828i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~select(vec4<i32>(u_input.a.x, u_input.a.x, 31886i, u_input.a.x), vec4<i32>(1i, u_input.a.x, -1i, -4500i), false)) ^ (firstTrailingBit(abs(vec4<i32>(-62837i, 23455i, 14060i, 2147483647i)) ^ vec4<i32>(2147483647i, u_input.a.x, -49772i, 1i)) & abs(countOneBits(vec4<i32>(u_input.a.x, -25370i, -1i, u_input.a.x))));
    global1 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(select(min(~(vec4<i32>(var_3.x, u_input.a.x, 2147483647i, var_3.x) >> (global3.b % vec4<u32>(32u))), abs(firstTrailingBit(vec4<i32>(0i, 8721i, u_input.a.x, -2147483647i)))), countOneBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1333i), _wgslsmith_add_vec4_i32(vec4<i32>(-53316i, 11828i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 17142i, u_input.a.x)))), select(select(select(vec4<bool>(false, true, false, var_2.c.x), vec4<bool>(var_2.c.x, global4[_wgslsmith_index_u32(var_1.b.x, 23u)], var_2.c.x, false), vec4<bool>(false, var_2.c.x, false, var_2.c.x)), select(vec4<bool>(var_2.c.x, true, var_2.c.x, false), vec4<bool>(global4[_wgslsmith_index_u32(global3.b.x, 23u)], false, true, global4[_wgslsmith_index_u32(global3.a, 23u)]), false), false), !(!vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(var_2.d, 23u)])), !(var_1.a <= 16886u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(312f)))) + _wgslsmith_f_op_f32(f32(-1f) * -617f)), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(trunc(var_2.a.x)))))), 26813u);
}


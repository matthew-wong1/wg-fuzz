struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: vec2<f32> = vec2<f32>(-453f, -1000f);

var<private> global2: array<i32, 31> = array<i32, 31>(4876i, -53781i, -64260i, 0i, -1i, 0i, 67107i, -13165i, -16201i, -1i, i32(-2147483648), -17142i, 2147483647i, 0i, i32(-2147483648), 1131i, 62534i, -20900i, -32654i, 2147483647i, 2147483647i, 1i, -49047i, -25227i, 61823i, 21246i, -50583i, -49523i, -8654i, -25323i, 0i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -372f, 2194f, global1.x) * vec4<f32>(global1.x, -553f, 510f, global1.x)))))));
}

fn func_3() -> vec4<u32> {
    global2 = array<i32, 31>();
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(15067u, 31u)], ~(u_input.c.x << (u_input.b % 32u)) << (27388u % 32u)), -8632i, u_input.c.x);
    let var_1 = true;
    var_0 = vec3<i32>(u_input.c.x, -_wgslsmith_sub_i32(~(-65394i), ~1i & _wgslsmith_sub_i32(-2147483647i, u_input.c.x)), var_0.x);
    global2 = array<i32, 31>();
    return vec4<u32>(~min(3095u, 1u), _wgslsmith_mod_u32(70100u, select(u_input.a, u_input.b, var_1)), 55827u, 1u);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> vec4<u32> {
    global0 = array<Struct_3, 17>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 31u)];
    var var_1 = !arg_1.a.c.x;
    var var_2 = Struct_2(Struct_1(arg_1.a.a, -vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], -1i, -2147483647i), select(vec4<bool>(true, true, false, any(arg_1.a.c.zy)), select(!vec4<bool>(false, arg_3, arg_1.a.c.x, arg_2.b.x), vec4<bool>(false, false, false, false), true), select(!arg_1.a.c, !arg_1.a.c, arg_3 || arg_1.a.c.x)), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, -937f, -540f) - vec3<f32>(-1043f, 439f, global1.x))))));
    var var_3 = Struct_3(1u, select(vec4<bool>(all(arg_2.c), !var_2.a.c.x, !var_2.a.c.x, !(!arg_3)), select(!vec4<bool>(true, true, false, arg_2.c.x), !arg_2.b, false), true), !arg_2.b.yz, 4294967295u);
    return ~_wgslsmith_clamp_vec4_u32(select(countOneBits(vec4<u32>(1u, 0u, u_input.a, arg_2.a)), ~vec4<u32>(var_3.a, 0u, 1u, u_input.a), arg_1.a.c) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(56622u, var_3.a, var_3.d, 0u), vec4<u32>(6532u, 7025u, 7313u, 0u)) | func_3()) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(countOneBits(32325u)), arg_2.d, arg_2.d, reverseBits(~u_input.a)), ~vec4<u32>(abs(var_3.a), _wgslsmith_mult_u32(u_input.a, var_3.d), 0u, arg_2.d));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_4) -> Struct_3 {
    global0 = array<Struct_3, 17>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(~4294967295u, 31u)], _wgslsmith_mult_i32(1i, global2[_wgslsmith_index_u32(97619u, 31u)])), u_input.c.xz), abs(vec3<i32>(u_input.c.x >> (u_input.b % 32u), u_input.c.x ^ -24877i, abs(global2[_wgslsmith_index_u32(1u, 31u)]))), !arg_3.c.b, u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(abs(1662f)), 1289f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1()).x)))));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(select(1u, arg_0, true), 31u)], ~global2[_wgslsmith_index_u32(34431u, 31u)]), -3977i), max(firstTrailingBit(global2[_wgslsmith_index_u32(46872u, 31u)]), global2[_wgslsmith_index_u32(abs(arg_1), 31u)]), var_0.a.b.x, -1i), ~_wgslsmith_div_vec4_i32(select(~vec4<i32>(-2147483647i, u_input.c.x, global2[_wgslsmith_index_u32(u_input.b, 31u)], 40529i), vec4<i32>(global2[_wgslsmith_index_u32(arg_3.c.d, 31u)], global2[_wgslsmith_index_u32(2079u, 31u)], u_input.c.x, -5507i), var_0.a.c.x), vec4<i32>(_wgslsmith_div_i32(21341i, var_0.a.b.x), ~55060i, u_input.c.x, u_input.c.x >> (arg_0 % 32u))));
    var var_2 = abs(12189u);
    var_0 = Struct_2(var_0.a);
    return global0[_wgslsmith_index_u32(func_3().x, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1086f, _wgslsmith_f_op_f32(ceil(-457f)), _wgslsmith_f_op_f32(global1.x - -127f), _wgslsmith_f_op_f32(-285f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1348f + 561f) - _wgslsmith_f_op_f32(-global1.x)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(389f)), 160f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), 852f))));
    var var_1 = 432f;
    let var_2 = _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-17264i, 62278i, u_input.c.x, -31695i)), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), ~0i, ~(-1i), abs(59149i)))), ~1i);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_3 = Struct_4(_wgslsmith_div_f32(global1.x, 1240f), 4294967295u, func_4(_wgslsmith_sub_u32(u_input.a, abs(u_input.a)), reverseBits(~u_input.a), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.x)))), Struct_2(Struct_1(u_input.c.zx, vec3<i32>(-12393i, u_input.c.x, 27445i), vec4<bool>(false, true, false, false), 64437i, vec3<f32>(-1480f, -372f, var_0.x))), Struct_3(u_input.b, vec4<bool>(false, false, true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_add_u32(45934u, u_input.a)), true), Struct_4(var_0.x, u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43037u, u_input.a, 30445u, 14442u) & vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a), ~vec4<u32>(1u, u_input.b, u_input.b, 83000u)), 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())));
}


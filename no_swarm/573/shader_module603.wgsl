struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<vec3<f32>, 7>;

var<private> global2: vec2<u32>;

var<private> global3: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    let var_0 = -1755f;
    var var_1 = Struct_2(vec2<i32>(1i, ~(firstLeadingBit(39158i) << ((global2.x & 20742u) % 32u))), Struct_1(global3.xx));
    let var_2 = all(select(vec3<bool>(any(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, true, arg_2), vec3<bool>(false, arg_2, arg_2))), true, countOneBits(u_input.c) != _wgslsmith_mod_u32(global2.x, 4294967295u)), vec3<bool>(!(var_1.a.x >= u_input.b.x), true || !arg_0.x, !(!arg_2)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, u_input.a.x), vec2<u32>(1u, 65310u)) < global2.x));
    let var_3 = !arg_2;
    let var_4 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~min(4294967295u, u_input.a.x), ~global2.x, 1673u, ~u_input.a.x), select(vec4<u32>(82869u, u_input.a.x, u_input.c, u_input.c), ~vec4<u32>(u_input.c, u_input.a.x, 41111u, u_input.a.x), true && arg_2) ^ _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), abs(vec4<u32>(global2.x, global2.x, u_input.a.x, 48697u)))), 30u)]);
    return ~abs(350u);
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = countOneBits(2147483647i << (func_3(vec2<bool>(true, any(vec4<bool>(false, true, false, false))), u_input.d.xx, true) % 32u));
    let var_1 = min(select(func_3(vec2<bool>(all(vec2<bool>(false, true)), 900f != arg_0.a.b.a.x), select(min(arg_0.a.a, vec2<i32>(-5447i, -17218i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -22807i), vec2<i32>(u_input.b.x, 2147483647i)), select(false, false, false)), true), u_input.c, any(vec4<bool>(true, true, true, true))), 4294967295u);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_sub_i32(19507i, -28743i);
    var_2 = arg_0;
    return 27469u;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_2, 30>();
    global2 = ~vec2<u32>(firstLeadingBit(86540u), ~_wgslsmith_mod_u32(arg_0, u_input.c)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(~(~1u), ~1u), abs(u_input.a << (u_input.a % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(countOneBits(u_input.a), vec2<u32>(arg_0, 35478u))) % vec2<u32>(32u));
    var var_0 = Struct_5(Struct_4(Struct_2(vec2<i32>(1i, -2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 1000f))))), abs(countOneBits(firstLeadingBit(vec3<u32>(1u, 54500u, global2.x)))));
    var var_1 = var_0.a.a;
    var var_2 = var_0.a.a;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.x, 187f))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    let var_0 = min(arg_1, arg_1);
    global1 = array<vec3<f32>, 7>();
    var var_1 = !vec4<bool>(true, !arg_3, arg_3, arg_3);
    var var_2 = !select(vec2<bool>(true, true), !(!(!var_1.xw)), _wgslsmith_f_op_f32(func_4(10594u, vec4<i32>(arg_1, var_0, u_input.b.x, 1i), global2.x).a.x - global3.x) == func_4(1u, -u_input.b, 31664u).a.x);
    var_1 = !(!(!select(select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(false, true, arg_3, true), vec4<bool>(false, false, var_2.x, arg_3)), vec4<bool>(var_2.x, arg_3, var_2.x, false), !vec4<bool>(false, false, false, var_1.x))));
    return select(vec4<bool>(true, var_2.x, (var_0 & ~arg_1) != 38530i, var_2.x), !vec4<bool>(var_2.x, any(vec2<bool>(var_2.x, true)), false, arg_3), true & !any(select(var_1.xww, vec3<bool>(false, false, var_1.x), false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_2 {
    global1 = array<vec3<f32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1315f));
    var var_1 = !any(func_5(~vec3<u32>(global2.x, arg_1.x, 24226u) | arg_0.yyy, 13817i, func_4(func_2(Struct_4(global0[_wgslsmith_index_u32(49460u, 30u)])), vec4<i32>(u_input.b.x, 4206i, 58737i, 0i), ~arg_1.x), true));
    var_1 = true;
    var var_2 = arg_0.x;
    return global0[_wgslsmith_index_u32(1u, 30u)];
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_i32(u_input.d, select(~(-(~vec3<i32>(-1i, -2677i, -1i))), vec3<i32>(countOneBits(-arg_0), arg_0, 14038i), vec3<bool>(true, true, true)));
    let var_1 = countOneBits(vec4<i32>(arg_2.a.x, 1i, firstTrailingBit(~_wgslsmith_clamp_i32(u_input.d.x, -21540i, -982i)), ~1i));
    global2 = abs(u_input.a & ~reverseBits(vec2<u32>(global2.x, global2.x))) << (abs(countOneBits(~reverseBits(u_input.a))) % vec2<u32>(32u));
    var var_2 = Struct_4(func_1(~abs(vec4<u32>(u_input.c, 0u, 0u, global2.x)), _wgslsmith_mult_vec2_u32(reverseBits(reverseBits(vec2<u32>(1u, 0u))), u_input.a)));
    var var_3 = global2.x;
    return func_2(Struct_4(func_1(countOneBits(~vec4<u32>(global2.x, global2.x, u_input.a.x, 4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(1011u, u_input.c, global2.x), 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, global3.x)), global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x * global3.x)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 661f, global3.x, 1178f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, 500f, -1394f, -167f)))))));
    let var_1 = u_input.d.xz;
    global2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(func_6(24178i, Struct_1(global3.xy), func_1(vec4<u32>(15329u, 1u, global2.x, 4294967295u), vec2<u32>(u_input.c, u_input.a.x)), firstTrailingBit(-1i)), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x))), firstLeadingBit(abs(reverseBits(vec3<u32>(u_input.c, 4294967295u, 45442u))))), global2.x);
    let var_2 = -30346i;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-616f, global3.x, 363f, global3.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, global3.x, 219f), vec4<f32>(-492f, -405f, global3.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, var_0.x, -847f, -484f) - vec4<f32>(-1202f, global3.x, global3.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, var_0.x, global3.x, 1000f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, global3.x, var_0.x, var_0.x) * vec4<f32>(1641f, global3.x, var_0.x, 1000f)), vec4<f32>(global3.x, var_0.x, -284f, 1431f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 686f, 1000f, 218f)), vec4<f32>(1067f, 1515f, -399f, -859f), vec4<bool>(true, true, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, i32(-1i) * -2147483647i), firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.d.zy, vec2<i32>(-2147483647i, var_2)))), ~select(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 1u, global2.x, u_input.a.x), vec4<u32>(global2.x, u_input.c, u_input.c, 1u))), ~max(vec4<u32>(0u, 4294967295u, u_input.c, u_input.c), vec4<u32>(1u, 1u, u_input.c, 1u)), vec4<bool>(select(true, false, true), false, true, any(vec3<bool>(true, false, false)))));
}


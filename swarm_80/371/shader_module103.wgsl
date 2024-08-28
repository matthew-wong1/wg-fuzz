struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(857f, -514f, -399f, 391f), vec3<i32>(i32(-2147483648), -1i, 17853i), vec3<bool>(true, true, false), 144720u);

var<private> global1: array<u32, 27> = array<u32, 27>(0u, 4294967295u, 19782u, 0u, 20649u, 0u, 1u, 4294967295u, 1u, 59728u, 4294967295u, 0u, 4294967295u, 53858u, 28847u, 0u, 1u, 0u, 27353u, 1u, 1u, 4294967295u, 0u, 4294967295u, 4294967295u, 1u, 4294967295u);

var<private> global2: Struct_3 = Struct_3(5298u);

var<private> global3: array<i32, 5> = array<i32, 5>(1i, 2147483647i, 2147483647i, -2879i, i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = firstTrailingBit(1i);
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-429f, global0.a.x) + _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), 146f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)))), global0.a.x), _wgslsmith_div_vec3_i32(~global0.b, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, -2147483647i, global3[_wgslsmith_index_u32(4294967295u, 5u)]), u_input.a)), !global0.c, 1u), countOneBits(u_input.a.x), 946f);
    let var_2 = Struct_5(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.xxz + vec3<f32>(-935f, -1000f, var_1.c))) * global0.a.wwz) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, global0.a.x) * global0.a.yxx)), var_1.a.a.xyw, !var_1.a.c))), abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(0i, global3[_wgslsmith_index_u32(global2.a, 5u)])), -vec2<i32>(global0.b.x, 14649i)), ~(-vec2<i32>(1i, 0i)))), var_1.a, -(-1i | u_input.b.x) & var_1.b);
    var var_3 = Struct_4(~(~_wgslsmith_mult_vec3_u32(u_input.e, u_input.e)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-208f, _wgslsmith_f_op_f32(sign(-613f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(max(454f, -149f))))))), var_1.a.a.xxw);
    let var_4 = vec3<u32>(_wgslsmith_clamp_u32(var_3.a.x, ~(~(~global2.a)), global2.a), _wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(global2.a, 27u)]) | ~37188u, max(~4294967295u, ~var_1.a.d))), ~(~global2.a));
    return 8691i & var_2.c.x;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    global0 = Struct_1(global0.a, global0.b, select(!(!(!global0.c)), global0.c, !arg_3), _wgslsmith_add_u32(_wgslsmith_mult_u32(~global0.d >> (~arg_1.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15722u), u_input.d.yw) << (~global0.d % 32u)), _wgslsmith_add_u32(1u, ~1u)));
    let var_0 = Struct_3(global0.d);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -946f, _wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(global0.a.x * global0.a.x)) * _wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, 1141f, 3103f)))), vec3<i32>(~_wgslsmith_add_i32(1i, u_input.b.x), u_input.b.x, -1i), global0.c, ~(~(~4294967295u))), -8110i, 151f);
    global3 = array<i32, 5>();
    var_1 = Struct_2(var_1.a, func_3(-(var_1.a.b ^ global0.b), !(~global3[_wgslsmith_index_u32(4294967295u, 5u)] == abs(u_input.a.x)), !(var_0.a <= _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 0u, 76783u, 0u), vec4<u32>(var_0.a, arg_2.a, global0.d, 21441u))), !((true == arg_3) & (6878u < var_1.a.d))), -439f);
    return select(vec4<bool>(all(vec3<bool>(arg_0 || arg_0, false, true)), var_1.a.c.x, arg_0, false), !select(select(vec4<bool>(arg_0, global0.c.x, global0.c.x, arg_3), !vec4<bool>(arg_0, true, false, true), true), !vec4<bool>(var_1.a.c.x, true, true, true), vec4<bool>(true, all(global0.c.yy), !arg_0, false)), false);
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(56834u, 5u)];
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-163f, _wgslsmith_f_op_f32(-1202f * arg_0.x), 1000f, 217f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, global0.a.x, -216f) + global0.a))), vec3<i32>(_wgslsmith_div_i32(u_input.c.x, global0.b.x) >> (firstTrailingBit(global0.d ^ arg_1) % 32u), -64775i, global0.b.x), !vec3<bool>(!(!arg_3.x), !(!arg_3.x), true), global2.a);
    var var_1 = Struct_2(Struct_1(global0.a, reverseBits(-vec3<i32>(1i, global0.b.x, global0.b.x)), vec3<bool>(arg_2.x, global0.c.x, true), firstLeadingBit(u_input.e.x)), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) - arg_0.x) * arg_0.x));
    let var_2 = !(!select(arg_3, arg_3, !(global0.c.x | arg_3.x)));
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(countOneBits(u_input.e.x), 27u)]);
    return 1u & (u_input.e.x | countOneBits(4294967295u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global1 = array<u32, 27>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.xy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, arg_0.a.a.x) - arg_0.a.a.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(669f, 923f)))), false)) - global0.a.yz), _wgslsmith_dot_vec2_u32(~u_input.d.wz, u_input.e.zz), !(!vec3<bool>(global0.c.x, -8884i < u_input.a.x, any(vec4<bool>(arg_0.a.c.x, true, true, global0.c.x)))), !(!select(func_2(global0.c.x, Struct_3(global0.d), Struct_3(51522u), arg_1.a.c.x), select(vec4<bool>(global0.c.x, arg_0.a.c.x, arg_1.a.c.x, true), vec4<bool>(false, false, arg_0.a.c.x, arg_1.a.c.x), global0.c.x), any(arg_1.a.c.xz))));
    global3 = array<i32, 5>();
    var var_1 = arg_0.a.b.x;
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_div_i32(arg_1.b >> (4294967295u % 32u), u_input.a.x), u_input.c.x), 2147483647i), countOneBits(u_input.b.x >> (global1[_wgslsmith_index_u32(~global0.d, 27u)] % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)) - arg_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 5>();
    var var_0 = vec3<bool>(all(global0.c.yy) || global0.c.x, !(4294967295u < _wgslsmith_mod_u32(0u, global0.d >> (13078u % 32u))), any(!select(!global0.c.yz, global0.c.xy, !global0.c.xx)));
    global0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * -1009f) + _wgslsmith_f_op_f32(sign(1234f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(global0.a, u_input.a, vec3<bool>(false, var_0.x, var_0.x), u_input.d.x), 7892i, 971f), Struct_2(Struct_1(global0.a, vec3<i32>(2147483647i, -1i, -69029i), global0.c, 86544u), -38468i, global0.a.x))) * _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(1012f * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global0.a.x))), -1380f), vec3<i32>(~(-(i32(-1i) * -10893i)), ~func_3(global0.b, var_0.x, true, true) << (81499u % 32u), -1i), global0.c, global1[_wgslsmith_index_u32(global2.a, 27u)] ^ u_input.d.x);
    let var_1 = Struct_5(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.a.x)))), global0.a.x, 413f, _wgslsmith_f_op_f32(-global0.a.x)), -_wgslsmith_mod_vec3_i32(min(u_input.a, global0.b), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(14409u, 5u)], -2147483647i) >> (vec3<u32>(1u, 15329u, global0.d) % vec3<u32>(32u))), vec3<bool>(var_0.x, global0.c.x, true), 64585u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -250f), var_0.x || false)) * _wgslsmith_f_op_f32(abs(998f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1187f * _wgslsmith_f_op_f32(352f - global0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), -427f), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, global3[_wgslsmith_index_u32(global0.d, 5u)]), max(vec2<i32>(global0.b.x, global0.b.x), vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.d.x, 27u)]) % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, 228f, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1228f, global0.a.x, 416f, -600f)))), -u_input.a, global0.c, 20312u), ~(-global3[_wgslsmith_index_u32(41880u, 5u)]));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-min(-(~vec4<i32>(global3[_wgslsmith_index_u32(global0.d, 5u)], -20909i, 0i, -42582i)), select(-vec4<i32>(u_input.c.x, 1i, var_1.d.b.x, 20249i), -vec4<i32>(-6527i, global3[_wgslsmith_index_u32(global2.a, 5u)], 40745i, 1i), any(vec4<bool>(global0.c.x, false, var_0.x, false)))));
}


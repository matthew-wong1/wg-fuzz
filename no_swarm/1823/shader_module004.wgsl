struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true, 1i), Struct_1(false, 2147483647i), Struct_1(false, -1i), Struct_1(true, 0i), Struct_1(false, -5534i), Struct_1(false, 1i), Struct_1(true, 37926i), Struct_1(false, 2147483647i), Struct_1(true, 1199i), Struct_1(true, i32(-2147483648)), Struct_1(false, 23485i), Struct_1(true, -32439i), Struct_1(true, 27031i), Struct_1(false, 0i), Struct_1(false, 0i), Struct_1(true, -1i), Struct_1(true, -1i), Struct_1(false, 0i), Struct_1(true, -19941i), Struct_1(false, -54594i), Struct_1(false, 0i), Struct_1(false, 1i), Struct_1(true, -12607i), Struct_1(false, -1i), Struct_1(false, 2147483647i), Struct_1(true, -8435i));

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    global2 = Struct_2(18468u, ~reverseBits(global2.b), !vec2<bool>(true, !any(vec4<bool>(global2.c.x, global2.c.x, true, global2.c.x))), _wgslsmith_f_op_vec2_f32(arg_0.zz * arg_0.yz));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + arg_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(global2.d.x, arg_0.x, -323f, 922f)) - arg_0))) + _wgslsmith_f_op_vec4_f32(round(arg_0)));
    global2 = global0[_wgslsmith_index_u32(~max(~63980u, ~u_input.e), 7u)];
    global2 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    global0 = array<Struct_2, 7>();
    return select(countOneBits(~_wgslsmith_add_vec3_u32(~vec3<u32>(77164u, 0u, global2.a), ~vec3<u32>(63971u, 44989u, u_input.e))), ~(vec3<u32>(u_input.e >> (global2.b.x % 32u), ~47202u, ~global2.a) | _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(global2.a, global2.a, 26511u)), vec3<u32>(4294967295u, 5243u, 46319u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.d.x - -767f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1095f)));
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = ((_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 45133i, 0i, 1i), vec4<i32>(arg_0.c.b, -2147483647i, u_input.c, u_input.b.x)), _wgslsmith_mult_i32(arg_0.c.b, -22238i)) << (0u % 32u)) >> (_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(global2.a, 64357u, 14171u), vec3<u32>(32995u, arg_0.d.a, 4294967295u)), select(vec3<u32>(arg_0.b, 0u, 26113u), vec3<u32>(4294967295u, 0u, global2.a), vec3<bool>(global2.c.x, true, true)), !vec3<bool>(true, global2.c.x, global2.c.x)), vec3<u32>(global2.a, global2.b.x, 24777u) ^ ~vec3<u32>(arg_0.d.b.x, arg_0.b, arg_0.b)) % 32u)) ^ reverseBits(-14840i);
    global0 = array<Struct_2, 7>();
    let var_1 = max(~(~abs(vec4<u32>(u_input.e, u_input.e, 48565u, global2.a) << (vec4<u32>(u_input.e, 60176u, arg_0.b, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_add_u32(0u, 36066u), 4294967295u, countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 52674u, arg_0.b), vec3<u32>(global2.b.x, arg_0.d.a, 1u)), u_input.e)), abs(u_input.e)));
    var var_2 = _wgslsmith_mod_vec3_u32(func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -421f, global2.d.x, 353f)))))), _wgslsmith_mult_vec3_u32(var_1.zxy | (_wgslsmith_div_vec3_u32(vec3<u32>(26017u, u_input.e, 0u), vec3<u32>(arg_0.d.b.x, global2.a, 49125u)) >> ((var_1.zxx | var_1.wyz) % vec3<u32>(32u))), var_1.xzw));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.d.x + arg_0.d.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.d.x), 990f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.d.x)), arg_0.d.d.x))), _wgslsmith_f_op_f32(arg_0.d.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))), -1022f));
    return arg_0.c.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_2, 7>();
    var var_0 = vec2<i32>(~_wgslsmith_dot_vec4_i32(min(-vec4<i32>(u_input.b.x, u_input.d, arg_1.c.b, 4084i), ~vec4<i32>(21999i, arg_1.c.b, 7682i, u_input.d)), ~(vec4<i32>(u_input.b.x, arg_1.c.b, arg_1.c.b, u_input.b.x) & vec4<i32>(1i, arg_1.c.b, arg_1.c.b, arg_1.c.b))), reverseBits(u_input.a.x >> (51925u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(step(328f, -621f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1097f, arg_1.d.d.x, -1452f, -415f)))))));
    var var_3 = false;
    return global0[_wgslsmith_index_u32(4294967295u, 7u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_3 {
    var var_0 = global2.b.x;
    global0 = array<Struct_2, 7>();
    var var_1 = select(select(!select(select(global2.c, arg_1.yw, true), !vec2<bool>(global2.c.x, global2.c.x), true), vec2<bool>(true, false), global2.c), !vec2<bool>(!(arg_2 >= arg_2), true), true);
    var var_2 = func_4(!vec4<bool>((arg_1.x & true) || false, true, select(any(vec3<bool>(true, true, var_1.x)), arg_1.x, u_input.c > arg_0.x), func_2(Struct_3(false, global2.b.x, global1[_wgslsmith_index_u32(global2.a, 26u)], global0[_wgslsmith_index_u32(global2.b.x, 7u)]))), Struct_3(false, 1u, Struct_1(true, _wgslsmith_clamp_i32(arg_0.x | 5420i, -arg_0.x, reverseBits(arg_0.x))), Struct_2(firstLeadingBit(global2.a), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(118850u, 71529u)), ~vec2<u32>(4294967295u, u_input.e)), vec2<bool>(any(arg_1.zx), arg_1.x), global2.d)), u_input.e);
    var var_3 = max(vec2<i32>(abs(abs(2147483647i)), firstLeadingBit(31517i)), u_input.a);
    return Struct_3(!global2.c.x, 38246u, global1[_wgslsmith_index_u32(u_input.e, 26u)], Struct_2(4294967295u, ~(vec2<u32>(u_input.e, var_2.a) ^ ~vec2<u32>(global2.b.x, u_input.e)), vec2<bool>(false, !all(vec4<bool>(arg_1.x, false, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.d, vec2<f32>(851f, -676f), global2.c.x)) * _wgslsmith_f_op_vec2_f32(-global2.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-vec2<i32>(u_input.d, u_input.d), vec4<bool>(global2.c.x, false, true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1270f, 2500f)), -285f)), global2.d.x)))));
    let var_1 = var_0;
    let var_2 = global1[_wgslsmith_index_u32(min((_wgslsmith_mod_u32(~var_0.d.a, u_input.e) | 19521u) & global2.b.x, _wgslsmith_sub_u32(u_input.e, 1u)), 26u)];
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a.x << (u_input.e % 32u), ~firstTrailingBit(0i), -(~1i), var_2.b), -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_2.b, var_2.b, var_1.c.b, 2147483647i)), vec4<i32>(3765i, -57593i, -33940i, var_1.c.b) << (vec4<u32>(global2.b.x, var_0.d.a, u_input.e, 56979u) % vec4<u32>(32u))), vec4<i32>(u_input.b.x, 0i, var_2.b, 1i) ^ -vec4<i32>(var_2.b, u_input.b.x, 5366i, 13846i)));
    let var_4 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(var_0.d.a, countOneBits(~global2.a)) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, 4294967295u, var_0.b, var_1.b) >> (vec4<u32>(var_0.d.a, 4294967295u, var_1.b, u_input.e) % vec4<u32>(32u)), vec4<u32>(var_0.d.b.x, var_1.b, 40620u, 7072u)), func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.b.xx), vec4<bool>(false, false, true, false), var_0.d.d.x).d.b.x), 0u, u_input.e);
    let var_5 = global2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1251f, 514f, -2064f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d.d.x, var_1.d.d.x, 269f), vec3<f32>(447f, 237f, 531f))), false)))), func_4(select(select(vec4<bool>(var_0.a, false, true, true), select(vec4<bool>(false, var_0.d.c.x, true, true), vec4<bool>(var_1.c.a, var_2.a, false, false), vec4<bool>(var_2.a, true, global2.c.x, var_1.d.c.x)), vec4<bool>(var_2.a, var_1.c.a, var_0.c.a, false)), vec4<bool>(false & var_0.c.a, true, global2.c.x, true), select(select(vec4<bool>(var_0.d.c.x, true, true, global2.c.x), vec4<bool>(true, false, false, false), vec4<bool>(global2.c.x, true, true, var_0.c.a)), select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.a, var_1.d.c.x, true, false), vec4<bool>(false, global2.c.x, true, var_2.a)), global2.b.x > 1u)), var_1, _wgslsmith_add_u32(abs(_wgslsmith_clamp_u32(11206u, global2.b.x, 28509u)), 0u)).d.x);
}


struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(151f, vec2<u32>(1u, 34629u), true, vec2<bool>(false, true), 1u), Struct_1(741f, vec2<u32>(1u, 0u), false, vec2<bool>(true, true), 18034u));

var<private> global2: Struct_1 = Struct_1(1411f, vec2<u32>(110023u, 24654u), true, vec2<bool>(false, true), 12183u);

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(80909u, 2u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(519f))), ~(~(~vec2<u32>(1u, arg_1.b.x)) << (global2.b % vec2<u32>(32u))), var_0.d.x, var_0.d, arg_1.e);
    var var_2 = reverseBits(~vec3<i32>(firstLeadingBit(0i), _wgslsmith_clamp_i32(-142i, -2147483647i, -29008i), 5851i));
    var_2 = vec3<i32>(70666i, ~_wgslsmith_add_i32(u_input.c, reverseBits(var_2.x)), -7949i) << (abs(countOneBits(~firstTrailingBit(vec3<u32>(46414u, 0u, u_input.b)))) % vec3<u32>(32u));
    let var_3 = select(vec4<bool>(true, arg_1.c, ~_wgslsmith_clamp_u32(arg_1.b.x, 1u, u_input.b) > ~(global2.b.x << (55391u % 32u)), true), vec4<bool>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_2.x, u_input.a, var_2.x)), vec3<i32>(4937i, 12992i, var_2.x) & vec3<i32>(-1i, -1i, -1i)) > ~_wgslsmith_mod_i32(u_input.c, u_input.c), true, any(vec2<bool>(all(vec2<bool>(global2.d.x, var_1.c)), any(vec3<bool>(true, global2.d.x, true)))), true), !arg_1.c & arg_1.c);
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = 4294967295u;
    var var_1 = arg_0.wyx;
    var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, _wgslsmith_dot_vec2_i32(var_1.zy >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), var_1.xx) | 2147483647i, 0i), vec3<i32>(var_1.x, select(~_wgslsmith_add_i32(-2147483647i, u_input.c), 2147483647i, false), _wgslsmith_mult_i32(var_1.x, 0i)));
    let var_2 = firstLeadingBit(vec4<u32>(countOneBits(~global2.e) << (global3.x % 32u), 14888u, 13118u, min(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.e, 21402u), arg_2.b), var_0), u_input.b | ~62552u)));
    let var_3 = ~_wgslsmith_mult_vec2_u32(~(~func_3(var_2.ww, global1[_wgslsmith_index_u32(global2.e, 2u)])), vec2<u32>(4294967295u, reverseBits(4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(14826u, u_input.b, arg_2.b.x, 0u), vec4<u32>(global3.x, u_input.b, var_0, 8250u))));
    return _wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x >> (1u % 32u), -var_1.x, max(20452i, arg_0.x), -11370i) | ~reverseBits(vec4<i32>(var_1.x, 77655i, arg_0.x, -34879i)), vec4<i32>(-(u_input.c >> (26734u % 32u)), ~arg_0.x, _wgslsmith_add_i32(~arg_0.x, 0i), -1i)));
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    global1 = array<Struct_1, 2>();
    let var_0 = true || all(!(!global2.d));
    let var_1 = Struct_1(-2093f, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(30880u, u_input.b, u_input.b, 58131u), vec4<u32>(4294967295u, 90214u, global3.x, global3.x)), vec4<u32>(u_input.b, global3.x, u_input.b, 19346u) >> (vec4<u32>(4294967295u, u_input.b, 15137u, 1u) % vec4<u32>(32u))), u_input.b), 4294967295u << (_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 0u), vec4<u32>(global3.x, 0u, u_input.b, 4294967295u))) % 32u)), global2.d.x, select(vec2<bool>(~arg_0.x > -3847i, -124f <= global2.a), !global2.d, !select(global2.d, global2.d, vec2<bool>(var_0, var_0))), min(~(~u_input.b >> (1u % 32u)), ~max(~1u, ~global3.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(trunc(var_1.a))) + 530f))), global2.b, var_0, var_1.d, _wgslsmith_add_u32(global2.b.x, _wgslsmith_mult_u32(121421u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e, global2.b.x), vec2<u32>(global2.b.x, global3.x))))));
    global3 = ~vec2<u32>(global2.e, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b.x, 4294967295u, var_2.b.x), ~vec3<u32>(global3.x, 29492u, 0u)));
    return 420f;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(firstTrailingBit(~(-vec4<i32>(u_input.a, 14876i, u_input.a, 2407i))) & (vec4<i32>(4801i, -1i, func_2(vec4<i32>(0i, -11188i, 35398i, 47949i), -275f, global1[_wgslsmith_index_u32(4294967295u, 2u)]), -2147483647i) >> (vec4<u32>(~global3.x, ~global2.e, min(u_input.b, 17493u), 37065u) % vec4<u32>(32u)))));
    let var_1 = global1[_wgslsmith_index_u32(~global3.x, 2u)];
    var var_2 = ~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, global2.e, var_1.b.x) | vec3<u32>(92328u, 4294967295u, 18639u), ~vec3<u32>(62305u, global2.e, global2.b.x)) | vec3<u32>(var_1.b.x, 1u, u_input.b)));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 0u, 108307u, global2.b.x), _wgslsmith_clamp_vec4_u32(min(_wgslsmith_mult_vec4_u32(~vec4<u32>(114945u, 13311u, 47015u, var_1.e), select(vec4<u32>(u_input.b, 43103u, u_input.b, u_input.b), vec4<u32>(0u, global2.b.x, 4294967295u, 4294967295u), vec4<bool>(var_1.d.x, global2.d.x, true, true))), ~vec4<u32>(42440u, 1u, 0u, 0u)), vec4<u32>(_wgslsmith_mult_u32(abs(u_input.b), ~u_input.b), global3.x, _wgslsmith_sub_u32(abs(var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 10125u, 90068u), vec3<u32>(var_2.x, 17350u, 13172u))), abs(var_1.b.x) | 1u), ~(~(~vec4<u32>(global2.e, u_input.b, global3.x, global3.x)))));
    return _wgslsmith_sub_u32(firstLeadingBit(70582u), ~global2.e);
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    global3 = vec2<u32>(4294967295u, reverseBits(u_input.b));
    var var_0 = vec2<u32>(arg_2, 1u) << (abs(vec2<u32>(arg_1, ~(~111162u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1929f, -556f, 676f, -660f), vec4<f32>(global2.a, -1061f, global2.a, global2.a)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1100f, -977f, global2.a, global2.a), vec4<f32>(-294f, 655f, global2.a, global2.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -774f, -421f, 1032f), vec4<f32>(644f, global2.a, 1217f, global2.a)) + vec4<f32>(199f, -646f, 891f, 1129f)), false))));
    global0 = _wgslsmith_mod_i32(u_input.a << (_wgslsmith_mult_u32(~func_1(var_1.x), ~(24743u & arg_0.x)) % 32u), _wgslsmith_mod_i32(-u_input.a & 1i, 0i));
    global3 = vec2<u32>(arg_1 >> (arg_2 % 32u), ~(~_wgslsmith_clamp_u32(4294967295u, 1u, ~11118u)));
    return global1[_wgslsmith_index_u32(13890u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a, ~min(~vec2<u32>(global3.x, global3.x), global2.b), all(select(vec3<bool>(global2.d.x, global2.c || global2.c, global2.d.x), select(!vec3<bool>(global2.d.x, true, global2.c), select(vec3<bool>(global2.d.x, global2.d.x, global2.d.x), vec3<bool>(true, global2.d.x, true), vec3<bool>(false, false, global2.d.x)), true), any(!vec3<bool>(global2.d.x, true, global2.d.x)))), !global2.d, 0u);
    global2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -1042f))), _wgslsmith_f_op_f32(abs(-430f))), vec2<u32>(u_input.b, firstTrailingBit(_wgslsmith_clamp_u32(66589u, u_input.b, global2.b.x)) << (4294967295u % 32u)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(11425i, -529i) >> (global2.b % vec2<u32>(32u))), ~(~vec2<i32>(1i, -1i))) != _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.c, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.c, 52365i), vec3<i32>(8160i, u_input.a, u_input.a))), -14615i), global2.d, firstLeadingBit(global2.b.x));
    global2 = func_5(abs(max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(52557u, u_input.b, global3.x), vec3<u32>(u_input.b, u_input.b, 47321u), vec3<u32>(1u, 1u, u_input.b)), reverseBits(vec3<u32>(1u, u_input.b, 1u)) | ~vec3<u32>(global2.e, 23183u, var_0.e))), ~39046u, func_1(-425f));
    let var_1 = func_5(vec3<u32>(countOneBits(~0u), global3.x, reverseBits(~_wgslsmith_clamp_u32(9619u, var_0.b.x, 1u))), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(~4294967295u, ~global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 148611u), vec3<u32>(21664u, u_input.b, 54143u))), _wgslsmith_clamp_u32(1u, var_0.e, 1u | global2.b.x)), max(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(85869u, 9710u, 69480u)) | countOneBits(vec3<u32>(18592u, global2.e, u_input.b)), vec3<u32>(global2.e, ~var_0.b.x, firstTrailingBit(global2.b.x))), ~(~98304u) << (1u % 32u)));
    let var_2 = any(vec4<bool>(_wgslsmith_f_op_f32(-740f + _wgslsmith_f_op_f32(1341f + 1115f)) < var_0.a, false, false, !var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-413f, var_0.a, var_1.a, var_0.a)))), vec4<f32>(-568f, _wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(-var_0.a), 432f))), abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(global2.e, 4294967295u, 0u)), vec3<u32>(countOneBits(38582u), ~64553u, _wgslsmith_add_u32(var_0.b.x, 28859u)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.e, 1u, 59847u), vec3<u32>(var_1.b.x, var_0.e, 4294967295u), vec3<u32>(5736u, 87106u, global3.x)), min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(global2.b.x, global2.b.x, var_1.b.x))))), vec3<i32>(_wgslsmith_add_i32(func_2(vec4<i32>(1i, 1i, 1i, 1i), 1213f, var_1), u_input.a), -1i, u_input.c), abs(reverseBits(~u_input.a)), _wgslsmith_sub_vec2_u32(select(var_0.b, vec2<u32>(u_input.b, u_input.b) & max(vec2<u32>(global2.e, var_1.b.x), vec2<u32>(global2.e, 0u)), var_0.d), _wgslsmith_div_vec2_u32(~global2.b ^ _wgslsmith_mod_vec2_u32(var_1.b, global2.b), vec2<u32>(global2.b.x, func_1(var_1.a)))));
}


struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(281f, -145f), vec2<f32>(-811f, 385f), vec2<f32>(1737f, -751f), vec2<f32>(1996f, 163f), vec2<f32>(1012f, -747f), vec2<f32>(-1285f, -136f), vec2<f32>(-490f, 468f), vec2<f32>(1489f, -1336f), vec2<f32>(237f, 1890f), vec2<f32>(-275f, 1000f), vec2<f32>(-1951f, 343f), vec2<f32>(217f, -1287f), vec2<f32>(-281f, -237f), vec2<f32>(817f, -307f), vec2<f32>(-2859f, -564f), vec2<f32>(1090f, 620f), vec2<f32>(-198f, -2255f), vec2<f32>(685f, 384f), vec2<f32>(-427f, 667f), vec2<f32>(786f, 566f), vec2<f32>(-421f, 694f), vec2<f32>(-2063f, 431f), vec2<f32>(839f, 305f), vec2<f32>(-1643f, 1000f), vec2<f32>(1021f, 1000f), vec2<f32>(-1000f, 224f));

var<private> global1: array<bool, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(13331i), -1i, u_input.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 1i, u_input.a.x, 35118i)), vec4<i32>(-1i, 1i, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, 23529i, u_input.a.x), vec4<i32>(25327i, -1i, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, -37513i, u_input.a.x)), -vec3<i32>(1133i, 42847i, 2147483647i))) >> (~vec3<u32>(firstLeadingBit(0u), arg_1, 26148u | arg_1) % vec3<u32>(32u)));
    var var_1 = !vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 32u)] && !(arg_3.d.x != arg_3.d.x), all(select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_2.a, 32u)], true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 32u)], false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 32u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a, 32u)], global1[_wgslsmith_index_u32(arg_0, 32u)], global1[_wgslsmith_index_u32(arg_0, 32u)], global1[_wgslsmith_index_u32(arg_2.a, 32u)])), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_1, 32u)], global1[_wgslsmith_index_u32(arg_0, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.a.a, 32u)], global1[_wgslsmith_index_u32(28915u, 32u)], false, false), global1[_wgslsmith_index_u32(1u, 32u)]))), all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_2.a, 32u)], global1[_wgslsmith_index_u32(arg_2.a, 32u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true, true), global1[_wgslsmith_index_u32(arg_3.c.a, 32u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 32u)], false, global1[_wgslsmith_index_u32(u_input.c, 32u)]), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    var var_2 = arg_3;
    var var_3 = Struct_4(Struct_2(Struct_1(1u), Struct_1(_wgslsmith_mult_u32(~arg_1, 27471u)), Struct_1(arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 531f, -648f)) + arg_3.d)), 1u);
    let var_4 = -vec2<i32>(~(-2147483647i), u_input.a.x);
    return select(vec4<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(41917i, -1i, u_input.a.x, var_4.x), vec4<i32>(var_4.x, 3108i, 30204i, u_input.a.x)), max(62283i, var_4.x) & ~(-var_4.x), max(select(~(-38520i), -19801i, any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_0, 32u)], true))), u_input.a.x | firstTrailingBit(var_4.x)), -25372i), abs(vec4<i32>(-1i, -_wgslsmith_div_i32(-1i, var_4.x), var_4.x, firstTrailingBit(u_input.a.x))), true);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = ~(~max(firstTrailingBit(~vec4<i32>(u_input.a.x, -1i, -1i, -8214i)), func_3(u_input.b.x | 4294967295u, u_input.b.x, Struct_1(0u), Struct_2(Struct_1(u_input.b.x), Struct_1(u_input.b.x), Struct_1(u_input.c), vec3<f32>(-1000f, -749f, 1128f)))));
    var var_1 = all(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(~u_input.b.x, u_input.c)), 32u)], !global1[_wgslsmith_index_u32(~countOneBits(arg_0), 32u)], false, global1[_wgslsmith_index_u32(1u << (arg_0 % 32u), 32u)] || any(vec2<bool>(true, true))));
    global1 = array<bool, 32>();
    var var_2 = Struct_4(Struct_2(Struct_1(47592u), Struct_1(_wgslsmith_mult_u32(~arg_0, 15217u)), Struct_1(u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(445f, 443f, 715f) + vec3<f32>(-460f, 1037f, 223f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-177f, 546f, -1035f)))))), arg_0);
    var var_3 = -(~vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 12852i, u_input.a.x, 4339i), var_0), _wgslsmith_add_i32(var_0.x, 2147483647i)), _wgslsmith_mod_i32(u_input.a.x << (55306u % 32u), -2147483647i)));
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec4<bool> {
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_0 = ~u_input.a;
    global1 = array<bool, 32>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0.d.x);
    return select(!(!(!select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(arg_0.c.a, 32u)]), false))), !(!vec4<bool>(1410f != var_1, global1[_wgslsmith_index_u32(50017u << (0u % 32u), 32u)], !global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(31330u, 32u)], true)) & false, true, global1[_wgslsmith_index_u32(u_input.c, 32u)], true));
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = func_4(func_2(_wgslsmith_div_u32(49013u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(84435u, u_input.c), select(31684u, u_input.c, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), _wgslsmith_div_u32(34521u, u_input.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-481f)))));
    let var_1 = Struct_2(Struct_1(abs(44808u)), func_2(~(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) << (_wgslsmith_mult_u32(3726u, 51542u) % 32u))).c, Struct_1(23591u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(281f - -1000f), 3496f, _wgslsmith_f_op_f32(select(1300f, 273f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-358f, -559f, 1859f) + vec3<f32>(-385f, -588f, -570f)))), _wgslsmith_f_op_vec3_f32(func_2(~23530u).d - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, -215f, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, 526f, -491f)))), func_4(func_2(15671u), _wgslsmith_f_op_f32(f32(-1f) * -910f)).zwz)));
    global1 = array<bool, 32>();
    var var_2 = var_0.x;
    var var_3 = u_input.a.x ^ ~(u_input.a.x >> (~(~1u) % 32u));
    return Struct_4(func_2(4294967295u), var_1.a.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    let var_0 = -2147483647i;
    global1 = array<bool, 32>();
    var var_1 = func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], 1u >= arg_1.b, any(select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 32u)], false), vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(arg_1.b, 32u)])), true)).a.b;
    var var_2 = vec2<bool>(true, global1[_wgslsmith_index_u32(3061u, 32u)]);
    return arg_1.a.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = u_input.b.zzz;
    let var_1 = global0[_wgslsmith_index_u32(arg_0.a, 26u)];
    global1 = array<bool, 32>();
    global0 = array<vec2<f32>, 26>();
    global1 = array<bool, 32>();
    return Struct_2(func_2(reverseBits(38360u)).c, func_1(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true, select(global1[_wgslsmith_index_u32(arg_1.x, 32u)], true, global1[_wgslsmith_index_u32(31821u, 32u)]), false && global1[_wgslsmith_index_u32(arg_3.a, 32u)]), select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(35825u, 32u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.a, 32u)], false, global1[_wgslsmith_index_u32(arg_1.x, 32u)]), global1[_wgslsmith_index_u32(arg_0.a, 32u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(74758u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], false, global1[_wgslsmith_index_u32(arg_1.x, 32u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], false, false, true)), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], false, false, global1[_wgslsmith_index_u32(20715u, 32u)])), !(!vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a, 32u)], true, global1[_wgslsmith_index_u32(arg_1.x, 32u)], global1[_wgslsmith_index_u32(var_0.x, 32u)])))).a.c, arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(-488f)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(429f, var_1.x, var_1.x) + vec3<f32>(-536f, var_1.x, -1252f))) - vec3<f32>(func_2(arg_2.a).d.x, _wgslsmith_div_f32(var_1.x, 901f), func_2(38950u).d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(min(1u, u_input.c)), ~_wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(56120u, u_input.b.x, 50766u, u_input.c)), u_input.b, countOneBits(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))), func_5(u_input.b.yz, func_1(!(!vec4<bool>(global1[_wgslsmith_index_u32(27894u, 32u)], true, true, false)))), func_5(vec2<u32>(~1u, ~(~1u)), func_1(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]))));
    var var_1 = Struct_3(_wgslsmith_div_u32(var_0.b.a, firstTrailingBit(var_0.a.a)), -995f, _wgslsmith_f_op_f32(func_6(Struct_1(1u), ~vec4<u32>(u_input.c, var_0.c.a, u_input.c, var_0.b.a) >> (vec4<u32>(u_input.b.x, 51690u, u_input.b.x, 33767u) % vec4<u32>(32u)), var_0.a, var_0.c).d.x + _wgslsmith_f_op_f32(trunc(-1278f))));
    let var_2 = !vec3<bool>(var_0.d.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), global1[_wgslsmith_index_u32(~(~var_1.a), 32u)], false);
    let var_3 = _wgslsmith_f_op_f32(-1f);
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b.x, 28836u, _wgslsmith_add_u32(func_5(vec2<u32>(var_1.a, 1u), Struct_4(Struct_2(Struct_1(var_0.c.a), Struct_1(var_1.a), Struct_1(var_0.b.a), vec3<f32>(1763f, var_3, var_0.d.x)), 30430u)).a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 26385u), vec2<u32>(53762u, u_input.c)))) | u_input.b.wwy, vec3<u32>(_wgslsmith_sub_u32(func_5(u_input.b.yw, func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true, var_2.x, false))).a, ~var_1.a ^ ~u_input.c), _wgslsmith_mod_u32(1u, abs(~u_input.b.x)), ~(u_input.c ^ _wgslsmith_clamp_u32(4294967295u, 1u, var_1.a))), firstLeadingBit(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.a, 14723u, var_1.a), vec3<u32>(1u, var_1.a, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(func_6(func_1(vec4<bool>(var_2.x, false, global1[_wgslsmith_index_u32(4294967295u, 32u)], var_2.x)).a.c, ~u_input.b, func_5(vec2<u32>(var_0.a.a, 4294967295u), Struct_4(Struct_2(Struct_1(var_0.b.a), var_0.a, Struct_1(1u), var_0.d), 106079u)), func_6(Struct_1(u_input.c), vec4<u32>(var_0.a.a, 17836u, 4294967295u, var_0.c.a), Struct_1(1u), Struct_1(var_1.a)).b).d.x, -1672f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(578f + -1000f))), _wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-220f, 836f, var_3, var_3))))))))), vec4<i32>(-u_input.a.x >> (var_4.x % 32u), -45852i, 31313i, -u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x));
}


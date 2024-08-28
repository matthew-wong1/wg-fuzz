struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = ~(~arg_1) < 52320u;
    var var_1 = global1[_wgslsmith_index_u32(1u, 1u)];
    let var_2 = ~(~firstTrailingBit((vec4<u32>(63422u, 6918u, 0u, arg_1) | arg_0) | ~vec4<u32>(arg_1, 11482u, 14818u, arg_1)));
    let var_3 = Struct_3(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b.x, arg_1, arg_0.x)), min(~var_2.xyz, firstTrailingBit(vec3<u32>(arg_1, 58801u, arg_2)))), Struct_2(~select(vec3<u32>(arg_1, 78645u, u_input.a), var_2.zyy, false) << (max(~vec3<u32>(0u, u_input.a, u_input.b.x), vec3<u32>(59542u, arg_0.x, u_input.a)) % vec3<u32>(32u)), true, -487f, _wgslsmith_f_op_vec2_f32(step(arg_3.zz, vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(min(354f, arg_3.x)))))), !(!vec4<bool>(!global1[_wgslsmith_index_u32(47316u, 1u)], !global1[_wgslsmith_index_u32(27904u, 1u)], all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(62965u, 1u)], false, false)), true)), Struct_2(_wgslsmith_div_vec3_u32(firstTrailingBit(select(vec3<u32>(var_2.x, arg_1, 14810u), u_input.b, vec3<bool>(true, false, false))), u_input.b >> (vec3<u32>(var_2.x, 9465u, 28800u) % vec3<u32>(32u))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.yx))));
    global0 = array<bool, 25>();
    return var_3.c;
}

fn func_2() -> f32 {
    var var_0 = ~abs(~(~vec2<i32>(2147483647i, 18496i)));
    let var_1 = vec2<bool>(all(func_3(vec4<u32>(u_input.a | 0u, ~u_input.b.x, u_input.b.x, 0u), 0u, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-1047f - 1149f), _wgslsmith_f_op_f32(min(1084f, -1933f)), _wgslsmith_f_op_f32(step(-2324f, -622f))))), !(true | global1[_wgslsmith_index_u32(~(~u_input.b.x), 1u)]));
    var var_2 = -var_0.x;
    global0 = array<bool, 25>();
    var var_3 = any(func_3(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 12327u, 87856u)), abs(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 5020u, u_input.b.x)))), u_input.b.x, 6075u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-474f, -782f, _wgslsmith_f_op_f32(max(-1145f, -552f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1133f, 2181f, -1121f)))), global1[_wgslsmith_index_u32(u_input.b.x & u_input.a, 1u)]))));
    return 493f;
}

fn func_1() -> Struct_2 {
    let var_0 = !any(vec4<bool>(any(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a) | (0u ^ u_input.a), 25u)], u_input.b.x == 1u, _wgslsmith_f_op_f32(func_2()) < 1177f));
    var var_1 = select(vec3<bool>(true, (_wgslsmith_dot_vec4_i32(vec4<i32>(-11875i, 15942i, -2147483647i, 38326i), vec4<i32>(37289i, 50188i, 0i, -30838i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-45011i, 1i, 0i), vec3<i32>(-41396i, -2147483647i, -3864i))) < 1i, true), vec3<bool>(var_0, !(~0u <= ~u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2328i, -17146i, 1i), -vec3<i32>(-1i, 1i, -20005i)) > 1i), !func_3(vec4<u32>(~32821u, _wgslsmith_add_u32(6745u, u_input.b.x), ~0u, abs(6613u)), u_input.a, _wgslsmith_div_u32(~0u, ~1u), vec3<f32>(-144f, _wgslsmith_f_op_f32(-894f - -785f), 229f)).xww);
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, -1354f, -699f, 897f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1832f, 541f, -2092f, -1934f) + vec4<f32>(1000f, 1022f, 2160f, -702f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-270f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(min(1439f, -1464f))))));
    return Struct_2(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_sub_vec3_u32(u_input.b, u_input.b)), ~vec3<u32>(~4294967295u, 3502u, u_input.a)), true, _wgslsmith_f_op_f32(-557f - -687f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(871f, var_2.x) * vec2<f32>(818f, -529f)), _wgslsmith_f_op_vec2_f32(abs(var_2.yz)), false)))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec3<u32>(4294967295u, func_1().a.x, 117695u);
    var var_1 = any(arg_0.c.wyz);
    global1 = array<bool, 1>();
    let var_2 = _wgslsmith_f_op_f32(arg_0.b.c * _wgslsmith_f_op_f32(340f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b.d.x)), _wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(1565f * 1339f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(442f, -814f, true)) - _wgslsmith_f_op_f32(-436f - 794f))), -601f, -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1127f, 932f, arg_0.d.d.x)) * vec3<f32>(arg_0.d.c, _wgslsmith_f_op_f32(1000f * 172f), arg_0.b.c))));
    return func_1();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), arg_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c), arg_3, arg_1.b)))), countOneBits(reverseBits(arg_0.a.yz)), arg_0.d, vec4<bool>(func_1().b, !func_1().b, global0[_wgslsmith_index_u32(~arg_0.a.x, 25u)], func_1().b));
    var var_1 = firstLeadingBit(min(firstTrailingBit(vec3<i32>(-2147483647i, -2147483647i, -1i)) << (func_1().a % vec3<u32>(32u)), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), vec3<i32>(-1i, -21027i, -16308i)), firstLeadingBit(vec3<i32>(38275i, -19388i, 1i))), -_wgslsmith_add_i32(-11388i, 2147483647i))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1494f, var_0.a.x, -1056f, -202f))))), var_0.a), ~select(min(countOneBits(vec2<u32>(arg_0.a.x, var_0.b.x)), var_0.b), var_0.b << (arg_1.a.xz % vec2<u32>(32u)), select(vec2<bool>(false, true), var_0.d.yz, var_0.d.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.x, -1000f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.d.x, -241f)))), var_0.a.xw)), !(!var_0.d));
    let var_3 = u_input.b.x;
    let var_4 = func_1();
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(abs(-758f)), _wgslsmith_f_op_f32(-294f * var_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x + var_0.a.x), _wgslsmith_div_f32(-103f, var_4.d.x))), _wgslsmith_f_op_vec4_f32(var_2.a * var_0.a))), var_4.a.zx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(505f, arg_0.d.x))))), vec4<bool>(_wgslsmith_sub_u32(~22919u, 43732u) > var_3, true || global1[_wgslsmith_index_u32(378u, 1u)], true, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x >> (arg_0.a.x % 32u), 25u)], var_0.d.x && global1[_wgslsmith_index_u32(var_2.b.x, 1u)], global1[_wgslsmith_index_u32(select(var_0.b.x, arg_0.a.x, false), 1u)], 27487i <= var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_3(u_input.b, func_1(), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, false), true), func_1())), Struct_2(~u_input.b, global0[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-419f, 1012f), vec2<f32>(-451f, 1000f), global1[_wgslsmith_index_u32(4881u, 1u)]))))))), 1u, -1746f);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(firstLeadingBit(1i), ~_wgslsmith_sub_i32(firstLeadingBit(0i), reverseBits(10942i))), firstLeadingBit(-1i) >> ((var_0.b.x >> (u_input.b.x % 32u)) % 32u));
    let var_2 = func_4(Struct_3(u_input.b, func_1(), var_0.d, Struct_2(_wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(var_0.b.x, 1u, u_input.b.x)), !global0[_wgslsmith_index_u32(106829u, 25u)], 670f, vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, var_0.a.x)), 411f))));
    let var_3 = Struct_3(~vec3<u32>(~u_input.b.x & 3156u, _wgslsmith_mult_u32(~9694u, ~var_2.a.x), abs(var_2.a.x)), Struct_2(vec3<u32>(45694u, _wgslsmith_clamp_u32(40910u, u_input.a, abs(var_0.b.x)), 35447u >> (_wgslsmith_clamp_u32(var_2.a.x, 4294967295u, 47934u) % 32u)), true, -569f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d.x, var_0.a.x)))), vec4<bool>(var_0.d.x, (0u & _wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xz)) > _wgslsmith_mult_u32(1u, 0u), func_4(Struct_3(vec3<u32>(u_input.b.x, var_0.b.x, 6665u), Struct_2(u_input.b, true, -358f, var_0.a.xz), vec4<bool>(true, true, global0[_wgslsmith_index_u32(118246u, 25u)], true), var_2)).d.x <= -971f, var_0.d.x | var_0.d.x), func_1());
    global1 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, func_5(Struct_2(~vec3<u32>(50792u, 1u, 136u), var_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_2.d.x)), -135f)), var_2.d), var_2, 1u, -638f).a.wyw, var_0.a.x, -(~var_1), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, 1i, -2147483647i), abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_1, 21271i, -2147483647i), vec3<i32>(var_1, var_1, 2147483647i))))));
}


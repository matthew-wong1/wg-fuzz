struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22318i;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec2<u32>(1u, 71140u), vec4<bool>(true, true, true, false), 473f, -1i, vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(79327u, 31134u), vec4<bool>(true, true, true, true), 2338f, -13727i, vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(1u, 21880u), vec4<bool>(true, true, false, true), 800f, 2147483647i, vec4<bool>(true, false, true, false)), Struct_3(vec2<u32>(1u, 4294967295u), vec4<bool>(false, true, false, true), 1225f, i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_3(vec2<u32>(1092u, 26488u), vec4<bool>(false, true, false, true), -738f, i32(-2147483648), vec4<bool>(false, true, false, false)), Struct_3(vec2<u32>(37771u, 6030u), vec4<bool>(false, false, false, true), -1000f, 0i, vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(9739u, 76827u), vec4<bool>(false, false, false, false), -1185f, i32(-2147483648), vec4<bool>(true, true, false, true)), Struct_3(vec2<u32>(17045u, 30731u), vec4<bool>(true, true, false, true), -537f, -1i, vec4<bool>(false, true, true, true)), Struct_3(vec2<u32>(12936u, 23403u), vec4<bool>(false, true, true, true), 732f, -8995i, vec4<bool>(true, false, true, false)), Struct_3(vec2<u32>(28330u, 0u), vec4<bool>(true, true, true, true), 2041f, 0i, vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(25782u, 17316u), vec4<bool>(false, false, false, true), 316f, 2147483647i, vec4<bool>(true, false, false, true)), Struct_3(vec2<u32>(26229u, 6103u), vec4<bool>(true, true, true, true), 1799f, 1i, vec4<bool>(false, true, false, false)), Struct_3(vec2<u32>(7879u, 41894u), vec4<bool>(true, true, false, true), 290f, i32(-2147483648), vec4<bool>(true, true, false, false)), Struct_3(vec2<u32>(18972u, 27868u), vec4<bool>(true, false, false, false), 1311f, -23658i, vec4<bool>(true, true, false, false)), Struct_3(vec2<u32>(3047u, 0u), vec4<bool>(true, false, true, false), -833f, 1i, vec4<bool>(true, true, true, false)), Struct_3(vec2<u32>(4294967295u, 64405u), vec4<bool>(false, true, true, false), 451f, 1i, vec4<bool>(true, false, false, true)), Struct_3(vec2<u32>(0u, 1u), vec4<bool>(true, false, false, true), 542f, 8526i, vec4<bool>(true, true, false, true)), Struct_3(vec2<u32>(5953u, 25506u), vec4<bool>(false, false, true, true), -938f, -1i, vec4<bool>(true, true, false, true)), Struct_3(vec2<u32>(17217u, 0u), vec4<bool>(false, true, false, false), -1287f, i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_3(vec2<u32>(0u, 26807u), vec4<bool>(true, true, true, false), 386f, 28648i, vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(35645u, 1u), vec4<bool>(false, false, true, true), 1076f, -1i, vec4<bool>(true, false, true, true)), Struct_3(vec2<u32>(1u, 4294967295u), vec4<bool>(false, true, false, false), 365f, -24455i, vec4<bool>(true, false, false, false)), Struct_3(vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, false, true), -460f, 36026i, vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(61030u, 4294967295u), vec4<bool>(true, false, true, false), 1072f, -8303i, vec4<bool>(false, false, false, true)), Struct_3(vec2<u32>(0u, 0u), vec4<bool>(true, false, true, false), -501f, 0i, vec4<bool>(false, true, false, false)), Struct_3(vec2<u32>(4294967295u, 64919u), vec4<bool>(false, false, false, false), 696f, 2147483647i, vec4<bool>(false, true, true, true)), Struct_3(vec2<u32>(0u, 24353u), vec4<bool>(true, true, true, true), -644f, 22303i, vec4<bool>(true, true, true, true)), Struct_3(vec2<u32>(26359u, 0u), vec4<bool>(false, true, false, false), 241f, 10896i, vec4<bool>(false, true, false, false)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(abs(u_input.b), ~_wgslsmith_sub_u32(69599u, arg_2))), _wgslsmith_clamp_u32(~arg_2, _wgslsmith_mult_u32(_wgslsmith_sub_u32(~4073u, arg_2), u_input.a.x), arg_2));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(firstTrailingBit(1i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-14089i, -1i, 17290i, 31364i), vec4<i32>(-1i, -25847i, 0i, -17216i))))), vec2<i32>(1i, 1i));
    let var_2 = vec4<i32>(25353i, ~1i, -(~10596i), -(~var_1.x));
    let var_3 = Struct_2(vec2<u32>(var_0, var_0), vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(var_2.zyy, var_2.wzw), _wgslsmith_add_i32(var_1.x << (countOneBits(71697u) % 32u), ~(-var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(abs(-233f)), -1469f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(362f, -929f), -1168f))));
    let var_4 = Struct_2(vec2<u32>(~min(1u, 4294967295u), _wgslsmith_mod_u32(~3829u, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2, u_input.a.x, 0u), vec4<u32>(6657u, u_input.a.x, 1u, 1u))))), vec3<i32>(_wgslsmith_mult_i32(1i, -15923i << (var_0 % 32u)), var_2.x, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1688f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + -976f)))));
    return arg_2;
}

fn func_2(arg_0: bool) -> i32 {
    global0 = firstLeadingBit(~min(countOneBits(abs(-28973i)), 13206i));
    var var_0 = Struct_4(509f, global2[_wgslsmith_index_u32(select(1u, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f * 589f) + _wgslsmith_f_op_f32(abs(-1251f))), vec2<bool>(true, true && arg_0), u_input.a.x, !(!vec4<bool>(false, true, false, arg_0))), all(select(select(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], false), vec3<bool>(arg_0, true, true), select(vec3<bool>(false, arg_0, true), global1[_wgslsmith_index_u32(4294967295u, 25u)], true)))), 28u)], ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 69519u, 25626u), vec3<u32>(30704u, u_input.a.x, 11057u))) >> (~(~abs(vec3<u32>(4294967295u, u_input.a.x, 12983u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1015f)))))), vec4<bool>(any(select(global1[_wgslsmith_index_u32(0u, 25u)], select(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, arg_0)), all(vec4<bool>(false, arg_0, false, true)))), arg_0, !arg_0, false));
    var var_1 = abs(-1i);
    var_0 = Struct_4(171f, Struct_3(~vec2<u32>(firstLeadingBit(4294967295u), u_input.a.x), !(!vec4<bool>(true, var_0.b.e.x, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 0i, var_0.e), select(var_0.c, ~(vec3<u32>(u_input.b, 35598u, u_input.b) & abs(var_0.c)), !any(global1[_wgslsmith_index_u32(76998u, 25u)]) | arg_0), _wgslsmith_f_op_f32(-495f * var_0.b.c), vec4<bool>(arg_0, _wgslsmith_f_op_f32(sign(var_0.d)) >= _wgslsmith_f_op_f32(abs(529f)), arg_0, false));
    var var_2 = Struct_2(vec2<u32>(var_0.b.a.x, var_0.b.a.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(24531u, 804u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.c.x, u_input.b), vec3<u32>(var_0.c.x, 6896u, 44867u)))), ~(vec3<i32>(var_0.b.d, var_0.b.d, ~42105i) & vec3<i32>(-1i, _wgslsmith_add_i32(var_0.b.d, var_0.b.d), -45237i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * -2086f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2308f - -246f))) * vec3<f32>(-1801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, -1856f)) + 409f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f), var_0.a))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-abs(vec2<i32>(var_2.b.x, var_0.b.d)), _wgslsmith_add_vec2_i32(var_2.b.yx ^ var_2.b.yy, var_2.b.xz)), reverseBits(~vec2<i32>(1i, var_2.b.x))), vec2<i32>(~(0i | var_2.b.x) | 2147483647i, -28281i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: f32) -> i32 {
    global2 = array<Struct_3, 28>();
    let var_0 = arg_1.b.x;
    global0 = arg_1.d;
    global0 = func_2(true);
    global2 = array<Struct_3, 28>();
    return arg_0.d >> (_wgslsmith_sub_u32(min(_wgslsmith_sub_u32(30834u, _wgslsmith_div_u32(4294967295u, arg_0.a.x)), u_input.b), 50023u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1065f - -137f), _wgslsmith_f_op_f32(abs(1130f))) + -375f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -853f)), !any(vec4<bool>(true, false, false, false)))), -351f);
    let var_1 = -func_1(Struct_3(reverseBits(~vec2<u32>(u_input.b, u_input.a.x)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-388f))), -_wgslsmith_mult_i32(1i, -5347i), vec4<bool>(true, true, false, true)), Struct_3(~_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), vec4<bool>(false, false, true, true), var_0.x, ~(36411i >> (1u % 32u)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), -827f);
    global0 = var_1;
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(728f, var_0.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, 309f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1133f, 964f) + vec2<f32>(var_0.x, -770f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, -1000f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2029f, var_0.x), vec2<f32>(215f, var_0.x), vec2<bool>(true, true))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, -563f) * vec2<f32>(-609f, -768f))))))));
    let var_2 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), firstTrailingBit(~u_input.a)), 1u, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, 1000f, 325f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.b, 47332u)), _wgslsmith_mult_vec2_u32(u_input.a, reverseBits(u_input.a))), 1u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(32551u, u_input.a.x), countOneBits(u_input.a.x)), (vec3<u32>(u_input.b, 0u, 4294967295u) << (vec3<u32>(69737u, u_input.b, var_2) % vec3<u32>(32u))) & ~vec3<u32>(1u, var_2, 0u))), 13998u, _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(vec3<i32>(var_1, -1i, -1i) ^ vec3<i32>(2147483647i, -1i, var_1)), -min(vec3<i32>(var_1, var_1, -33116i) & vec3<i32>(-38976i, 2147483647i, var_1), ~vec3<i32>(var_1, -2147483647i, var_1))));
}


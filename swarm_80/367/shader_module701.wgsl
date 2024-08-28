struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
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

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-10692i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 15639i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 3379i), vec2<i32>(18628i, 2147483647i), vec2<i32>(0i, 710i), vec2<i32>(i32(-2147483648), 1730i), vec2<i32>(5977i, 58697i), vec2<i32>(10098i, -1i), vec2<i32>(-24999i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, -12113i), vec2<i32>(i32(-2147483648), -2012i), vec2<i32>(-16530i, 1i), vec2<i32>(11892i, i32(-2147483648)), vec2<i32>(2147483647i, -25739i), vec2<i32>(-12924i, 18520i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-970f, vec2<f32>(266f, 1812f), 49445u), Struct_1(-338f, vec2<f32>(-940f, -1246f), 4294967295u), Struct_1(-831f, vec2<f32>(-1567f, -1000f), 35963u), Struct_1(-1000f, vec2<f32>(951f, -812f), 17927u), Struct_1(1297f, vec2<f32>(1077f, -898f), 16916u), Struct_1(1000f, vec2<f32>(-352f, 1147f), 2897u), Struct_1(1455f, vec2<f32>(-1045f, -864f), 8419u), Struct_1(733f, vec2<f32>(-1829f, 109f), 1u), Struct_1(403f, vec2<f32>(-883f, 1000f), 69469u), Struct_1(1071f, vec2<f32>(442f, 1000f), 1u), Struct_1(-210f, vec2<f32>(1000f, -441f), 1u), Struct_1(149f, vec2<f32>(833f, 1428f), 1u), Struct_1(2032f, vec2<f32>(1872f, -1487f), 1u), Struct_1(-683f, vec2<f32>(-896f, 1072f), 4294967295u), Struct_1(-618f, vec2<f32>(1097f, 309f), 1u), Struct_1(1063f, vec2<f32>(-330f, 369f), 4294967295u), Struct_1(-172f, vec2<f32>(1372f, -1483f), 1u), Struct_1(-122f, vec2<f32>(-335f, 341f), 36525u), Struct_1(-858f, vec2<f32>(-1785f, -980f), 1u), Struct_1(1160f, vec2<f32>(-109f, 907f), 30971u), Struct_1(274f, vec2<f32>(1272f, -168f), 4294967295u), Struct_1(-1676f, vec2<f32>(356f, -1489f), 138877u), Struct_1(-656f, vec2<f32>(222f, 2430f), 0u), Struct_1(232f, vec2<f32>(-1941f, -817f), 0u), Struct_1(-251f, vec2<f32>(-665f, 121f), 1u), Struct_1(528f, vec2<f32>(113f, -1000f), 53544u));

var<private> global3: vec4<bool>;

var<private> global4: array<u32, 9> = array<u32, 9>(46346u, 1u, 46094u, 65241u, 4294967295u, 49444u, 4294967295u, 6613u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(trunc(arg_0.b.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -1475f, arg_0.b.x) - vec3<f32>(-1222f, arg_0.a, 246f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -509f, -414f) * vec3<f32>(1471f, arg_0.a, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.b.x, -282f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.b.x, arg_0.a) * vec3<f32>(278f, -2002f, arg_0.a))), arg_0.c < _wgslsmith_mod_u32(41130u, u_input.d.x)))));
    global4 = array<u32, 9>();
    let var_1 = Struct_1(-500f, _wgslsmith_f_op_vec2_f32(var_0.xz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(-var_0.xx)) + _wgslsmith_f_op_vec2_f32(floor(var_0.xz)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.c) ^ 38021u, 71509u) >> (~(~(~1u)) % 32u));
    let var_2 = Struct_1(-2170f, _wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, var_0.x), vec2<f32>(arg_0.b.x, var_0.x), global3.x))))), ~4294967295u);
    let var_3 = global3.x;
    return max(~_wgslsmith_add_u32(~(0u << (var_1.c % 32u)), var_1.c >> (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 53241u) % 32u)), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(~47903u, arg_0.c | u_input.b.x, 101701u, ~44405u)), _wgslsmith_clamp_vec4_u32(u_input.d, _wgslsmith_add_vec4_u32(u_input.a, ~u_input.a), max(reverseBits(~vec4<u32>(53579u, global4[_wgslsmith_index_u32(4294967295u, 9u)], arg_0.c, 17845u)), u_input.d)));
    let var_0 = -1i;
    let var_1 = (~_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 9u)], ~1u, u_input.b.x) >> (~select(1u, _wgslsmith_dot_vec2_u32(global0.xx, u_input.d.xw), global3.x) % 32u)) | arg_2.c;
    var var_2 = select(global3.xzx, vec3<bool>(true, arg_1, true & (-528f > _wgslsmith_f_op_f32(select(arg_3.b.x, 1012f, arg_1)))), true);
    let var_3 = var_0;
    return false;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = Struct_1(-3072f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, -574f) - vec2<f32>(-434f, -724f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1184f, 1326f), vec2<f32>(-291f, -829f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(333f, -721f), vec2<f32>(1272f, -700f))))), u_input.c);
    var_0 = Struct_1(var_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(150f)))) + _wgslsmith_div_f32(-2106f, _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -803f)), ~var_0.c);
    global2 = array<Struct_1, 26>();
    let var_1 = vec3<bool>(!global3.x, any(!global3.wxw), true);
    let var_2 = global2[_wgslsmith_index_u32(arg_0 << (~49518u % 32u), 26u)];
    return vec4<bool>(!any(global3.yww), any(vec3<bool>(!var_1.x || (true & global3.x), func_4(global2[_wgslsmith_index_u32(func_3(Struct_1(var_0.a, var_2.b, 0u)), 26u)], any(vec4<bool>(false, false, true, var_1.x)), Struct_1(var_2.a, vec2<f32>(var_2.b.x, var_0.a), var_2.c), Struct_1(var_0.b.x, vec2<f32>(var_0.b.x, var_0.b.x), arg_0)), var_1.x)), all(!(!global3.xw)), all(!vec4<bool>(true, all(vec4<bool>(global3.x, global3.x, false, true)), any(global3.wwy), any(vec3<bool>(false, true, false)))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global4 = array<u32, 9>();
    global3 = func_2(global0.x);
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], ~1u, 0u), _wgslsmith_clamp_vec3_u32(u_input.d.wwz, abs(_wgslsmith_sub_vec3_u32(min(vec3<u32>(global0.x, 1u, global4[_wgslsmith_index_u32(71917u, 9u)]), vec3<u32>(global0.x, 40171u, arg_0.c)), global0.xzz & vec3<u32>(0u, 0u, 22474u))), vec3<u32>(0u, 57986u, 4294967295u)));
    let var_1 = Struct_1(arg_0.b.x, _wgslsmith_f_op_vec2_f32(select(arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + -747f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_f32(445f + arg_0.b.x)))), func_2(25525u).x)), ~max(~(~4294967295u), ~var_0.x));
    let var_2 = true;
    return -(-102189i >> (_wgslsmith_clamp_u32(~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.x, 9u)], 9u)] << (1u % 32u)), (global0.x | 0u) << (_wgslsmith_clamp_u32(var_1.c, arg_0.c, var_1.c) % 32u), ~arg_0.c) % 32u));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec2<f32> {
    global2 = array<Struct_1, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1778f, -1000f, any(vec3<bool>(true, global3.x, global3.x))))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1665f))), 245f), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1576f))), _wgslsmith_f_op_f32(min(965f, _wgslsmith_f_op_f32(floor(199f))))))), 30172u ^ ~(~global0.x & ~global4[_wgslsmith_index_u32(1u, 9u)]));
    let var_1 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(arg_2.wz, ~arg_2.xz), u_input.e, ~reverseBits(-vec2<i32>(arg_2.x, arg_0))) | min(abs(select(reverseBits(u_input.e), _wgslsmith_add_vec2_i32(u_input.e, vec2<i32>(arg_0, 0i)), global3.xx)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(6979u, _wgslsmith_sub_u32(1u, var_0.c)) >> (9204u % 32u), 19u)]);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), -223f) + vec2<f32>(var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(ceil(var_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    var var_1 = Struct_1(-1378f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_5(10536i, _wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.e.x, 31423i, -1i), vec3<i32>(2147483647i, u_input.e.x, u_input.e.x)), vec3<i32>(u_input.e.x, -48517i, 5313i) ^ vec3<i32>(u_input.e.x, u_input.e.x, 0i)), vec4<i32>(func_1(global2[_wgslsmith_index_u32(72832u, 26u)]), u_input.e.x, u_input.e.x, -9170i & u_input.e.x))))), global0.x);
    global2 = array<Struct_1, 26>();
    var var_2 = select(!func_2(func_3(global2[_wgslsmith_index_u32(max(global0.x, 9680u), 26u)])), select(vec4<bool>(global3.x, select(any(vec3<bool>(false, global3.x, global3.x)), global3.x, any(global3.zz)), false, !all(global3.yxx)), vec4<bool>((41545u > u_input.d.x) || true, true, !global3.x, !global3.x), !(!select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(false, false, false, false)))), false);
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, 793f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-942f, var_1.b.x, var_1.a) - vec3<f32>(var_1.a, -116f, 601f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), abs(vec4<i32>(0i, -541i, 1i, -1i)), firstLeadingBit(vec4<i32>(u_input.e.x, u_input.e.x, -65835i, 16945i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 2147483647i), ~vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -30425i), firstTrailingBit(vec4<i32>(u_input.e.x, 13010i, 2442i, u_input.e.x)))) ^ ~abs(-vec4<i32>(u_input.e.x, -2147483647i, -47923i, u_input.e.x)));
}


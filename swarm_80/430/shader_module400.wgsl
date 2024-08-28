struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 4294967295u, 1u, 30107u), vec4<u32>(4294967295u, 0u, 1u, 65986u), vec4<u32>(1684u, 1u, 1u, 57723u), vec4<u32>(16500u, 9866u, 130773u, 4294967295u), vec4<u32>(104049u, 29224u, 75710u, 35444u), vec4<u32>(4294967295u, 18657u, 47173u, 55913u), vec4<u32>(19661u, 11008u, 11773u, 201u), vec4<u32>(0u, 632u, 27385u, 15545u));

var<private> global1: array<f32, 31> = array<f32, 31>(391f, 437f, -250f, -167f, 273f, -130f, 802f, 519f, -1000f, 320f, 162f, -1849f, 454f, -1884f, 1201f, -901f, 1586f, -707f, -758f, 2062f, 235f, -607f, 227f, 721f, -1000f, 419f, 1927f, -161f, 1271f, -479f, -554f);

var<private> global2: array<u32, 31> = array<u32, 31>(13291u, 1u, 0u, 0u, 4294967295u, 1u, 4294967295u, 0u, 70639u, 23125u, 4294967295u, 19848u, 0u, 21092u, 4294967295u, 16591u, 0u, 17421u, 0u, 1u, 1168u, 15764u, 56545u, 57261u, 20817u, 0u, 31997u, 49633u, 1u, 8898u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: i32) -> vec4<bool> {
    global1 = array<f32, 31>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(round(-677f))))), -1639f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 31u)])) * -2256f), -976f)));
    var var_1 = ~(~(~(~_wgslsmith_mult_i32(35432i, arg_0))));
    global2 = array<u32, 31>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f * var_0.x));
    return vec4<bool>(select(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), true, all(vec2<bool>(true, true))) | false, all(vec2<bool>(true, (arg_2 < -1i) || true)), true, !(!select(all(vec3<bool>(false, false, true)), true, true)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(8271i, 0i, 34425i, 2147483647i), vec4<i32>(0i, -33112i, -1i, 40663i)) < ~36179i), _wgslsmith_mult_i32(reverseBits(11249i), -1i));
    var var_1 = Struct_2(_wgslsmith_clamp_i32(var_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, var_0.b, 2147483647i) >> (vec3<u32>(global2[_wgslsmith_index_u32(42526u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], 8126u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-870i, 1i, var_0.b), vec3<i32>(-36749i, 0i, var_0.b), vec3<i32>(20581i, var_0.b, 1i))), min(-vec3<i32>(2147483647i, var_0.b, var_0.b), vec3<i32>(3032i, var_0.b, var_0.b))), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.b, 52920i), -vec2<i32>(var_0.b, var_0.b))), _wgslsmith_clamp_i32(var_0.b, var_0.b, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-28849i, 12041i, var_0.b, var_0.b)), vec4<i32>(0i, ~var_0.b, _wgslsmith_add_i32(0i, -1i), _wgslsmith_clamp_i32(var_0.b, var_0.b, 10403i)))), Struct_1(var_0.a, 1i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]) + vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32016u, 31u)], 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(642u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])), vec4<f32>(-486f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12037u, 31u)], 31u)], global1[_wgslsmith_index_u32(83007u, 31u)], -493f), all(vec3<bool>(var_0.a.x, false, var_0.a.x))))))), ~reverseBits(u_input.d.x) == ~(~(~35094u)));
    var var_2 = 1039f;
    var_1 = Struct_2(-12104i << (0u % 32u), var_0.b, var_1.c, _wgslsmith_f_op_vec4_f32(-var_1.d), true);
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>((1i & select(-3306i, 2147483647i, var_0.a.x)) >> (~global2[_wgslsmith_index_u32(53373u, 31u)] % 32u), ~2147483647i, var_1.a), _wgslsmith_sub_vec3_i32(select(_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.b, 44801i, var_1.a), ~vec3<i32>(2147483647i, 2147483647i, 13351i)), abs(vec3<i32>(-11933i, 2147483647i, -2147483647i) >> (vec3<u32>(5189u, u_input.d.x, u_input.a.x) % vec3<u32>(32u))), !(!var_0.a.x)), vec3<i32>(-abs(var_0.b), var_1.c.b, -51075i << ((10644u >> (u_input.c.x % 32u)) % 32u))));
    return var_1.c.a.zy;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> Struct_3 {
    var var_0 = vec4<bool>(false, arg_1, u_input.c.x != u_input.b.x, !(!arg_1));
    var_0 = select(vec4<bool>(false, !all(vec2<bool>(true, arg_1)), !(!(2102f <= arg_0.x)), var_0.x), !select(!vec4<bool>(arg_1, false, true, false), vec4<bool>(var_0.x, any(vec2<bool>(true, var_0.x)), true, arg_1), func_2(1i, vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), -41111i)), !(!vec4<bool>(!arg_1, true, all(vec2<bool>(true, false)), true)));
    let var_1 = vec3<u32>(select(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], abs(reverseBits(global2[_wgslsmith_index_u32(1u, 31u)]))), ~(_wgslsmith_mult_u32(u_input.d.x, 1u) | min(u_input.b.x, u_input.b.x)), any(select(func_3(), var_0.xz, var_0.yw))), ~(u_input.d.x ^ u_input.b.x), u_input.b.x);
    let var_2 = -40910i;
    return Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -1348f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 31u)] * -111f), _wgslsmith_f_op_f32(select(-335f, arg_0.x, true)), -1516f))))), var_2, var_2, vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_div_u32(var_1.x << (global2[_wgslsmith_index_u32(u_input.b.x, 31u)] % 32u), ~70902u)), _wgslsmith_mult_u32((var_1.x << (4294967295u % 32u)) << (0u % 32u), ~u_input.d.x ^ 1u), ~abs(1u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> Struct_2 {
    global2 = array<u32, 31>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~45048u, 31u)]), -1058f, select(true, !(arg_0.x | true), any(vec2<bool>(false, false))))));
    var var_1 = true;
    let var_2 = arg_1.d.ww;
    let var_3 = Struct_2(-53277i, -(~(~arg_1.b)), Struct_1(select(func_2(~5874i, ~vec3<u32>(u_input.a.x, arg_1.d.x, 677u), arg_3), arg_0, vec4<bool>(false, !arg_2, 0i != arg_3, any(vec3<bool>(true, arg_0.x, arg_0.x)))), arg_3), vec4<f32>(var_0, 195f, _wgslsmith_f_op_f32(-109f - 766f), 1864f), arg_2);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec4<i32> {
    global2 = array<u32, 31>();
    let var_0 = arg_1.c;
    let var_1 = ~4294967295u;
    let var_2 = all(vec3<bool>(false, false, func_4(func_4(var_0.a, Struct_3(arg_0.d, arg_1.a, arg_1.a, vec4<u32>(global2[_wgslsmith_index_u32(var_1, 31u)], global2[_wgslsmith_index_u32(var_1, 31u)], global2[_wgslsmith_index_u32(16145u, 31u)], 13687u)), var_1 < u_input.c.x, arg_2.c).c.a, arg_2, any(arg_0.c.a.zx), arg_2.c).e));
    global0 = array<vec4<u32>, 8>();
    return ~(vec4<i32>(-arg_2.b, ~(-arg_1.c.b), 17853i, arg_1.c.b) << (vec4<u32>(~(~43256u), func_1(arg_2.a, !var_0.a.x).d.x, abs(1u), ~51803u << ((4294967295u & var_1) % 32u)) % vec4<u32>(32u)));
}

fn func_6(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 31u)]))), global1[_wgslsmith_index_u32(~arg_2.d.x, 31u)], _wgslsmith_f_op_f32(sign(arg_2.a.x)), global1[_wgslsmith_index_u32(abs(~global2[_wgslsmith_index_u32(31876u, 31u)]), 31u)]), true).b, -arg_2.c, func_4(vec4<bool>(func_2(arg_1.x, arg_2.d.xyx, 11915i).x && true, true, false, true), arg_2, false, -2147483647i).c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, arg_2.a.x, 374f, arg_2.a.x) * arg_2.a) + arg_2.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a + vec4<f32>(arg_2.a.x, -277f, arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(arg_2.a))))))), true);
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    global0 = array<vec4<u32>, 8>();
    var var_1 = arg_2;
    return Struct_1(vec4<bool>(all(var_0.c.a.yw), !any(vec2<bool>(var_0.e, var_0.e)), !any(vec4<bool>(true, var_0.c.a.x, var_0.c.a.x, var_0.e)), true | select(true, true, !var_0.c.a.x)), -(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(1u, _wgslsmith_sub_vec4_i32(func_5(func_4(vec4<bool>(true, true, true, true), func_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)], -186f), false), global1[_wgslsmith_index_u32(14226u, 31u)] > global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25727u, 31u)], 31u)], -7719i), func_4(vec4<bool>(true, true, true, true), func_1(vec4<f32>(-508f, 322f, global1[_wgslsmith_index_u32(0u, 31u)], -879f), true), true, _wgslsmith_mod_i32(56479i, -2147483647i)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], -445f)), global1[_wgslsmith_index_u32(1u, 31u)] > -861f)), ~vec4<i32>(2147483647i, 1i, _wgslsmith_sub_i32(6803i, 40493i), min(29655i, 5956i))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, -1570f, global1[_wgslsmith_index_u32(11105u, 31u)], -620f)))), 1i, -_wgslsmith_add_i32(2147483647i >> (global2[_wgslsmith_index_u32(4294967295u, 31u)] % 32u), 1i), u_input.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 31u)])), -256f))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-960f - -1269f))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)))));
    global2 = array<u32, 31>();
    var var_3 = var_1;
    global0 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(0u, u_input.d.x)));
}


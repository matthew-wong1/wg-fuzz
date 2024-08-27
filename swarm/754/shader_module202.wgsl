struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(-473f), vec2<bool>(false, false), 292f, -899f, Struct_1(-738f));

var<private> global1: array<Struct_4, 30>;

var<private> global2: array<i32, 28> = array<i32, 28>(1i, 2147483647i, 1i, 1i, 2147483647i, 8368i, -79846i, i32(-2147483648), 54817i, 1797i, -28823i, 10947i, 0i, 12266i, i32(-2147483648), -14698i, 7585i, -1i, 16415i, -3514i, -17893i, i32(-2147483648), -1i, 18i, -36338i, 0i, -1i, 12172i);

var<private> global3: vec4<f32> = vec4<f32>(805f, -842f, 459f, 1018f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(vec2<u32>(~_wgslsmith_mod_u32(~19265u, _wgslsmith_mult_u32(39157u, u_input.b)), ~_wgslsmith_add_u32(~1394u, ~u_input.b)), Struct_2(Struct_1(global0.d), !(!(!vec2<bool>(global0.b.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.d, global0.d)) * global0.c), -110f), 398f, Struct_1(-647f)), vec3<i32>(u_input.c, 2147483647i, countOneBits(-4136i)));
    let var_1 = global3.x;
    let var_2 = var_0;
    let var_3 = var_0.a.x > (~(~var_0.a.x) & var_2.a.x);
    global2 = array<i32, 28>();
    return ~(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(21514u, u_input.b, 0u, u_input.b)), vec4<u32>(1u, var_2.a.x, var_2.a.x, var_2.a.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(step(global3.x, global3.x)))), global0.c));
    var var_1 = Struct_4(func_3(), Struct_1(global0.d), u_input.c, Struct_2(Struct_1(global0.e.a), select(!(!global0.b), global0.b, any(select(vec3<bool>(global0.b.x, global0.b.x, global0.b.x), vec3<bool>(false, true, true), false))), -839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(686f))), global0.a));
    var var_2 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec2_u32(~var_1.a.xy, vec2<u32>(38942u, 17635u)), ~countOneBits(~var_1.a.x), false), 28u)], min(~(-2147483647i), min(-12597i, 1i)));
    global1 = array<Struct_4, 30>();
    var var_3 = Struct_1(global0.d);
    return var_1.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    let var_0 = func_2();
    global1 = array<Struct_4, 30>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-557f + _wgslsmith_f_op_f32(677f * var_0.a)), 1265f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(-global0.e.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) + _wgslsmith_f_op_f32(f32(-1f) * -377f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0.e.a, 1766f, -871f, 1237f), vec4<f32>(-1046f, -1391f, global0.c, 379f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 166f, global0.d, 1501f)))))));
    let var_1 = Struct_3(vec2<u32>(_wgslsmith_add_u32(1u, arg_0.x << (1u % 32u)), 34141u), Struct_2(global0.a, !global0.b, 1f, -1583f, global0.a), firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(func_3().x, 28u)], 0i, abs(-2147483647i))));
    global3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1540f - -1000f), _wgslsmith_f_op_f32(sign(1361f)), _wgslsmith_f_op_f32(-var_1.b.a.a), _wgslsmith_div_f32(global0.d, 993f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -771f, var_0.a, 396f))) - vec4<f32>(-1124f, 869f, -718f, global3.x))) + vec4<f32>(_wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(1385f + 596f)), 553f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(535f, global3.x)), _wgslsmith_f_op_f32(-366f - 514f), true))))));
    return -799f;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(vec2<u32>(~(~(~u_input.b)), select(u_input.b, ~u_input.b, !(arg_1.x > arg_1.x))), Struct_2(func_2(), vec2<bool>(-1556f != _wgslsmith_div_f32(global0.d, -345f), ~u_input.b == ~30202u), -245f, _wgslsmith_f_op_f32(select(-112f, _wgslsmith_f_op_f32(-355f * -1503f), !global0.b.x)), Struct_1(_wgslsmith_div_f32(global0.c, -763f))), _wgslsmith_sub_vec3_i32(select(~vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(global2[_wgslsmith_index_u32(16748u, 28u)], arg_0.x, u_input.a) >> (vec3<u32>(0u, u_input.b, 0u) % vec3<u32>(32u)), !vec3<bool>(global0.b.x, true, true)) >> ((abs(vec3<u32>(u_input.b, u_input.b, u_input.b)) & ~vec3<u32>(u_input.b, 1u, u_input.b)) % vec3<u32>(32u)), vec3<i32>(1i, -1i, _wgslsmith_sub_i32(0i, arg_0.x | arg_0.x))));
    var var_1 = Struct_5(Struct_2(func_2(), !var_0.b.b, arg_1.x, _wgslsmith_f_op_f32(ceil(-1035f)), func_2()), var_0, var_0, vec2<u32>(_wgslsmith_div_u32(u_input.b, ~(~4294967295u)), ~_wgslsmith_mult_u32(abs(u_input.b), ~4294967295u)));
    var var_2 = (i32(-1i) * -_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(25502u, 28u)] & 1i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 8952u, var_1.b.a.x, u_input.b), vec4<u32>(u_input.b, 1u, 65370u, var_0.a.x)), 28u)])) ^ var_0.c.x;
    global3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1572f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1136f)))), -919f, -201f)));
    let var_3 = Struct_5(var_1.c.b, var_0, Struct_3(vec2<u32>(~u_input.b, 46018u), var_1.a, vec3<i32>(arg_0.x, u_input.c, _wgslsmith_mod_i32(var_0.c.x, firstLeadingBit(-2147483647i)))), min(_wgslsmith_add_vec2_u32(var_1.c.a, ~max(vec2<u32>(var_1.d.x, 0u), vec2<u32>(var_1.d.x, u_input.b))), ~firstLeadingBit(var_0.a << (vec2<u32>(var_0.a.x, u_input.b) % vec2<u32>(32u)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.a) - -656f)), vec2<bool>(true, all(select(!vec4<bool>(var_0.b.b.x, false, var_3.c.b.b.x, var_3.b.b.b.x), vec4<bool>(global0.b.x, true, var_0.b.b.x, false), 71464u > var_0.a.x))), -729f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(f32(-1f) * -1053f)))), _wgslsmith_f_op_f32(min(var_1.a.e.a, _wgslsmith_f_op_f32(-var_0.b.e.a))))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 28>();
    global0 = func_4(reverseBits(vec2<i32>(_wgslsmith_div_i32(u_input.c, firstTrailingBit(19935i)), abs(u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -778f), 1997f, _wgslsmith_f_op_f32(trunc(global3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 392f, global3.x)) - global3.ywx), false || (false | global0.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(func_1(vec4<u32>(0u, u_input.b, u_input.b, 49706u), !global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-global3.x)))));
    var var_0 = global0.b.x;
    let var_1 = Struct_3(~_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(50720u, 51080u), select(vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global0.b.x, global0.b.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(32847u, 36150u), vec2<u32>(u_input.b, u_input.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 4276u), vec2<u32>(u_input.b, u_input.b))), Struct_2(func_4(vec2<i32>(1i, -1i), _wgslsmith_f_op_vec3_f32(round(global3.wwz))).a, select(!select(global0.b, vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(global0.b.x, global0.b.x)), select(global0.b, !vec2<bool>(false, global0.b.x), true), func_4(firstLeadingBit(vec2<i32>(-26071i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1487f, global3.x))).b), _wgslsmith_div_f32(905f, 1317f), global0.d, func_4(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(-3696i, global2[_wgslsmith_index_u32(64383u, 28u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, global0.e.a, -1329f) * global3.zxx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1471f, global3.x, global0.d) * vec3<f32>(global3.x, global3.x, 1512f)))).e), vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), max(min(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), vec2<i32>(0i, u_input.c)), vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b, 28u)]))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c, global2[_wgslsmith_index_u32(107538u, 28u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], 2147483647i, u_input.a, u_input.c)) >> (abs(1u) % 32u), firstLeadingBit(31583i), select(global0.b.x, global0.b.x, global0.b.x)), -1i));
    let var_2 = func_4(vec2<i32>(countOneBits(u_input.a), -1291i), global3.zwy).b.x;
    let var_3 = !(!select(!(!vec3<bool>(global0.b.x, var_1.b.b.x, true)), vec3<bool>(true, global0.b.x | false, true), !all(vec4<bool>(false, false, global0.b.x, var_2))));
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global3.x, _wgslsmith_f_op_f32(step(-499f, 981f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1928f, var_1.b.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.d) * _wgslsmith_f_op_f32(-global3.x)))));
}


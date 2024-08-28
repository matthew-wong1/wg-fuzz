struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec3<u32>(4294967295u, 2990u, 107982u), Struct_1(true, vec2<bool>(false, false), 198f, vec2<i32>(-24753i, 33979i)), vec4<bool>(true, false, true, true), 258f), Struct_3(vec3<u32>(4294967295u, 0u, 30947u), Struct_1(false, vec2<bool>(false, true), -213f, vec2<i32>(-25699i, 43953i)), vec4<bool>(false, false, false, true), -700f), Struct_3(vec3<u32>(1u, 1u, 36812u), Struct_1(false, vec2<bool>(true, true), 555f, vec2<i32>(9649i, -1i)), vec4<bool>(false, false, false, false), 529f), Struct_3(vec3<u32>(1u, 0u, 70168u), Struct_1(false, vec2<bool>(true, true), 164f, vec2<i32>(i32(-2147483648), 20318i)), vec4<bool>(true, true, false, true), -377f), Struct_3(vec3<u32>(1u, 4294967295u, 55829u), Struct_1(true, vec2<bool>(false, false), 381f, vec2<i32>(4656i, -33044i)), vec4<bool>(true, true, false, false), -920f), Struct_3(vec3<u32>(4294967295u, 0u, 36622u), Struct_1(true, vec2<bool>(false, false), 1506f, vec2<i32>(0i, 0i)), vec4<bool>(false, true, false, true), -1463f), Struct_3(vec3<u32>(1u, 0u, 15566u), Struct_1(true, vec2<bool>(true, true), 147f, vec2<i32>(0i, -38526i)), vec4<bool>(false, false, true, false), -359f), Struct_3(vec3<u32>(4355u, 7712u, 61606u), Struct_1(true, vec2<bool>(true, false), 499f, vec2<i32>(-1i, 39555i)), vec4<bool>(true, true, false, false), 649f), Struct_3(vec3<u32>(13409u, 46641u, 38006u), Struct_1(true, vec2<bool>(false, true), -536f, vec2<i32>(0i, -62212i)), vec4<bool>(false, true, false, true), -483f), Struct_3(vec3<u32>(51013u, 20082u, 4294967295u), Struct_1(true, vec2<bool>(false, true), -167f, vec2<i32>(0i, 1i)), vec4<bool>(false, true, false, true), 782f), Struct_3(vec3<u32>(1u, 0u, 10265u), Struct_1(false, vec2<bool>(false, true), -504f, vec2<i32>(20800i, 1439i)), vec4<bool>(false, true, true, true), -796f), Struct_3(vec3<u32>(70760u, 1u, 20342u), Struct_1(true, vec2<bool>(true, true), -663f, vec2<i32>(803i, -13458i)), vec4<bool>(false, true, false, true), 698f), Struct_3(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false, vec2<bool>(true, true), 520f, vec2<i32>(2147483647i, -1i)), vec4<bool>(true, true, false, false), 114f), Struct_3(vec3<u32>(4294967295u, 0u, 12770u), Struct_1(true, vec2<bool>(false, true), 313f, vec2<i32>(-1i, -42822i)), vec4<bool>(false, false, true, true), 423f), Struct_3(vec3<u32>(18142u, 0u, 0u), Struct_1(true, vec2<bool>(true, false), 369f, vec2<i32>(1i, -1i)), vec4<bool>(false, true, false, true), 1306f));

var<private> global1: array<vec3<u32>, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = array<Struct_3, 15>();
    let var_0 = Struct_2(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), true), true), select(reverseBits(vec4<u32>(u_input.a, max(65969u, u_input.a), ~u_input.d, u_input.d)), countOneBits(vec4<u32>(firstLeadingBit(u_input.a), u_input.a ^ 1u, firstTrailingBit(u_input.a), ~u_input.a)), select(true, false, true)), Struct_1(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))), vec2<bool>(!(u_input.a > 11671u), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1434f))))), vec2<i32>(u_input.c ^ u_input.b, arg_0.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), ~arg_0.yw, vec2<i32>(-1i, u_input.b))));
    global0 = array<Struct_3, 15>();
    var var_1 = any(select(var_0.a.xwx, var_0.a.yxx, select(var_0.a.yxw, select(select(vec3<bool>(true, var_0.c.b.x, false), vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_0.a.x, var_0.c.b.x, true)), select(var_0.a.yzz, vec3<bool>(false, true, var_0.a.x), vec3<bool>(false, var_0.c.b.x, var_0.a.x)), var_0.a.xwx), !all(var_0.c.b))));
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(52162u, 61621u, 4294967295u, var_0.b.x)), var_0.b & var_0.b, var_0.b << (vec4<u32>(46532u, var_0.b.x, 4294967295u, var_0.b.x) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_mod_u32(0u, u_input.d), 20089u, var_0.b.x), vec4<u32>(var_0.b.x, 18666u, 1u, abs(1u))));
    return !any(select(select(vec2<bool>(false, var_0.c.b.x), var_0.a.yy, var_0.c.a), vec2<bool>(false, var_0.c.a), false));
}

fn func_2() -> i32 {
    let var_0 = vec4<bool>(true, !select(1u <= ~u_input.a, func_3(-vec4<i32>(u_input.c, u_input.b, u_input.c, -36193i)), false), !all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true);
    global1 = array<vec3<u32>, 1>();
    var var_1 = ~_wgslsmith_add_vec4_u32(abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u, 23349u, u_input.d), vec4<u32>(u_input.d, 0u, 1u, 1u)))), vec4<u32>(~(~u_input.a), ~u_input.a, u_input.d, 1u));
    var var_2 = var_1.x ^ _wgslsmith_mod_u32(53842u, 30159u);
    var var_3 = var_0.wzy;
    return ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(reverseBits(min(vec2<i32>(u_input.c, -6861i), vec2<i32>(u_input.c, u_input.c))), vec2<i32>(9338i, u_input.b)), -1i);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.b, -(~(-34445i))), _wgslsmith_add_i32(i32(-1i) * -13478i, -2147483647i)) <= (func_2() << (~(1u ^ ~u_input.a) % 32u));
    let var_1 = Struct_1(!var_0, select(!vec2<bool>(any(vec4<bool>(var_0, true, true, true)), var_0), !(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0))), func_3(~abs(vec4<i32>(7223i, u_input.b, 1i, u_input.c)))), -354f, vec2<i32>(-1i) * -(~vec2<i32>(1i, 1i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2839f - var_1.c) + _wgslsmith_f_op_f32(step(-1273f, -1089f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c, 153f)) - _wgslsmith_f_op_f32(sign(var_1.c))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(526f - var_1.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2094f, 905f, false))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * 1002f) - _wgslsmith_f_op_f32(round(-1119f))), _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(exp2(var_1.c))))));
    let var_4 = vec3<bool>(select(!(!var_1.a), all(!vec2<bool>(true, var_0)), true), false & !var_1.a, true);
    return Struct_1(var_0, select(select(vec2<bool>(false, func_3(vec4<i32>(u_input.b, 33885i, var_1.d.x, -2078i))), !select(var_1.b, vec2<bool>(false, false), vec2<bool>(var_1.a, false)), any(vec4<bool>(true, false, var_0, var_1.a))), select(var_1.b, !var_1.b, true), var_4.zy), _wgslsmith_f_op_f32(f32(-1f) * -1413f), firstLeadingBit(vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(-1i, 1359i)), -54052i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a, 4294967295u, u_input.a)) << (global1[_wgslsmith_index_u32(countOneBits(u_input.d ^ 1u), 1u)] % vec3<u32>(32u)), select(countOneBits(vec3<u32>(72194u, u_input.a, u_input.d)), vec3<u32>(u_input.d, u_input.d, abs(0u)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, u_input.a, u_input.d), vec3<u32>(~4294967295u, u_input.a << (firstLeadingBit(u_input.d) % 32u), 1u)));
    var var_1 = 1u;
    var var_2 = abs(vec3<u32>(u_input.d, abs(~1u), 1u));
    var var_3 = var_0.xx;
    let var_4 = func_1();
    let var_5 = max(~vec4<i32>(-2147483647i, _wgslsmith_mod_i32(var_4.d.x, 30048i) << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -2147483647i), vec3<i32>(2147483647i, var_4.d.x, u_input.c)), -(~(-29065i))), vec4<i32>(~var_4.d.x, func_1().d.x, 1i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c, var_4.c, var_4.c, var_4.c) * vec4<f32>(-107f, var_4.c, 1194f, 249f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, var_4.c, 1000f, 320f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c, -1651f, 478f, var_4.c) * vec4<f32>(-913f, -1893f, 2034f, -370f)) + vec4<f32>(1145f, var_4.c, var_4.c, var_4.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c, -263f, 456f, -429f) + vec4<f32>(var_4.c, 1574f, -1288f, -408f)) * vec4<f32>(-972f, var_4.c, var_4.c, -1300f)), false))), _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(var_3.x, u_input.d, 26765u, 4294967295u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_2.x, var_0.x), vec4<u32>(4294967295u, 1u, var_3.x, var_0.x), firstLeadingBit(vec4<u32>(40516u, 1u, 21627u, 13416u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(var_0.x, var_2.x, var_3.x, var_3.x), ~vec4<u32>(var_0.x, 23336u, 4294967295u, var_0.x)), vec4<u32>(var_3.x, 1u, 4294967295u, 0u) & ~vec4<u32>(41364u, 6818u, u_input.a, var_3.x))), _wgslsmith_div_i32(-(~var_4.d.x), _wgslsmith_sub_i32(u_input.c, -22336i)), firstTrailingBit(~(var_0.x << (var_2.x % 32u))), var_2.x);
}


struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> bool {
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    global0 = array<vec4<bool>, 7>();
    return !arg_1;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_1, -499f) * arg_2))), vec3<f32>(arg_2.x, arg_1, 156f), vec3<bool>(func_3(vec3<f32>(1000f, arg_1, 1150f), true, u_input.a), true, true))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<u32>(firstLeadingBit(70519u), ~u_input.b.x, abs(63614u), ~max(abs(20308u), 1u)), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 33345u, u_input.b.x)), firstTrailingBit(~u_input.b.wyz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-134f - 416f))) + _wgslsmith_f_op_f32(select(1070f, arg_2.x, select(false, true, false))))));
    var var_1 = any(!vec4<bool>(select(false, var_0.b.x, true), true, _wgslsmith_mod_u32(1u, 8519u) != u_input.b.x, var_0.b.x));
    global0 = array<vec4<bool>, 7>();
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -952f), arg_2.x, _wgslsmith_f_op_f32(var_0.e * arg_1)), var_0.b, ~(~(~u_input.b) >> (~(~u_input.b) % vec4<u32>(32u))), ~var_0.d >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 43592u, var_0.c.x), ~u_input.b.xwx) % 32u), 1000f);
    var_1 = select(true, false, true);
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.c.wy, u_input.c.yy, ~(~vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.xxy, vec3<i32>(u_input.c.x, u_input.a, u_input.c.x)), -14768i)));
    var var_1 = Struct_1(arg_0.a, arg_0.b, _wgslsmith_mult_vec4_u32(~firstLeadingBit(arg_0.c ^ arg_0.c), u_input.b), _wgslsmith_dot_vec3_u32(max(vec3<u32>(24672u, ~arg_0.d, ~u_input.b.x), ~vec3<u32>(u_input.b.x, arg_0.c.x, arg_0.c.x)), vec3<u32>(select(59501u, _wgslsmith_div_u32(104806u, arg_0.d), any(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), 4294967295u, u_input.b.x)), _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(floor(-1000f))));
    var var_2 = arg_0;
    let var_3 = func_2(firstTrailingBit(vec4<i32>(u_input.a, 2147483647i, 2147483647i, -firstTrailingBit(-22668i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), vec3<f32>(var_2.a.x, 1084f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.e), var_2.e, var_1.b.x)))));
    let var_4 = func_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-46886i, -21792i, -2147483647i, countOneBits(-7322i)), -u_input.c << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_3.c.x, 11475u, u_input.b.x), var_2.c) % vec4<u32>(32u))), -_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.a, 7402i, 0i, -1i)) << (~var_1.c % vec4<u32>(32u)), vec4<i32>(-33762i, _wgslsmith_mult_i32(var_0.x, var_0.x), ~(~0i), u_input.c.x)), arg_0.a.x, arg_0.a);
    return Struct_1(func_2(_wgslsmith_add_vec4_i32(select(u_input.c, vec4<i32>(20315i, var_0.x, var_0.x, u_input.a), false && var_2.b.x), u_input.c), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_2.a, vec3<f32>(var_3.a.x, var_1.a.x, var_3.a.x)))))).a, var_3.b, var_4.c, ~(~_wgslsmith_add_u32(~25524u, 1496u)), -410f);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_2 = reverseBits(min(func_4(func_4(Struct_1(var_0.a, vec2<bool>(arg_1.b.x, true), arg_1.c, arg_1.c.x, var_0.e))).c.yzy, ~firstLeadingBit(vec3<u32>(arg_1.d, 83251u, 13272u))) >> (arg_1.c.www % vec3<u32>(32u)));
    var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-658f - arg_2.x), _wgslsmith_f_op_f32(1185f - 527f)))), vec2<bool>(u_input.a > ~u_input.c.x, (45417u >= u_input.b.x) && all(arg_1.b)), vec4<u32>(118089u, ~var_2.x ^ ~9297u, u_input.b.x, ~arg_1.c.x | 28876u), ~(~52924u), arg_1.a.x));
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, var_2.x), ~(vec4<u32>(var_2.x, 0u, arg_1.c.x, 14338u) << (arg_1.c % vec4<u32>(32u)))), 4294967295u, ~_wgslsmith_sub_u32(26308u, firstTrailingBit(0u)), ~abs(_wgslsmith_add_u32(0u, 4294967295u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e)) - func_4(Struct_1(var_0.a, !select(var_0.b, arg_1.b, arg_1.b.x), firstLeadingBit(~arg_1.c), ~_wgslsmith_add_u32(var_3.x, var_0.c.x), _wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(max(-1571f, arg_2.x))))).e);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x) != _wgslsmith_f_op_f32(func_5(true, func_4(func_2(u_input.c, -342f, _wgslsmith_div_vec3_f32(arg_1.zyz, arg_1.yxy))), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(abs(-2423f))))));
    let var_1 = _wgslsmith_mult_u32(u_input.b.x & arg_0, ~arg_0 ^ _wgslsmith_mult_u32(select(arg_0, ~0u, false), 0u));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.yzw + _wgslsmith_f_op_vec3_f32(abs(arg_1.xyz))), vec2<bool>(true, all(func_4(Struct_1(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec2<bool>(var_0, false), u_input.b, 4294967295u, -821f)).b)), ~(~vec4<u32>(var_1, u_input.b.x, var_1, u_input.b.x)), ((var_1 & u_input.b.x) | var_1) ^ (u_input.b.x ^ ~10744u), _wgslsmith_f_op_f32(arg_1.x + -660f)));
    return vec3<bool>(func_4(Struct_1(func_2(u_input.c, 583f, _wgslsmith_f_op_vec3_f32(-var_2.a)).a, vec2<bool>(false, !var_0), ~vec4<u32>(82640u, 59466u, 44588u, arg_0), 22019u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1833f)) - _wgslsmith_f_op_f32(trunc(-866f))))).b.x, !all(!(!global0[_wgslsmith_index_u32(arg_0, 7u)])), func_2(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1078f, var_2.e)), _wgslsmith_f_op_vec3_f32(select(arg_1.zyy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1340f, -850f, arg_1.x) * var_2.a), any(vec2<bool>(var_2.b.x, true))))).d <= 50908u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b.x, 0u & ~u_input.b.x, 25674u << (~(~1u) % 32u));
    var_0 = select(u_input.b.yxy, ~(~u_input.b.wzw >> (~_wgslsmith_div_vec3_u32(u_input.b.xwz, vec3<u32>(8077u, 4294967295u, 22795u)) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), func_1(29935u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1167f, 1000f, -552f, -1218f), vec4<f32>(-1142f, -670f, 1175f, -319f), true)))), (_wgslsmith_div_u32(1u, u_input.b.x) >= firstTrailingBit(1u)) && true));
    let var_1 = 1i;
    var_0 = ~abs(_wgslsmith_div_vec3_u32(u_input.b.wwz, u_input.b.zwy));
    var var_2 = func_2(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-228f, -841f))))), vec3<f32>(-364f, _wgslsmith_f_op_f32(round(699f)), 317f));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(min(var_2.c.x, var_0.x), _wgslsmith_mod_u32(~var_0.x, ~u_input.b.x), reverseBits(~10913u), ~(~u_input.b.x)), var_2.c | var_2.c, vec4<bool>((var_2.e >= var_2.a.x) && any(vec2<bool>(false, true)), false, any(vec3<bool>(false, true, true)), var_2.b.x && !var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-328f, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x))))), var_2.c.yxx | firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 112841u, var_2.c.x), vec3<u32>(var_2.d, var_0.x, 0u))), _wgslsmith_mult_vec4_i32(-u_input.c, vec4<i32>(1i, var_1, -var_1, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c))) ^ _wgslsmith_div_vec4_i32(~min(u_input.c, vec4<i32>(2147483647i, u_input.a, var_1, -2147483647i)), vec4<i32>(1i, ~var_1, -14984i, var_1)), vec3<f32>(-624f, var_2.a.x, _wgslsmith_f_op_f32(-var_2.e)));
}


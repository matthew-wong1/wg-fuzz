struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1391u)), vec3<i32>(2147483647i, -30261i, -42755i)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 30885u)), vec3<i32>(-17503i, -49835i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(1u, 0u, 16146u, 0u)), vec3<i32>(2481i, -21280i, 4741i)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 0u, 129971u)), vec3<i32>(20823i, -10633i, 3536i)), Struct_2(Struct_1(vec4<u32>(42941u, 47962u, 4294967295u, 17556u)), vec3<i32>(45945i, 13852i, 2147483647i)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 33321u)), vec3<i32>(0i, 30192i, -13388i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 43712u, 31924u, 1u)), vec3<i32>(-2906i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(34565u, 0u, 4294967295u, 122470u)), vec3<i32>(29458i, -42636i, 7061i)), Struct_2(Struct_1(vec4<u32>(67353u, 1u, 3173u, 10249u)), vec3<i32>(-6113i, 2147483647i, 1i)), Struct_2(Struct_1(vec4<u32>(19620u, 17448u, 54051u, 8140u)), vec3<i32>(-1710i, 0i, -1i)), Struct_2(Struct_1(vec4<u32>(0u, 37723u, 1u, 12583u)), vec3<i32>(25765i, 38293i, 0i)), Struct_2(Struct_1(vec4<u32>(24770u, 55371u, 1u, 14879u)), vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_2(Struct_1(vec4<u32>(0u, 17155u, 0u, 28653u)), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_2(Struct_1(vec4<u32>(62569u, 1u, 1u, 8571u)), vec3<i32>(-20862i, 2147483647i, -10007i)), Struct_2(Struct_1(vec4<u32>(1u, 33521u, 9151u, 38588u)), vec3<i32>(40777i, 1i, -19118i)), Struct_2(Struct_1(vec4<u32>(1u, 62384u, 1u, 45564u)), vec3<i32>(-26429i, -1i, 2147483647i)), Struct_2(Struct_1(vec4<u32>(78871u, 48284u, 14657u, 0u)), vec3<i32>(0i, 0i, -1i)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u)), vec3<i32>(-1i, -13539i, 23745i)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 3268u, 1u)), vec3<i32>(1i, -14775i, 1i)), Struct_2(Struct_1(vec4<u32>(55088u, 14447u, 1u, 7978u)), vec3<i32>(1i, -6756i, i32(-2147483648))));

var<private> global3: i32;

var<private> global4: array<u32, 8> = array<u32, 8>(1u, 4294967295u, 18004u, 67113u, 0u, 20573u, 0u, 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2, 8u)], 8u)], 8u)], global4[_wgslsmith_index_u32(u_input.a, 8u)]), firstLeadingBit(_wgslsmith_mod_u32(u_input.a, arg_2)), ~_wgslsmith_mod_u32(1u, u_input.b), ~u_input.b), abs(vec4<u32>(global4[_wgslsmith_index_u32(arg_2, 8u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31500u, 8u)], 8u)], 1u)) << (vec4<u32>(_wgslsmith_div_u32(1u, 37473u), 0u, u_input.a, _wgslsmith_add_u32(arg_2, 1u)) % vec4<u32>(32u))));
    return ~var_0.a.xy;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = ~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 15482u), func_3(1588f, -7638i, 49061u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, -574f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-841f, -762f), vec2<f32>(-628f, 509f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1029f)), vec2<f32>(-1725f, -436f))))));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.x)))), 396f))), var_1.x));
    var var_4 = firstLeadingBit(~53192u);
    return Struct_1(vec4<u32>(64896u, 4294967295u, _wgslsmith_div_u32(1u, u_input.b) & 62868u, ~_wgslsmith_add_u32(var_0.x, 27908u)) ^ _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, var_0.x, 1u)) >> ((vec4<u32>(21908u, 1u, u_input.b, arg_0) ^ vec4<u32>(global4[_wgslsmith_index_u32(1u, 8u)], 70525u, 39340u, arg_0)) % vec4<u32>(32u)), ~(~vec4<u32>(37106u, var_0.x, 2783u, u_input.a))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(~(~(~(~105700u))), 20u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x * arg_2.x))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(169f, arg_2.x, true))))), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(abs(arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)))), ~_wgslsmith_mult_u32(u_input.b, 53196u));
    global2 = array<Struct_2, 20>();
    global2 = array<Struct_2, 20>();
    global3 = _wgslsmith_dot_vec4_i32(-reverseBits(-vec4<i32>(-2147483647i, -41265i, 0i, var_0.a.b.x)), vec4<i32>(i32(-1i) * -var_0.a.b.x, ~(-27575i), -1i, var_0.a.b.x));
    global2 = array<Struct_2, 20>();
    return -1i;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<bool> {
    global2 = array<Struct_2, 20>();
    var var_0 = false;
    let var_1 = arg_2;
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(func_2(~u_input.b).a.x, 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) - arg_0) + 746f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-778f)))), _wgslsmith_f_op_f32(-arg_0)), u_input.a);
    var var_3 = _wgslsmith_dot_vec4_u32(~(~var_2.a.a.a), vec4<u32>(0u, 4294967295u, var_1.a.x | (~arg_2.a.x & ~33846u), _wgslsmith_dot_vec2_u32(var_1.a.yw, (var_1.a.xw >> (var_2.a.a.a.yz % vec2<u32>(32u))) >> (~vec2<u32>(28019u, arg_2.a.x) % vec2<u32>(32u)))));
    return !(!(!select(!vec4<bool>(true, arg_3.x, arg_3.x, false), select(vec4<bool>(arg_3.x, false, false, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), vec4<bool>(true, arg_3.x, arg_3.x, true)), !vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = all(func_5(arg_1.x, func_4(~firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(80813u, 8u)], 4294967295u)), func_2(1u), _wgslsmith_f_op_vec3_f32(floor(arg_1.zxw)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(1u, 8u)], u_input.a), vec3<u32>(43287u, u_input.b, 0u)) == u_input.b), func_2(u_input.a), select(vec3<bool>(false, true, false), vec3<bool>(true & arg_0, true, arg_0), vec3<bool>(false, arg_0, all(vec3<bool>(false, arg_0, arg_0))))));
    global0 = array<vec4<f32>, 26>();
    let var_2 = 27088u;
    global2 = array<Struct_2, 20>();
    return _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(select(vec4<i32>(65707i, 2147483647i, 1i, -8221i), _wgslsmith_add_vec4_i32(vec4<i32>(26090i, -1i, 0i, 0i), vec4<i32>(4890i, -418i, 19556i, -39654i)), arg_1.x < arg_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, 1i, 0i), abs(vec4<i32>(-1i, 1i, 19763i, -34008i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~1i, abs(0i), _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(-1i))), ~(~vec4<i32>(1i, -10819i, -27359i, 29729i))), vec4<i32>(~_wgslsmith_mod_i32(19439i, 1i) ^ func_4(vec2<u32>(73415u, var_2) >> (vec2<u32>(u_input.a, var_2) % vec2<u32>(32u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(-arg_1.zyx), arg_0), _wgslsmith_mod_i32(1i, abs(-2147483647i)), _wgslsmith_div_i32(select(1460i, i32(-1i) * -53836i, u_input.a >= u_input.a), min(-47706i, reverseBits(-1i))), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(36968i, 1i, -2147483647i, -1i), vec4<i32>(-1i, -2147483647i, -1i, 41718i)), countOneBits(~4264i)), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(1i, 7836i) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, -7543i), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), 1i), _wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(-1i, -32824i, 50423i, 29226i)) ^ func_1(true, vec4<f32>(1024f, -509f, 1373f, 1204f)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-32497i, 2147483647i, -1i, 8392i)) | vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(34290i, func_1(false, vec4<f32>(-748f, 126f, 917f, -815f)).x, i32(-1i) * -1i, 2147483647i))), !(!func_5(-1000f, ~(-17665i), Struct_1(vec4<u32>(u_input.b, u_input.b, 1u, u_input.a)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    var var_1 = select(true, true, true);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -161f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1572f - _wgslsmith_f_op_f32(f32(-1f) * -147f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f))))));
    var_1 = true;
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(61095u, 8u)], 20u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-149f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))), var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -918f) + vec3<f32>(var_2.x, 995f, var_2.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-701f, var_2.x, var_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, -1736f)))), u_input.b);
    let var_4 = ~vec4<i32>(firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(27663i, var_0.x, var_3.a.b.x, var_3.a.b.x), var_0)), -_wgslsmith_div_i32(min(var_3.a.b.x, var_3.a.b.x), ~var_0.x), func_4(_wgslsmith_add_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(71706u, 8u)], 90670u), max(vec2<u32>(60878u, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(23513u, 8u)], 0u))), Struct_1(var_3.a.a.a ^ vec4<u32>(0u, 1u, global4[_wgslsmith_index_u32(u_input.b, 8u)], 1u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-498f, var_3.c.x, -542f))), true), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_3.a.b.x, -11377i, 61274i), ~(-2147483647i)));
    let var_5 = _wgslsmith_f_op_f32(round(-968f));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(var_0.zzz, vec3<i32>(var_3.a.b.x, var_0.x, var_3.a.b.x)), vec3<i32>(var_0.x | 2147483647i, _wgslsmith_mult_i32(-2147483647i, var_3.a.b.x), _wgslsmith_clamp_i32(var_0.x, var_0.x, -2531i))), var_0.zx);
}


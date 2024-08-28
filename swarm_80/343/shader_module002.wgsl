struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> bool {
    let var_0 = 49281u;
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_1 = 0i;
    let var_2 = arg_1;
    return true;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(vec3<i32>(13639i, 0i >> (~arg_1.x % 32u), _wgslsmith_mult_i32(u_input.c.x ^ u_input.d.x, ~u_input.a.x)) | vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, -2147483647i), _wgslsmith_sub_i32(-1i, u_input.e.x)), 2147483647i), all(!select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(true, arg_0, false, arg_3), true)), arg_1.x, 1914f);
    global0 = array<Struct_1, 3>();
    let var_1 = Struct_1(u_input.d, var_0.b, ~(select(var_0.c, 37144u, arg_3) ^ _wgslsmith_clamp_u32(var_0.c, abs(arg_1.x), var_0.c)), var_0.d);
    var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(firstTrailingBit(-abs(vec3<i32>(var_1.a.x, -2147483647i, u_input.d.x))), var_1.a, vec3<i32>(-2147483647i, firstTrailingBit(14608i ^ u_input.e.x), max(var_1.a.x | -1i, 1i))), true, _wgslsmith_div_u32(var_1.c, _wgslsmith_dot_vec4_u32(abs(arg_1 & arg_1), vec4<u32>(min(4294967295u, arg_1.x), 69297u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 14030u, 33378u), vec3<u32>(1u, 1u, 0u)), max(arg_1.x, u_input.b)))), 2210f);
    global0 = array<Struct_1, 3>();
    return Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, -19860i, var_1.a.x), _wgslsmith_mod_vec3_i32(var_1.a, var_1.a)), -var_1.a), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_0.a.x, u_input.a.x, -16788i), vec3<i32>(8715i, u_input.e.x, var_0.a.x)), select(var_0.a, u_input.c, vec3<bool>(true, false, true))), 1i)), !(var_0.b & var_1.b), arg_1.x, arg_2);
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<Struct_1, 3>();
    let var_0 = 2156f;
    let var_1 = global0[_wgslsmith_index_u32(56904u, 3u)];
    var var_2 = vec2<bool>(any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(arg_0.b, true)), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b), var_1.b), !arg_0.b), select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(arg_0.b, var_1.b), vec2<bool>(arg_0.b, arg_0.b), var_1.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(false, false), vec2<bool>(arg_0.b, arg_0.b))), !select(vec2<bool>(true, false), vec2<bool>(arg_0.b, false), true))), false);
    global0 = array<Struct_1, 3>();
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-201f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.d, var_0)), var_0)), _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_1.d, var_0), vec3<f32>(var_1.d, -996f, -1053f), true)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    global0 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_div_vec2_u32(abs(vec2<u32>(~(~4294967295u), u_input.b)), vec2<u32>(abs(_wgslsmith_clamp_u32(7407u, u_input.b, ~u_input.b)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~select(vec4<u32>(39859u, u_input.b, 1u, 0u), vec4<u32>(u_input.b, 1u, u_input.b, 0u), vec4<bool>(false, true, false, true)))));
    var var_1 = -func_3(false, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, 0u, u_input.b, var_0.x)), (vec4<u32>(23650u, u_input.b, 0u, u_input.b) << (vec4<u32>(u_input.b, var_0.x, u_input.b, var_0.x) % vec4<u32>(32u))) ^ max(vec4<u32>(u_input.b, 4294967295u, var_0.x, u_input.b), vec4<u32>(u_input.b, var_0.x, 14341u, u_input.b))), -1396f, func_3(true, ~vec4<u32>(1u, 4294967295u, 35550u, u_input.b), _wgslsmith_f_op_f32(ceil(1019f)), true).b && false).a;
    var var_2 = arg_1.xx;
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(27037u, 0u, firstTrailingBit(u_input.b)), select(~(~vec3<u32>(u_input.b, 17575u, u_input.b)), min(select(vec3<u32>(62227u, u_input.b, 4294967295u), vec3<u32>(71765u, 1u, u_input.b), true), vec3<u32>(0u, var_0.x, u_input.b) >> (vec3<u32>(var_0.x, u_input.b, var_0.x) % vec3<u32>(32u))), true) << (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, var_0.x, 7051u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.b), vec3<u32>(0u, var_0.x, 4294967295u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), arg_3.x, !func_2(var_1.x, vec4<bool>(true, true, false, true)))) + -1636f);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1618f), 1f, -139f, _wgslsmith_div_f32(-155f, -172f))), vec4<i32>(u_input.e.x, (-1i << (u_input.b % 32u)) >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-5535i, u_input.a.x, u_input.e.x, u_input.c.x), vec4<i32>(-13025i, 1i, -1928i, -1i)), min(vec4<i32>(u_input.e.x, 0i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.e.x, -12932i, u_input.c.x, 29972i))), ~abs(u_input.a.x)), 1251f, _wgslsmith_f_op_vec3_f32(func_4(func_3(false, vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -759f), func_2(u_input.c.x, vec4<bool>(false, arg_0, false, arg_0)))))))));
    let var_1 = Struct_1(~(-(vec3<i32>(-1i) * -vec3<i32>(10826i, -31136i, u_input.a.x))), true, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(57865u, u_input.b)), vec2<u32>(0u, u_input.b)), ~firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), firstLeadingBit(u_input.b)), 1f);
    global0 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d - 462f), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(abs(~vec3<i32>(-10076i, 22898i, var_1.a.x)), var_1.b, _wgslsmith_add_u32(1u, ~43486u), _wgslsmith_f_op_f32(ceil(-261f))))).x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d)));
    return Struct_1(var_1.a >> (vec3<u32>(63500u, var_1.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u))) % vec3<u32>(32u)), arg_0, ~1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(func_3(0i <= u_input.d.x, vec4<u32>(var_1.c, 1u, 59328u, 4294967295u) << (vec4<u32>(22345u, u_input.b, 9748u, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(1400f)), !arg_0))).x)));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_1.d, 1281f, arg_1.d) * vec4<f32>(arg_2.d, -1695f, arg_1.d, arg_1.d)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(arg_1.d + arg_2.d)), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(arg_1.a, true, 1u, arg_1.d))).x, 1000f, 417f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2.d, arg_1.d, 506f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1702f, -744f, -598f, -790f)) + vec4<f32>(arg_2.d, arg_1.d, arg_2.d, arg_2.d))))));
    var var_2 = Struct_1(~u_input.d, !arg_2.b, _wgslsmith_sub_u32(abs(abs(arg_1.c)), 1u >> (~func_3(var_0, vec4<u32>(0u, arg_3.x, arg_1.c, 2418u), arg_2.d, false).c % 32u)), func_3(arg_1.b, ~reverseBits(~vec4<u32>(arg_3.x, 0u, 4294967295u, 0u)), 819f, func_3(var_0, vec4<u32>(3445u, arg_2.c | arg_1.c, func_3(arg_2.b, vec4<u32>(0u, 1u, 30562u, 52669u), arg_1.d, false).c, arg_3.x), _wgslsmith_f_op_vec3_f32(func_4(arg_1)).x, all(select(vec4<bool>(false, false, false, arg_1.b), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_1.b, arg_1.b, true)))).b).d);
    let var_3 = func_1(select(true, func_1(true).b, var_2.b));
    let var_4 = 1185f;
    return func_1(arg_1.b).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f));
    let var_1 = ~vec2<u32>(func_6(-1i, func_1(u_input.b < 70532u), func_1(false), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(25360u, u_input.b), select(vec2<u32>(0u, 54398u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(false, false)))), u_input.b << (4294967295u % 32u));
    global0 = array<Struct_1, 3>();
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, true))), func_2(i32(-1i) * -2147483647i, vec4<bool>(u_input.c.x <= -1i, all(vec4<bool>(true, false, false, true)), true, true))), vec2<bool>(true, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, 4294967295u), _wgslsmith_clamp_u32(var_1.x, var_1.x, 1u)) != var_1.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(~var_1, _wgslsmith_mult_vec2_u32(var_1, vec2<u32>(u_input.b, u_input.b)), var_2)), u_input.e.x, ~u_input.c.x >> (_wgslsmith_add_u32(select(~var_1.x, _wgslsmith_div_u32(var_1.x, 19834u), any(vec4<bool>(var_2.x, var_2.x, var_2.x, false))), 4294967295u) % 32u), reverseBits(i32(-1i) * -37072i), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_4(func_3(var_2.x, ~vec4<u32>(43167u, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_0), !var_2.x))).x, _wgslsmith_f_op_f32(-var_0)));
}


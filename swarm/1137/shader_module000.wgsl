struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(35615u, 28220u, 53298u), true, 1013f, -1i, true), Struct_1(vec3<u32>(1u, 4294967295u, 1u), true, 307f, i32(-2147483648), false), Struct_1(vec3<u32>(4294967295u, 10104u, 39236u), false, 1037f, -14013i, true), Struct_1(vec3<u32>(83149u, 31079u, 7319u), false, -1000f, -6322i, true), Struct_1(vec3<u32>(4294967295u, 5866u, 3054u), false, 1150f, 1i, true), Struct_1(vec3<u32>(123058u, 0u, 30664u), true, -964f, i32(-2147483648), true), Struct_1(vec3<u32>(1u, 28551u, 1u), false, 989f, -1413i, true), Struct_1(vec3<u32>(73764u, 22165u, 32049u), false, -1359f, 2147483647i, false), Struct_1(vec3<u32>(1u, 4294967295u, 1u), false, 509f, -32546i, false), Struct_1(vec3<u32>(54540u, 53232u, 1u), false, -330f, -13095i, false), Struct_1(vec3<u32>(1u, 55410u, 0u), false, 435f, 17028i, true), Struct_1(vec3<u32>(91700u, 25131u, 0u), true, 1445f, i32(-2147483648), false), Struct_1(vec3<u32>(54686u, 1u, 105618u), false, -187f, -9722i, false), Struct_1(vec3<u32>(75886u, 33350u, 78397u), false, 499f, 2147483647i, false), Struct_1(vec3<u32>(1u, 37359u, 4294967295u), false, 829f, -29312i, true), Struct_1(vec3<u32>(9033u, 49004u, 4294967295u), false, 1000f, i32(-2147483648), false), Struct_1(vec3<u32>(11025u, 35405u, 0u), true, 419f, -1i, true), Struct_1(vec3<u32>(1u, 5556u, 59645u), false, 375f, 0i, false));

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(80364u, 0u));

var<private> global3: i32;

var<private> global4: array<vec2<f32>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    global1 = any(!select(!vec4<bool>(true, true, arg_0.e, true), select(vec4<bool>(arg_2.b, arg_2.b, true, arg_0.e), vec4<bool>(arg_2.e, true, arg_0.e, arg_0.b), false), !vec4<bool>(false, false, true, arg_0.e))) && !all(select(vec4<bool>(true, arg_2.e, false, true), vec4<bool>(false, false, arg_0.e, true), !vec4<bool>(arg_2.b, true, arg_2.b, arg_2.e)));
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 18554u), arg_0.a.zy), ~global2[_wgslsmith_index_u32(70929u, 1u)]), vec2<u32>(~0u, firstTrailingBit(73123u))), _wgslsmith_add_u32(max(u_input.a.x, _wgslsmith_clamp_u32(arg_2.a.x, arg_2.a.x, 15028u)), 1u)), 18u)];
    global2 = array<vec2<u32>, 1>();
    global1 = !arg_0.b;
    var var_1 = Struct_1(reverseBits(~var_0.a), !(!arg_0.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1408f * _wgslsmith_f_op_f32(-901f * arg_1)) - _wgslsmith_f_op_f32(min(-460f, _wgslsmith_f_op_f32(-arg_1)))))), -u_input.b, arg_2.e);
    return var_0.c;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(reverseBits(u_input.a) & ~vec3<u32>(34134u, u_input.d.x, u_input.d.x), ~u_input.d.x > ~(~(~4294967295u)), _wgslsmith_f_op_f32(func_3(Struct_1(~(~vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1307f - 1714f) * -1000f), -1i, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false))), _wgslsmith_div_f32(-995f, _wgslsmith_f_op_f32(-1f)), Struct_1(vec3<u32>(_wgslsmith_sub_u32(32356u, u_input.d.x), 24266u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.d)), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-396f * -606f), -1i, select(true, true, true)))), ~(~u_input.b & min(countOneBits(2147483647i), 1i)), -77467i == u_input.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c) * vec3<f32>(-963f, 699f, -718f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 534f, 1113f) + vec3<f32>(242f, var_0.c, var_0.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, -818f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 200f, -689f) + vec3<f32>(1127f, -1046f, 566f))), !select(vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.b, true, var_0.b), true))))));
    var var_2 = Struct_1(var_0.a, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(420f, 1f)))), 7524i, !(countOneBits(u_input.b) == var_0.d));
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, ~reverseBits(var_2.a)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(36904u, 48744u, 1u)), var_0.a), 1u), false, _wgslsmith_div_f32(-1981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-829f)) + var_2.c) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(-601f, var_1.x))))), var_2.d, true);
    return Struct_1(~(~(vec3<u32>(var_0.a.x, var_0.a.x, var_2.a.x) ^ vec3<u32>(1343u, 21897u, 59265u))), any(vec4<bool>(false, true, true, var_0.b)), var_3.c, -32385i, select(31751i, _wgslsmith_clamp_i32(var_2.d, var_2.d << (1u % 32u), 0i), all(!vec4<bool>(var_2.e, var_3.e, true, var_2.e))) > countOneBits(var_2.d | reverseBits(0i)));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1344f + -588f);
    global4 = array<vec2<f32>, 6>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f));
    global3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.b) << (vec4<u32>(u_input.d.x, 1u, 4294967295u, u_input.d.x) % vec4<u32>(32u)), vec4<i32>(1i, u_input.b, 36635i, 17673i))), max(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(4656i, -1i, -2147483647i, u_input.b), vec4<i32>(u_input.c.x, -32402i, 3723i, u_input.b))), vec4<i32>(u_input.c.x, -2147483647i, 17142i, 1i) & min(vec4<i32>(u_input.b, u_input.b, 1i, -20335i), vec4<i32>(-3928i, u_input.b, 46443i, u_input.b)))), ~u_input.c.x);
    var var_1 = func_2();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), func_1())));
    var var_0 = !select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), any(vec2<bool>(false, true)))), true);
    var var_1 = Struct_1(select(vec3<u32>(~(~u_input.a.x), u_input.a.x, 11839u), vec3<u32>(reverseBits(22632u), reverseBits(1u), countOneBits(110u)) & u_input.d, vec3<bool>(!any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), all(vec4<bool>(false, var_0.x, true, true)) | true, true)), !(true & var_0.x), 296f, _wgslsmith_add_i32(abs(-(~(-1i))), _wgslsmith_div_i32(u_input.c.x, u_input.c.x ^ firstTrailingBit(u_input.b))), var_0.x);
    var var_2 = var_1.a.x;
    global4 = array<vec2<f32>, 6>();
    var var_3 = var_1.a.x;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1153f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, var_1.c, var_1.c, 236f)))), vec4<i32>(~(~(-2147483647i >> (var_1.a.x % 32u))), i32(-1i) * -3751i, var_1.d, -_wgslsmith_mult_i32(~var_1.d, 36205i)), vec4<i32>(var_1.d, 50806i, 0i, u_input.c.x), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, var_1.d)), vec2<i32>(-5924i, var_1.d))), u_input.c));
}


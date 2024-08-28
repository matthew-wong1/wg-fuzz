struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<i32> = vec2<i32>(-22177i, i32(-2147483648));

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(vec2<i32>(-27045i, 25219i), vec4<f32>(-1627f, 380f, 326f, -194f), vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<u32>(55826u, 19958u, 1u)), Struct_3(Struct_2(vec2<i32>(-28126i, -25064i), vec4<f32>(-204f, -247f, 1000f, 612f), vec3<u32>(4294967295u, 4294967295u, 48271u)), vec3<u32>(11365u, 306u, 40316u)), Struct_3(Struct_2(vec2<i32>(37435i, 1i), vec4<f32>(1052f, -115f, -1017f, -1000f), vec3<u32>(4294967295u, 4294967295u, 29325u)), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(1i, 1i), vec4<f32>(3040f, 813f, -540f, -1080f), vec3<u32>(0u, 41871u, 109785u)), vec3<u32>(4294967295u, 35507u, 1u)), Struct_3(Struct_2(vec2<i32>(-1i, -22156i), vec4<f32>(209f, 759f, 197f, -1867f), vec3<u32>(68040u, 7038u, 4294967295u)), vec3<u32>(61133u, 4217u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(4394i, -1i), vec4<f32>(-310f, 568f, 155f, -503f), vec3<u32>(0u, 1u, 1u)), vec3<u32>(8863u, 34196u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(46006i, 25731i), vec4<f32>(629f, 425f, -915f, 1000f), vec3<u32>(71043u, 4294967295u, 9547u)), vec3<u32>(4294967295u, 13475u, 5644u)), Struct_3(Struct_2(vec2<i32>(0i, -10407i), vec4<f32>(-466f, 685f, 1108f, -920f), vec3<u32>(2856u, 1u, 1u)), vec3<u32>(83494u, 4294967295u, 43480u)), Struct_3(Struct_2(vec2<i32>(0i, i32(-2147483648)), vec4<f32>(2706f, 873f, 2510f, -124f), vec3<u32>(4294967295u, 27010u, 4294967295u)), vec3<u32>(1u, 58413u, 0u)), Struct_3(Struct_2(vec2<i32>(2147483647i, 2147483647i), vec4<f32>(-309f, 600f, 1000f, 372f), vec3<u32>(0u, 42234u, 4294967295u)), vec3<u32>(7970u, 56859u, 106752u)));

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    global3 = array<Struct_2, 12>();
    var var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, false), true));
    global3 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_div_f32(-1214f, 317f), true)), _wgslsmith_f_op_f32(-660f + _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x + -313f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(788f, -731f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-966f, arg_1.b.x, 1127f, var_1.x)), _wgslsmith_f_op_vec4_f32(max(arg_1.b, vec4<f32>(arg_1.b.x, 212f, arg_1.b.x, arg_1.b.x)))) + arg_1.b))));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(64352u), ~u_input.c << (min(arg_1.c.x, 4294967295u) % 32u)), _wgslsmith_add_u32(min(8402u, ~u_input.d), ~min(u_input.a, u_input.b))) ^ reverseBits(firstLeadingBit(4294967295u));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = true;
    var var_1 = Struct_3(arg_1.c.a, ~vec3<u32>(~u_input.d, ~u_input.d, _wgslsmith_sub_u32(~6613u, 0u)));
    var var_2 = true;
    var var_3 = arg_1;
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x << (62616u % 32u), global0.x & 0i, -53740i, _wgslsmith_div_i32(_wgslsmith_mod_i32(48469i, -6320i), -7153i)), -abs(~vec4<i32>(17309i, -2147483647i, arg_0, 15283i))) > _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 7831i, arg_1.a.x), vec3<i32>(var_3.a.x, -1i, arg_1.c.a.a.x)), ~vec3<i32>(46234i, global0.x, -34250i))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -41800i, 0i), vec3<i32>(arg_1.c.a.a.x, -2147483647i, 0i)), vec3<i32>(global1.x, -2147483647i, var_1.a.a.x) & vec3<i32>(3086i, arg_1.c.a.a.x, 50991i)));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.b.zy, vec2<u32>(_wgslsmith_mult_u32(~var_3.b.x, 0u), 1u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.x, firstTrailingBit(var_1.a.c.x), ~89314u, ~4294967295u), vec4<u32>(~2124u, reverseBits(0u), max(1u, var_1.b.x), ~var_1.a.c.x)), var_3.c.b.x), ~(~u_input.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = Struct_4(vec2<i32>(-1i) * -vec2<i32>(-1i, global0.x), func_4(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.b, 1i), arg_3 | -1i) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_2.a.xx, arg_2.a.zy), abs(5358u)) % 32u), Struct_4(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, -3306i), vec2<i32>(30843i, 2147483647i)), vec3<u32>(0u, func_3(vec4<i32>(-5259i, global1.x, -24962i, global0.x), Struct_2(vec2<i32>(global1.x, 2147483647i), vec4<f32>(arg_0.x, 230f, -846f, -256f), vec3<u32>(arg_1, arg_2.a.x, arg_2.a.x))), ~61395u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, arg_1), ~0u), 10u)])), Struct_3(global3[_wgslsmith_index_u32(max(1u, ~_wgslsmith_sub_u32(4294967295u, arg_1)), 12u)], countOneBits(~countOneBits(arg_2.a))));
    global0 = vec2<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(arg_2.b, arg_2.b)), -1i), ~min(-2718i, -global0.x)) ^ ~var_0.c.a.a;
    return arg_0.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> bool {
    var var_0 = any(!vec3<bool>(select(true, false, false), true, select(false, false, true))) || (any(select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec4<bool>(true, true, false, false)))) & true);
    let var_1 = Struct_4(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, global0.x, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, 1i), vec3<i32>(-2147483647i, global0.x, -2426i))), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, arg_1, global0.x), vec3<i32>(global1.x, global1.x, -1i))), ~(-2147483647i)), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(12805u, u_input.a, 0u)), ~(~vec3<u32>(54472u, 1u, u_input.b))), global2[_wgslsmith_index_u32(~u_input.d, 10u)]);
    global3 = array<Struct_2, 12>();
    return false;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = select(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), !(!vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1681f, 296f, 1554f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, -1000f, -567f)))), _wgslsmith_mult_i32(i32(-1i) * -arg_0, _wgslsmith_clamp_i32(~20027i, ~global1.x, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-528f, 2201f, -495f, -1268f), u_input.d, Struct_1(vec3<u32>(0u, 66666u, 1u), 1555i, 1275f, vec2<bool>(false, true)), global1.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1502f), _wgslsmith_div_f32(-809f, _wgslsmith_f_op_f32(947f - 397f)))));
    global2 = array<Struct_3, 10>();
    let var_1 = select(~vec4<u32>(14956u, ~u_input.b, ~func_4(0i, Struct_4(vec2<i32>(global0.x, 32658i), vec3<u32>(u_input.c, 105126u, u_input.c), Struct_3(Struct_2(vec2<i32>(arg_0, arg_0), vec4<f32>(-1201f, 1526f, 2115f, 688f), vec3<u32>(u_input.d, u_input.b, 1u)), vec3<u32>(105723u, u_input.c, u_input.c)))).x, firstTrailingBit(abs(26168u))), vec4<u32>(u_input.a, ~_wgslsmith_sub_u32(2968u, u_input.b), _wgslsmith_div_u32(max(u_input.c, 0u), 0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.b))) & vec4<u32>(abs(abs(1u)), _wgslsmith_mult_u32(13193u, ~4294967295u), 74034u ^ u_input.b, firstLeadingBit(0u)), false);
    let var_2 = var_1;
    let var_3 = _wgslsmith_mult_u32(~4294967295u, 15483u);
    return vec2<bool>(all(select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x & var_0.x, any(vec4<bool>(true, false, var_0.x, true))))), _wgslsmith_f_op_f32(f32(-1f) * -1508f) > _wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(-1010f * 436f), _wgslsmith_div_f32(-1230f, 706f), _wgslsmith_div_f32(1224f, 1080f)), 38265u, Struct_1(vec3<u32>(u_input.b, 86898u, var_3), arg_0, -1000f, !var_0.xz), _wgslsmith_add_i32(arg_0, ~global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false))), true, u_input.c >= ~586u);
    global2 = array<Struct_3, 10>();
    var var_1 = !(!vec3<bool>(true, var_0, !(!var_0)));
    global2 = array<Struct_3, 10>();
    let var_2 = select(select(var_1.yz, var_1.xz, var_1.yx), select(select(select(func_1(global1.x), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), var_1.xy, var_1.yz), !(!vec2<bool>(var_1.x, var_0)), true), vec2<bool>(true, false));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1163f, -1994f)), _wgslsmith_f_op_f32(f32(-1f) * -566f)))) + 142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2203f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-723f + 182f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-460f))), -1171f);
    var var_4 = _wgslsmith_f_op_vec2_f32(round(var_3.zx));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, -min(-global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, 35795i) << (vec4<u32>(1u, 1u, u_input.d, u_input.c) % vec4<u32>(32u)), -vec4<i32>(global0.x, global1.x, global0.x, global0.x))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(global0.x, abs(-2147483647i)), 1i), 26198i), max(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, 76300u), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u))), vec4<u32>(~_wgslsmith_mod_u32(0u, u_input.b), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(96643u, u_input.c, u_input.b), ~0u, _wgslsmith_mult_u32(13201u, u_input.c)), 39641u, u_input.a)));
}


struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec3<f32> {
    global1 = array<Struct_1, 26>();
    global0 = array<vec3<bool>, 19>();
    global1 = array<Struct_1, 26>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(347f, -205f), _wgslsmith_f_op_f32(trunc(-157f)), _wgslsmith_f_op_f32(f32(-1f) * -714f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: i32, arg_3: f32) -> u32 {
    global1 = array<Struct_1, 26>();
    var var_0 = global1[_wgslsmith_index_u32(98003u, 26u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.zx - vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_3)), 1505f));
    global0 = array<vec3<bool>, 19>();
    var_0 = Struct_1(countOneBits(~var_0.a), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), 0u, true | (((-1i != arg_2) == false) | arg_1), all(var_0.b));
    return ~(~var_0.a) << (1u % 32u);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 26>();
    var var_0 = global1[_wgslsmith_index_u32(~func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(_wgslsmith_f_op_f32(sign(480f)), _wgslsmith_f_op_f32(ceil(-1630f)), 2583f))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), min(abs(firstTrailingBit(2822i)), abs(i32(-1i) * -19942i)), -153f), 26u)];
    global1 = array<Struct_1, 26>();
    global0 = array<vec3<bool>, 19>();
    var var_1 = global1[_wgslsmith_index_u32(func_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-823f)) - _wgslsmith_f_op_f32(f32(-1f) * -1118f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1371f), 100f))), _wgslsmith_f_op_f32(sign(973f)), -1311f), ~abs(firstLeadingBit(1u)) >= _wgslsmith_mod_u32(0u, u_input.a.x), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~1i, i32(-1i) * -20209i, _wgslsmith_sub_i32(29281i, 49462i)), 1i << (_wgslsmith_div_u32(var_0.c, var_0.a) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(300f + 1672f), -1000f, true)), _wgslsmith_div_f32(-1031f, -329f)), _wgslsmith_div_f32(1556f, -894f), true))), 26u)];
    return global1[_wgslsmith_index_u32(1u, 26u)];
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = func_2();
    var_0 = global1[_wgslsmith_index_u32(~var_0.a, 26u)];
    global1 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_div_u32(var_0.a ^ 1u, ~(~32825u));
    global1 = array<Struct_1, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f + 152f) * _wgslsmith_f_op_f32(floor(1000f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2192f, -131f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(func_2())), _wgslsmith_f_op_f32(trunc(-426f)));
    let var_1 = -957f;
    var var_2 = Struct_1(abs(~7105u), select(vec2<bool>(false, arg_0.x), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0.x), true), select(vec2<bool>(all(arg_0.yz), select(true, arg_0.x, arg_0.x)), select(!vec2<bool>(arg_0.x, arg_0.x), !arg_0.xx, arg_0.xy), func_2().b)), 1u, true, arg_0.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(Struct_1(u_input.a.x & var_2.c, vec2<bool>(true, true), var_2.c ^ var_2.a, var_2.c >= 4294967295u, true))), _wgslsmith_div_f32(-1226f, var_0.x))), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.x))))))));
    return func_2();
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<vec3<bool>, 19>();
    var var_0 = min(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zwz, vec3<u32>(4294967295u, u_input.a.x, arg_1.a)), ~arg_1.a, ~arg_1.a, ~u_input.a.x) | _wgslsmith_add_vec4_u32(u_input.a, u_input.a), u_input.a);
    let var_1 = -_wgslsmith_sub_i32(~(~(-1i)) ^ _wgslsmith_mult_i32(-3198i << (var_0.x % 32u), ~(-1i)), firstTrailingBit(-1i << (arg_1.c % 32u)) | (-2147483647i >> (u_input.a.x % 32u)));
    let var_2 = arg_1;
    let var_3 = ~max(_wgslsmith_clamp_u32(arg_1.c, ~(~arg_1.c), ~var_2.a), ~arg_1.c);
    return vec4<bool>(false, any(vec2<bool>(true, true)), var_2.b.x, all(!select(func_2().b, select(arg_1.b, var_2.b, var_2.b), func_1(global0[_wgslsmith_index_u32(var_0.x, 19u)]).b)));
}

fn func_7(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_vec3_f32(func_3()).x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(-1024f, arg_0))))))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-987f + -344f), _wgslsmith_f_op_f32(round(arg_0)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(var_1.x * arg_0)) * -900f));
    let var_3 = var_2;
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(min(abs(u_input.a.x), ~u_input.a.x), u_input.a.x, min(select(u_input.a.x, 4294967295u, var_2), _wgslsmith_clamp_u32(u_input.a.x, 1u, 35587u)), u_input.a.x)), 26u)];
    return global1[_wgslsmith_index_u32(firstLeadingBit(39892u), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, vec2<bool>(false, true), ~_wgslsmith_sub_u32(32920u, min(4294967295u, u_input.a.x)), !all(vec4<bool>(any(vec2<bool>(false, false)), true, false, false)), all(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))));
    let var_1 = var_0.e;
    var var_2 = vec2<u32>(u_input.a.x ^ var_0.a, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(24913u, 17905u)), _wgslsmith_div_vec2_u32(u_input.a.wx, u_input.a.zy))));
    let var_3 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) + _wgslsmith_f_op_f32(step(474f, -279f))))), select(!select(vec4<bool>(var_1, var_1, var_0.e, var_0.b.x), !vec4<bool>(var_1, var_0.d, var_1, true), vec4<bool>(true, false, var_0.b.x, false)), !(!(!vec4<bool>(false, false, var_1, true))), select(!vec4<bool>(true, var_0.e, var_0.b.x, var_0.e), func_6(true, func_1(global0[_wgslsmith_index_u32(var_2.x, 19u)])), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 19u)]).d)), _wgslsmith_add_i32(select(_wgslsmith_sub_i32(-58848i, _wgslsmith_div_i32(80864i, -70416i)), max(1i, -57006i >> (u_input.a.x % 32u)), true), -1i), _wgslsmith_add_vec4_i32(select(vec4<i32>(20477i << (0u % 32u), -42018i, 27480i, _wgslsmith_sub_i32(-42582i, 0i)), vec4<i32>(0i, 49714i, -30890i, -43374i), select(select(vec4<bool>(false, var_0.b.x, false, var_1), vec4<bool>(var_1, var_0.b.x, var_1, var_0.d), vec4<bool>(true, var_0.e, false, var_0.b.x)), func_6(var_1, global1[_wgslsmith_index_u32(var_2.x, 26u)]), all(vec4<bool>(false, var_0.e, var_0.b.x, var_1)))), countOneBits(~firstTrailingBit(vec4<i32>(-4778i, -5174i, 37605i, 1i)))));
    var var_4 = ~1u;
    let var_5 = global1[_wgslsmith_index_u32(~func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1158f, 541f, 1000f), vec3<f32>(-1000f, -1974f, 926f), var_1)) * vec3<f32>(-160f, -321f, 947f))), func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2026f + 524f)), vec4<bool>(var_3.b.x, var_0.d, select(true, var_0.e, var_0.d), var_3.b.x), 49031i, abs(abs(vec4<i32>(1i, 2391i, -2147483647i, 0i)))).e, _wgslsmith_mod_i32(reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -54704i, 8195i, -63206i), vec4<i32>(-69167i, -26867i, 0i, 29914i))) & 2147483647i, 1068f), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -207f), ~min(select(vec4<u32>(u_input.a.x, var_2.x, 27059u, var_5.a), ~u_input.a, true), u_input.a), ~func_2().a);
}


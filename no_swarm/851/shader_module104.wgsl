struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -337f;

var<private> global1: vec3<f32> = vec3<f32>(-934f, 1000f, -788f);

var<private> global2: array<vec3<u32>, 8>;

var<private> global3: vec4<f32> = vec4<f32>(185f, 100f, 151f, -516f);

var<private> global4: array<f32, 7> = array<f32, 7>(-1810f, 1397f, -493f, -1206f, 1685f, 885f, -147f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(vec2<bool>(!(!all(vec4<bool>(arg_0.a.x, false, arg_0.a.x, false))), 220f == arg_2.c), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-218f, _wgslsmith_f_op_f32(min(-560f, _wgslsmith_f_op_f32(select(-486f, arg_0.d.x, arg_0.a.x))))))), _wgslsmith_f_op_vec2_f32(-global1.xz), _wgslsmith_div_i32(-(u_input.a & arg_0.e), min(firstLeadingBit(-2147483647i), 49038i)) >> (~arg_0.b % 32u));
    var var_1 = Struct_1(arg_2.a, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(83508u, 7371u), firstLeadingBit(vec2<u32>(8259u, 11244u))), 4294967295u), -662f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.d.x, 242f)))), _wgslsmith_add_i32(var_0.e, var_0.e));
    let var_2 = max(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-u_input.a, firstTrailingBit(1i), ~arg_0.e), ~arg_2.e), 0i, var_1.e, -1i), _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.e, var_1.e, arg_0.e, arg_2.e), vec4<i32>(1i, var_1.e, u_input.a, -21739i) >> (vec4<u32>(13637u, arg_0.b, arg_2.b, 26482u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(abs(var_0.e), ~arg_0.e), arg_2.e, firstTrailingBit(-83066i), 2147483647i << (abs(arg_2.b) % 32u))));
    let var_3 = ~_wgslsmith_add_u32(~var_1.b, arg_0.b);
    let var_4 = false;
    return 59117u;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_add_u32(4294967295u >> (0u % 32u), min(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(37002u, 36795u)), 20968u));
    global4 = array<f32, 7>();
    let var_1 = arg_2;
    let var_2 = Struct_1(vec2<bool>(true, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 59978u, ~16400u, func_3(Struct_1(vec2<bool>(false, true), var_0, 221f, vec2<f32>(global1.x, var_1.d.x), -35535i), arg_2.a.x, Struct_1(vec2<bool>(true, arg_0), var_1.b, var_1.d.x, vec2<f32>(-1350f, 356f), var_1.e))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_0, 0u, arg_2.b, var_1.b), vec4<u32>(var_0, var_0, 1u, 16935u), vec4<bool>(true, var_1.a.x, arg_0, var_1.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(3558u, 963u, var_1.b, var_1.b), vec4<u32>(2213u, 13189u, var_1.b, 0u), vec4<u32>(var_0, var_0, 90652u, var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, 30694u, 1u, 0u), vec4<u32>(43752u, var_1.b, 5120u, 4294967295u)))) & ~arg_2.b, _wgslsmith_f_op_f32(min(386f, _wgslsmith_f_op_f32(global1.x + 1641f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1542f, arg_2.c)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, arg_2.d.x))), true))), 2147483647i);
    let var_3 = ~countOneBits(countOneBits(~global2[_wgslsmith_index_u32(1u, 8u)]));
    return 22695u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec4_u32(min(~(vec4<u32>(arg_0.b, 1u, arg_0.b, 1u) << (vec4<u32>(arg_0.b, arg_0.b, 0u, 42399u) % vec4<u32>(32u))), vec4<u32>(0u, _wgslsmith_mult_u32(arg_0.b, 1u), select(arg_0.b, 28019u, arg_1.x), func_2(arg_0.a.x, vec4<f32>(-616f, arg_2.x, 1000f, -847f), arg_0))), firstTrailingBit(vec4<u32>(1u, arg_0.b, 4294967295u, 0u)) & countOneBits(abs(vec4<u32>(arg_0.b, arg_0.b, 0u, 2592u))));
    global2 = array<vec3<u32>, 8>();
    let var_1 = arg_0;
    let var_2 = arg_0.a.x;
    global3 = _wgslsmith_f_op_vec4_f32(-arg_2);
    return Struct_1(vec2<bool>(true, arg_0.e < (_wgslsmith_add_i32(u_input.a, var_1.e) & _wgslsmith_div_i32(arg_0.e, u_input.a))), min(_wgslsmith_mod_u32(0u, var_1.b) >> (var_1.b % 32u), arg_0.b), arg_0.c, vec2<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(func_2(true, arg_2, arg_0), 7u)], -682f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - 641f)))))), -1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~(~_wgslsmith_mult_u32(210u, arg_2.b)), ~(func_2(arg_0.a.x, vec4<f32>(869f, 931f, 1000f, global3.x), arg_0) << (select(arg_2.b, 4294967295u, false) % 32u))), ~4294967295u), 8u)];
    var var_1 = max(~abs(vec4<i32>(i32(-1i) * -1i, abs(arg_2.e), arg_0.e, -1i)), _wgslsmith_mod_vec4_i32(-(vec4<i32>(32800i, -2218i, arg_0.e, arg_0.e) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b, arg_2.b, arg_0.b, var_0.x), vec4<u32>(4294967295u, arg_0.b, 0u, 0u), vec4<u32>(4294967295u, var_0.x, 29144u, 8839u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_1.x, 2147483647i, arg_1.x), -vec4<i32>(arg_1.x, arg_2.e, arg_1.x, arg_0.e)) | _wgslsmith_add_vec4_i32(select(vec4<i32>(2147483647i, -2147483647i, -10404i, -13717i), vec4<i32>(-22251i, arg_1.x, u_input.a, -2147483647i), true), vec4<i32>(arg_1.x, arg_0.e, 48820i, arg_0.e))));
    let var_2 = func_1(arg_0, !vec2<bool>(arg_0.a.x, false), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(804f)) + _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(4294967295u, 7u)]))), global3.x, _wgslsmith_f_op_f32(step(arg_0.d.x, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(533f + 793f), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, global3.x, arg_0.d.x, global3.x))))))));
    global4 = array<f32, 7>();
    var var_3 = true;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, 1i), -abs(0i)), -_wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, u_input.a), ~vec2<i32>(u_input.a, -1i)));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))))), global4[_wgslsmith_index_u32(~func_4(func_1(Struct_1(vec2<bool>(false, true), 0u, global1.x, vec2<f32>(1000f, -1353f), var_0.x), vec2<bool>(false, true), vec4<f32>(global4[_wgslsmith_index_u32(11121u, 7u)], 593f, global4[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(103033u, 7u)])), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(0i, var_0.x, var_0.x)), func_1(Struct_1(vec2<bool>(false, true), 1u, global4[_wgslsmith_index_u32(4294967295u, 7u)], vec2<f32>(1411f, global3.x), -11339i), vec2<bool>(false, true), vec4<f32>(-1962f, 1000f, global1.x, 496f))), 7u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), func_1(Struct_1(vec2<bool>(true, true), 21600u, global1.x, vec2<f32>(global1.x, -362f), u_input.a), vec2<bool>(false, false), vec4<f32>(global3.x, global3.x, global3.x, global4[_wgslsmith_index_u32(100001u, 7u)])).d.x)))));
    global0 = _wgslsmith_f_op_f32(1f - -1000f);
    var var_2 = func_1(func_1(Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), 1674f >= var_1.x), func_4(Struct_1(vec2<bool>(true, true), 7761u, global1.x, global3.zw, -2147483647i), reverseBits(vec3<i32>(-25092i, var_0.x, -52988i)), Struct_1(vec2<bool>(false, false), 6848u, global3.x, vec2<f32>(global4[_wgslsmith_index_u32(20592u, 7u)], var_1.x), u_input.a)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, -121f), global3.zz) - vec2<f32>(-1067f, -551f)), ~max(u_input.a, -1i)), select(func_1(Struct_1(vec2<bool>(false, false), 62716u, global4[_wgslsmith_index_u32(1u, 7u)], global3.xy, -1i), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 1270f, 655f, global4[_wgslsmith_index_u32(4294967295u, 7u)])))).a, vec2<bool>(true, true), vec2<bool>(true, true)), vec4<f32>(func_1(func_1(Struct_1(vec2<bool>(true, true), 41698u, var_1.x, global3.zx, -27867i), vec2<bool>(false, false), vec4<f32>(103f, global1.x, -410f, -1509f)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1000f, global1.x, global1.x))).d.x, _wgslsmith_div_f32(-105f, _wgslsmith_f_op_f32(exp2(global1.x))), var_1.x, 820f)), vec2<bool>(func_1(Struct_1(vec2<bool>(true, true), 1u, 155f, _wgslsmith_f_op_vec2_f32(global3.yx - global1.zx), 0i), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -522f, 962f, global3.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, 576f, -440f, var_1.x))))).a.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_1.x, -1049f, global4[_wgslsmith_index_u32(4294967295u, 7u)])));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + var_1.x) - -1522f) * -1065f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstTrailingBit(abs(50071i)), reverseBits(abs(var_2.e))), 342f, firstTrailingBit(-1i), -647f, func_1(Struct_1(func_1(func_1(Struct_1(vec2<bool>(false, var_2.a.x), 23279u, var_1.x, vec2<f32>(global1.x, 1339f), var_2.e), vec2<bool>(var_2.a.x, var_2.a.x), vec4<f32>(351f, -383f, global4[_wgslsmith_index_u32(var_2.b, 7u)], var_1.x)), !vec2<bool>(var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global4[_wgslsmith_index_u32(1u, 7u)], var_1.x, -446f))).a, max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 14070u, var_2.b), vec3<u32>(var_2.b, var_2.b, 0u)), max(0u, 0u)), _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -172f)), vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x + -129f), _wgslsmith_f_op_f32(-579f - 1123f)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e, var_0.x, var_2.e) & vec3<i32>(var_2.e, 6341i, 0i), countOneBits(vec3<i32>(var_2.e, var_2.e, var_2.e)))), !var_2.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1862f, 951f, -332f, 578f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global4[_wgslsmith_index_u32(var_2.b, 7u)], -1129f, -134f), vec4<f32>(global3.x, var_1.x, var_2.c, global3.x))))))).e);
}


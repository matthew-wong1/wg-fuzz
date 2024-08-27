struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0u, -499f, i32(-2147483648), 451f), Struct_1(67083u, -1548f, 1i, -2098f), Struct_1(44229u, 1388f, 1i, 363f), Struct_1(49243u, 1018f, 26300i, -345f), Struct_1(47739u, -524f, 17676i, 1612f), Struct_1(1u, 536f, 0i, -2686f), Struct_1(2676u, 2550f, -33655i, 1439f), Struct_1(122658u, 756f, 2147483647i, -1003f), Struct_1(0u, 763f, -20226i, -717f));

var<private> global1: vec2<f32> = vec2<f32>(1825f, 2383f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = 0u;
    let var_1 = vec2<bool>(!all(vec2<bool>(true, true)), all(vec2<bool>(true, true)));
    var var_2 = ~(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(83221u, arg_0.a, 4294967295u), vec3<u32>(0u, 0u, var_0)), select(~vec3<u32>(0u, arg_0.a, arg_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0, 1929u), vec3<u32>(23386u, 54340u, 1u)), any(var_1))) ^ ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(var_0, 1u)), var_0, var_0));
    let var_3 = Struct_1(16110u, global1.x, _wgslsmith_add_i32(~(~_wgslsmith_mult_i32(u_input.b.x, -22078i)), _wgslsmith_mod_i32(min(~0i, 43605i), arg_1)), _wgslsmith_f_op_f32(427f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -629f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1457f * global1.x) * _wgslsmith_div_f32(-730f, 216f)))));
    var_2 = vec3<u32>(~var_0, ~var_2.x << (select(arg_0.a, var_0, select(var_3.c != -1i, var_1.x, all(var_1))) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, var_0, var_2.x, 31345u), vec4<u32>(var_0, arg_0.a, 16260u, var_2.x)), abs(abs(vec4<u32>(var_3.a, 44666u, var_0, var_2.x)))), 982u));
    return var_3.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, _wgslsmith_f_op_f32(248f * -411f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 994f)), vec2<bool>(true, arg_0.x)))))));
    var var_0 = Struct_2(arg_0.xzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1292f, -977f, 2490f, 265f) * vec4<f32>(arg_1, arg_1, 105f, -1099f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, arg_1, 1001f, 2443f)))))), Struct_1(_wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(25853u, 9u)], u_input.a.x) >> (firstLeadingBit(1u) % 32u), ~(~45362u)), global1.x, 1i, -586f), 1u, abs(reverseBits(vec4<u32>(_wgslsmith_clamp_u32(0u, 41925u, 0u), 0u, _wgslsmith_sub_u32(13930u, 8593u), _wgslsmith_mult_u32(11144u, 16935u)))));
    let var_1 = -var_0.c.c;
    let var_2 = u_input.b.x;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-547f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -199f)))), _wgslsmith_f_op_f32(max(global1.x, -993f)))), _wgslsmith_f_op_f32(274f * -197f));
    return Struct_3(Struct_2(!select(vec3<bool>(arg_0.x, var_0.a.x, var_0.a.x), arg_0.zxw, all(vec2<bool>(arg_0.x, false))), var_0.b, Struct_1(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), -reverseBits(u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.x, -178f, true)), 990f))), countOneBits(~48191u), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.d, 4873u, var_0.c.a, var_0.c.a), ~vec4<u32>(87597u, var_0.e.x, var_0.d, 1u))), global0[_wgslsmith_index_u32(~func_3(var_0.c, -(i32(-1i) * -1i)), 9u)], abs(-vec3<i32>(~1i, 0i, select(-3872i, -31625i, var_0.a.x))), Struct_2(select(var_0.a, vec3<bool>(true, false, select(var_0.a.x, true, true)), var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-813f, 794f, global1.x, 1000f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1359f, 1001f, var_0.c.b, var_0.c.b))), vec4<bool>(false, var_0.a.x, false, var_0.a.x))) - _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_div_vec4_f32(var_0.b, var_0.b), !arg_0))), Struct_1(~firstLeadingBit(var_0.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_1), var_1, arg_1), var_0.c.a, vec4<u32>(var_0.e.x, 6889u, ~_wgslsmith_div_u32(1u, var_0.c.a), ~_wgslsmith_clamp_u32(15749u, var_0.d, var_0.d))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = arg_0.a.a;
    global0 = array<Struct_1, 9>();
    var_0 = arg_0.a.a;
    global1 = vec2<f32>(-548f, global1.x);
    let var_1 = func_2(vec4<bool>(!(!all(arg_3)), true, false == arg_2, false), _wgslsmith_f_op_f32(-2511f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.d.c.d)))))))).d;
    return func_2(select(vec4<bool>(true, false, true, false), select(!arg_3, arg_3, vec4<bool>(389f < arg_0.b.b, func_2(vec4<bool>(true, arg_3.x, var_1.a.x, var_0.x), 700f).d.a.x, true, any(var_1.a.xy))), all(arg_3)), global1.x).d;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_2(select(select(vec4<bool>(func_2(vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), -1844f).a.a.x, false, all(vec2<bool>(true, false)), true), vec4<bool>(true, false, arg_0.d.a.x, false), !(!arg_3.a.x)), !vec4<bool>(true, true, arg_0.a.a.x & arg_3.a.x, true), vec4<bool>(arg_3.a.x, arg_3.a.x, true, true)), _wgslsmith_f_op_f32(-arg_0.d.b.x)).a;
    global0 = array<Struct_1, 9>();
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.d.b.wy, arg_3.b.yy))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -900f) - var_0.b.zw)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(805f, arg_0.b.b) * arg_0.a.b.zw))) * vec2<f32>(var_0.b.x, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.zx + arg_0.a.b.wy) - arg_1.xz)));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.e.wwy, ~vec3<u32>(38768u, var_0.d, arg_0.d.d)), ~(arg_3.e.yxw >> ((vec3<u32>(1u, arg_3.d, arg_0.d.d) & arg_0.d.e.yyx) % vec3<u32>(32u)))) >> (var_0.e.wxy % vec3<u32>(32u));
    var var_2 = arg_0.d;
    return Struct_2(vec3<bool>(false, all(func_2(vec4<bool>(arg_0.d.a.x, arg_0.d.a.x, true, true), _wgslsmith_f_op_f32(-arg_0.a.c.b)).a.a.xy), (4294967295u << (var_1.x % 32u)) != (arg_3.c.a & func_4(Struct_3(Struct_2(var_2.a, vec4<f32>(-765f, global1.x, -567f, arg_3.b.x), Struct_1(arg_0.a.e.x, 666f, arg_3.c.c, 1118f), 1u, arg_0.a.e), Struct_1(var_1.x, var_2.c.d, var_0.c.c, arg_1.x), vec3<i32>(arg_0.d.c.c, -26228i, -1i), Struct_2(vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, true), arg_1, arg_0.a.c, 69690u, arg_0.a.e)), vec3<f32>(-953f, arg_0.a.b.x, arg_0.b.d), arg_3.a.x, vec4<bool>(arg_0.d.a.x, var_0.a.x, false, arg_0.a.a.x)).d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b - arg_1) - _wgslsmith_f_op_vec4_f32(arg_1 - arg_0.d.b)))), func_4(func_2(vec4<bool>(true, arg_0.d.a.x, true, !var_2.a.x), _wgslsmith_f_op_f32(step(-1000f, -486f))), arg_1.zxy, any(select(select(vec4<bool>(false, arg_3.a.x, false, arg_0.a.a.x), vec4<bool>(false, arg_3.a.x, var_0.a.x, var_0.a.x), vec4<bool>(arg_3.a.x, var_2.a.x, var_0.a.x, false)), select(vec4<bool>(true, var_0.a.x, var_2.a.x, false), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), false), arg_1.x <= -961f)), vec4<bool>(!all(arg_3.a), false, true, select(all(var_0.a.xy), arg_3.a.x, func_4(Struct_3(Struct_2(arg_0.a.a, arg_1, var_2.c, 92525u, var_0.e), Struct_1(9354u, -459f, -2147483647i, 347f), u_input.a, Struct_2(arg_0.a.a, vec4<f32>(-357f, arg_3.b.x, -1695f, -1365f), Struct_1(74202u, arg_1.x, 2147483647i, arg_3.c.d), var_0.e.x, vec4<u32>(23467u, var_0.d, var_0.d, arg_0.d.d))), vec3<f32>(523f, var_2.c.b, var_0.b.x), false, vec4<bool>(var_2.a.x, true, false, arg_0.d.a.x)).a.x))).c, abs(min(arg_0.d.c.a, _wgslsmith_dot_vec4_u32(var_2.e, arg_3.e)) | var_0.d), vec4<u32>(var_1.x, (var_0.c.a << (func_3(arg_3.c, 4055i) % 32u)) & (arg_0.b.a ^ 49591u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.d, arg_3.e.x), 0u), _wgslsmith_mult_u32(var_1.x, _wgslsmith_mult_u32(~0u, firstTrailingBit(var_1.x)))));
}

fn func_1(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2358f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -742f))))));
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = global0[_wgslsmith_index_u32(718u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), reverseBits(max(vec4<u32>(0u, 4294967295u, 1u, 26698u), vec4<u32>(95631u, 4294967295u, 52766u, 65266u)))) << (_wgslsmith_clamp_u32(~(~16613u), 0u, 4294967295u) % 32u)) % 32u), 9u)];
    let var_2 = Struct_3(func_5(Struct_3(func_4(func_2(vec4<bool>(true, var_0.x, true, false), global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(665f, global1.x, -1062f) - vec3<f32>(var_1.d, global1.x, var_1.d)), false, vec4<bool>(false, var_0.x, true, true)), global0[_wgslsmith_index_u32(~(var_1.a ^ 6173u), 9u)], _wgslsmith_div_vec3_i32(u_input.a << (vec3<u32>(0u, var_1.a, 4294967295u) % vec3<u32>(32u)), u_input.a << (vec3<u32>(var_1.a, var_1.a, 134399u) % vec3<u32>(32u))), Struct_2(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -954f, -448f, -619f) - vec4<f32>(global1.x, 2288f, global1.x, var_1.b)), func_2(vec4<bool>(var_0.x, var_0.x, true, var_0.x), global1.x).b, firstTrailingBit(var_1.a), vec4<u32>(31547u, 4294967295u, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(874f, global1.x, -1784f, var_1.b)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1270f, -1000f, global1.x, -932f)), vec4<f32>(global1.x, -178f, -606f, global1.x), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x))))), -51426i, func_2(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(min(819f, -495f))).a), global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~var_1.a, abs(var_1.a)) | var_1.a), 9u)], u_input.a, Struct_2(!vec3<bool>(any(vec3<bool>(var_0.x, true, false)), var_0.x, var_0.x & false), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -437f, global1.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1654f + var_1.d), _wgslsmith_f_op_f32(-global1.x))), func_4(func_2(vec4<bool>(true, var_0.x, var_0.x, var_0.x), func_4(Struct_3(Struct_2(vec3<bool>(false, false, false), vec4<f32>(-562f, -803f, -210f, 903f), global0[_wgslsmith_index_u32(var_1.a, 9u)], 1u, vec4<u32>(9026u, 40709u, 20704u, var_1.a)), global0[_wgslsmith_index_u32(20080u, 9u)], u_input.b.xyz, Struct_2(vec3<bool>(var_0.x, true, false), vec4<f32>(global1.x, global1.x, global1.x, -178f), Struct_1(60624u, var_1.b, -15468i, 181f), var_1.a, vec4<u32>(66967u, var_1.a, 19979u, 62495u))), vec3<f32>(var_1.d, var_1.b, -1148f), var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)).c.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1705f, 1000f) - vec3<f32>(var_1.b, global1.x, -780f)))), false, !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, var_0.x, false, false))).c, var_1.a ^ var_1.a, max(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a, 40346u, 1u, 4294967295u), ~vec4<u32>(var_1.a, var_1.a, 1u, 0u)), max(vec4<u32>(1u, var_1.a, 0u, 4294967295u) ^ vec4<u32>(var_1.a, 0u, 32229u, var_1.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, var_1.a), vec4<u32>(9491u, 4294967295u, 4294967295u, 93978u))))));
    global0 = array<Struct_1, 9>();
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy) >> (firstTrailingBit(vec2<u32>(60529u, 21203u)) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, u_input.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x))))));
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(select(23793u, 26422u, false), 3691u, 21703u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~(~firstLeadingBit(vec3<u32>(25470u, 0u, 0u)))), vec3<u32>(1u, 1u, 1u));
    var var_2 = u_input.a.x;
    var var_3 = 0u;
    var var_4 = func_4(func_2(vec4<bool>(func_2(vec4<bool>(true, true, true, true), global1.x).d.a.x, func_2(vec4<bool>(true, true, false, true), global1.x).a.c.a > firstTrailingBit(var_1.x), (u_input.a.x | 35305i) == (u_input.b.x << (var_1.x % 32u)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1135f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -281f, 191f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 880f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1.x, global1.x))))), func_2(vec4<bool>(all(func_4(Struct_3(Struct_2(vec3<bool>(true, true, false), vec4<f32>(global1.x, var_0.x, -1000f, var_0.x), global0[_wgslsmith_index_u32(var_1.x, 9u)], 0u, vec4<u32>(var_1.x, var_1.x, var_1.x, 26120u)), Struct_1(var_1.x, -1693f, u_input.b.x, global1.x), u_input.b.zxz, Struct_2(vec3<bool>(true, true, true), vec4<f32>(990f, global1.x, 1441f, -389f), Struct_1(6906u, var_0.x, u_input.a.x, -384f), var_1.x, vec4<u32>(var_1.x, var_1.x, 85701u, 7860u))), vec3<f32>(-227f, global1.x, var_0.x), true, vec4<bool>(true, true, false, true)).a), !any(vec2<bool>(false, true)), true, func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(771f))).a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1f) * -330f)))).d.a.x, vec4<bool>((all(vec3<bool>(true, true, true)) || true) && false, any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)))).c;
    var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(21475u, ~(abs(var_4.a) ^ (var_4.a >> (var_4.a % 32u))), var_1.x), 4294967295u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xx >> (vec2<u32>(var_4.a, var_4.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-286f))))), 602f, vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_1(reverseBits(-2147483647i)))));
}


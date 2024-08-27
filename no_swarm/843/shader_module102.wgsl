struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: vec3<i32> = vec3<i32>(11625i, 42716i, 1i);

var<private> global3: array<i32, 2>;

var<private> global4: u32 = 0u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = select(true, countOneBits(0i) <= _wgslsmith_add_i32(~_wgslsmith_add_i32(0i, global2.x), -_wgslsmith_dot_vec3_i32(u_input.a.yzy, u_input.a.xxw)), u_input.b <= _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(global2.x, -2147483647i) | u_input.b));
    global4 = _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 33984u), ~vec2<u32>(arg_2, 0u)), 23u)] & global0.xx, _wgslsmith_sub_vec2_u32(min(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_2, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 55581u), vec2<u32>(1u, global0.x)))) | _wgslsmith_mult_u32(16070u << (_wgslsmith_clamp_u32(arg_0.a >> (41130u % 32u), _wgslsmith_mult_u32(u_input.d, 0u), 1u) % 32u), 1764u);
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(!any(vec3<bool>(true, select(true, true, false), true)), firstTrailingBit(_wgslsmith_div_u32(23466u, min(25198u, 9247u))) >= 44008u);
    var var_1 = select(!vec3<bool>(any(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false))), false, var_0.x), vec3<bool>(global0.x <= 0u, true, all(vec2<bool>(var_0.x, select(false, false, true)))), func_3(Struct_3(u_input.c.x), Struct_1(~(~(-6276i)), _wgslsmith_mult_u32(1u, min(global0.x, global0.x)), u_input.c.x), u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2367f), _wgslsmith_div_f32(-360f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(step(-389f, 2029f)))))) * -239f);
    var var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) - 639f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-2630f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2957f + 1000f) * _wgslsmith_f_op_f32(ceil(-608f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-597f)), _wgslsmith_f_op_f32(select(1741f, 872f, var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1775f * -1239f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1f)))), vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 22109u, global0.x) << (vec4<u32>(4294967295u, 61508u, u_input.c.x, global0.x) % vec4<u32>(32u)), select(vec4<u32>(64247u, 26115u, global0.x, u_input.c.x), vec4<u32>(u_input.c.x, 1u, 0u, global0.x), vec4<bool>(false, var_0.x, var_0.x, true)))), ~u_input.d | 22957u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, global0.x), _wgslsmith_sub_u32(u_input.c.x, 16930u)) >> (29268u % 32u)), Struct_4(551f, !vec4<bool>(true, false || var_0.x, any(vec4<bool>(true, true, true, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, var_1.x, false))), Struct_3(24381u)), any(vec4<bool>(all(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, true, var_1.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_1.x, true))), true, true, !var_0.x)));
    let var_4 = Struct_1(firstLeadingBit(-1i), reverseBits(101425u), ~var_3.c.x);
    return var_4;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    global0 = ~min(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_0.b, u_input.c.x)), vec3<u32>(0u, 0u, 0u)), ~(~vec3<u32>(u_input.d, 4294967295u, arg_0.b))), select(~vec3<u32>(1u, u_input.c.x, 50978u), ~min(vec3<u32>(4294967295u, 6555u, global0.x), vec3<u32>(global0.x, arg_0.c, 0u)), select(0u, 1u, arg_1) <= firstLeadingBit(1u)));
    let var_0 = Struct_2(vec3<bool>(false, arg_1, false), vec3<bool>(true, arg_1, func_3(Struct_3(18005u), func_2(), 18954u | _wgslsmith_sub_u32(3896u, u_input.d))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global3[_wgslsmith_index_u32(1u, 2u)], 6672i, -3487i), -arg_2 >> (~vec3<u32>(38811u, 0u, u_input.c.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-207f - _wgslsmith_f_op_f32(f32(-1f) * -365f)))), vec2<f32>(_wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(floor(-304f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509f - -222f) * _wgslsmith_f_op_f32(trunc(419f)))))));
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global0.x & firstLeadingBit(4294967295u), 0u), global0.x ^ max(_wgslsmith_add_u32(u_input.d, 4294967295u), ~u_input.d), ~func_2().b), ~(vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.c.x), ~arg_0.c, 24746u) ^ (_wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(1u, global0.x, arg_0.c)) & (vec3<u32>(global0.x, arg_0.b, 49936u) >> (vec3<u32>(71946u, 1u, 0u) % vec3<u32>(32u))))));
    global2 = firstTrailingBit(var_0.c);
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, -1106f, var_0.d) * vec4<f32>(var_0.d, 1761f, 370f, -1624f)), vec4<f32>(var_0.e.x, var_0.e.x, var_0.d, var_0.d), vec4<bool>(arg_1, arg_1, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1187f, var_0.d, -535f, var_0.d) - vec4<f32>(192f, var_0.d, var_0.d, 638f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.d, var_0.d, 1184f) + vec4<f32>(var_0.d, -408f, var_0.d, var_0.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) - _wgslsmith_f_op_f32(f32(-1f) * -612f)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, 4385u)), ~global0.xz), _wgslsmith_clamp_u32(~global0.x, arg_0.b, 4590u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c >> (global1[_wgslsmith_index_u32(17156u, 23u)] % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(10862u, u_input.c.x), ~vec2<u32>(1u, u_input.d))), abs(u_input.c.x)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, var_0.e.x)), !(!(!vec4<bool>(var_0.b.x, arg_1, arg_1, true))), Struct_3(~_wgslsmith_mod_u32(arg_0.c, 43345u))), any(select(var_0.b.yx, !var_0.a.xy, all(select(var_0.a.xx, vec2<bool>(var_0.a.x, true), vec2<bool>(arg_1, arg_1))))));
    return Struct_1(2147483647i, firstTrailingBit(abs(~(~arg_0.b))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(global0.x, arg_0.b)) ^ global0.x, arg_0.c));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-101f, -1000f, arg_1) * vec3<f32>(arg_1, 618f, -441f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -850f, -638f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1468f, -1293f, 1152f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, arg_1, 450f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1163f, arg_1, -1000f), vec3<f32>(arg_1, arg_1, -484f))))))));
    let var_1 = Struct_1(arg_0.x, arg_2.b, global0.x);
    global1 = array<vec2<u32>, 23>();
    let var_2 = ~firstTrailingBit(-26985i);
    var var_3 = Struct_4(349f, select(vec4<bool>(false, arg_3.x, arg_3.x, all(vec2<bool>(false, arg_3.x))), !vec4<bool>(arg_3.x, true, all(vec3<bool>(true, arg_3.x, arg_3.x)), false), true), Struct_3(_wgslsmith_dot_vec2_u32(select(countOneBits(global0.yx), reverseBits(u_input.c), arg_3), select(vec2<u32>(arg_2.b, arg_2.b), min(vec2<u32>(u_input.c.x, 38179u), vec2<u32>(0u, var_1.b)), vec2<bool>(false, arg_3.x)))));
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(631f + var_3.a), _wgslsmith_f_op_f32(1000f * var_3.a), !arg_3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -684f), var_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -800f), 523f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), 632f))), vec3<u32>(0u, min(var_3.c.a, 4294967295u), 56930u), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), !vec4<bool>(arg_3.x, all(vec4<bool>(false, true, arg_3.x, true)), true, arg_3.x & false), var_3.c), false && (803f == _wgslsmith_div_f32(-696f, var_3.a)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> Struct_2 {
    let var_0 = countOneBits(4294967295u);
    global4 = _wgslsmith_add_u32(~41341u, _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(arg_3.c.a, 0u, countOneBits(var_0)))) >> ((_wgslsmith_mult_u32(~(arg_3.c.a | u_input.c.x), 38892u) ^ _wgslsmith_add_u32(1u, 46570u)) % 32u);
    let var_1 = arg_1.d;
    global3 = array<i32, 2>();
    global4 = 70156u;
    return Struct_2(select(!(!(!vec3<bool>(true, false, arg_1.b.x))), vec3<bool>(arg_0.d.b.x, arg_1.a.x, any(arg_3.b.wx)), false), !func_5(u_input.a, arg_0.b, func_2(), select(select(arg_0.d.b.xy, vec2<bool>(arg_3.b.x, false), arg_0.d.b.wx), vec2<bool>(arg_3.b.x, false), true)).d.b.wwy, -(~(arg_1.c << (func_5(vec4<i32>(-1i, -16092i, -24536i, global2.x), arg_1.e.x, Struct_1(-1i, var_0, arg_3.c.a), arg_3.b.xy).c % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f - arg_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.e.x)) + _wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_vec2_f32(step(arg_1.e, arg_0.a.yz)));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec3<u32> {
    global2 = arg_0.c;
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(272f * 304f), _wgslsmith_div_f32(817f, 2084f), _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_div_f32(arg_0.d, arg_0.e.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d, -1485f, arg_0.e.x, arg_0.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, arg_0.d, arg_0.e.x) - vec4<f32>(arg_0.e.x, arg_0.d, 2006f, arg_0.e.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -1756f, 606f, 294f)) * vec4<f32>(arg_0.e.x, -284f, arg_0.e.x, arg_0.d)), vec4<f32>(189f, -922f, arg_0.e.x, _wgslsmith_div_f32(-1080f, arg_0.d)))), !select(!vec4<bool>(true, arg_0.b.x, false, false), func_5(u_input.a, 1523f, Struct_1(1i, global0.x, u_input.c.x), arg_0.b.zz).d.b, arg_0.b.x == false)))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.e.x * -1409f)))))), !select(select(!vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), !vec4<bool>(false, arg_0.b.x, true, true), select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(true, true, true, arg_0.a.x), true)), !vec4<bool>(arg_0.b.x, false, false, arg_0.a.x), arg_0.a.x), Struct_3(reverseBits(_wgslsmith_mod_u32(1u, ~u_input.d))));
    let var_2 = !(!(!(!(!vec4<bool>(false, arg_0.a.x, var_1.b.x, var_1.b.x)))));
    let var_3 = func_2();
    return abs(arg_2);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<bool> {
    global2 = arg_1.wwy;
    global0 = func_7(func_6(func_5(min(vec4<i32>(0i, arg_1.x, 10606i, global3[_wgslsmith_index_u32(69314u, 2u)]), ~vec4<i32>(1i, arg_3.x, arg_3.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(666f, 651f)) + _wgslsmith_f_op_f32(-355f - 917f)), func_4(func_2(), select(false, true, true), -vec3<i32>(-45527i, arg_1.x, 53140i)), vec2<bool>(true, true)), Struct_2(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), _wgslsmith_add_vec3_i32(arg_3.xxw, reverseBits(u_input.a.xwy)), -735f, _wgslsmith_f_op_vec2_f32(func_5(arg_3, 1475f, Struct_1(u_input.a.x, u_input.d, 3533u), vec2<bool>(false, false)).a.xy - _wgslsmith_f_op_vec2_f32(vec2<f32>(1234f, 1198f) - vec2<f32>(-202f, 1000f)))), arg_2, Struct_4(1f, vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, true))), arg_2)), u_input.a.zx, ~vec3<u32>(_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_sub_u32(global0.x, arg_0.x), u_input.d), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(arg_0.ww, arg_0.wz)), 53289u));
    let var_0 = func_6(Struct_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(trunc(-206f)), -1392f, _wgslsmith_f_op_f32(ceil(218f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, 145f, -1110f, -100f)))), 467f, firstLeadingBit(vec3<u32>(arg_2.a, _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_add_u32(arg_2.a, 0u))), Struct_4(915f, vec4<bool>(true, arg_2.a != arg_2.a, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, true, false))), arg_2), true), Struct_2(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), select(vec3<i32>(-global3[_wgslsmith_index_u32(global0.x, 2u)], select(0i, arg_3.x, true), _wgslsmith_mult_i32(21225i, arg_3.x)), -u_input.a.yzx << (_wgslsmith_sub_vec3_u32(arg_0.zyz, vec3<u32>(arg_0.x, arg_2.a, 26198u)) % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_div_f32(func_6(Struct_5(vec4<f32>(-118f, -366f, -1029f, -2791f), 102f, arg_0.yww, Struct_4(-749f, vec4<bool>(true, false, true, true), Struct_3(arg_0.x)), false), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<i32>(arg_3.x, -3381i, arg_1.x), -461f, vec2<f32>(-1719f, 107f)), arg_2, func_5(arg_3, -1000f, Struct_1(-1i, 4294967295u, 89803u), vec2<bool>(false, true)).d).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-832f, 262f)))))), func_5(-select(arg_3, vec4<i32>(2147483647i, -28446i, -39449i, 1i), func_5(vec4<i32>(u_input.a.x, global2.x, 48894i, -79658i), -1221f, Struct_1(0i, 0u, arg_0.x), vec2<bool>(true, false)).d.b), 133f, func_2(), vec2<bool>(true, false)).d.c, func_5(arg_3, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1357f, 1022f))))), Struct_1(6898i | (u_input.a.x & -1i), _wgslsmith_clamp_u32(4294967295u, u_input.d, global0.x) ^ ~global0.x, 1u), vec2<bool>(false, false)).d);
    let var_1 = var_0.e;
    let var_2 = func_5(arg_1, -1465f, func_4(func_2(), all(func_5(u_input.a, _wgslsmith_f_op_f32(sign(-2540f)), func_2(), vec2<bool>(var_0.b.x, true)).d.b.xx), max(func_6(Struct_5(vec4<f32>(var_1.x, -1000f, var_0.e.x, 1205f), 322f, vec3<u32>(arg_0.x, 21335u, 1u), Struct_4(var_1.x, vec4<bool>(true, var_0.b.x, true, var_0.a.x), arg_2), true), var_0, arg_2, Struct_4(var_1.x, vec4<bool>(true, false, false, false), arg_2)).c, arg_3.xzy) << (select(vec3<u32>(69163u, 82575u, global0.x), select(arg_0.wyy, vec3<u32>(arg_0.x, u_input.c.x, 1u), false), true) % vec3<u32>(32u))), !select(vec2<bool>(var_0.b.x, true), vec2<bool>(any(var_0.b.yz), any(vec4<bool>(true, false, var_0.a.x, true))), var_0.a.x)).d.c;
    return !(!select(vec4<bool>(func_6(Struct_5(vec4<f32>(1587f, var_1.x, var_1.x, var_0.d), var_0.d, vec3<u32>(0u, 0u, arg_2.a), Struct_4(-786f, vec4<bool>(true, false, true, false), arg_2), var_0.a.x), Struct_2(vec3<bool>(true, true, var_0.b.x), vec3<bool>(var_0.a.x, var_0.b.x, false), vec3<i32>(var_0.c.x, arg_1.x, arg_3.x), var_1.x, var_0.e), var_2, Struct_4(var_0.d, vec4<bool>(false, false, var_0.a.x, false), arg_2)).b.x, true, true, true), vec4<bool>(true, any(var_0.b), true, true), vec4<bool>(false, !var_0.b.x, true, true)));
}

fn func_8(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> f32 {
    global4 = func_4(Struct_1(u_input.a.x, arg_1, 33810u), arg_2, u_input.a.wyx << (select(vec3<u32>(~arg_0.c.a, u_input.d, ~10823u), ~func_5(vec4<i32>(52339i, -7290i, 2147483647i, u_input.b), 1268f, Struct_1(-25020i, arg_1, 0u), arg_0.b.wy).c, func_1(vec4<u32>(19280u, 52591u, arg_0.c.a, arg_1), u_input.a, Struct_3(11497u), countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(arg_1, 2u)], u_input.a.x, global3[_wgslsmith_index_u32(12673u, 2u)], 2147483647i))).yyw) % vec3<u32>(32u))).c;
    let var_0 = !arg_0.b.ww;
    let var_1 = func_5(u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))), -2232f)), Struct_1(-global2.x, 54022u, arg_0.c.a), select(vec2<bool>(true, false), vec2<bool>(var_0.x | (u_input.b >= global3[_wgslsmith_index_u32(arg_0.c.a, 2u)]), func_6(Struct_5(vec4<f32>(arg_0.a, 225f, -1711f, -695f), arg_0.a, vec3<u32>(global0.x, 4294967295u, 4294967295u), arg_0, arg_0.b.x), Struct_2(vec3<bool>(true, arg_0.b.x, false), arg_0.b.zwx, u_input.a.zzw, arg_0.a, vec2<f32>(937f, 1386f)), arg_0.c, arg_0).b.x), func_6(Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, arg_0.a, arg_0.a, 641f) * vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), arg_0.a, ~vec3<u32>(23580u, arg_0.c.a, 38530u), func_5(vec4<i32>(0i, u_input.a.x, global3[_wgslsmith_index_u32(36222u, 2u)], -1i), 915f, Struct_1(38887i, 4294967295u, 0u), vec2<bool>(arg_2, var_0.x)).d, true), Struct_2(!vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, arg_0.b.x), countOneBits(u_input.a.zyw), _wgslsmith_f_op_f32(638f + 1017f), vec2<f32>(arg_0.a, -1888f)), arg_0.c, arg_0).b.zx));
    var var_2 = !arg_0.b.x;
    let var_3 = Struct_4(-416f, select(!arg_0.b, select(func_5(u_input.a, _wgslsmith_f_op_f32(ceil(-485f)), Struct_1(global3[_wgslsmith_index_u32(var_1.c.x, 2u)], 4294967295u, arg_0.c.a), !vec2<bool>(arg_0.b.x, true)).d.b, !func_5(u_input.a, 383f, Struct_1(u_input.a.x, 3141u, 4294967295u), var_0).d.b, !vec4<bool>(var_1.e, var_0.x, arg_2, false)), vec4<bool>(var_1.d.a > _wgslsmith_div_f32(arg_0.a, arg_0.a), func_1(~vec4<u32>(0u, 54204u, var_1.c.x, 101966u), _wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_0.c.a, 2u)], global2.x, global2.x, 2147483647i), vec4<i32>(-1238i, -1i, -2147483647i, global3[_wgslsmith_index_u32(global0.x, 2u)])), func_5(vec4<i32>(-2147483647i, u_input.a.x, 0i, 1i), 662f, Struct_1(1i, 79637u, 1u), var_0).d.c, abs(vec4<i32>(12061i, global2.x, -55712i, u_input.a.x))).x, (31862u <= arg_0.c.a) | false, true)), var_1.d.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(980f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1161f, arg_0.a)), 501f))), _wgslsmith_div_f32(arg_0.a, func_5(vec4<i32>(-1i, -u_input.b, -44488i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * 518f)), Struct_1(global3[_wgslsmith_index_u32(arg_0.c.a, 2u)], ~arg_0.c.a, global0.x), func_1(select(vec4<u32>(global0.x, 24270u, 1u, global0.x), vec4<u32>(arg_1, 0u, 74523u, arg_0.c.a), false), vec4<i32>(-18704i, global2.x, u_input.b, u_input.b) << (vec4<u32>(34594u, 0u, var_3.c.a, u_input.d) % vec4<u32>(32u)), var_3.c, abs(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global2.x, global3[_wgslsmith_index_u32(global0.x, 2u)], global2.x))).wx).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -531f);
    global4 = 4294967295u;
    let var_1 = ~u_input.b;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(338f, 117f))), _wgslsmith_f_op_f32(func_8(Struct_4(-1216f, func_1(vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x), vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 2u)], var_1, 1i, u_input.a.x), Struct_3(u_input.d), vec4<i32>(global3[_wgslsmith_index_u32(14380u, 2u)], 23081i, -7361i, var_1)), Struct_3(11612u)), u_input.c.x, -855f == _wgslsmith_f_op_f32(step(-974f, 1416f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -392f)))));
    var var_3 = global2.x;
    let var_4 = u_input.a.wzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-func_5(vec4<i32>(-1i) * -u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(138f, var_2.x))), Struct_1(global2.x, global0.x, 4294967295u), func_6(Struct_5(vec4<f32>(var_2.x, -1000f, var_2.x, var_2.x), 1678f, vec3<u32>(6072u, u_input.c.x, 4294967295u), Struct_4(var_2.x, vec4<bool>(true, true, true, true), Struct_3(global0.x)), true), func_6(Struct_5(vec4<f32>(var_2.x, var_2.x, var_2.x, -684f), -200f, vec3<u32>(global0.x, 38545u, u_input.d), Struct_4(var_2.x, vec4<bool>(false, false, true, false), Struct_3(22180u)), false), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, false, false), var_4, -1507f, var_2), Struct_3(u_input.d), Struct_4(512f, vec4<bool>(true, false, false, true), Struct_3(global0.x))), func_5(u_input.a, var_2.x, Struct_1(29452i, 0u, u_input.d), vec2<bool>(true, false)).d.c, func_5(vec4<i32>(global3[_wgslsmith_index_u32(u_input.d, 2u)], u_input.a.x, -7926i, 2147483647i), var_2.x, Struct_1(-24937i, global0.x, 4294967295u), vec2<bool>(true, true)).d).a.zz).a));
}


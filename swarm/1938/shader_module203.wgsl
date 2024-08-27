struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec2<u32>, 32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(arg_1.x - 530f));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = array<vec2<u32>, 32>();
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(~u_input.b, u_input.b), -u_input.b, abs(0i), 0i) << (vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(countOneBits(~u_input.a.x), 0u, _wgslsmith_add_u32(318u >> (u_input.a.x % 32u), _wgslsmith_div_u32(u_input.c.x, u_input.c.x))), u_input.a.x, u_input.c.x) % vec4<u32>(32u));
    var var_1 = vec2<u32>(~_wgslsmith_mod_u32(~u_input.c.x, ~u_input.c.x), 1u);
    let var_2 = arg_0;
    global0 = countOneBits(i32(-1i) * -38268i);
    return func_2(firstLeadingBit(~vec2<u32>(~79290u, u_input.a.x >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(887f + arg_0.a), _wgslsmith_f_op_f32(-1000f - arg_1), var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -195f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 1328f, arg_0.a, arg_1), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a, var_2.a, arg_1, 926f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -442f, -1259f, -907f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, 209f, var_2.a, -550f), vec4<f32>(909f, var_2.a, var_2.a, arg_0.a)))), vec4<f32>(arg_1, arg_0.a, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -289f)))))), vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    global0 = ~u_input.b;
    let var_0 = abs(arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -808f);
    return func_3(Struct_1(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(trunc(-1639f)))), arg_0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_3(func_2(vec2<u32>(~1u, select(1u, u_input.c.x, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(182f, 1514f, 212f, 1733f) * vec4<f32>(814f, 165f, -1750f, 358f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1369f, -367f, 209f, 3049f)))), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), firstLeadingBit(reverseBits(79622u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 590f)) + _wgslsmith_f_op_f32(-func_2(vec2<u32>(1u, 0u), vec4<f32>(-374f, -122f, 1068f, 881f), vec3<bool>(false, false, true), 5162u).a))), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_div_u32(4294967295u, 36381u)), ~37992u, 0u) >> (_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(4294967295u, 0u, u_input.c.x ^ 0u)) % vec3<u32>(32u)), (_wgslsmith_div_u32(1u, 4294967295u) << (reverseBits(u_input.a.x) % 32u)) < 0u, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(305f, 1000f, 565f, 301f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1363f, 576f, -356f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, -311f, -347f, -404f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(1516f, 1000f), _wgslsmith_f_op_f32(step(994f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return func_3(func_4(Struct_1(_wgslsmith_f_op_f32(round(1268f))), vec3<u32>(abs(u_input.a.x), u_input.a.x, countOneBits(~u_input.c.x)), true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, 815f, -648f, var_0.a) - vec4<f32>(var_0.a, 1739f, var_0.a, var_0.a)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.a)), 1735f)))));
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-650f + arg_0.a);
    global0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(min(~u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b)), u_input.b, -u_input.b, 0i), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.b, 0i, 26017i), countOneBits(vec4<i32>(48695i, 8888i, u_input.b, -57080i)), vec4<i32>(19731i, -1i, 22485i, u_input.b) >> (vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x) % vec4<u32>(32u)))));
    var var_1 = vec3<bool>(any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), vec3<bool>(any(vec2<bool>(false, false)), false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec4<bool>(false, false, true, true))))), true, !all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_2 = arg_0;
    let var_3 = arg_0;
    return ~(~(-u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i >> (u_input.a.x % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -19026i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 4857i, 1i), countOneBits(vec3<i32>(30667i, 0i, u_input.b))), 1939i)), vec4<i32>(u_input.b, func_5(func_1()) << (firstLeadingBit(71885u) % 32u), ~(-u_input.b), u_input.b << (_wgslsmith_clamp_u32(abs(u_input.a.x), ~26277u, 15915u) % 32u)));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 4294967295u), ~0u, _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(90102u, 32621u, 10705u, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(35260u, u_input.a.x, 39675u, 25593u), vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x) >> (vec4<u32>(8474u, 38330u, 16577u, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(154u, 52140u, 31220u, u_input.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(66254u, 7909u, u_input.c.x, u_input.c.x), ~vec4<u32>(1u, 1u, u_input.c.x, 1u)), firstTrailingBit(abs(vec4<u32>(u_input.c.x, 0u, u_input.a.x, 3210u))))), 5712u);
    global0 = 21900i;
    global1 = array<vec2<u32>, 32>();
    let var_2 = !(!(min(146330u, u_input.a.x) <= 66516u) || true);
    let var_3 = _wgslsmith_mod_i32(36921i, func_5(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), -101f))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1326f))));
    let var_5 = func_3(var_4, func_4(Struct_1(2087f), ~abs(var_1.zyz) | _wgslsmith_add_vec3_u32(max(var_1.xww, vec3<u32>(31480u, 24263u, u_input.c.x)), var_1.zww), var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, -1147f, var_4.a, var_4.a) + vec4<f32>(515f, var_4.a, var_4.a, 1000f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-290f, 1000f, 361f, var_4.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a, var_4.a, var_4.a, var_4.a), vec4<f32>(-1734f, -525f, 279f, 1973f), var_2))))).a);
    var var_6 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-486f * var_5.a), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -563f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_5.a + var_5.a))), _wgslsmith_f_op_f32(step(var_5.a, var_4.a))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(f32(-1f) * -1253f), _wgslsmith_f_op_f32(ceil(106f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(7750u, 0u, var_1.x), u_input.c | var_1.yyw), select(vec3<u32>(4294967295u, 0u, var_1.x), var_1.www | vec3<u32>(78271u, var_1.x, 5645u), false)) ^ firstTrailingBit(_wgslsmith_clamp_vec3_u32(min(u_input.a, var_1.wzw), min(vec3<u32>(var_1.x, 1u, var_1.x), var_1.wyz), ~u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(var_4.a)), _wgslsmith_f_op_f32(select(-166f, var_6.x, true)))), _wgslsmith_f_op_f32(floor(var_6.x)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f), -403f) - var_6.x) + _wgslsmith_f_op_f32(-var_5.a)));
}


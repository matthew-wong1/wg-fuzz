struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 59081u;

var<private> global1: vec4<f32> = vec4<f32>(1978f, -1297f, 1000f, 751f);

var<private> global2: bool = false;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_5, arg_3: bool) -> f32 {
    var var_0 = -6090i;
    let var_1 = countOneBits(~(-41236i << (_wgslsmith_clamp_u32(24833u, 4294967295u, ~u_input.b) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.b))) * 745f), arg_1.a.a.x)), _wgslsmith_f_op_f32(sign(-1682f)), any(vec4<bool>(!arg_3, true, false, all(select(vec4<bool>(arg_3, true, true, true), vec4<bool>(false, false, true, arg_3), false))))));
    var var_3 = Struct_1(global1.xxy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(466f)) + 305f) - _wgslsmith_f_op_f32(-arg_0)))));
    let var_4 = Struct_3(arg_1.a.a, ~abs(~vec3<u32>(4294967295u, 2562u, u_input.b) & ~vec3<u32>(u_input.e.x, 26798u, u_input.e.x)), global1.zzx, arg_2.a);
    return arg_0;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> vec4<f32> {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1730f - -575f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global1.x, Struct_4(Struct_1(global1.yzy, -156f), vec3<i32>(u_input.a, u_input.d, 0i)), Struct_5(Struct_1(vec3<f32>(global1.x, 339f, global1.x), -376f)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-843f + _wgslsmith_f_op_f32(-866f * global1.x)))), firstTrailingBit(vec3<u32>(u_input.e.x, _wgslsmith_sub_u32(arg_0.x, 114168u >> (arg_0.x % 32u)), ~0u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), global1.x, 923f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.wyx)))), Struct_1(_wgslsmith_f_op_vec3_f32(-global1.yxw), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1336f)))))));
    let var_1 = vec4<bool>(any(vec3<bool>(!all(vec2<bool>(true, true)), true, false)), true, all(vec4<bool>(true, true, true, true)) && select(true, true, true), 4294967295u <= ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(66961u, arg_0.x), _wgslsmith_clamp_u32(1u, arg_0.x, 4594u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.a.yz, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(880f, 628f))), true)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, global1.x) * vec2<f32>(var_0.a.x, 1277f)), vec2<f32>(1629f, 758f)))) * vec2<f32>(var_0.c.x, 258f)));
    var var_3 = Struct_2(u_input.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(-412f + -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x)))), global1.x), var_1.wx, select(vec2<i32>(_wgslsmith_clamp_i32(min(u_input.d, 1i), abs(u_input.d), u_input.d), _wgslsmith_clamp_i32(~0i, -1i, countOneBits(u_input.d))), -(~vec2<i32>(u_input.d, u_input.a)) << (select(u_input.e, u_input.e, true) % vec2<u32>(32u)), vec2<bool>(true, true)));
    global0 = _wgslsmith_mod_u32(~reverseBits(~(~var_0.b.x)), arg_1);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f - var_2.x))), -121f, _wgslsmith_div_f32(-790f, var_0.a.x), 451f));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = firstTrailingBit(u_input.d << (u_input.e.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)), true));
    global1 = _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(1u, ~_wgslsmith_mult_u32(u_input.e.x >> (u_input.c % 32u), _wgslsmith_clamp_u32(4758u, u_input.c, u_input.c)), u_input.e.x), u_input.e.x));
    var var_2 = u_input.e;
    var_2 = _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.c, 4294967295u)), u_input.e);
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(~1i, abs(arg_1.x), arg_1.x) << ((~vec3<u32>(var_2.x, 43800u, 4294967295u) ^ ~vec3<u32>(u_input.c, 8836u, u_input.c)) % vec3<u32>(32u)), -vec3<i32>(0i, u_input.a, u_input.d)), Struct_1(global1.zxy, var_1), select(vec2<bool>(arg_0, false), select(vec2<bool>(true, arg_0), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, arg_0)), !select(vec2<bool>(true, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), true)), -(vec2<i32>(~(-1i), abs(3629i)) & _wgslsmith_add_vec2_i32(arg_1, vec2<i32>(arg_1.x, arg_1.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_4) -> f32 {
    global0 = 11988u >> (abs(_wgslsmith_sub_u32(arg_2, ~arg_2)) % 32u);
    var var_0 = abs(max(vec4<i32>(-25608i >> (~arg_2 % 32u), u_input.a, -2147483647i, u_input.d), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.d, 0i, u_input.d), -vec4<i32>(u_input.a, arg_0.d.x, 0i, 0i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, 2147483647i), 1i, 4398i, ~arg_3.b.x))));
    var var_1 = arg_0.b.b;
    let var_2 = arg_3.a;
    let var_3 = arg_0.c.x;
    return 1000f;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4) -> Struct_5 {
    let var_0 = arg_1;
    global2 = any(select(!vec3<bool>(any(vec3<bool>(true, true, false)), 23114u <= u_input.b, false), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(false, false, true)), true));
    let var_1 = firstLeadingBit(min(~vec4<u32>(0u, var_0.b.x, 0u, u_input.c), min(vec4<u32>(1839u, 1u, 0u, arg_1.b.x), vec4<u32>(var_0.b.x, u_input.c, 1u, u_input.e.x) >> (vec4<u32>(32951u, 10217u, 59771u, 22317u) % vec4<u32>(32u)))) & vec4<u32>(~1u, _wgslsmith_clamp_u32(var_0.b.x, 5489u, var_0.b.x) >> (firstLeadingBit(var_0.b.x) % 32u), 4294967295u, ~firstTrailingBit(1u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2.a.b)), _wgslsmith_f_op_f32(var_0.a.x * -552f))) + -998f), global1.x));
    global0 = ~(~u_input.c);
    return Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(step(arg_2.a.a.x, arg_2.a.b)), _wgslsmith_f_op_f32(step(var_0.c.x, 261f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(global1.zzx + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -490f, global1.x)), _wgslsmith_f_op_vec3_f32(-global1.wxx))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1823f * global1.x))))), Struct_3(vec3<f32>(-303f, _wgslsmith_f_op_f32(func_4(func_1(false, vec2<i32>(u_input.a, -23310i)), vec2<u32>(u_input.c, u_input.b) | vec2<u32>(u_input.c, u_input.c), ~4294967295u, Struct_4(Struct_1(vec3<f32>(706f, global1.x, global1.x), -1000f), vec3<i32>(u_input.a, 1182i, 56658i)))), -843f), min(vec3<u32>(~u_input.c, u_input.b, firstTrailingBit(1u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e.x, u_input.c, 6545u), abs(vec3<u32>(u_input.e.x, u_input.c, u_input.e.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-474f, 891f, -221f))))), func_1(select(u_input.b == u_input.b, all(vec2<bool>(true, true)), true), ~vec2<i32>(2147483647i, u_input.a) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.d, u_input.a))).b), Struct_4(func_1(_wgslsmith_div_f32(global1.x, global1.x) <= _wgslsmith_f_op_f32(ceil(-937f)), vec2<i32>(u_input.d, func_1(true, vec2<i32>(u_input.d, -2147483647i)).d.x)).b, countOneBits(countOneBits(vec3<i32>(-2147483647i, -2147483647i, 1i)))));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(u_input.b, u_input.e.x, u_input.c))), ~vec3<u32>(u_input.c, ~u_input.c, ~u_input.c), min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 59073u, 40734u)), ~36252u, u_input.c & u_input.c), abs(select(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(85392u, u_input.e.x, 4294967295u), false))));
    var_1 = ~(~reverseBits(vec3<u32>(_wgslsmith_mult_u32(u_input.e.x, var_1.x), u_input.e.x | 69249u, reverseBits(82765u))));
    let var_2 = Struct_2(2147483647i, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, -1073f, -569f) - vec3<f32>(var_0.a.b, 767f, var_0.a.a.x)) + _wgslsmith_f_op_vec3_f32(-global1.yzw)))), -797f), vec2<bool>(!all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(377f))) >= _wgslsmith_f_op_f32(floor(366f))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, reverseBits(411i)), abs(-vec2<i32>(u_input.d, -2147483647i))), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(32098i, u_input.a) | vec2<i32>(0i, 25788i), ~vec2<i32>(15921i, 29196i)))));
    global2 = select(true, !var_2.c.x, any(!vec3<bool>(true, false, all(vec3<bool>(true, var_2.c.x, false)))));
    let var_3 = abs(-2325i);
    let var_4 = ~35732u;
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~max(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, 0u, var_4, 4294967295u), reverseBits(vec4<u32>(u_input.b, 55806u, 1u, var_1.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-578f, var_0.a.a.x))), var_2.b.b, -278f, global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, var_0.a.b, global1.x, var_0.a.b), vec4<f32>(-1061f, global1.x, 243f, var_2.b.a.x)))), vec4<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(func_4(Struct_2(var_3, Struct_1(vec3<f32>(-182f, 253f, 450f), var_2.b.a.x), vec2<bool>(false, false), var_2.d), var_1.zx, var_4, Struct_4(Struct_1(vec3<f32>(283f, var_2.b.b, global1.x), var_0.a.b), vec3<i32>(-20281i, 1i, 0i)))), _wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(-var_0.a.b))))), select(~(_wgslsmith_div_vec4_i32(vec4<i32>(-42806i, var_3, 2147483647i, var_2.d.x), vec4<i32>(-2147483647i, var_3, 12544i, var_3)) >> (countOneBits(vec4<u32>(u_input.c, 4294967295u, u_input.e.x, 0u)) % vec4<u32>(32u))), -vec4<i32>(var_2.d.x, countOneBits(-1i), 2147483647i, var_3), all(select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.c.x, var_2.c.x, false), var_2.c.x), !vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<bool>(true, true, true)))));
}


struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    global1 = firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a.x ^ _wgslsmith_sub_i32(18079i, 27173i), abs(42455i), u_input.a.x & firstLeadingBit(-2147483647i), 19009i ^ (-32122i | u_input.a.x)), firstLeadingBit(min(vec4<i32>(global1.x, global1.x, 1i, u_input.a.x), vec4<i32>(2147483647i, 2147483647i, -55251i, u_input.a.x)))));
    var var_0 = u_input.b;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(600f * 297f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(605f, -554f), _wgslsmith_f_op_f32(min(290f, -263f)))) * _wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(142f * -430f)))));
    global1 = vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(global1.x, global1.x), -2147483647i | select(-45297i, -11394i, true)), ~_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a)), -global1.x, u_input.a.x, _wgslsmith_add_i32(-(_wgslsmith_sub_i32(u_input.a.x, -13844i) ^ reverseBits(15822i)), max(u_input.a.x, -_wgslsmith_clamp_i32(756i, 48974i, 48966i))));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, -579f))) - vec2<f32>(_wgslsmith_f_op_f32(-934f * var_1.x), _wgslsmith_f_op_f32(-var_1.x))))));
    return any(vec4<bool>((u_input.b | 29019u) >= 21880u, select(false, select(true, false, true), all(vec3<bool>(true, true, true))), true, firstTrailingBit(-18534i) < (i32(-1i) * -36301i))) | true;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.a.x);
    global1 = min(vec4<i32>(2147483647i, 20740i, -(i32(-1i) * -1i), -2147483647i), vec4<i32>(countOneBits(_wgslsmith_sub_i32(~(-2147483647i), 2147483647i)), ~u_input.a.x, select((i32(-1i) * -2147483647i) >> (arg_0.a.x % 32u), arg_0.e, _wgslsmith_add_i32(global1.x, 1i) <= 1i), -_wgslsmith_sub_i32(reverseBits(0i), _wgslsmith_clamp_i32(arg_0.d.b, global1.x, u_input.a.x))));
    var var_1 = func_3();
    var var_2 = ~_wgslsmith_mod_u32(u_input.c, 1u);
    var_2 = _wgslsmith_sub_u32(0u, u_input.c);
    return global1.wy;
}

fn func_1() -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_i32(12009i, _wgslsmith_dot_vec2_i32(func_2(Struct_3(vec2<u32>(1u, 15555u), vec2<f32>(126f, -891f), Struct_2(vec3<f32>(-524f, 216f, 292f), -2147483647i), Struct_2(vec3<f32>(-415f, 622f, 1722f), u_input.a.x), 2147483647i)) >> (~vec2<u32>(4294967295u, 22339u) % vec2<u32>(32u)), ~(-u_input.a.zy)));
    var var_1 = select(u_input.a.x, ~(-2147483647i), false) < _wgslsmith_dot_vec3_i32(vec3<i32>(select(-2147483647i, _wgslsmith_clamp_i32(global1.x, u_input.a.x, global1.x), true), firstTrailingBit(_wgslsmith_mod_i32(var_0, global1.x)), global1.x), vec3<i32>(var_0, -46851i, ~global1.x));
    global1 = vec4<i32>(1i, ~u_input.a.x, _wgslsmith_add_i32(1i, 0i), 0i);
    var var_2 = u_input.c;
    let var_3 = vec4<bool>(false, select(select(var_0 == (374i & var_0), ~var_0 < var_0, func_3() == all(vec3<bool>(false, false, false))), all(vec2<bool>(true, false)), !(-var_0 >= (-1i << (u_input.c % 32u)))), false, false);
    return Struct_3(max(select(~(~vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.c), max(vec2<u32>(47420u, 72249u), vec2<u32>(u_input.b, 4294967295u))), true), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.c, _wgslsmith_mod_u32(62606u, 67698u)))), vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -218f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-921f, -363f)), -220f)))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 734f, -1000f) * vec3<f32>(2665f, 1321f, 1158f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, -373f, 761f) - vec3<f32>(591f, 134f, -290f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(724f, -221f, -627f)))), firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(-25995i, var_0, var_0, -16044i), vec4<i32>(0i, global1.x, var_0, var_0)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1948f, -252f, -448f))), global1.x), var_0);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = min(_wgslsmith_mod_u32(~_wgslsmith_add_u32(~u_input.b, 4294967295u), firstTrailingBit(arg_0.a.x)), ~59813u);
    let var_1 = -abs(2147483647i);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.d.a), arg_0.d.a)), arg_0.c.b);
    var var_3 = Struct_1(~vec3<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(var_1, arg_0.c.b), -1i), 41730i, (-28224i & u_input.a.x) << (4294967295u % 32u)));
    let var_4 = Struct_1(vec3<i32>(~_wgslsmith_clamp_i32(reverseBits(2147483647i), 27384i, var_2.b), -var_3.a.x, -func_1().c.b));
    return func_1().d;
}

fn func_5(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = -29182i;
    var var_1 = abs(~vec2<u32>(4294967295u, ~select(u_input.b, u_input.c, false)));
    var var_2 = vec3<u32>(var_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(316u, u_input.c), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 58136u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, 4294967295u)))), 1u);
    let var_3 = Struct_1(u_input.a);
    let var_4 = all(vec4<bool>(true, true, true, true));
    return -_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(select(vec4<i32>(44184i, var_3.a.x, -2147483647i, 6907i), vec4<i32>(var_0, global1.x, arg_0.b, 11751i), vec4<bool>(var_4, var_4, false, var_4)), select(vec4<i32>(arg_0.b, -2147483647i, var_0, global1.x), vec4<i32>(arg_0.b, 1i, var_3.a.x, arg_0.b), vec4<bool>(true, var_4, false, true))), vec4<i32>(0i >> (_wgslsmith_add_u32(var_1.x, 1072u) % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.b, 2147483647i), func_4(Struct_3(vec2<u32>(u_input.b, 54601u), arg_0.a.zx, Struct_2(vec3<f32>(arg_0.a.x, 962f, 1268f), global1.x), arg_0, -29897i)).b), ~(var_0 & 2147483647i), ~(arg_0.b >> (var_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-488f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-815f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1633f)))))));
    var_0 = -1369f;
    global1 = func_5(func_4(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(-global1.x, vec3<u32>(u_input.c, 108372u, 57996u), 29487u);
}


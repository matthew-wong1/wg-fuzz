struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 8>;

var<private> global3: array<vec2<u32>, 29>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    global2 = array<Struct_3, 8>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(567f, _wgslsmith_f_op_f32(f32(-1f) * -1913f))))), arg_1.x, arg_1.x);
    global1 = arg_2;
    let var_1 = max(max(vec2<i32>(-29801i, abs(-arg_3.b.c.x)), arg_3.e), ~vec2<i32>(_wgslsmith_mod_i32(21868i, -2147483647i), -2147483647i));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(49944u, ~1u, 0u, ~arg_0.x ^ arg_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(~u_input.a, 30058u), 28949u, countOneBits(arg_0.x)), ~vec4<u32>(~u_input.c, _wgslsmith_mod_u32(22030u, arg_0.x), ~arg_0.x, _wgslsmith_mod_u32(arg_0.x, 37984u))));
    return u_input.d;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = false;
    global2 = array<Struct_3, 8>();
    let var_1 = global1.a;
    let var_2 = abs(vec3<i32>(-arg_1, _wgslsmith_clamp_i32(firstLeadingBit(func_3(vec4<u32>(4294967295u, 70905u, 4294967295u, 7691u), vec4<f32>(1000f, 716f, 351f, -561f), Struct_2(true), Struct_3(Struct_2(var_0), Struct_1(vec3<bool>(true, true, true), vec2<i32>(3460i, -31128i), vec2<i32>(arg_2, u_input.e), vec2<u32>(51796u, 11095u)), var_0, -6191i, vec2<i32>(0i, 1i)))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, 0i), vec3<i32>(u_input.e, -1i, 5306i))), arg_1), ~(-7542i)));
    let var_3 = u_input.e;
    return Struct_1(select(!vec3<bool>(true, !global1.a, var_0 | true), vec3<bool>(false, var_0, true), global1.a), vec2<i32>(arg_1, i32(-1i) * -1i), var_2.zz, vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, countOneBits(arg_0)) << (23295u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 18035u, 112820u), vec3<u32>(~44388u, 19268u, u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(!(!global1.a)), arg_1.b, (u_input.e & arg_0.c.x) < _wgslsmith_clamp_i32(~1i, -u_input.d ^ 2147483647i, arg_1.d), arg_1.d, _wgslsmith_add_vec2_i32(firstLeadingBit(-arg_0.b), arg_0.c));
    var var_1 = !var_0.b.a.yz;
    var var_2 = _wgslsmith_f_op_f32(max(-1727f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1887f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1646f, 690f))))))));
    var var_3 = -301f;
    return Struct_2(select(any(vec2<bool>(!var_0.a.a, var_0.a.a & arg_1.c)), false, true));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(global1.a, global1.a))))), func_2(_wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(39130u, 0u, 1u))), abs(reverseBits(vec3<u32>(u_input.c, 1335u, u_input.a)))), ~(-(u_input.d | 0i)), countOneBits(_wgslsmith_sub_i32(-29293i, 0i))), all(!select(select(vec4<bool>(false, arg_0.a, global1.a, arg_0.a), vec4<bool>(arg_1.a, false, global1.a, arg_0.a), vec4<bool>(arg_0.a, global1.a, false, false)), vec4<bool>(false, true, true, false), false)), u_input.d, _wgslsmith_add_vec2_i32(vec2<i32>(16287i, u_input.d >> (3667u % 32u)) | (vec2<i32>(2147483647i, -33836i) << (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, -33623i) & vec2<i32>(1i, u_input.d), -vec2<i32>(u_input.e, -15648i), ~vec2<i32>(u_input.e, 2147483647i)))));
    return var_0.b;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(true), func_5(func_4(func_2(u_input.c, ~0i, abs(-22507i)), Struct_3(Struct_2(true), func_2(95291u, u_input.d, 32093i), true, _wgslsmith_add_i32(u_input.e, -2147483647i), ~vec2<i32>(u_input.e, 1i)), abs(_wgslsmith_mult_u32(u_input.a, u_input.a))), Struct_2(any(vec4<bool>(global1.a, false, false, true))), _wgslsmith_add_u32(0u, countOneBits(select(u_input.c, u_input.a, global1.a)))), all(!(!(!vec3<bool>(global1.a, global1.a, false)))), 7935i, ~(abs(vec2<i32>(10604i, u_input.e)) & reverseBits(vec2<i32>(u_input.d, -59244i))) >> (~vec2<u32>(u_input.b.x, ~4294967295u) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, -713f, -326f) - vec3<f32>(353f, -1122f, -178f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(539f, -662f, 648f) + vec3<f32>(1635f, 782f, 960f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-494f, 172f, -891f), _wgslsmith_div_vec3_f32(vec3<f32>(1396f, 1570f, 921f), vec3<f32>(-424f, -413f, 1842f))))))));
    global1 = var_0.a;
    global0 = global1.a && all(var_0.b.a);
    global0 = var_0.c;
    return var_0.a;
}

fn func_6(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(29716u, 8u)];
    global1 = var_0.a;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1162f);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(158f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f + -930f) + -1000f)), _wgslsmith_f_op_f32(416f + _wgslsmith_f_op_f32(f32(-1f) * -1361f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-799f)), _wgslsmith_f_op_f32(f32(-1f) * -629f)) - -666f))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_2.x))))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))), var_2.x);
    return StorageBuffer(min(var_0.b.d, ~_wgslsmith_clamp_vec2_u32(u_input.b, reverseBits(vec2<u32>(1516u, var_0.b.d.x)), u_input.b ^ vec2<u32>(14769u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, -287f, var_2.x, 216f), vec4<f32>(-351f, var_2.x, var_2.x, 1167f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, var_2.x, -262f)))))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(48282u, 29701u), var_0.b.d.x), 14512u), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 8>();
    var var_0 = 0u;
    let x = u_input.a;
    s_output = func_6(func_1());
}


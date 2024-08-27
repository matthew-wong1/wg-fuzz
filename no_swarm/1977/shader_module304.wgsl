struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    var var_0 = Struct_2(4791i);
    var_0 = Struct_2(_wgslsmith_mult_i32(var_0.a << (2258u % 32u), ~countOneBits(var_0.a)) & (countOneBits(1i) >> (_wgslsmith_sub_u32(~u_input.a.x, ~1u) % 32u)));
    let var_1 = vec2<u32>(min(~max(_wgslsmith_sub_u32(arg_1, u_input.a.x), _wgslsmith_div_u32(arg_1, 45922u)), 5906u), u_input.e);
    var_0 = Struct_2(u_input.b.x);
    var_0 = Struct_2(~(-1i));
    return _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(u_input.e, 24741u, var_1.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4221u, 38190u, 11821u, 4294967295u), vec4<u32>(var_1.x, 1u, 1u, var_1.x)), ~49482u, _wgslsmith_clamp_u32(arg_1, u_input.e, u_input.a.x)))), min(~min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, arg_1, u_input.a.x), vec3<u32>(0u, var_1.x, u_input.a.x)), vec3<u32>(43080u, u_input.a.x, arg_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, _wgslsmith_add_u32(arg_1, arg_1), firstTrailingBit(4294967295u)), vec3<u32>(arg_1, u_input.e, 1u) | ~vec3<u32>(var_1.x, 58292u, u_input.e))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> vec3<u32> {
    let var_0 = vec2<u32>(u_input.a.x, ~(func_3(arg_2, u_input.a.x, vec2<f32>(arg_1.x, arg_1.x), false) << (~u_input.e % 32u))) >> (~(~u_input.a) % vec2<u32>(32u));
    return ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(var_0.x, u_input.e, 0u))) ^ (~(~vec3<u32>(var_0.x, 1101u, var_0.x)) | reverseBits(~vec3<u32>(u_input.a.x, 4294967295u, 1u))));
}

fn func_1() -> bool {
    var var_0 = Struct_3(Struct_1(vec4<bool>(true, true, true, true)), ~1i);
    var var_1 = Struct_4(-1761f, ~12210u);
    let var_2 = max(~reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, 1u, var_1.b), vec3<u32>(0u, u_input.a.x, 1u)), vec3<u32>(var_1.b, u_input.a.x, 4294967295u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.e) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, 0u), vec3<u32>(var_1.b, u_input.a.x, 0u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(var_1.b, 79593u, u_input.e), var_0.a.a.wzx), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, 0u, u_input.a.x), vec3<u32>(var_1.b, 28058u, var_1.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(7172u, u_input.e, 1u), vec3<u32>(4294967295u, var_1.b, 4294967295u))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, var_1.b, u_input.a.x), vec3<u32>(0u, u_input.a.x, 51704u)), func_2(var_0.a.a.x, vec2<f32>(-578f, -385f), var_0.a.a.x))));
    let var_3 = var_0.a.a.yz;
    var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), 1u);
    return var_0.a.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, 1300f, arg_0.x)), -732f)) + -154f), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, u_input.a.x), vec3<u32>(4243u, 9361u, u_input.e)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1659f, var_0.a.a, _wgslsmith_f_op_f32(sign(423f)), -1368f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a, 1487f, var_0.a.a, 366f), vec4<f32>(var_0.a.a, -578f, var_0.a.a, var_0.a.a), true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(596f, -2115f, -184f, var_0.a.a))), !arg_1.a.a.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a, var_0.a.a, var_0.a.a, -803f), _wgslsmith_div_vec4_f32(vec4<f32>(-189f, 1338f, -979f, -455f), vec4<f32>(-102f, var_0.a.a, 1985f, -647f))))), arg_1.a.a.x)));
    return Struct_3(arg_1.a, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1())), true, !any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false))), Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 0i), u_input.b.x, vec2<bool>(true, true));
    let var_1 = firstTrailingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-36119i, var_0.b, 12002i, u_input.b.x)) | (vec4<i32>(-1i, -1i, u_input.b.x, -21204i) ^ vec4<i32>(0i, -1i, -20285i, var_0.b)), vec4<i32>(0i, firstTrailingBit(var_0.b), abs(var_0.b), var_0.b >> (u_input.a.x % 32u))) << (firstTrailingBit(~(~vec4<u32>(u_input.a.x, u_input.e, 4294967295u, 7485u))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1183f, -587f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(721f * -838f), 511f)), 612f));
    let var_3 = _wgslsmith_dot_vec4_i32(var_1, select(firstTrailingBit(reverseBits(vec4<i32>(var_0.b, var_1.x, 16602i, var_0.b))), max(~vec4<i32>(1i, var_1.x, var_1.x, u_input.c), -vec4<i32>(var_0.b, 51941i, u_input.c, var_0.b)) | abs(var_1), vec4<bool>(var_0.a.a.x, all(vec3<bool>(true, false, var_0.a.a.x)), any(vec4<bool>(var_0.a.a.x, true, true, var_0.a.a.x)), true)));
    var var_4 = select(var_0.a.a.www, var_0.a.a.zzz, var_0.a.a.x);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1925f) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1899f + -763f) + _wgslsmith_f_op_f32(-var_2.x)))), 149f);
    let var_5 = Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(step(602f, -396f)))), u_input.a.x));
    var_4 = select(vec3<bool>(true, var_5.a.a >= _wgslsmith_f_op_f32(f32(-1f) * -334f), var_0.a.a.x), var_0.a.a.yxy, var_0.a.a.xwy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~min(var_5.a.b, var_5.a.b), ~select(_wgslsmith_mod_u32(18425u, var_5.a.b), max(var_5.a.b, 72526u), all(var_0.a.a.xz))), _wgslsmith_f_op_f32(abs(707f)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 23514u, var_5.a.b, var_5.a.b) & (vec4<u32>(u_input.e, 0u, var_5.a.b, 1u) << (vec4<u32>(24750u, u_input.e, 96206u, var_5.a.b) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 11193u, u_input.a.x, 0u), vec4<u32>(4294967295u, 1u, u_input.a.x, 1u) | vec4<u32>(var_5.a.b, 7542u, 12686u, u_input.e))) ^ _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(var_5.a.b, 1u, 35013u, u_input.e), ~vec4<u32>(u_input.e, var_5.a.b, var_5.a.b, 5981u), false), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 94241u, var_5.a.b, u_input.e), vec4<u32>(1u, u_input.a.x, 17483u, u_input.a.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_5.a.b, var_5.a.b), vec4<u32>(u_input.a.x, u_input.a.x, 32217u, 0u), vec4<u32>(1u, var_5.a.b, u_input.a.x, 4294967295u))), ~(~(var_5.a.b ^ var_5.a.b)) & ~39841u);
}


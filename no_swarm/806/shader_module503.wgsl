struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> bool {
    var var_0 = vec2<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0, _wgslsmith_add_i32(22128i, arg_0), -arg_0), vec4<i32>(-11340i, arg_0, -24073i, 1i) >> (firstTrailingBit(vec4<u32>(8504u, 59240u, 53473u, 1u)) % vec4<u32>(32u))) < (_wgslsmith_add_i32(arg_0, min(35626i, arg_0)) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, arg_1.x, u_input.a), vec3<u32>(arg_1.x, 68432u, 4294967295u) | vec3<u32>(59431u, 0u, 114460u)) % 32u)));
    var_0 = !vec2<bool>(true, false == var_0.x);
    var_0 = !(!select(!vec2<bool>(false, var_0.x), vec2<bool>(select(false, var_0.x, true), true), any(vec3<bool>(true, var_0.x, false))));
    var var_1 = Struct_2(_wgslsmith_clamp_i32(reverseBits(arg_0) << (24745u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-11921i, arg_0, -13721i) << (~vec3<u32>(arg_1.x, 4294967295u, 1u) % vec3<u32>(32u)), firstLeadingBit(reverseBits(vec3<i32>(arg_0, arg_0, -1i)))), -1i), _wgslsmith_add_i32(-59883i, -47888i), Struct_1(select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false)), !vec2<bool>(var_0.x, false), true), true), 882f, 0i, _wgslsmith_f_op_f32(288f - _wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(1669f + -106f)))), Struct_1(vec2<bool>(var_0.x, any(vec2<bool>(false, var_0.x)) | true), _wgslsmith_f_op_f32(f32(-1f) * -637f), select(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-20392i, arg_0), -1i), -(arg_0 ^ arg_0), all(vec4<bool>(var_0.x, true, false, false)) | false), -314f), ~vec3<u32>(arg_1.x, max(~19142u, min(36550u, 8943u)), 20648u));
    let var_2 = Struct_2(arg_0, arg_0, var_1.c, Struct_1(select(vec2<bool>(true, var_0.x), var_1.d.a, all(vec3<bool>(var_0.x, false, var_0.x))), var_1.c.d, _wgslsmith_sub_i32(~abs(-7725i), var_1.d.c), var_1.d.b), _wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(74011u, 17009u, var_1.e.x)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, select(4294967295u, arg_1.x, var_0.x), _wgslsmith_mult_u32(arg_1.x, u_input.a)), min(0u, select(var_1.e.x, 4294967295u, false)), countOneBits(16029u)), var_1.e));
    return var_1.c.b > -628f;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(f32(-1f) * -981f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(284f, 2213f))));
    let var_1 = Struct_2(arg_0.x, min(arg_0.x, arg_0.x), Struct_1(vec2<bool>(true, func_3(~(-2147483647i), vec2<u32>(1u, arg_1) >> (vec2<u32>(1u, 26314u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(888f, -1000f))))), 1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-689f, -1757f)), -880f))))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), 1u > countOneBits(arg_1)), 277f, 12383i, -1209f), ~_wgslsmith_sub_vec3_u32(min(abs(vec3<u32>(4368u, 1u, arg_1)), max(vec3<u32>(arg_1, u_input.b, arg_1), vec3<u32>(arg_1, 4294967295u, 0u))), vec3<u32>(countOneBits(arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(64121u, 23010u, 8286u), vec3<u32>(u_input.b, arg_1, 51389u)), firstTrailingBit(0u))));
    var var_2 = Struct_4(var_1.c.c, Struct_2(_wgslsmith_div_i32(i32(-1i) * -2147483647i, var_1.c.c), min(_wgslsmith_div_i32(var_1.d.c, arg_0.x), 9556i), var_1.d, var_1.c, reverseBits(~var_1.e)), var_1.c.a.x, var_1.e.x & ~_wgslsmith_sub_u32(~0u, _wgslsmith_clamp_u32(4294967295u, arg_1, 4294967295u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, _wgslsmith_f_op_f32(sign(1212f))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1071f, 366f), vec2<f32>(-1000f, 184f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.d, var_1.d.d) * vec2<f32>(var_2.b.c.b, var_2.b.d.d)))))));
    let var_4 = Struct_4(_wgslsmith_mult_i32(var_1.a, i32(-1i) * -select(26778i, arg_0.x, var_1.d.a.x)), Struct_2(var_2.b.a, -30383i, var_1.c, Struct_1(vec2<bool>(var_2.b.c.a.x, func_3(var_2.b.b, vec2<u32>(4294967295u, var_1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.d.b) - -210f), 1i, var_2.b.c.b), vec3<u32>(4535u, reverseBits(1u), _wgslsmith_mult_u32(u_input.a >> (4294967295u % 32u), ~u_input.a))), var_2.b.d.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(abs(var_2.b.e.yy)), vec2<u32>(~4294967295u, var_2.b.e.x)) & _wgslsmith_dot_vec2_u32(var_2.b.e.zz, max(var_1.e.yz, vec2<u32>(4294967295u, 67199u) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))));
    return vec2<f32>(-1000f, var_3.x);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(true, true);
    return Struct_2(1i, firstTrailingBit(-1i), Struct_1(!vec2<bool>(func_3(-1i, arg_3.yw), true), _wgslsmith_f_op_f32(-arg_2.x), -3022i, _wgslsmith_f_op_f32(abs(258f))), Struct_1(!(!(!vec2<bool>(var_0.x, arg_1))), 1061f, -1i, -655f), vec3<u32>(arg_3.x ^ arg_3.x, u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_3.xx), _wgslsmith_add_vec2_u32(vec2<u32>(42218u, 4294967295u), arg_3.wz)), ~4294967295u << (firstLeadingBit(1u) % 32u))));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = ~_wgslsmith_add_u32(arg_0.e.x, 31184u);
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1412f)) - arg_0.c.d), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(arg_0.d.c, arg_0.a), var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.b, arg_0.d.d) * vec2<f32>(-863f, 1075f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(363f, 837f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.c.b, 940f, false)), -502f, true == arg_0.c.a.x)))), ~min(vec4<u32>(0u, u_input.a, ~0u, 18884u), select(vec4<u32>(0u, 5693u, var_0, arg_0.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(112855u, arg_0.e.x, arg_0.e.x, arg_0.e.x), vec4<u32>(u_input.a, var_0, 4294967295u, 26894u)), true)));
    let var_2 = Struct_3(_wgslsmith_add_i32(2147483647i >> (u_input.b % 32u), func_4(_wgslsmith_div_f32(func_4(var_1.d.b, true, vec2<f32>(var_1.d.b, arg_0.c.b), vec4<u32>(var_0, var_1.e.x, 1u, var_1.e.x)).d.d, 2083f), (var_1.a <= arg_0.b) && var_1.c.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b, arg_0.c.d) - vec2<f32>(1271f, 442f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, var_1.c.d) * vec2<f32>(var_1.c.b, arg_0.c.b))), ~vec4<u32>(arg_0.e.x, 3068u, 9245u, arg_0.e.x)).b), var_0, !(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.d.c, var_1.b)), -vec2<i32>(-46482i, 1i)) > min(var_1.d.c, var_1.c.c)), vec2<i32>(func_4(_wgslsmith_f_op_f32(round(356f)), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -471f)), ~vec4<u32>(u_input.a, 3990u, arg_0.e.x, arg_0.e.x)).d.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.x, var_0, var_1.e.x) ^ vec3<u32>(4294967295u, u_input.a, 66165u), vec3<u32>(59796u, var_0, arg_0.e.x)) % 32u), _wgslsmith_clamp_i32(abs(var_1.d.c), arg_0.c.c, 34111i ^ arg_0.c.c)));
    var_1 = arg_0;
    let var_3 = vec2<f32>(arg_0.d.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c.d, var_1.c.d)), _wgslsmith_f_op_f32(round(1458f))) - _wgslsmith_div_f32(-1360f, arg_0.c.b)));
    return !(!vec3<bool>(-arg_0.b == firstLeadingBit(-25151i), var_1.d.a.x != (var_2.c == true), all(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(all(select(func_1(Struct_2(-27243i, 5965i, Struct_1(vec2<bool>(true, true), 586f, -2147483647i, -481f), Struct_1(vec2<bool>(false, true), 1527f, -1i, 669f), vec3<u32>(u_input.b, u_input.a, 30013u))), vec3<bool>(false, true, true), true)) && !any(vec3<bool>(true, true, true)));
    let var_1 = !func_4(_wgslsmith_f_op_f32(max(349f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(725f)))))), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<f32>(_wgslsmith_div_f32(1770f, _wgslsmith_f_op_f32(floor(944f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2484f * -1069f))), vec4<u32>(~u_input.a, 19386u, _wgslsmith_div_u32(u_input.b, 1u) & u_input.b, ~u_input.a)).d.a;
    var var_2 = Struct_3(24387i, ~((~u_input.a << (~u_input.a % 32u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(96727u, u_input.a, u_input.b, u_input.a), vec4<u32>(u_input.b, u_input.b, 43806u, 4294967295u))), true, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-2147483647i, 0i)), -(vec2<i32>(1i, -2147483647i) >> (vec2<u32>(35207u, u_input.a) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-47015i, 9071i, 2147483647i, -1i), vec4<i32>(30553i, -70030i, 2147483647i, 0i)), ~1i)), vec2<i32>(countOneBits(36151i), -1i)));
    let var_3 = Struct_4(var_2.a, Struct_2(var_2.a, var_2.a, func_4(_wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(f32(-1f) * -1325f)), var_2.c, vec2<f32>(_wgslsmith_div_f32(1503f, 166f), _wgslsmith_f_op_f32(round(-751f))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(24669u, u_input.b, u_input.b, u_input.a)), vec4<u32>(var_2.b, u_input.a, 4294967295u, var_2.b) << (vec4<u32>(u_input.a, u_input.a, var_2.b, 15304u) % vec4<u32>(32u)))).c, func_4(_wgslsmith_f_op_f32(func_4(562f, var_1.x, vec2<f32>(446f, 327f), vec4<u32>(u_input.a, 16606u, var_2.b, u_input.b)).c.d + -297f), false, vec2<f32>(_wgslsmith_f_op_f32(-160f - 800f), _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(var_2.a, -1187i), var_2.b)).x), abs(vec4<u32>(var_2.b, var_2.b, 4294967295u, 21297u))).c, firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(var_2.b, 90348u), ~0u, ~57028u))), select(true == (var_2.a != 0i), any(!vec3<bool>(var_1.x, var_2.c, var_2.c)), all(select(!vec4<bool>(false, var_2.c, false, var_1.x), vec4<bool>(false, var_2.c, false, var_2.c), select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x))))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) << (max(vec3<u32>(1u, 0u, 20641u), vec3<u32>(u_input.a, 0u, 1u) & vec3<u32>(var_2.b, var_2.b, u_input.b)) % vec3<u32>(32u)), ~vec3<u32>(~u_input.a, _wgslsmith_add_u32(4294967295u, u_input.b), abs(4294967295u))));
    let var_4 = vec2<bool>(true, !var_3.b.d.a.x);
    var_2 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_2.d), -vec2<i32>(1i, var_2.a)), _wgslsmith_mult_i32(-var_3.b.b, 0i)) >> (~((24704u >> (u_input.b % 32u)) | firstLeadingBit(0u)) % 32u), _wgslsmith_mod_u32(10835u, ~(~24524u)), -33581i <= ~countOneBits(var_2.a << (8422u % 32u)), vec2<i32>(_wgslsmith_mod_i32(-var_3.b.b, 0i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~38056i, func_4(361f, var_2.c, vec2<f32>(157f, var_3.b.d.d), vec4<u32>(var_2.b, var_3.b.e.x, var_3.d, u_input.a)).d.c), ~(-var_2.a), ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(1872u)), _wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-484f, var_3.b.c.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, -411f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.d.d, var_3.b.d.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.d.b, var_3.b.d.d) + vec2<f32>(1295f, -1000f)))), true)), max(_wgslsmith_add_u32(var_2.b, func_4(-686f, false, vec2<f32>(109f, 667f), vec4<u32>(0u, 75391u, var_3.d, var_2.b)).e.x) | ~(~0u), 0u), (~vec3<u32>(u_input.a, var_2.b, 12071u) | vec3<u32>(87842u >> (u_input.b % 32u), u_input.a, var_3.d)) | vec3<u32>(6152u, firstLeadingBit(u_input.a), u_input.b));
}


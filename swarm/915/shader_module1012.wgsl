struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = !select(vec4<bool>(0i <= u_input.c.x, select(false, any(vec2<bool>(false, true)), true), all(vec2<bool>(true, false)), (u_input.c.x == u_input.c.x) || all(vec2<bool>(false, true))), !vec4<bool>(select(true, true, false), true, true, all(vec2<bool>(false, false))), true & (u_input.c.x >= ~7681i));
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 1i), -1i, firstLeadingBit(u_input.c.x)), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, -4349i), firstTrailingBit(u_input.c.x), -u_input.c.x ^ -2147483647i)));
    var var_2 = u_input.a.x;
    return u_input.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = -(~func_3()) >> ((~(~abs(4294967295u)) >> (~(~arg_2.x >> (u_input.a.x % 32u)) % 32u)) % 32u);
    var var_1 = arg_2.x | _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(1u, u_input.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 7174u, arg_2.x), arg_2) % 32u)), min(arg_2.x, _wgslsmith_mod_u32(u_input.b | 4294967295u, ~arg_2.x)));
    var_0 = -u_input.c.x;
    var var_2 = Struct_1(arg_0.a);
    let var_3 = select(vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), (_wgslsmith_f_op_f32(step(510f, 764f)) != _wgslsmith_f_op_f32(f32(-1f) * -198f)) | false), !vec3<bool>(false, !all(vec4<bool>(true, false, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), vec3<bool>(true, true, true));
    return Struct_1(~reverseBits(vec2<i32>(1i, select(arg_0.a.x, var_2.a.x, var_3.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1610f, arg_1, 244f, 136f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1272f, arg_1, arg_1, 175f))))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -469f, arg_1, 549f)), vec4<f32>(arg_1, arg_1, arg_1, 2398f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1163f, _wgslsmith_f_op_f32(step(-1501f, arg_1)), -986f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, -336f, -1226f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), -843f)))));
    let var_2 = arg_0;
    return Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(1i, -16154i), ~arg_0.a.x), vec2<i32>(var_2.a.x, -1i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = 35637u;
    let var_1 = Struct_1(vec2<i32>(~(-40108i << (u_input.a.x % 32u)), _wgslsmith_add_i32(arg_2.a.x, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, arg_2.a.x, u_input.c.x, -1i)))) << (u_input.a.yy % vec2<u32>(32u)));
    var var_2 = func_4(func_2(Struct_1(-(u_input.c.wz ^ var_1.a)), ~0u, vec4<u32>(~(~u_input.a.x), u_input.a.x, u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_f32(round(arg_0)), vec4<i32>(-arg_1.a.x, arg_1.a.x, arg_2.a.x, ~1i), select(firstLeadingBit(vec3<i32>(-1i, arg_1.a.x, u_input.c.x)), u_input.c.yxz, any(vec4<bool>(true, true, true, true)) | true) >> (u_input.a % vec3<u32>(32u)));
    var var_3 = u_input.b << (reverseBits(2769u) % 32u);
    let var_4 = ~(-var_1.a.x);
    return ~func_2(Struct_1(arg_1.a), u_input.a.x, (~vec4<u32>(27823u, u_input.a.x, u_input.a.x, 0u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 39301u, 44620u), vec4<u32>(54131u, 45701u, 0u, 0u))) >> ((vec4<u32>(3953u, 4294967295u, 0u, u_input.b) | firstLeadingBit(vec4<u32>(u_input.b, u_input.a.x, 4294967295u, u_input.b))) % vec4<u32>(32u))).a.x;
}

fn func_5(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -493f)), 226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-657f))))));
    let var_1 = Struct_1(firstTrailingBit(arg_1));
    var var_2 = var_0.zy;
    var_2 = _wgslsmith_f_op_vec2_f32(sign(var_0.yz));
    var_2 = vec2<f32>(1255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-172f, 1000f)), -825f))));
    return Struct_1(-(-func_2(var_1, 0u, vec4<u32>(78798u, 4294967295u, 0u, u_input.a.x)).a ^ vec2<i32>(func_3(), countOneBits(2147483647i))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_5(!(!(!all(vec3<bool>(true, false, true)))), arg_2.a);
    var_0 = Struct_1(vec2<i32>((-u_input.c.x | 0i) | (i32(-1i) * -48445i), u_input.c.x));
    var var_1 = arg_0;
    let var_2 = select(true, any(select(vec3<bool>(true, select(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), true);
    var_1 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c.zw);
    var var_1 = -var_0.a.x;
    let var_2 = func_6(func_5(true, vec2<i32>(func_1(1954f, Struct_1(var_0.a), Struct_1(u_input.c.wx)), firstLeadingBit(2147483647i)) | vec2<i32>(~u_input.c.x, abs(u_input.c.x))), vec3<u32>(0u, ~(~(~u_input.b)), firstTrailingBit(u_input.b)), Struct_1(vec2<i32>(2695i, i32(-1i) * -var_0.a.x)));
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(u_input.c.wzy, vec3<i32>(var_0.a.x, u_input.c.x, u_input.c.x)))), -vec2<i32>(0i, 1i)));
    let var_4 = ~(~_wgslsmith_clamp_u32(u_input.a.x, ~u_input.b, ~u_input.b));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.a.x & (func_4(var_2, 779f, vec4<i32>(-1i, var_3.a.x, 1i, -29445i), vec3<i32>(var_3.a.x, -2147483647i, 22813i)).a.x | -2147483647i)), func_2(Struct_1(u_input.c.xx), 52089u, ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, var_4, u_input.b), vec4<u32>(48627u, 56696u, u_input.a.x, 12600u)) & ~vec4<u32>(35187u, var_4, 1u, 1u))).a.x, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.a.x, _wgslsmith_sub_i32(var_0.a.x, 5253i)), -2147483647i), var_0.a.x, u_input.c.x, abs(-(var_0.a.x << (4294967295u % 32u)))), ~u_input.b);
}


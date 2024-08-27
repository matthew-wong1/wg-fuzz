struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1063f)) + 1000f), -116f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1763f + -1132f), -712f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-755f - -928f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1454f, 810f, false))))), abs(_wgslsmith_add_u32(abs(~38280u), ~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(33005u, 27037u)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(483f, 1047f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1267f)), _wgslsmith_f_op_f32(abs(1463f))))), -1214f, select(reverseBits(var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, var_0.c, var_0.c), reverseBits(vec3<u32>(1u, 4294967295u, var_0.c))), true) << (_wgslsmith_mod_u32(var_0.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(1u, var_0.c))) % 32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1446f + var_1.a.x) + _wgslsmith_div_f32(var_0.b, -1000f)))), 1000f, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(43558u, 39u) << (max(vec2<u32>(148479u, var_0.c), vec2<u32>(var_1.c, 1u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 11911u), countOneBits(vec2<u32>(var_0.c, var_1.c)))));
    var var_2 = var_1;
    var var_3 = -1453f > _wgslsmith_f_op_f32(-var_1.b);
    return vec4<bool>(arg_0.x, select(all(select(arg_0.xy, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true))), any(!select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(false, true, true, arg_0.x))), arg_0.x), !(!all(vec2<bool>(arg_0.x, true))), !(select(all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), true, true) && all(select(arg_0, vec3<bool>(arg_0.x, true, true), true))));
}

fn func_2() -> vec4<f32> {
    var var_0 = !select(!select(func_3(vec3<bool>(true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, !any(vec3<bool>(false, true, true))), any(vec3<bool>(true, true, true)));
    var var_1 = u_input.a;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(413f, -106f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(700f, -603f)), all(!var_0.wxw))))));
    let var_3 = Struct_2(20815u, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(314f, -289f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-127f, var_2.a) - vec2<f32>(var_2.a, var_2.a)), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, 392f))), any(!var_0.zzw))), var_2.a, 1u), vec3<u32>(~(~(~659u)), ~4294967295u, 58524u), vec3<u32>(max(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(2615u, 35689u, 28754u), ~3836u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(90620u, 9019u, 43236u, 127696u), vec4<u32>(0u, 0u, 1u, 1u))), 1u, 46867u));
    var_1 = u_input.a ^ _wgslsmith_div_vec3_i32(u_input.a & u_input.a, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(var_1.x, -2147483647i, -2147483647i)), u_input.a), u_input.a));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.a.x, var_3.b.b, var_3.b.a.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(904f, 120f, var_3.b.b, -1844f))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), 1483f, var_2.a, var_3.b.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = 19639i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(611f + -186f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(ceil(912f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1695f - _wgslsmith_f_op_f32(f32(-1f) * -642f)) + _wgslsmith_f_op_f32(-639f * _wgslsmith_f_op_f32(-544f - 188f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -280f)))), 661f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2()))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1704f, -1269f, 488f))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 854f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(2106f)), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -200f, var_1.x, var_1.x) * vec4<f32>(1722f, var_1.x, var_1.x, -404f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, 1000f, 2464f, var_1.x)))))));
    let var_3 = true;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(1155f * var_2.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), var_1.x, ~35531u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + -537f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(418f + 181f))));
    var var_1 = vec2<u32>(~62422u | _wgslsmith_sub_u32(1u, firstTrailingBit(0u)), ~arg_0.c) & ((~countOneBits(vec2<u32>(4294967295u, arg_1.c)) >> (vec2<u32>(~33259u, 113566u) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_u32((vec2<u32>(arg_3, 26009u) >> (vec2<u32>(0u, arg_1.c) % vec2<u32>(32u))) & vec2<u32>(arg_0.c, 68888u), vec2<u32>(~arg_3, 4294967295u), ~reverseBits(vec2<u32>(arg_3, 0u))));
    let var_2 = abs(u_input.b);
    let var_3 = Struct_2(_wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(12868u, var_1.x, 1u, arg_1.c) >> (~vec4<u32>(arg_1.c, 27943u, arg_3, var_1.x) % vec4<u32>(32u)), vec4<u32>(arg_3, _wgslsmith_add_u32(arg_1.c, 93130u), countOneBits(arg_1.c), _wgslsmith_clamp_u32(arg_0.c, 22808u, 99002u)))), arg_1, firstTrailingBit(max(vec3<u32>(1u, 68013u, arg_0.c) | vec3<u32>(arg_3, 1u, arg_1.c), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, 1u, var_1.x), vec3<u32>(arg_3, var_1.x, 29699u), vec3<u32>(46226u, 65550u, 47834u)), max(vec3<u32>(43450u, 0u, var_1.x), vec3<u32>(4294967295u, 99939u, 0u)), false))), ~vec3<u32>(var_1.x, ~arg_3, ~1u) << (~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(18582u, arg_3, 23378u)), firstLeadingBit(vec3<u32>(21482u, 1u, arg_1.c))) % vec3<u32>(32u)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-263f + _wgslsmith_f_op_f32(step(741f, _wgslsmith_f_op_f32(-1210f - -170f)))), _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-arg_1.b)), -687f, arg_1.b);
    return func_1();
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = abs(vec4<i32>(max(u_input.b, 54270i) ^ u_input.a.x, -1i, select(_wgslsmith_clamp_i32(-1i, u_input.a.x, -42599i), ~(-2147483647i), all(vec3<bool>(false, false, true))), ~7154i) | vec4<i32>(u_input.a.x & u_input.a.x, ~u_input.a.x, ~u_input.a.x, -u_input.a.x));
    let var_1 = arg_2;
    var var_2 = false;
    let var_3 = var_0.wy;
    let var_4 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~(-u_input.a.zy | vec2<i32>(var_0.x, 1i))), select(firstTrailingBit(-min(vec2<i32>(var_3.x, -2147483647i), u_input.a.xx)), ~vec2<i32>(-var_0.x, i32(-1i) * -15708i), vec2<bool>(true, true)));
    return vec3<i32>(1i << (_wgslsmith_clamp_u32(firstTrailingBit(1u), arg_1, _wgslsmith_mod_u32(1u, abs(78920u))) % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -57759i << (arg_1 % 32u)), reverseBits(120i)), -_wgslsmith_add_i32(~1i, ~var_4));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 1203u)), vec2<u32>(_wgslsmith_add_u32(1u, 0u), firstLeadingBit(_wgslsmith_mod_u32(35538u, 1u)))));
    let var_1 = ~func_5((vec4<u32>(0u, 4294967295u, 38089u, var_0.x) >> (~vec4<u32>(var_0.x, 62287u, var_0.x, var_0.x) % vec4<u32>(32u))) >> (~vec4<u32>(85734u, var_0.x, 0u, 31740u) % vec4<u32>(32u)), select(27840u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(var_0.x, var_0.x)), true), func_4(func_1(), func_1(), true, 20418u), ~(~select(vec2<u32>(75011u, 34026u), var_0, true)));
    var var_2 = true;
    var var_3 = ~countOneBits(_wgslsmith_mod_u32(~4294967295u & max(7880u, var_0.x), 4294967295u));
    let var_4 = func_3(!vec3<bool>(false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true)).wx;
    let x = u_input.a;
    s_output = StorageBuffer(min(0i, var_1.x), ~(var_1.x ^ -2555i), vec2<f32>(-369f, -182f), vec4<i32>(firstLeadingBit(var_1.x), -reverseBits(-u_input.a.x), u_input.b, select(u_input.b, _wgslsmith_add_i32(var_1.x, var_1.x) >> (var_0.x % 32u), all(vec4<bool>(var_4.x, true, false, var_4.x)) || all(vec2<bool>(true, var_4.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_2()).zyy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-486f, 957f, -271f), vec3<f32>(-540f, -347f, -1811f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(-652f - 698f), -1031f))));
}


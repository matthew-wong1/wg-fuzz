struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = vec4<u32>(0u ^ _wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), 1u, select(~countOneBits(~15412u), 4294967295u, select(!select(true, false, true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), firstTrailingBit(max(29673u, u_input.a)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1295f, 152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-986f + 582f) + -265f))));
    var var_2 = firstTrailingBit(u_input.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f + -519f) * -680f);
    var_2 = ~u_input.a;
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> i32 {
    var var_0 = arg_2;
    var_0 = Struct_4(any(vec3<bool>(true, true, false)), var_0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c, -63565i, 39521i) | max(vec3<i32>(-1i, arg_2.c, 0i), vec3<i32>(var_0.c, 0i, arg_2.c)), countOneBits(vec3<i32>(-2147483647i, 2147483647i, 2147483647i))));
    var var_1 = arg_0 > -861f;
    var var_2 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(var_0.b.c.a), ~select(var_0.b.c.a, vec3<u32>(1u, u_input.a, 4294967295u), vec3<bool>(var_0.a, true, false))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.c.a.x, u_input.a, 33021u), var_0.b.c.a), var_0.b.a.a)), false, var_0.a && !(!any(vec3<bool>(true, arg_2.a, arg_2.b.d))));
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~32448u << (~arg_3 % 32u)), arg_2.b.a.a.x, var_0.b.c.a.x), ~(~(~(~var_2.a))));
    return arg_2.c;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(arg_1, Struct_1(firstTrailingBit(arg_1.a), any(select(!vec4<bool>(true, arg_3, true, true), select(vec4<bool>(arg_1.b, false, arg_3, arg_3), vec4<bool>(false, false, true, true), vec4<bool>(false, true, arg_3, false)), !vec4<bool>(arg_3, arg_3, arg_1.b, true))), false), arg_1, arg_1.b);
    var var_1 = 652f;
    var_0 = Struct_2(Struct_1(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, arg_1.a.x, 34969u), var_0.c.a), 0i == arg_2, true), var_0.a, arg_1, !var_0.a.b);
    var var_2 = -2147483647i;
    var_2 = -_wgslsmith_mod_i32(func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(sign(arg_0))), func_3(), Struct_4(all(vec2<bool>(true, var_0.c.b)), Struct_2(Struct_1(vec3<u32>(u_input.a, 17108u, u_input.a), false, false), Struct_1(var_0.b.a, var_0.d, var_0.c.c), var_0.a, arg_3), 1i), abs(~37782u)), abs(min(arg_2, -1i)));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return 89478u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(~arg_1.zyz, vec3<u32>(~firstTrailingBit(arg_1.x), func_5(Struct_3(vec2<f32>(-339f, 710f), Struct_2(Struct_1(arg_1.zzx, arg_2, false), Struct_1(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), arg_2, arg_0.x), Struct_1(arg_1.yyw, arg_0.x, arg_0.x), false)), true, Struct_1(arg_1.zxx, arg_2, true), func_2(1000f, Struct_1(arg_1.wwy, arg_0.x, arg_0.x), 2147483647i, false)), 63104u)) <= firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(21451u), arg_1.x));
    var_0 = false;
    let var_1 = arg_2;
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(714f, -1200f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, -2937f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, -311f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1029f, -766f))))), Struct_2(Struct_1(~countOneBits(arg_1.ywy), all(vec2<bool>(arg_2, false)), true), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f * -433f)), Struct_1(~vec3<u32>(12069u, 1u, 6603u), !var_1, !arg_2), (i32(-1i) * -27926i) << (u_input.a % 32u), _wgslsmith_f_op_f32(-196f * 156f) == _wgslsmith_f_op_f32(step(-475f, -676f))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f * 1386f)), Struct_1(arg_1.xzw, true, false), 55353i, arg_2), arg_0.x));
    let var_3 = max(~var_2.b.b.a, _wgslsmith_sub_vec3_u32((var_2.b.c.a << (vec3<u32>(0u, arg_1.x, 1u) % vec3<u32>(32u))) & ~select(vec3<u32>(11979u, 4294967295u, 47095u), vec3<u32>(103404u, var_2.b.b.a.x, u_input.a), arg_0.ywz), vec3<u32>(var_2.b.c.a.x, ~45736u, _wgslsmith_add_u32(~12276u, 0u ^ u_input.a))));
    return vec3<u32>(~min(~arg_1.x, abs(0u)), u_input.a, u_input.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_3 {
    let var_0 = min(1i, select(0i, 11209i, true));
    let var_1 = arg_2.b.c;
    let var_2 = vec2<u32>(_wgslsmith_div_u32(var_1.a.x & (~arg_2.b.c.a.x | 1u), ~func_2(_wgslsmith_f_op_f32(f32(-1f) * -665f), func_2(-1000f, arg_1, 0i, false), ~arg_0.x, 1u >= arg_1.a.x).a.x), 53776u);
    var var_3 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(arg_1.a, ~arg_1.a), true, !any(vec4<bool>(var_1.c, false, false, false))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1757f))), arg_2.b.b, countOneBits(-24947i), true), func_2(_wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) * _wgslsmith_f_op_f32(abs(437f)))), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -134f), -317f)), Struct_1(arg_1.a, any(vec4<bool>(arg_1.c, arg_2.b.b.c, true, true)), true), 2147483647i, arg_0.x < ~(-23886i)), reverseBits(firstTrailingBit(var_0) ^ min(arg_0.x, arg_0.x)), ~var_0 == arg_0.x), any(select(!select(vec4<bool>(var_1.b, false, var_1.b, arg_2.a), vec4<bool>(true, true, true, arg_1.c), vec4<bool>(true, true, false, true)), vec4<bool>(any(vec4<bool>(arg_1.b, false, var_1.b, false)), true, arg_2.b.d, false), vec4<bool>(true, arg_1.c, true, true))));
    var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), var_1.a), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.c.a.x, arg_2.b.b.a.x, u_input.a) >> (var_3.a.a % vec3<u32>(32u)), func_1(vec4<bool>(true, var_3.a.c, var_3.b.b, var_1.c), vec4<u32>(arg_1.a.x, 38801u, 1u, 8038u), true))), true && arg_1.c, all(!select(vec4<bool>(arg_1.b, arg_2.b.a.c, arg_2.a, false), vec4<bool>(true, false, arg_2.b.a.b, var_1.c), vec4<bool>(var_1.b, true, false, true)))), arg_1, Struct_1(~(~_wgslsmith_div_vec3_u32(arg_2.b.c.a, vec3<u32>(var_3.c.a.x, 1u, 4294967295u))), all(!(!vec2<bool>(true, arg_1.c))), !arg_1.b && false), true);
    return Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, 506f)))), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~(~(vec3<i32>(-1i) * -vec3<i32>(0i, -24581i, 1i))), Struct_1(abs(select(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), true) >> (func_1(vec4<bool>(false, false, true, false), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), false) % vec3<u32>(32u))), true, true), Struct_4(true, Struct_2(func_2(_wgslsmith_f_op_f32(floor(1068f)), func_2(-166f, Struct_1(vec3<u32>(u_input.a, 307u, 34349u), false, true), -15180i, true), _wgslsmith_sub_i32(-2147483647i, -2945i), any(vec2<bool>(false, false))), func_2(_wgslsmith_div_f32(1446f, -559f), Struct_1(vec3<u32>(u_input.a, u_input.a, 130921u), true, false), -2147483647i, true), Struct_1(~vec3<u32>(0u, 76088u, u_input.a), true, true), true), 35064i));
    let var_1 = Struct_4(var_0.b.c.b, var_0.b, -_wgslsmith_mod_i32(~_wgslsmith_mod_i32(23311i, -2147483647i), min(firstTrailingBit(-1i), ~0i)));
    let var_2 = func_6(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c, var_1.c, var_1.c), _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1.c, var_1.c, -1i), vec3<i32>(1i, var_1.c, 15887i)))), Struct_1(vec3<u32>(119948u, var_0.b.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 56840u, var_0.b.b.a.x, 45540u) >> (vec4<u32>(57215u, 80370u, var_0.b.a.a.x, u_input.a) % vec4<u32>(32u)), vec4<u32>(var_0.b.a.a.x, u_input.a, var_0.b.a.a.x, var_0.b.c.a.x))), true, var_0.b.a.c), var_1).b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, var_2.c.b))))), var_0.a.x, 266f, var_0.a.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.x, 628f))))), Struct_2(func_2(var_3.x, var_2.a, _wgslsmith_mod_i32(-var_1.c, firstLeadingBit(var_1.c)), select(all(vec4<bool>(false, false, false, var_1.a)), var_2.c.c, var_1.a)), var_1.b.b, Struct_1(~vec3<u32>(67389u, var_0.b.a.a.x, 1u), any(!vec3<bool>(var_0.b.b.c, true, true)), var_2.d), true));
    let x = u_input.a;
    s_output = StorageBuffer(1209f);
}


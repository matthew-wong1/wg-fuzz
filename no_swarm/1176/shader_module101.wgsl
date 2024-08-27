struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(firstTrailingBit(u_input.c.wz), u_input.c.x < (max(max(12337i, 0i), u_input.c.x) ^ _wgslsmith_dot_vec4_i32(u_input.c, u_input.c ^ vec4<i32>(99i, u_input.c.x, -24805i, -6690i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-601f, -1280f, 1148f) * vec3<f32>(-1267f, 316f, -1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-467f, -1000f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2173f, -639f, 1000f, 1164f), vec4<f32>(-668f, 108f, -2571f, -714f), vec4<bool>(true, true, true, true))))))), min(max(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, -4806i), u_input.c, vec4<i32>(-2147483647i, u_input.c.x, 38531i, u_input.c.x)), u_input.c), u_input.c), countOneBits(vec4<i32>(u_input.c.x, abs(u_input.c.x), select(2147483647i, u_input.c.x, false), 182i))));
    var_0 = Struct_1(reverseBits(-(~u_input.c.yy)), false, _wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f - 387f)), var_0.d.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-224f + -1551f), _wgslsmith_f_op_f32(sign(-127f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.c.x, var_0.d.x, 704f)))) - vec4<f32>(_wgslsmith_div_f32(-216f, -459f), _wgslsmith_f_op_f32(min(-624f, -1634f)), _wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(-var_0.d.x))))), u_input.c);
    var_0 = Struct_1(_wgslsmith_mod_vec2_i32(select(var_0.e.xx, u_input.c.wz, select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true), true)), u_input.c.yy), min(var_0.a.x ^ _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), -49527i) == u_input.c.x, var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - var_0.d), u_input.c);
    let var_1 = Struct_2(vec2<u32>(u_input.b, 0u));
    var_0 = Struct_1(var_0.a, !var_0.b, _wgslsmith_f_op_vec3_f32(var_0.d.zxx - _wgslsmith_f_op_vec3_f32(vec3<f32>(-824f, _wgslsmith_f_op_f32(floor(-103f)), _wgslsmith_f_op_f32(f32(-1f) * -714f)) * var_0.d.yxw)), _wgslsmith_f_op_vec4_f32(-var_0.d), abs(var_0.e));
    return reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.a, ~vec2<u32>(0u, 27669u)), u_input.b, ~1u));
}

fn func_2() -> u32 {
    let var_0 = Struct_5(Struct_3(u_input.a >> (4294967295u % 32u)));
    let var_1 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, ~1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mod_u32(4294967295u, 553u), _wgslsmith_add_u32(u_input.a, 10296u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_0.a.a, var_0.a.a), ~vec3<u32>(var_0.a.a, 0u, 66564u))) | func_3());
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    let var_3 = Struct_2(firstLeadingBit(func_3().xy));
    var var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1202f, 1053f) - vec2<f32>(673f, 237f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, var_2), vec2<f32>(var_2, -1196f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -970f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, 1443f), vec2<f32>(101f, var_2))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-724f, 1098f)))))))));
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>) -> Struct_5 {
    let var_0 = true;
    var var_1 = vec2<u32>(_wgslsmith_add_u32(~6152u, 0u), ~_wgslsmith_mult_u32(1u, func_2())) | _wgslsmith_div_vec2_u32(vec2<u32>(~countOneBits(arg_0), ~u_input.b), _wgslsmith_add_vec2_u32(func_3().yy, vec2<u32>(u_input.b, ~arg_0)));
    var_1 = ~min(select(vec2<u32>(arg_0 >> (u_input.b % 32u), func_2()), _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.b, var_1.x), vec2<u32>(0u, u_input.a)), min(vec2<u32>(11085u, arg_0), vec2<u32>(arg_0, arg_0))), vec2<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(var_0, false)))), vec2<u32>(min(56607u << (0u % 32u), arg_0), firstLeadingBit(var_1.x) ^ var_1.x));
    var var_2 = _wgslsmith_sub_u32(~30816u << (reverseBits(_wgslsmith_clamp_u32(4294967295u, ~var_1.x, _wgslsmith_mult_u32(36961u, 0u))) % 32u), ~arg_0);
    let var_3 = Struct_1(u_input.c.yw, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1876f, -1513f, 906f), vec3<f32>(874f, 796f, 1000f), vec3<bool>(arg_1.x, false, arg_1.x))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, -304f, 1000f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-360f, 365f, -1416f), vec3<f32>(367f, 114f, 975f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1601f, -895f, 376f, -759f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-579f, 1030f, -1594f, -237f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1106f, -645f, 869f, 140f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1561f, _wgslsmith_f_op_f32(f32(-1f) * -1630f), 294f, _wgslsmith_f_op_f32(312f + -1418f)), vec4<f32>(-502f, _wgslsmith_f_op_f32(654f + -494f), _wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(1000f - -1683f))))), u_input.c);
    return Struct_5(Struct_3(19806u >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x << (u_input.a % 32u);
    var var_1 = func_1(_wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(0u, 28329u, 58613u)), u_input.a), vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1332f - 1000f))) >= _wgslsmith_f_op_f32(f32(-1f) * -1310f)), abs((vec3<i32>(-1i) * -vec3<i32>(var_0, 76066i, var_0)) << (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_mult_i32(var_0 & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0, _wgslsmith_sub_i32(var_0, -2147483647i)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-37973i, -24911i, var_0, var_0), vec4<i32>(-9587i, var_0, -28484i, var_0)), reverseBits(var_0)), var_0), -1i);
    var_1 = Struct_5(Struct_3(u_input.b));
    var_1 = func_1(var_1.a.a, !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, u_input.b == 10861u, true)), ~u_input.c.wxw);
    var_1 = func_1(_wgslsmith_div_u32(var_1.a.a, 1u), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), vec3<bool>(false, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true)), 2147483647i <= max(var_0, -1i)), true), _wgslsmith_clamp_vec3_i32(u_input.c.www, abs(-(u_input.c.ywy | u_input.c.yxw)), _wgslsmith_sub_vec3_i32(countOneBits(u_input.c.zyz), vec3<i32>(-1i) * -vec3<i32>(-35412i, -6604i, var_2))));
    var_1 = func_1(0u, select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true), false), vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(false, true, false)), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), u_input.c.xzz);
    var_1 = func_1(u_input.a, vec3<bool>(true, true, !(all(vec3<bool>(true, true, false)) || all(vec3<bool>(true, true, false)))), vec3<i32>(var_0, min(_wgslsmith_sub_i32(~1i, ~u_input.c.x), var_2), _wgslsmith_sub_i32(~max(var_2, 18757i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(1032f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-857f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(530f, 624f))))), _wgslsmith_mult_vec4_u32(firstLeadingBit(~(~vec4<u32>(1u, u_input.b, 16807u, 4294967295u))), vec4<u32>(11292u, min(u_input.b, 1u), countOneBits(u_input.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.a.a, u_input.b), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1559f))))), reverseBits(func_3().zy));
}


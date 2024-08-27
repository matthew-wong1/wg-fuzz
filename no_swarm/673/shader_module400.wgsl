struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(any(select(select(vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0)), vec4<bool>(any(vec3<bool>(false, arg_0, arg_0)), all(vec2<bool>(arg_0, true)), arg_0, false), vec4<bool>(true, true, true, true))), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, 29829i)) & _wgslsmith_mod_i32(u_input.b, 5325i), u_input.c.x), -max(_wgslsmith_clamp_i32(u_input.c.x, -2147483647i, u_input.b), firstLeadingBit(21614i))), u_input.c);
    var var_1 = Struct_1(false, u_input.c.zx, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(u_input.c), vec4<i32>(-u_input.b, firstTrailingBit(u_input.b), ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, -2147483647i), var_0.b))), select(-vec4<i32>(0i, var_0.c.x, 1i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1721i, 59260i, 2147483647i, 1i) ^ vec4<i32>(u_input.b, u_input.c.x, 52034i, var_0.b.x), ~u_input.c), !select(vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(arg_0, var_0.a, var_0.a, true)))));
    var var_2 = 58084u;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(350f - -1864f), _wgslsmith_f_op_f32(-529f + -1684f), _wgslsmith_f_op_f32(floor(903f)), _wgslsmith_f_op_f32(abs(-759f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, -337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) - -527f), _wgslsmith_f_op_f32(1433f * -1616f))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - -772f)), var_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)), select(vec2<bool>(true, true), !(!vec2<bool>(true, var_0.a)), select(vec2<bool>(true, false), select(!vec2<bool>(true, arg_0), select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, true), vec2<bool>(var_0.a, false)), !vec2<bool>(var_0.a, var_1.a)), var_1.a))));
    return !vec4<bool>(!var_0.a, var_0.a, !arg_0 || (var_1.a != true), var_0.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = any(select(select(vec4<bool>(any(vec4<bool>(arg_2.a, arg_1.a, true, true)), arg_1.a, false, arg_3), select(vec4<bool>(false, true, false, false), !vec4<bool>(arg_1.a, arg_3, true, true), !vec4<bool>(true, false, arg_2.a, arg_2.a)), !vec4<bool>(arg_3, false, arg_1.a, false)), select(func_3(arg_1.a), vec4<bool>(arg_2.a, any(vec3<bool>(false, true, false)), !arg_3, arg_3 || false), !select(vec4<bool>(true, arg_2.a, arg_3, arg_3), vec4<bool>(arg_1.a, true, true, true), vec4<bool>(arg_2.a, true, false, arg_2.a))), true));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-263f, -458f, -1229f, 829f), vec4<f32>(-386f, 1587f, 1000f, -1794f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -1639f, 638f) * vec4<f32>(1582f, 2367f, 1806f, -559f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, -2908f, 208f, 446f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1594f, 1375f, _wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(564f, -630f))))), var_1.a));
    var var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 15846u) & vec3<u32>(u_input.a.x, 106909u, 0u), abs(vec3<u32>(u_input.a.x, 4294967295u, 0u))), u_input.a.x, u_input.a.x), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 0u), vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x)), vec4<u32>(1u, 1u, 1u, 92033u) & vec4<u32>(u_input.a.x, 0u, 8642u, 1u))), ~(~vec4<u32>(reverseBits(50151u), ~u_input.a.x, 0u, u_input.a.x)));
    var_1 = arg_1;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(0i, u_input.b), ~firstTrailingBit(u_input.b)), -22359i), abs(abs(_wgslsmith_sub_vec4_i32(min(u_input.c, u_input.c), vec4<i32>(1i, u_input.b, u_input.c.x, u_input.b)))));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(func_2(50679i, Struct_1(var_0.a, ~u_input.c.yx, u_input.c), Struct_1(true || var_0.a, u_input.c.yx >> (vec2<u32>(1u, 44542u) % vec2<u32>(32u)), ~vec4<i32>(0i, 12894i, 2147483647i, var_0.b.x)), var_0.a), select(_wgslsmith_mod_i32(52798i, -22393i), u_input.b, all(vec4<bool>(false, var_0.a, var_0.a, false)))), 1i, i32(-1i) * -reverseBits(-2147483647i | var_0.c.x));
    var var_2 = select(vec4<bool>(select(all(vec4<bool>(var_0.a, var_0.a, false, true)), !all(vec4<bool>(false, false, var_0.a, var_0.a)), true && (317f >= arg_0)), false, true, !var_0.a), !(!vec4<bool>(true, true, var_0.a, arg_1.x <= 1038f)), false && var_0.a);
    var var_3 = Struct_1(true, vec2<i32>(1i, var_1.x), u_input.c);
    let var_4 = Struct_1(true || (1u < u_input.a.x), var_1.zz, firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b, min(-1i, 17631i), min(-2147483647i, var_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-23755i, -4248i, var_1.x), u_input.c.ywz)), countOneBits(min(vec4<i32>(var_3.b.x, -1i, 39027i, var_3.c.x), vec4<i32>(-89317i, -5691i, var_0.c.x, u_input.c.x))), vec4<i32>(-63981i, u_input.b, var_0.c.x, 2147483647i) | _wgslsmith_div_vec4_i32(var_3.c, vec4<i32>(2147483647i, var_0.b.x, 75966i, -17758i)))));
    return Struct_1(true, vec2<i32>(var_0.b.x << (u_input.a.x % 32u), var_3.b.x), reverseBits((firstTrailingBit(u_input.c) << ((vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) ^ vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))) >> (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4729u, 0u, 45629u), vec4<u32>(21182u, 0u, 9590u, u_input.a.x))) % vec4<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1703f, 1000f, arg_0) * vec4<f32>(1882f, arg_0, 1428f, -900f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1095f), -1174f, true)), -107f, _wgslsmith_f_op_f32(round(-482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-973f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(608f + 1184f), -965f, _wgslsmith_f_op_f32(sign(1605f)), _wgslsmith_div_f32(-118f, 1155f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1443f, _wgslsmith_f_op_f32(arg_0 + -305f), arg_0, var_0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -1609f, var_0.x, var_0.x), vec4<f32>(arg_0, -380f, -320f, 1000f))))))), _wgslsmith_f_op_f32(f32(-1f) * -588f) >= var_0.x));
    let var_2 = func_1(-643f, var_1);
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -604f), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1056f, var_0.x))), _wgslsmith_f_op_f32(-arg_0))));
    return vec3<bool>(var_2.a, any(!select(!vec3<bool>(arg_1.a, arg_1.a, var_2.a), vec3<bool>(var_2.a, true, arg_1.a), func_3(true).xyy)), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!func_4(_wgslsmith_f_op_f32(select(-2474f, _wgslsmith_f_op_f32(f32(-1f) * -108f), false)), func_1(_wgslsmith_f_op_f32(floor(-126f)), vec4<f32>(685f, -578f, 1000f, 234f))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(310f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1734f)) * _wgslsmith_f_op_f32(1580f * 1323f)), true, true), true);
    let var_1 = (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c.x), u_input.c.yzx, vec3<i32>(u_input.c.x, u_input.c.x, -45311i))) ^ -func_1(326f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(678f, 164f, 1318f, 650f), vec4<f32>(-967f, 496f, 841f, 606f), var_0.x)))).c.zyw;
    var var_2 = func_3(true || !all(func_3(var_0.x).wz)).xx;
    var var_3 = vec2<bool>(var_2.x, all(select(func_3(false), vec4<bool>(var_2.x && var_2.x, true, true, var_2.x), _wgslsmith_sub_i32(u_input.b, u_input.c.x) > _wgslsmith_div_i32(-1i, -2147483647i))));
    var_3 = !func_3(var_3.x).yx;
    var_3 = vec2<bool>(true, any(select(!(!vec3<bool>(var_2.x, var_2.x, var_0.x)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -496f), Struct_1(var_3.x, vec2<i32>(u_input.b, 2147483647i), u_input.c)), select(func_4(263f, Struct_1(false, u_input.c.zz, vec4<i32>(2147483647i, -2147483647i, var_1.x, 2147483647i))), select(vec3<bool>(var_0.x, var_2.x, var_2.x), vec3<bool>(var_0.x, var_3.x, true), var_0), !var_3.x))));
    let var_4 = vec3<i32>(u_input.c.x, -2147483647i, abs(abs(var_1.x)));
    let var_5 = Struct_1(true, select(~(-vec2<i32>(var_1.x, -18519i)) | vec2<i32>(reverseBits(var_4.x), abs(var_1.x)), _wgslsmith_clamp_vec2_i32(~var_4.zy, u_input.c.wx, var_4.yy), var_0.yz), -u_input.c);
    var_2 = !var_0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(0i), -17541i, reverseBits(vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 47277u), vec3<u32>(39420u, u_input.a.x, u_input.a.x)), u_input.a.x), select(max(84373u, u_input.a.x), ~u_input.a.x, var_3.x || var_3.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-897f)))), vec4<u32>(u_input.a.x, 8007u, u_input.a.x, min(max(u_input.a.x, 1u), firstLeadingBit(u_input.a.x))) | vec4<u32>(_wgslsmith_mod_u32(u_input.a.x << (4294967295u % 32u), 1u), abs(abs(18904u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 34768u, 5322u), ~vec3<u32>(23254u, 141933u, u_input.a.x)), 490u));
}


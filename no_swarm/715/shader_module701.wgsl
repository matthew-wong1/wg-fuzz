struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(false, ~u_input.e.x < 52000i);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-715f - -1009f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1386f, 1000f, true)))), -572f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, 1000f)) - vec2<f32>(376f, -1209f)))))));
    var_0 = !(!(!vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(false, false, var_0.x))));
    let var_2 = Struct_2(!select(vec3<bool>(all(vec4<bool>(true, false, var_0.x, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true), vec3<bool>(var_0.x, var_0.x & false, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), any(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, false, true, true)))), (~1u ^ u_input.b.x) & ~u_input.b.x, (~(-u_input.e.xy) | vec2<i32>(0i, -u_input.e.x)) ^ abs(u_input.e.xw));
    var_0 = select(select(!select(select(var_2.a.zy, vec2<bool>(true, false), true), select(vec2<bool>(true, var_2.a.x), vec2<bool>(true, false), var_2.a.yy), any(vec4<bool>(var_2.a.x, false, false, false))), vec2<bool>(any(vec2<bool>(var_2.a.x, var_0.x)), true), !var_2.a.xx), vec2<bool>(select(true, var_1.x != 1906f, !var_0.x) || (!var_0.x & var_0.x), any(!vec3<bool>(var_0.x, var_0.x, var_2.a.x))), !var_2.a.xz);
    return var_2.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = select(all(select(vec4<bool>(false, false, false, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(true, true, true)))), !all(vec2<bool>(true, true)), true);
    var var_1 = select(all(vec3<bool>(true, false, !func_3())), true, true);
    let var_2 = select(select(select(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, all(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false)), all(vec2<bool>(false, true))), vec4<bool>(select(true, true, true), (u_input.d >> (1000u % 32u)) > 2147483647i, false, true), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), true)), select(vec4<bool>(true, false, true, firstTrailingBit(106174u) > max(u_input.c, u_input.b.x)), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false)), true), u_input.d == firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.d, 1i), _wgslsmith_sub_vec4_i32(u_input.e, u_input.e))));
    var_1 = var_2.x;
    var_0 = all(vec4<bool>(var_2.x, !var_2.x, !var_2.x, 454f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(795f)), _wgslsmith_f_op_f32(min(-339f, 890f)))));
    return Struct_1(abs(-1i), 80203u, vec4<f32>(921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(961f)) * _wgslsmith_f_op_f32(max(-846f, -812f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(645f, -458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(672f * 196f)) - -189f)), -1000f, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.c, firstLeadingBit(_wgslsmith_div_u32(9977u, u_input.b.x))), ~select(~vec3<u32>(u_input.c, 18623u, 7978u), ~vec3<u32>(u_input.b.x, u_input.c, 1u), select(var_2.yxw, var_2.xzx, true))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = u_input.e;
    var var_1 = func_2();
    var var_2 = arg_2;
    var_2 = Struct_1(func_2().a, 10033u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1474f)) * arg_2.d), -1898f, var_1.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(143f * 1030f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.c.x)), var_2.c.x)), ~select(arg_2.e, countOneBits(var_2.e), !select(arg_1, arg_0.zyx, true)));
    var var_3 = Struct_2(select(!select(arg_0.zxw, select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, false, true), arg_1.x), true), arg_0.xwz, select(arg_1, !select(vec3<bool>(true, arg_0.x, arg_0.x), arg_1, arg_0.x), !func_3())), _wgslsmith_dot_vec2_u32(reverseBits(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, 0u), var_2.e.zy, arg_2.e.yx))), vec2<u32>(_wgslsmith_mod_u32(abs(var_1.e.x), var_2.b), u_input.c)), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(var_2.a, 28292i), _wgslsmith_mult_vec2_i32(var_0.xy, var_0.wx)), ~vec2<i32>(24610i, -21358i))));
    return max(max(reverseBits(max(~vec4<u32>(97889u, 0u, 62110u, 0u), vec4<u32>(u_input.b.x, 0u, 4294967295u, var_1.b) ^ vec4<u32>(u_input.b.x, 0u, arg_2.e.x, 15180u))), ~abs(~vec4<u32>(var_2.e.x, var_1.e.x, 14754u, var_1.e.x))), vec4<u32>(var_1.e.x, 40409u, _wgslsmith_dot_vec2_u32(~var_1.e.zz, vec2<u32>(var_2.e.x, 6128u)), func_2().e.x ^ 16963u) | _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_1.e.x, 50847u, 4294967295u, 124286u)), reverseBits(vec4<u32>(140984u, arg_2.b, var_2.b, 50323u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(func_1(vec4<bool>(true, true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), Struct_1(u_input.d, u_input.c, vec4<f32>(743f, -1000f, 1449f, 1000f), 2002f, vec3<u32>(u_input.c, 79600u, u_input.c)), u_input.b.x != u_input.b.x), func_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), vec3<bool>(true, true, true), Struct_1(11565i, u_input.c, vec4<f32>(-887f, 1000f, -1456f, 2242f), 778f, vec3<u32>(4294967295u, 41115u, 47782u)), any(vec4<bool>(false, true, false, false)))) ^ 43056u;
    var var_1 = Struct_3(Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.c <= 16779u), vec3<bool>(true, true, true), true), func_2().e.x, u_input.e.yw), Struct_2(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(true, false, true)), u_input.b.x, u_input.e.zy), !select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)) - _wgslsmith_f_op_f32(max(835f, _wgslsmith_f_op_f32(ceil(885f)))))));
    var_0 = var_1.a.b;
    var_1 = Struct_3(Struct_2(vec3<bool>(var_1.b.a.x, any(var_1.b.a.xy), false), ~(~u_input.b.x), ~(firstLeadingBit(u_input.e.xy) << (vec2<u32>(4294967295u, var_1.a.b) % vec2<u32>(32u)))), Struct_2(vec3<bool>(true, (true && var_1.b.a.x) || var_1.a.a.x, all(!vec2<bool>(var_1.a.a.x, var_1.c.x))), 4294967295u, u_input.e.wz), select(vec2<bool>(-var_1.b.c.x >= (u_input.e.x ^ u_input.a), var_1.a.a.x), select(select(vec2<bool>(var_1.b.a.x, false), select(var_1.c, var_1.a.a.yy, vec2<bool>(var_1.c.x, var_1.a.a.x)), any(var_1.b.a)), vec2<bool>(var_1.b.a.x, true), all(!vec4<bool>(false, true, var_1.a.a.x, var_1.c.x))), var_1.c), -1413f);
    var_0 = var_1.a.b;
    var_1 = Struct_3(Struct_2(select(vec3<bool>(func_3(), func_3(), true), vec3<bool>(680f != var_1.d, var_1.b.a.x || var_1.b.a.x, true | var_1.b.a.x), var_1.a.a), func_2().e.x, vec2<i32>(_wgslsmith_div_i32(u_input.e.x, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(reverseBits(var_1.a.c.x), var_1.a.c.x))), Struct_2(vec3<bool>((var_1.c.x || var_1.b.a.x) | (var_1.c.x != true), var_1.a.c.x <= _wgslsmith_mod_i32(20664i, -21440i), ~0u <= func_1(vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.a.a.x), vec3<bool>(var_1.b.a.x, true, var_1.c.x), Struct_1(-1i, 27698u, vec4<f32>(var_1.d, 896f, 1200f, var_1.d), var_1.d, vec3<u32>(1u, 4294967295u, 1u)), var_1.a.a.x).x), u_input.b.x, _wgslsmith_div_vec2_i32(var_1.a.c | _wgslsmith_mult_vec2_i32(u_input.e.wx, var_1.a.c), abs(vec2<i32>(-1i, 4369i)))), !var_1.b.a.yx, _wgslsmith_f_op_f32(step(312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-804f, var_1.d))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, var_1.d)) + _wgslsmith_f_op_f32(step(1044f, var_1.d)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + var_1.d)))));
    let var_3 = vec3<u32>(reverseBits(abs(var_1.b.b)) | ~_wgslsmith_mult_u32(~u_input.b.x, 1u), _wgslsmith_div_u32(16893u, _wgslsmith_add_u32(var_1.a.b, abs(_wgslsmith_mod_u32(61033u, 1u)))), _wgslsmith_dot_vec2_u32(~(~reverseBits(u_input.b)), select(vec2<u32>(var_1.b.b, 37070u), u_input.b, select(vec2<bool>(false, var_1.c.x), vec2<bool>(false, var_1.a.a.x), false)) & (u_input.b & ~vec2<u32>(var_1.a.b, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-54866i, max(countOneBits(u_input.e.x), _wgslsmith_clamp_i32(u_input.d, 39253i, u_input.a))), var_3);
}


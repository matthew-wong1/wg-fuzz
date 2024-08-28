struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = select(select(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 58188i, 2147483647i, -1i), vec4<i32>(34430i, 3549i, 2147483647i, 28738i)) << (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(vec3<bool>(true, false, false)), true, any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)))), vec4<i32>(_wgslsmith_sub_i32(abs(-36191i), 3851i), _wgslsmith_div_i32(-49606i, 1i) << (u_input.a.x % 32u), -(2147483647i >> (u_input.a.x % 32u)), _wgslsmith_mult_i32(select(44436i, 0i, false), 48717i)) & vec4<i32>(firstTrailingBit(~(-5608i)), max(2147483647i, ~1i), max(countOneBits(-44020i), -64335i), _wgslsmith_div_i32(~25729i, -5513i)), !(!vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)), true, false)));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(4294967295u, u_input.a.x) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), vec2<u32>(26239u, ~u_input.a.x)));
    let var_2 = vec3<u32>(~(~_wgslsmith_div_u32(select(var_1.x, var_1.x, false), 18812u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(7673u, 4294967295u)), vec2<u32>(var_1.x, var_1.x)) >> (_wgslsmith_dot_vec2_u32(var_1, vec2<u32>(~var_1.x, 1u)) % 32u), ~(~u_input.a.x) | _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) | var_1.x, 0u >> (u_input.a.x % 32u)));
    let var_3 = ~var_0.x;
    let var_4 = false;
    return select(vec4<bool>(var_4, any(vec3<bool>(true, true, true)), false, var_4), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, var_4, false), !vec4<bool>(false, true, var_4, var_4)), !select(vec4<bool>(var_4, var_4, false, false), vec4<bool>(var_4, var_4, true, true), vec4<bool>(var_4, true, false, var_4)), all(vec3<bool>(var_4, var_4, var_4)) | all(vec4<bool>(var_4, var_4, false, false))), select(vec4<bool>(var_4, var_0.x != var_3, select(any(vec4<bool>(false, var_4, var_4, false)), true, any(vec3<bool>(var_4, true, false))), abs(25141u) < select(u_input.a.x, 0u, var_4)), select(vec4<bool>(var_4 | var_4, !var_4, true, var_4), vec4<bool>(!var_4, var_4 & var_4, all(vec4<bool>(var_4, var_4, var_4, var_4)), true), _wgslsmith_clamp_u32(var_1.x, var_2.x, 1u) >= _wgslsmith_mult_u32(52612u, u_input.a.x)), !select(!vec4<bool>(false, false, true, var_4), !vec4<bool>(false, true, var_4, var_4), true)));
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = Struct_5(Struct_3(Struct_1(26656u, _wgslsmith_div_i32(i32(-1i) * -3183i, -18254i), vec3<f32>(-816f, 1000f, 539f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(175f, 645f, -617f) - vec3<f32>(-687f, 1000f, 1051f)))), func_3(), Struct_1(10031u, 1i, vec3<f32>(_wgslsmith_f_op_f32(700f - 216f), -1112f, -565f), vec3<f32>(_wgslsmith_f_op_f32(-439f + -835f), 2486f, _wgslsmith_f_op_f32(834f - -140f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-840f, -922f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(402f, 757f) * vec2<f32>(-2478f, -1256f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-632f)) * _wgslsmith_f_op_f32(f32(-1f) * -209f)), -1000f)), Struct_4(vec4<u32>(abs(~arg_0), 41985u, _wgslsmith_mult_u32(63891u ^ arg_0, ~u_input.a.x), firstTrailingBit(arg_0 | 1u)), vec3<bool>(true, true, true), abs(_wgslsmith_dot_vec2_u32(~u_input.a.xy, ~u_input.a.zx)), select(select(~u_input.a, ~u_input.a, any(vec3<bool>(false, true, true))), min(u_input.a ^ vec4<u32>(1u, 31997u, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, arg_0, arg_0, arg_0)), true)), Struct_3(Struct_1(4294967295u, 5070i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(248f, 802f, -249f), vec3<f32>(-803f, 456f, 905f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -1674f, -1271f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2963f, 610f, -779f)) - vec3<f32>(-1000f, 256f, -137f))), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), true, !any(vec2<bool>(true, true)), false), Struct_1(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(arg_0, arg_0, u_input.a.x)), ~max(-1i, -5067i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2196f, 246f, -375f) - vec3<f32>(954f, -653f, -296f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(993f, 658f, -1000f) - vec3<f32>(-148f, 200f, -607f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, -1838f, -204f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, -582f))))), 196f));
    var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_mult_u32(~arg_0, 60162u), var_0.a.a.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -813f), var_0.c.d.x, -327f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-694f, var_0.c.d.x, var_0.c.c.d.x))), vec4<bool>(false, true, var_0.c.b.x, any(!var_0.c.b.ww)), var_0.a.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-359f, var_0.c.d.x) * var_0.a.d))))), var_0.c.d.x), Struct_4(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.b.d.x, 13917u), abs(vec4<u32>(var_0.b.d.x, arg_0, u_input.a.x, 4294967295u))), !var_0.a.b.yzz, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), u_input.a ^ vec4<u32>(4294967295u, var_0.c.a.a, arg_0, arg_0)), 1u), ~(~max(var_0.b.a, u_input.a))), Struct_3(var_0.a.c, vec4<bool>(all(func_3().yz), var_0.a.b.x || any(var_0.b.b), -1015f >= _wgslsmith_f_op_f32(var_0.a.a.d.x + var_0.a.e), true), Struct_1(countOneBits(var_0.c.a.a), ~(-11550i), _wgslsmith_f_op_vec3_f32(-var_0.c.a.d), _wgslsmith_f_op_vec3_f32(max(var_0.c.c.c, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-404f, -818f, var_0.c.d.x)))))), var_0.a.a.d.zx, 1000f));
    return Struct_5(var_0.c, Struct_4(abs(~abs(vec4<u32>(u_input.a.x, 14897u, 1u, 4294967295u))), var_0.b.b, arg_0, ~vec4<u32>(~var_0.b.d.x, 16931u, arg_0, _wgslsmith_dot_vec2_u32(u_input.a.yy, var_0.b.d.ww))), Struct_3(Struct_1(var_0.a.c.a << (1u % 32u), -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2380f, var_0.a.a.c.x, var_0.c.e)), var_0.c.a.c), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.e - 1000f), _wgslsmith_f_op_f32(var_0.c.c.c.x - var_0.c.a.d.x), var_0.a.c.d.x)), var_0.c.b, var_0.a.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2066f, -894f), var_0.a.c.c.zx)) - _wgslsmith_f_op_vec2_f32(-var_0.a.a.d.yx)), var_0.c.d)), 1338f));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.b.d;
    var var_1 = func_2(_wgslsmith_sub_u32(var_0.x, _wgslsmith_mod_u32(u_input.a.x | 79382u, min(23545u, u_input.a.x))) & 4294967295u).c;
    let var_2 = Struct_3(Struct_1(u_input.a.x, var_1.c.b, _wgslsmith_f_op_vec3_f32(-arg_0.c.c.c), _wgslsmith_f_op_vec3_f32(trunc(var_1.c.c))), var_1.b, Struct_1(_wgslsmith_mult_u32(5493u, 4294967295u << (abs(u_input.a.x) % 32u)), min(arg_0.c.c.b, _wgslsmith_mult_i32(arg_0.a.c.b, var_1.c.b) & arg_0.c.c.b), var_1.a.c, vec3<f32>(-1452f, arg_0.c.d.x, 665f)), _wgslsmith_f_op_vec2_f32(-arg_0.c.c.d.yx), arg_0.c.a.c.x);
    var_1 = Struct_3(func_2(9462u).a.a, func_3(), Struct_1(func_2(~1u ^ reverseBits(var_1.c.a)).a.c.a, -var_2.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e, var_2.a.d.x, -833f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1479f, -176f, -1477f) * vec3<f32>(arg_0.a.e, arg_0.a.e, arg_0.c.a.c.x)))) - var_2.c.c), var_1.a.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.c.x)), var_1.e), var_1.a.c.x);
    var_1 = Struct_3(var_1.a, !var_1.b, Struct_1(_wgslsmith_div_u32(4294967295u, u_input.a.x), select(var_2.a.b, -2147483647i, true), vec3<f32>(495f, var_1.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_0.a.a.c, var_1.a.c, var_2.b.xww)), _wgslsmith_f_op_vec3_f32(ceil(var_1.c.d))))))), _wgslsmith_f_op_vec2_f32(-var_2.a.d.zz), _wgslsmith_f_op_f32(abs(-457f)));
    return func_2(firstLeadingBit(u_input.a.x)).a.c;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(func_2(0u), vec3<i32>(reverseBits(func_2(~4294967295u).c.a.b), ~(-(2147483647i >> (0u % 32u))), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(-761i, 33177i, 1i, -13979i)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-16423i, 0i, -16i, 91345i)), max(vec4<i32>(22391i, -15901i, 2147483647i, -14097i), vec4<i32>(2147483647i, 38330i, 1i, 0i)), max(vec4<i32>(0i, 3681i, -18490i, -24260i), vec4<i32>(21266i, 76360i, 2147483647i, 675i))))));
    let var_1 = _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(505f * 1055f)));
    var var_2 = Struct_5(Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(54227u, 0u) & u_input.a.wx, func_2(0u).b.d.zx), _wgslsmith_div_i32(var_0.b, abs(var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.d, var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(1000f, var_0.d.x, var_0.c.x)) - vec3<f32>(var_0.c.x, 1117f, var_1))), vec4<bool>(true, all(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, false, true)), func_2(_wgslsmith_mod_u32(4294967295u, 42608u)).a.b.x), Struct_1(u_input.a.x | 1u, var_0.b, _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 1000f, var_1)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), vec3<f32>(-154f, _wgslsmith_f_op_f32(-419f * -1314f), _wgslsmith_f_op_f32(-854f + 1660f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(362f * -1055f), -371f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, 1463f))), var_0.d.x), Struct_4(~(~select(u_input.a, u_input.a, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(66917u, 11425u, 13346u, var_0.a), u_input.a)).c.b.yxz), ~(abs(var_0.a) ^ u_input.a.x), u_input.a), func_2(min(var_0.a, firstTrailingBit(5814u))).c);
    let var_3 = 4294967295u ^ (var_0.a ^ 4294967295u);
    var var_4 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.c.a.b, -20105i, select(var_2.a.c.b, var_0.b, var_2.a.b.x), _wgslsmith_mod_i32(0i, var_0.b)), firstLeadingBit(~vec4<i32>(0i, 17152i, var_0.b, -45751i)) >> (~(var_2.b.a >> (var_2.b.d % vec4<u32>(32u))) % vec4<u32>(32u))), -reverseBits(-reverseBits(vec4<i32>(-3243i, -10234i, var_0.b, -56436i))));
    return Struct_2(vec4<bool>(var_2.c.b.x, true, false, true), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(var_4.yyx, var_4.ywx), var_4.wwx, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -30851i, 1i), vec3<i32>(var_4.x, var_2.a.a.b, 20293i)), vec3<i32>(var_2.c.c.b, var_2.c.a.b, -2147483647i))), -var_4.yzw), func_2(countOneBits(~32156u)).c.c, max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, 81172i), -var_4.yx), _wgslsmith_sub_i32(countOneBits(0i), var_4.x)) & _wgslsmith_sub_i32(1i, ~var_0.b), var_2.a.a);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    let var_0 = countOneBits(-(vec2<i32>(-1i) * -(~vec2<i32>(1i, arg_1.d))));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(func_4(Struct_5(Struct_3(Struct_1(arg_1.c.a, -2147483647i, vec3<f32>(arg_2.a.c.x, arg_2.a.c.x, 1222f), arg_1.c.d), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), arg_1.e, arg_1.e.d.zy, 1000f), Struct_4(vec4<u32>(arg_2.a.a, 148481u, 10080u, u_input.a.x), arg_2.b.xwy, arg_2.a.a, u_input.a), Struct_3(Struct_1(u_input.a.x, arg_1.e.b, vec3<f32>(arg_0, -659f, arg_2.d.x), arg_2.c.d), arg_2.b, Struct_1(0u, 24539i, arg_1.c.c, vec3<f32>(arg_1.e.d.x, arg_0, arg_0)), vec2<f32>(1307f, -182f), arg_1.c.d.x)), vec3<i32>(1i, 1i, 1i)).a, ~0u << (arg_2.c.a % 32u), (u_input.a.x >> (arg_2.a.a % 32u)) << (~arg_1.c.a % 32u), 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(32199u, ~arg_2.c.a, abs(4294967295u), ~arg_1.c.a), vec4<u32>(arg_2.a.a << (55993u % 32u), arg_2.a.a | arg_1.e.a, 53443u, 39270u))), func_3().xyz, select(~51012u, ~u_input.a.x, true), _wgslsmith_clamp_vec4_u32(abs(u_input.a), firstLeadingBit(u_input.a), u_input.a));
    let var_2 = false;
    let var_3 = arg_2.a.c;
    return Struct_4(countOneBits(~_wgslsmith_clamp_vec4_u32(~var_1.d, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 80397u, 4294967295u), vec4<u32>(1u, var_1.c, var_1.a.x, arg_2.a.a)), firstLeadingBit(u_input.a))), func_3().wxz, _wgslsmith_mult_u32(~arg_2.c.a, countOneBits(_wgslsmith_clamp_u32(arg_1.e.a, 4294967295u, arg_1.e.a) << (min(var_1.d.x, 4294967295u) % 32u))), vec4<u32>(4294967295u, arg_2.a.a << (_wgslsmith_div_u32(min(1u, var_1.c), abs(u_input.a.x)) % 32u), ~u_input.a.x, ~(~(~4294967295u))));
}

fn func_6(arg_0: i32, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = ~firstTrailingBit(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.a.x, arg_1.d.x), _wgslsmith_dot_vec3_u32(select(arg_1.a.zzx, vec3<u32>(arg_1.c, arg_1.c, u_input.a.x), false), countOneBits(vec3<u32>(arg_1.a.x, 78773u, arg_1.d.x)))));
    let var_1 = ~(vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, arg_0), -1i >> (u_input.a.x % 32u)), firstTrailingBit(func_4(Struct_5(Struct_3(Struct_1(43392u, arg_0, vec3<f32>(367f, -211f, -250f), vec3<f32>(-139f, 991f, -1090f)), vec4<bool>(true, arg_1.b.x, arg_1.b.x, false), Struct_1(arg_1.d.x, -9068i, vec3<f32>(500f, 1775f, 709f), vec3<f32>(1831f, -2281f, -173f)), vec2<f32>(765f, -154f), -383f), Struct_4(vec4<u32>(arg_1.d.x, 70514u, 23175u, arg_1.d.x), arg_1.b, 117497u, u_input.a), Struct_3(Struct_1(arg_1.d.x, -65554i, vec3<f32>(468f, -1793f, -1335f), vec3<f32>(1095f, 418f, -355f)), vec4<bool>(true, true, true, arg_1.b.x), Struct_1(4294967295u, arg_0, vec3<f32>(1000f, 1232f, -467f), vec3<f32>(-330f, -1387f, 1429f)), vec2<f32>(-181f, -1319f), -1000f)), vec3<i32>(-1i, arg_0, arg_0)).b)) & vec3<i32>(-1i, -49318i, i32(-1i) * -arg_0));
    var var_2 = 21225u;
    var_2 = ~(~(~1u ^ arg_1.d.x));
    let var_3 = _wgslsmith_mult_i32(-50788i, (abs(firstTrailingBit(1i)) << ((arg_1.c >> (0u % 32u)) % 32u)) << (12799u % 32u));
    return ~vec3<i32>(-21010i, 0i, countOneBits(-(var_1.x << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_add_u32(0u, 1u));
    var var_1 = vec3<i32>(-2147483647i, select(-2147483647i, i32(-1i) * -11872i, false), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(max(vec3<i32>(-40041i, -53727i, 12142i), vec3<i32>(2147483647i, -11882i, 13270i)), select(vec3<i32>(-2147483647i, 53861i, 0i), vec3<i32>(-2147483647i, 1i, 2147483647i), vec3<bool>(true, false, true))), -(vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, -2147483647i))));
    var_1 = firstLeadingBit(~(~(-(vec3<i32>(var_1.x, var_1.x, 10501i) >> (u_input.a.yyy % vec3<u32>(32u))))));
    let var_2 = true;
    var_1 = func_6(var_1.x ^ abs(0i), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-864f, 623f), _wgslsmith_f_op_f32(-1149f - -318f))) - 1f), func_1(), func_2(max(9727u, u_input.a.x >> (u_input.a.x % 32u))).c));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1201f))))), 525f) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-475f, -829f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, -227f) - vec2<f32>(238f, -863f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-153f, -2184f), vec2<f32>(284f, -705f), var_2)), func_4(Struct_5(Struct_3(Struct_1(4294967295u, var_1.x, vec3<f32>(882f, -828f, -360f), vec3<f32>(-614f, -786f, -454f)), vec4<bool>(var_2, var_2, true, var_2), Struct_1(u_input.a.x, 0i, vec3<f32>(1649f, -613f, -773f), vec3<f32>(-229f, -2616f, 1573f)), vec2<f32>(-983f, 348f), 389f), Struct_4(vec4<u32>(0u, 76367u, u_input.a.x, u_input.a.x), vec3<bool>(var_2, true, true), u_input.a.x, vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(Struct_1(u_input.a.x, var_1.x, vec3<f32>(-949f, -2901f, 304f), vec3<f32>(-611f, 894f, 486f)), vec4<bool>(var_2, true, false, var_2), Struct_1(45356u, 7613i, vec3<f32>(1229f, 107f, -1963f), vec3<f32>(1884f, 889f, -343f)), vec2<f32>(1907f, 1000f), -1000f)), vec3<i32>(var_1.x, var_1.x, 38168i)).d.yx, true)), vec2<bool>(select(var_2, var_2, false), true))))));
    let var_4 = vec4<u32>(27772u, min(func_2(55216u).c.c.a >> (4294967295u % 32u), u_input.a.x & (4294967295u | u_input.a.x)) << (~(~2615u) % 32u), _wgslsmith_dot_vec4_u32(func_2(47699u).b.a, ~u_input.a), ~_wgslsmith_mult_u32(u_input.a.x, countOneBits(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.x)) - _wgslsmith_f_op_f32(1522f - -2268f)), var_3.x, !var_2 | func_5(784f, Struct_2(vec4<bool>(var_2, var_2, true, false), 34981i, Struct_1(var_4.x, var_1.x, vec3<f32>(-493f, var_3.x, 204f), vec3<f32>(var_3.x, 1231f, var_3.x)), 2147483647i, Struct_1(0u, var_1.x, vec3<f32>(-2106f, 848f, -708f), vec3<f32>(var_3.x, -1997f, var_3.x))), Struct_3(Struct_1(u_input.a.x, -5943i, vec3<f32>(366f, -1151f, 128f), vec3<f32>(var_3.x, -1000f, -1531f)), vec4<bool>(var_2, var_2, var_2, var_2), Struct_1(0u, var_1.x, vec3<f32>(357f, var_3.x, var_3.x), vec3<f32>(var_3.x, 870f, -501f)), vec2<f32>(-281f, var_3.x), var_3.x)).b.x)), -1000f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_3.x))))), _wgslsmith_f_op_f32(1086f - _wgslsmith_f_op_f32(step(-968f, _wgslsmith_f_op_f32(ceil(var_3.x)))))), ~select(abs(vec4<i32>(-8069i, 1i, 2147483647i, var_1.x) >> (vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u) % vec4<u32>(32u))), select(max(vec4<i32>(-26199i, var_1.x, 16462i, var_1.x), vec4<i32>(var_1.x, var_1.x, -30338i, var_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 5121i, 0i, -2147483647i), vec4<i32>(var_1.x, 853i, var_1.x, var_1.x)), func_1().a), any(vec2<bool>(var_2, var_2))), ~func_5(_wgslsmith_f_op_f32(f32(-1f) * -391f), func_1(), func_2(var_4.x).c).d.wy ^ (var_4.xz ^ (vec2<u32>(0u, 1u) << (_wgslsmith_mod_vec2_u32(vec2<u32>(84439u, var_4.x), var_4.xw) % vec2<u32>(32u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(41560i, var_1.x), -2147483647i), -select(-vec3<i32>(var_1.x, var_1.x, -45872i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.x, -2147483647i), vec3<i32>(0i, -1i, var_1.x)), vec3<bool>(true, true, var_2)), max(~vec3<i32>(-19816i, -32310i, var_1.x), -vec3<i32>(2147483647i, -72070i, -52437i)) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, -22077i), vec3<i32>(var_1.x, var_1.x, -1i))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(654f))), func_1().e.d.x, !(!var_2))), var_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x))), 169f, func_1().a.x)), func_2(var_4.x).c.a.c.x));
}


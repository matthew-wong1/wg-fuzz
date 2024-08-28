struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(u_input.e.yw, true, (vec3<i32>(1i, countOneBits(u_input.e.x), 0i) ^ u_input.e.wzz) >> (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c, u_input.b, 4294967295u)), ~abs(vec3<u32>(99690u, u_input.b, 24861u))) % vec3<u32>(32u)), -(vec2<i32>(2147483647i, reverseBits(u_input.d)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.b, u_input.c) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(reverseBits(~(~u_input.e.yz)), vec2<i32>(firstLeadingBit(2147483647i), -var_0.a.x)), any(!select(vec3<bool>(var_0.b, true, var_0.b), select(vec3<bool>(false, false, var_0.b), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, true, false)), var_0.b)), max(vec3<i32>(u_input.d, max(select(0i, u_input.d, true), i32(-1i) * -1i), (var_0.a.x << (1u % 32u)) >> (u_input.b % 32u)), -u_input.e.wxy), _wgslsmith_div_vec2_i32(-u_input.e.ww ^ var_0.c.xy, vec2<i32>(var_0.d.x & 2147483647i, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(10093i, u_input.a, var_0.d.x, var_0.c.x)))) & select(select(vec2<i32>(u_input.a, u_input.e.x), -vec2<i32>(var_0.d.x, u_input.d), var_0.b | false), -vec2<i32>(0i, 23929i) | -u_input.e.zz, select(!vec2<bool>(true, var_0.b), !vec2<bool>(var_0.b, true), vec2<bool>(true, true))));
    var_1 = Struct_1(vec2<i32>(32893i, u_input.d) ^ -var_1.a, !(!var_1.b) || false, _wgslsmith_clamp_vec3_i32((vec3<i32>(-2147483647i, u_input.d, -1i) | vec3<i32>(-42143i, u_input.e.x, -2329i)) >> (vec3<u32>(1u, u_input.c, 57657u) % vec3<u32>(32u)), countOneBits(_wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(var_1.c.x, 0i, var_0.d.x), vec3<i32>(var_1.a.x, u_input.a, var_1.d.x))), vec3<i32>(var_1.a.x, abs(-2147483647i), -5149i)) ^ vec3<i32>(~var_0.d.x, (1i >> (1u % 32u)) & min(var_1.a.x, 16334i), abs(var_0.c.x)), vec2<i32>(-31282i, countOneBits((u_input.e.x ^ -34853i) | firstTrailingBit(u_input.d))));
    let var_2 = countOneBits(~reverseBits(select(~vec2<u32>(4294967295u, 69955u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b)), vec2<bool>(var_0.b, false))));
    var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(reverseBits(u_input.e.ww), u_input.e.xw | _wgslsmith_add_vec2_i32(u_input.e.zx, vec2<i32>(var_1.a.x, 78277i)), ~_wgslsmith_mod_vec2_i32(var_1.c.yy, vec2<i32>(var_0.d.x, var_1.c.x))) << (var_2 % vec2<u32>(32u)), all(vec2<bool>(var_1.b, any(select(vec4<bool>(true, var_1.b, var_1.b, var_0.b), vec4<bool>(var_1.b, true, true, var_0.b), var_0.b)))), -var_0.c, var_0.d);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1472f, 324f, var_1.b)), -1012f)), _wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1555f, 1000f, 100f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1034f, -251f, 2820f), vec3<f32>(-652f, -770f, -2485f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1270f, -1504f)))))), select(vec3<bool>(any(vec4<bool>(true, false, var_0.b, false)) & true, var_0.b, true), vec3<bool>(false, var_1.b, any(select(vec3<bool>(var_1.b, var_0.b, var_0.b), vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_0.b, var_1.b, true)))), !select(vec3<bool>(var_1.b, false, true), !vec3<bool>(false, var_0.b, false), vec3<bool>(var_1.b, var_1.b, false)))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = 1u;
    let var_1 = Struct_1(-(~abs(vec2<i32>(0i, arg_1)) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, u_input.d), -vec2<i32>(u_input.d, arg_2.c.x))), arg_2.b, vec3<i32>(-65228i >> (_wgslsmith_div_u32(~arg_0, 4294967295u) % 32u), u_input.a, arg_1), vec2<i32>(arg_1 & -1i, -u_input.e.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3())))));
    return abs(vec2<i32>(arg_2.d.x, arg_1 ^ -arg_2.d.x));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(select(vec2<i32>(u_input.d, 1i), vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -38794i, -2147483647i), ~u_input.e.zxy), ~54555i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(true, true))))), u_input.d > -28361i, ~(u_input.e.yyy ^ u_input.e.yxw) >> (~vec3<u32>(u_input.b, u_input.b >> (u_input.c % 32u), 1u) % vec3<u32>(32u)), abs(firstTrailingBit(func_2(u_input.c, u_input.e.x, Struct_1(u_input.e.zx, true, u_input.e.wzz, u_input.e.yy)) << (vec2<u32>(4294967295u, 14211u) % vec2<u32>(32u)))));
    var_0 = Struct_1(~vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(u_input.e.x)), -var_0.d.x), var_0.b, _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, u_input.a, 1i), ~(u_input.e.zzw ^ vec3<i32>(u_input.d, 2147483647i, u_input.d))), ~abs(vec2<i32>(1i, 1i)));
    let var_1 = ~abs(select(_wgslsmith_add_vec3_i32(u_input.e.wzw, vec3<i32>(u_input.e.x, 19830i, -2147483647i)), select(vec3<i32>(34885i, u_input.e.x, 16220i), vec3<i32>(-20922i, 0i, 31183i), true), true)) << (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(~u_input.c, 4294967295u, abs(u_input.b))), vec3<u32>(~12415u, u_input.b, _wgslsmith_add_u32(abs(u_input.b), 72724u))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_mult_i32(~(-15892i), min(max(var_1.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 28609i, var_0.a.x), vec3<i32>(-1i, var_0.a.x, 2510i)))), u_input.a));
    let var_3 = Struct_1(-(~var_1.zz), !(!any(vec3<bool>(true, false, var_0.b))), -u_input.e.wzw, var_1.zz);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1185f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-388f, -1850f) * -1684f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-771f, -634f)))));
    var var_1 = ~vec4<u32>(func_1(), _wgslsmith_add_u32(reverseBits(u_input.b), u_input.c), _wgslsmith_dot_vec3_u32(countOneBits(select(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(false, false, true))), min(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 1u)), reverseBits(vec3<u32>(4294967295u, 46093u, u_input.c)))), _wgslsmith_sub_u32((59913u & u_input.b) ^ ~99024u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 40102u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)), min(vec4<u32>(76287u, u_input.c, u_input.b, 1u), vec4<u32>(u_input.c, u_input.b, 0u, u_input.c)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-568f, -1454f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, 1916f)))))));
    var var_2 = Struct_1(vec2<i32>(1i, func_2(49592u, u_input.d, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(17435i, -1i), vec2<i32>(u_input.a, -1i)), true, vec3<i32>(u_input.e.x, 1i, u_input.e.x), vec2<i32>(u_input.a, 37827i))).x), true, ~vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), countOneBits(u_input.a), u_input.d), vec2<i32>(firstLeadingBit(_wgslsmith_mult_i32(u_input.d, 1i)), _wgslsmith_mod_i32(countOneBits(countOneBits(1i)), u_input.a)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -575f) * _wgslsmith_f_op_vec3_f32(func_3()).yz);
    var_1 = vec4<u32>(_wgslsmith_mult_u32(var_1.x & ~35543u, 25370u), 51987u, select(1u, reverseBits(22624u), true), ~u_input.c);
    var_1 = ~(~(~reverseBits(~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~(~var_2.d.x)), max(-9750i, -42845i), 48223i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-11475i, var_2.d.x, 2147483647i, var_2.d.x), u_input.e), ~u_input.e)), var_2.c, u_input.b & ~1u, vec4<u32>(abs(44932u), 33486u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11103u), vec2<u32>(var_1.x, var_1.x)), ~var_1.x, 18621u), _wgslsmith_clamp_u32(u_input.c, 1u, firstLeadingBit(~var_1.x))), var_1.x << (_wgslsmith_div_u32(firstLeadingBit(firstTrailingBit(867u)), abs(~u_input.c)) % 32u));
}


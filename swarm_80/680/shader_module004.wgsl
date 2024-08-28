struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_3) -> i32 {
    return -1i;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(reverseBits(arg_0.d << (select(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.d), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 0u, 0u)), true) % vec4<u32>(32u))), arg_0, max(arg_0.b, i32(-1i) * -49101i));
    let var_1 = u_input.a.x;
    var var_2 = var_0.b.a.zzw;
    var_2 = _wgslsmith_mult_vec3_i32(-arg_0.d.www, u_input.c.xzw);
    var var_3 = select(18126u, firstTrailingBit(29215u), true);
    return any(vec4<bool>(all(vec2<bool>(true, all(vec2<bool>(true, false)))), max(-2147483647i, ~u_input.c.x) >= _wgslsmith_clamp_i32(var_0.c, -32916i, 1i), any(vec2<bool>(true, true)) || all(vec4<bool>(false, false, true, false)), true));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_3(select(vec2<bool>((u_input.d > u_input.a.x) | true, false), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(!select(true, true, false), func_3(Struct_1(vec4<i32>(38156i, u_input.c.x, -4608i, u_input.b), u_input.b, u_input.c.x, vec4<i32>(u_input.b, 12266i, u_input.b, -15713i), vec4<f32>(arg_0.x, arg_0.x, -613f, arg_0.x))))), !(-_wgslsmith_add_i32(u_input.b, 19932i) <= -69941i), Struct_2(u_input.c, Struct_1(~(~u_input.c), countOneBits(_wgslsmith_add_i32(u_input.c.x, -495i)), u_input.b, abs(u_input.c ^ vec4<i32>(-1i, -22142i, 2454i, u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -684f, arg_0.x, 1336f), vec4<f32>(arg_0.x, 766f, -1106f, -287f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -839f, -963f, 1000f)))), ~u_input.b), Struct_2(u_input.c, Struct_1(-vec4<i32>(46665i, -2147483647i, u_input.b, u_input.b) | vec4<i32>(u_input.c.x, u_input.c.x, 0i, -24006i), _wgslsmith_div_i32(select(1i, u_input.b, true), u_input.b), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x) << ((4294967295u | u_input.a.x) % 32u), abs(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(2147483647i, 2147483647i, u_input.b, -30033i))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, 1567f, -1171f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, -1343f, -1093f, -2239f))))), -18589i));
    var var_1 = var_0.b;
    var var_2 = false;
    var var_3 = var_0.a.x;
    var_0 = Struct_3(select(var_0.a, !vec2<bool>(true, var_0.b), var_0.a), true && (_wgslsmith_add_i32(u_input.b, -u_input.b) != -1i), var_0.c, var_0.d);
    return ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, 4294967295u, 0u, 44260u)), select(vec4<u32>(~1u, 1u, 17236u, ~53218u), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 0u)), var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.c.x, 1i)), vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, 22387i), -14866i))) | vec2<i32>(func_1(Struct_3(vec2<bool>(false, true), false, Struct_2(u_input.c, Struct_1(vec4<i32>(u_input.b, 41644i, u_input.b, -11522i), u_input.c.x, u_input.b, vec4<i32>(u_input.c.x, -28926i, u_input.b, -2147483647i), vec4<f32>(170f, 149f, 1240f, -369f)), 6434i), Struct_2(vec4<i32>(-1i, -35068i, -1i, -17585i), Struct_1(u_input.c, u_input.b, u_input.c.x, u_input.c, vec4<f32>(802f, 1000f, 160f, -646f)), u_input.c.x))) >> ((countOneBits(u_input.d) << (func_2(vec2<f32>(-403f, 1046f)) % 32u)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.xzw, ~vec3<i32>(2147483647i, 46979i, u_input.c.x)), vec3<i32>(-u_input.b, ~u_input.b, ~u_input.c.x)));
    var_0 = vec2<i32>(-(u_input.b >> (28574u % 32u)), _wgslsmith_mod_i32(max(var_0.x, reverseBits(-2147483647i)), -2147483647i));
    let var_1 = Struct_3(select(select(vec2<bool>(u_input.c.x > u_input.b, true), vec2<bool>(any(vec4<bool>(false, true, false, false)), true), vec2<bool>(any(vec3<bool>(true, true, true)), true)), vec2<bool>(true, true), abs(u_input.d ^ 5660u) < ~(~1u)), var_0.x < var_0.x, Struct_2(vec4<i32>(-_wgslsmith_mult_i32(-23530i, -1i), _wgslsmith_mult_i32(1i, -8571i), var_0.x, firstLeadingBit(~u_input.b)), Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(35747i, -1i, u_input.b, 1i), vec4<i32>(0i, var_0.x, var_0.x, -1i)), u_input.c.x, var_0.x, ~countOneBits(vec4<i32>(-24123i, 36768i, -1i, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-987f, 2242f, -1352f, -199f)))), -13557i), Struct_2(-u_input.c, Struct_1(~u_input.c, _wgslsmith_clamp_i32(var_0.x, var_0.x, 4086i), _wgslsmith_add_i32(_wgslsmith_add_i32(8407i, u_input.b), 1i), ~abs(vec4<i32>(-1i, -41678i, 2147483647i, -1i)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1132f)), -685f, _wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(min(-282f, -833f)))), u_input.c.x));
    let var_2 = var_1.c.b.e.x;
    let var_3 = Struct_2(-vec4<i32>(reverseBits(-1i) << (reverseBits(u_input.a.x) % 32u), var_0.x, -firstLeadingBit(0i), -_wgslsmith_div_i32(var_0.x, -29632i)), var_1.d.b, abs(u_input.c.x));
    var_0 = -u_input.c.zx;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(975f))));
    let var_5 = _wgslsmith_f_op_f32(var_3.b.e.x * _wgslsmith_div_f32(var_3.b.e.x, var_3.b.e.x));
    var var_6 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2063f))), 45496u >> (u_input.a.x % 32u), u_input.a.x, _wgslsmith_mod_vec4_i32(select(~select(var_1.c.a, vec4<i32>(-1i, var_6.a.x, var_0.x, 20766i), var_1.b), var_6.d, !select(vec4<bool>(var_1.b, true, false, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<bool>(false, true, true, var_1.a.x))), u_input.c));
}


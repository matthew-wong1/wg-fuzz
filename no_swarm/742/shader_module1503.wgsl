struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = 54912i;
    let var_1 = any(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, true)), arg_2 >= arg_2), false));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -537f));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-179f + 189f));
    var var_4 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 810u, 49281u) ^ firstLeadingBit(vec4<u32>(22249u, 4294967295u, u_input.c, 18391u)), ~vec4<u32>(u_input.c, arg_1, u_input.c, arg_1)) >> (abs(vec4<u32>(~52658u, arg_1, ~arg_1, ~1u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 1000f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = firstLeadingBit(-firstLeadingBit(-13357i));
    var_0 = 18962i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(556f * -933f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f), -834f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b, u_input.c, -237f)) - _wgslsmith_f_op_f32(f32(-1f) * -383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(486f, 129f))))), 748f);
    var var_2 = !vec4<bool>(arg_2.x, true, false, abs(-1i) == select(arg_0.x, reverseBits(68034i), !arg_2.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(180f, -1642f, -171f)) * _wgslsmith_div_vec3_f32(var_1, var_1))), arg_2.x)));
    return Struct_4(Struct_1(var_3.b.x, var_3.b), Struct_3(arg_2.x, Struct_2(-458f)));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = func_2(-_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(2147483647i, 1i, u_input.d)) ^ vec3<i32>(u_input.b, u_input.a.x, u_input.b), u_input.a.xxx, vec3<i32>(~30637i, select(-16937i, u_input.a.x, false), 52859i)), u_input.a.x, !vec2<bool>(select(true, true, true), countOneBits(u_input.a.x) == u_input.d), countOneBits(_wgslsmith_mod_vec2_i32(abs(u_input.a.yw), vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.d, u_input.b)))));
    var var_2 = var_1.a;
    var_2 = Struct_1(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, var_2.b.x, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-760f, var_2.b.x), _wgslsmith_f_op_f32(floor(-1376f)))), var_1.a.a, var_1.b.b.a)));
    let var_3 = func_2(firstLeadingBit(vec3<i32>(-21954i, ~u_input.b, ~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), -4289i, select(select(select(select(vec2<bool>(var_1.b.a, true), vec2<bool>(var_1.b.a, var_1.b.a), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, var_1.b.a), vec2<bool>(var_1.b.a, var_1.b.a)), !var_1.b.a), vec2<bool>(true, true), !select(vec2<bool>(true, var_1.b.a), vec2<bool>(true, var_1.b.a), var_1.b.a)), select(vec2<bool>(true, select(var_1.b.a, false, true)), !select(vec2<bool>(false, var_1.b.a), vec2<bool>(var_1.b.a, var_1.b.a), vec2<bool>(true, var_1.b.a)), vec2<bool>(var_1.b.a, true)), select(select(!vec2<bool>(false, var_1.b.a), vec2<bool>(false, false), var_1.b.a), !select(vec2<bool>(false, false), vec2<bool>(var_1.b.a, var_1.b.a), var_1.b.a), vec2<bool>(var_1.b.a, true))), ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-1i, u_input.b)), firstLeadingBit(vec2<i32>(u_input.b, u_input.d)), vec2<bool>(true, true)) | u_input.a.yx).a;
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_5(arg_0, 1858u);
    let var_1 = Struct_5(func_1(), ~_wgslsmith_mod_u32(33594u, arg_1));
    var var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
    let var_3 = 196f;
    var_2 = vec2<bool>(any(!select(vec4<bool>(var_2.x, false, false, var_2.x), select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(true, var_2.x, false, true), vec4<bool>(var_2.x, true, true, var_2.x)), !vec4<bool>(true, var_2.x, true, var_2.x))), false);
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    var var_0 = true;
    var var_1 = arg_0.b.zy;
    let var_2 = -1116f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, var_2, 1834f) - arg_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-999f, var_2, -1839f) * arg_0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~max(select(vec4<u32>(u_input.c, u_input.c, u_input.c, 34112u), vec4<u32>(0u, 35115u, u_input.c, u_input.c), vec4<bool>(true, false, false, false)) | vec4<u32>(u_input.c, 0u, 0u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c) >> (vec4<u32>(4294967295u, 1u, u_input.c, u_input.c) % vec4<u32>(32u)), vec4<u32>(u_input.c, u_input.c, 97582u, u_input.c))));
    let var_1 = 50581u;
    var var_2 = vec3<i32>(23057i, u_input.d, u_input.d);
    let var_3 = _wgslsmith_add_vec4_i32(-(~_wgslsmith_add_vec4_i32(u_input.a, abs(vec4<i32>(-16159i, 1i, var_2.x, u_input.a.x)))), vec4<i32>(-2147483647i, (u_input.d << (u_input.c % 32u)) >> (((0u >> (var_0.x % 32u)) << (u_input.c % 32u)) % 32u), _wgslsmith_add_i32(-27660i, var_2.x), u_input.a.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(), var_1, func_2(vec3<i32>(u_input.d, var_3.x, u_input.b), 2147483647i, vec2<bool>(false, false), u_input.a.zy).b.b), func_2(-vec3<i32>(u_input.b, -19879i, var_3.x), var_3.x, select(vec2<bool>(false, true), vec2<bool>(true, false), true), var_2.xz ^ u_input.a.ww).b, func_2(var_3.xwx, abs(var_3.x), vec2<bool>(true, true), -vec2<i32>(u_input.b, 2147483647i)).b.b, true))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2174f, 1f, -1339f) + _wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_f_op_f32(trunc(483f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 183f, 839f), vec3<f32>(578f, 639f, -971f)))), func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 0i), u_input.a.yxw), -var_2.x, vec2<bool>(true, true), countOneBits(var_2.yy)).b, Struct_2(-1181f), var_2.x == _wgslsmith_mult_i32(u_input.b, -1i)))));
    let var_5 = func_2(u_input.a.zyx, -1i, vec2<bool>(true, true), vec2<i32>(countOneBits(~65964i), 10636i));
    let var_6 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, var_0.x), ~var_0.yx) << (~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_0.zw, vec2<u32>(0u, var_0.x))) % 32u), min(var_0.x, 58722u));
    let var_7 = select(select(!select(!vec4<bool>(var_5.b.a, true, true, var_5.b.a), select(vec4<bool>(var_5.b.a, var_5.b.a, var_5.b.a, var_5.b.a), vec4<bool>(true, true, var_5.b.a, var_5.b.a), var_5.b.a), var_5.b.a), !vec4<bool>(var_5.b.a, all(vec4<bool>(var_5.b.a, var_5.b.a, var_5.b.a, false)), func_2(vec3<i32>(1i, var_2.x, 0i), -29893i, vec2<bool>(true, false), vec2<i32>(1i, -34622i)).b.a, !var_5.b.a), var_5.b.a), !vec4<bool>(var_5.b.a, var_5.b.a, any(select(vec4<bool>(var_5.b.a, var_5.b.a, var_5.b.a, true), vec4<bool>(var_5.b.a, var_5.b.a, var_5.b.a, true), var_5.b.a)), true), select(!(!vec4<bool>(var_5.b.a, true, var_5.b.a, var_5.b.a)), vec4<bool>(!var_5.b.a, var_5.b.a & (2147483647i > u_input.b), true, var_1 <= var_0.x), vec4<bool>(!var_5.b.a, any(select(vec4<bool>(var_5.b.a, true, true, false), vec4<bool>(var_5.b.a, var_5.b.a, false, false), false)), var_5.b.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, countOneBits(var_3.wzy), ~abs(u_input.c & ~1u), (~abs(vec4<u32>(7718u, 1u, 4294967295u, 29219u)) | min(firstLeadingBit(vec4<u32>(12039u, var_0.x, 4294967295u, var_1)), ~vec4<u32>(31229u, 5053u, 1u, 4294967295u))) >> (~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_6.x, var_0.x, u_input.c, u_input.c), vec4<u32>(var_6.x, 23338u, 0u, 4153u), vec4<u32>(var_0.x, var_6.x, 1u, var_1))) % vec4<u32>(32u)), var_0.x);
}


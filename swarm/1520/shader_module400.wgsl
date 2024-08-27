struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_2(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(19932u, arg_0.x, arg_0.x)), ~(~arg_1)), -487f, any(vec3<bool>(true || all(vec2<bool>(false, false)), true, true)));
    let var_1 = Struct_2(arg_2.x, var_0.b, false);
    var_0 = Struct_2(select(1u, ~arg_2.x, all(!vec4<bool>(var_1.c, var_0.c, var_1.c, true))) >> ((max(76649u, 1u) ^ _wgslsmith_sub_u32(min(0u, arg_0.x), arg_0.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - -593f))), any(select(select(!vec4<bool>(false, var_1.c, var_0.c, var_1.c), !vec4<bool>(true, false, var_1.c, var_1.c), vec4<bool>(true, true, false, var_0.c)), vec4<bool>(var_0.c, var_0.c, var_1.c, false), !any(vec3<bool>(var_1.c, false, true)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1125f)));
    var var_3 = Struct_4(false, -667f, false, arg_0.yyz, arg_0.yzx);
    return select(vec2<bool>(true, false), vec2<bool>(~(38146i | u_input.a.x) < countOneBits(~0i), true), false);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    var var_0 = !vec3<bool>(all(!func_3(vec4<u32>(70436u, 4294967295u, 16713u, 0u), vec3<u32>(10980u, 85557u, 1730u), vec3<u32>(29945u, 51749u, 0u))), false, true);
    var_0 = !select(select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(func_3(vec4<u32>(0u, 4294967295u, 0u, 0u), vec3<u32>(0u, 105301u, 1u), vec3<u32>(40509u, 4292u, 84157u)).x, var_0.x, true), !(!vec3<bool>(var_0.x, var_0.x, false))), vec3<bool>(var_0.x, var_0.x, !var_0.x), any(!vec4<bool>(false, true, true, var_0.x)));
    var var_1 = vec2<u32>(~0u, ~(~firstLeadingBit(4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f + arg_0.x));
    let var_3 = Struct_2(_wgslsmith_mult_u32(var_1.x, max(~22413u, 16829u)), 768f, arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))));
    return Struct_3(_wgslsmith_f_op_f32(-603f - var_3.b), Struct_1(all(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_3.c))), select(func_3(vec4<u32>(34372u, var_3.a, 0u, 4294967295u), abs(vec3<u32>(var_3.a, var_3.a, var_3.a)), ~vec3<u32>(45185u, var_1.x, var_1.x)).x, true, select(true, var_0.x, all(vec2<bool>(var_0.x, var_3.c)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1150f, -379f, var_3.b)), vec3<f32>(_wgslsmith_f_op_f32(min(-1120f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(-var_3.b)))), vec2<f32>(arg_0.x, 230f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, 470f)) + _wgslsmith_f_op_vec2_f32(arg_0.xx - vec2<f32>(448f, arg_0.x))))), arg_2);
    var var_1 = u_input.a.zz;
    var_1 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(reverseBits(u_input.a.zx), ~vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(reverseBits(-18968i), -var_1.x));
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), -1665f)))), _wgslsmith_dot_vec3_i32(abs(u_input.a) << (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(50926u, 45767u, 4294967295u)), ~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(0i, 2147483647i), 30117i, u_input.a.x) << (firstLeadingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))));
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1024f))), -605f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.d * vec2<f32>(arg_0.x, -1447f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b.d))))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(~vec4<i32>(-2147483647i, 1i, var_1.x, arg_2), abs(vec4<i32>(var_1.x, -2147483647i, -2147483647i, arg_2)), vec4<bool>(false, false, false, true)), abs(vec4<i32>(4919i, 27798i, 2147483647i, arg_2))), firstTrailingBit(-vec4<i32>(24097i, u_input.a.x, arg_2, u_input.a.x))));
    return Struct_4(all(vec2<bool>(var_0.b.b, all(!vec2<bool>(var_0.b.b, arg_1)))), _wgslsmith_f_op_f32(ceil(2825f)), select(func_2(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.a, arg_0.x)), _wgslsmith_div_f32(958f, var_0.b.c.x)), 1i).b.b, true, !var_0.b.b), ~(~vec3<u32>(select(7949u, 4294967295u, false), 1u, 1u)), firstTrailingBit(abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(1u, 1u, 1u)))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.d))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(459f, arg_0.b) + vec2<f32>(arg_2.c.x, arg_2.c.x)) + arg_2.c.yx)), -1i).b.d.x);
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), func_3(vec4<u32>(4294967295u, 0u, 0u, 1u), vec3<u32>(2831u, 28375u, 1u), vec3<u32>(22727u, 38700u, 0u))), select(func_3(vec4<u32>(27675u, 45377u, 19097u, 4294967295u), vec3<u32>(11548u, 4294967295u, 23245u), vec3<u32>(0u, 4294967295u, 5409u)), vec2<bool>(true, true), func_3(vec4<u32>(0u, 0u, 0u, 1u), vec3<u32>(54268u, 6330u, 0u), vec3<u32>(1147u, 0u, 4294967295u)))), select(vec2<bool>(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(21599u, 92494u, 0u, 37766u), vec4<u32>(4294967295u, 34829u, 49376u, 3189u), vec4<u32>(1u, 48563u, 15148u, 0u)), vec3<u32>(1u, 1u, 66811u), vec3<u32>(70625u, 16747u, 0u)).x, true), select(vec2<bool>(true, true), !func_3(vec4<u32>(4294967295u, 1u, 83213u, 8889u), vec3<u32>(0u, 14895u, 1u), vec3<u32>(1u, 1u, 4294967295u)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), func_3(vec4<u32>(56939u, 0u, 51072u, 4294967295u), vec3<u32>(1u, 41295u, 1u), vec3<u32>(0u, 1u, 38223u)), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), func_3(vec4<u32>(1u, 1u, 1u, 1u), ~vec3<u32>(52557u, 57126u, 77565u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(6860u, 42608u, 9637u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 39507u, 8012u)), vec3<u32>(1u, 1u, 1u))), func_3(~vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(41234u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u)), ~4294967295u, ~2425u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 50230u, 4294967295u), vec3<u32>(1u, 0u, 35391u)), select(46240u, 62936u, true), max(1u, 45985u)) & min(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(66307u, 0u, 1u))), vec3<u32>(~1u, 69331u, ~(~1u))));
    let var_1 = ~vec2<u32>(1u, 1u);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))))), Struct_1(!all(!vec2<bool>(false, var_0.x)), all(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-371f, 615f, arg_0), vec3<f32>(arg_0, arg_0, arg_0), true)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, 1305f), vec3<f32>(-187f, arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2095f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1588f) + vec2<f32>(arg_0, -1000f))))));
    var_0 = !vec2<bool>(abs(~arg_2) == max(~1i, select(1i, arg_2, var_0.x)), all(!vec3<bool>(var_0.x, true, var_0.x)) | var_0.x);
    var_0 = !func_3(~_wgslsmith_mult_vec4_u32(~vec4<u32>(12820u, var_1.x, var_1.x, 18070u), ~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), reverseBits(~abs(vec3<u32>(var_1.x, 73144u, 0u))), vec3<u32>(var_1.x, ~(var_1.x >> (var_1.x % 32u)), 1u));
    return Struct_2(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-249f, -1313f))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(vec3<f32>(267f, -445f, -370f), true, 1i), false, func_2(vec2<f32>(-1649f, 118f), u_input.a.x).b, true)) + _wgslsmith_f_op_f32(f32(-1f) * -593f))), _wgslsmith_mult_vec2_i32(u_input.a.xx | ~vec2<i32>(21109i, u_input.a.x), select(max(vec2<i32>(u_input.a.x, 1i), u_input.a.zz), -vec2<i32>(u_input.a.x, u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, false), true))) & u_input.a.zy, u_input.a.x);
    var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -272f), u_input.a.yx, -2147483647i << (_wgslsmith_sub_u32(~var_0.a, func_1(vec3<f32>(var_0.b, 1000f, var_0.b), true, firstTrailingBit(19150i)).d.x) % 32u));
    var_0 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1785f + 744f))), ~vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(reverseBits(u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(u_input.a.x, u_input.a.x, 0i)), 2147483647i), u_input.a.x));
    let var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, var_0.a, var_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(48897u, 62805u, var_0.a), vec3<u32>(var_0.a, var_0.a, var_0.a))) >= 4294967295u, var_0.a <= var_0.a, vec3<f32>(874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_f_op_f32(f32(-1f) * -289f)), var_0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1006f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)) * vec2<f32>(1165f, 1000f)))));
    var_0 = Struct_2(~(~(0u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a), vec2<u32>(var_0.a, var_0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(floor(func_1(vec3<f32>(-1000f, var_1.d.x, 719f), false, u_input.a.x).b))))), var_1.a);
    var_0 = func_5(_wgslsmith_f_op_f32(2822f + _wgslsmith_f_op_f32(-var_0.b)), firstTrailingBit(~u_input.a.zz), -(i32(-1i) * -(~(-39100i))));
    var var_2 = true;
    var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(41506u, 45823u)), max(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 61125u))), abs(min(func_1(vec3<f32>(var_0.b, var_0.b, var_0.b), var_0.c, u_input.a.x).e.zx, reverseBits(vec2<u32>(33623u, var_0.a))))), vec2<f32>(_wgslsmith_div_f32(-288f, _wgslsmith_f_op_f32(-var_0.b)), var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -935f));
}


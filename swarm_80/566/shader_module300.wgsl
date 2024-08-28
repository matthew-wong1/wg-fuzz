struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec4<bool> {
    return select(select(select(vec4<bool>(arg_1.b, arg_0, true, false), !select(vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), arg_1.b), all(select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(arg_1.b, false, true)))), vec4<bool>(all(vec2<bool>(true, arg_0)), true, true, _wgslsmith_dot_vec4_u32(vec4<u32>(90973u, 4294967295u, 93705u, 15710u), vec4<u32>(u_input.c.x, u_input.c.x, arg_1.c, arg_1.c)) != ~arg_1.c), arg_0), select(!vec4<bool>(arg_0, arg_0, false, 2147483647i < u_input.b.x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, arg_1.b, arg_0, false), vec4<bool>(true, arg_0, arg_1.b, true), false), !vec4<bool>(arg_1.b, true, arg_0, true), select(vec4<bool>(false, false, arg_1.b, false), vec4<bool>(arg_1.b, true, arg_0, arg_1.b), vec4<bool>(false, true, arg_0, true))), select(!vec4<bool>(arg_1.b, arg_1.b, arg_0, arg_1.b), select(vec4<bool>(false, true, arg_0, false), vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, false, false, arg_0)), arg_0)), select(!(!vec4<bool>(false, arg_1.b, true, arg_0)), vec4<bool>(all(vec3<bool>(arg_1.b, false, true)), true, arg_1.b, arg_1.b), select(select(vec4<bool>(arg_0, arg_1.b, arg_1.b, false), vec4<bool>(arg_0, arg_0, arg_0, arg_1.b), arg_0), !vec4<bool>(arg_1.b, arg_0, true, false), true))), vec4<bool>(arg_0, true, true, arg_1.b));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = select(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), func_3(true, Struct_2(~(-vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)), false, 1u)), func_3(all(vec2<bool>(true, true)), Struct_2(_wgslsmith_sub_vec4_i32(-vec4<i32>(-12720i, u_input.b.x, 0i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -10128i), vec4<i32>(4586i, u_input.b.x, -43299i, u_input.b.x))), true, ~(~44781u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1209f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1024f * 1176f)))), 1012f, _wgslsmith_f_op_f32(272f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-269f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -723f)), _wgslsmith_f_op_f32(f32(-1f) * -1064f), 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1686f), _wgslsmith_f_op_f32(abs(-540f)), 1f, _wgslsmith_f_op_f32(select(940f, -138f, var_0.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(165f, -1000f, -1232f, -951f))), vec4<f32>(-809f, 939f, 328f, 348f), vec4<bool>(var_0.x, true, true, var_0.x))))));
    var var_2 = any(vec2<bool>(var_0.x, u_input.b.x == -2147483647i));
    var var_3 = _wgslsmith_div_i32(2147483647i & _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.b.x, 1i, 51169i)), vec4<i32>(-1i, select(46554i, -1i, var_0.x), u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yz))), 2147483647i);
    let var_4 = Struct_3(arg_0.x >> (35429u % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(exp2(var_1.x))), Struct_2(vec4<i32>(min(1i, 8666i), u_input.b.x | select(1i, -23594i, var_0.x), u_input.b.x, -(~(-2147483647i))), u_input.b.x < _wgslsmith_dot_vec4_i32(vec4<i32>(9804i, 6098i, -28888i, -12458i), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 1i) ^ vec4<i32>(u_input.b.x, -1i, -1i, u_input.b.x)), _wgslsmith_add_u32(0u, 19454u)), ~_wgslsmith_dot_vec2_u32(select(u_input.c.yx, u_input.c.zx, true), _wgslsmith_mult_vec2_u32(arg_0.xy, u_input.c.zx) & firstLeadingBit(u_input.c.zz)), select(~(~vec2<i32>(u_input.b.x, u_input.b.x) ^ countOneBits(u_input.b.yy)), u_input.b.yz, vec2<bool>(func_3(any(var_0), Struct_2(vec4<i32>(-1i, u_input.b.x, u_input.b.x, -2147483647i), var_0.x, u_input.a)).x, true)));
    return firstTrailingBit(~u_input.c.x & var_4.c.c);
}

fn func_1() -> i32 {
    let var_0 = Struct_3(_wgslsmith_sub_u32((1u | u_input.c.x) << ((func_2(vec4<u32>(0u, u_input.c.x, 0u, 25995u)) << (1u % 32u)) % 32u), min(47942u, select(~u_input.c.x, u_input.c.x, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1113f))) + 162f), _wgslsmith_f_op_f32(-1f))), Struct_2(select(~select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 42402i), vec4<i32>(u_input.b.x, 37805i, u_input.b.x, u_input.b.x), vec4<bool>(true, true, true, true)), vec4<i32>(countOneBits(u_input.b.x), u_input.b.x, ~u_input.b.x, _wgslsmith_sub_i32(-1i, u_input.b.x)), any(vec3<bool>(false, true, true)) && false), 1153f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(928f + 1357f))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27324u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(98889u, u_input.a, 1u), vec3<u32>(u_input.a, 77771u, u_input.a))), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 6973u, 42246u, u_input.c.x), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.c.x) & vec4<u32>(707u, 1u, u_input.c.x, 0u)))), 5504u, u_input.b.zy | u_input.b.yy);
    let var_1 = vec3<bool>(true, abs(i32(-1i) * -52117i) >= _wgslsmith_sub_i32(_wgslsmith_div_i32(0i ^ u_input.b.x, var_0.e.x), -2147483647i), _wgslsmith_mod_i32(u_input.b.x, var_0.c.a.x) <= -41956i);
    let var_2 = min(vec3<u32>(~u_input.c.x, 40298u, _wgslsmith_clamp_u32(~u_input.a, u_input.a, ~105421u)), _wgslsmith_clamp_vec3_u32(reverseBits(u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(1u), 6882u, ~u_input.a), vec3<u32>(4294967295u, var_0.c.c & 1u, var_0.c.c)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, 33920u, u_input.c.x), vec3<u32>(9470u, 10660u, var_0.c.c)) & select(u_input.c, firstTrailingBit(vec3<u32>(u_input.c.x, 0u, var_0.d)), any(var_1.yx))));
    var var_3 = Struct_1(all(func_3(-u_input.b.x != u_input.b.x, Struct_2(firstTrailingBit(var_0.c.a), false, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1204f, _wgslsmith_div_f32(var_0.b, var_0.b), 932f, _wgslsmith_f_op_f32(f32(-1f) * -1357f))), u_input.c.zy, _wgslsmith_sub_u32(103801u, u_input.c.x | abs(78275u)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-234f)) + _wgslsmith_f_op_f32(-var_0.b));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~reverseBits(-u_input.b.x), countOneBits(-2147483647i), func_1(), -10001i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 224f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(709f, 2783f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1713f, -1119f) * vec2<f32>(-1967f, -1310f))))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1153f * _wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))), 1170f)));
    let var_2 = vec3<bool>(true, u_input.a != u_input.c.x, any(!func_3(var_1.a.x <= var_1.a.x, Struct_2(var_0, false, u_input.c.x)).yzy));
    let var_3 = Struct_3(abs(u_input.a), -412f, Struct_2(_wgslsmith_mult_vec4_i32(var_0, max(var_0, select(var_0, var_0, vec4<bool>(true, var_2.x, var_2.x, false)))), all(select(vec2<bool>(var_2.x, true), vec2<bool>(true, true), var_2.x || var_2.x)), 42846u), u_input.c.x, u_input.b.xz);
    let var_4 = var_1.a.x;
    var var_5 = reverseBits(select(~var_3.d, 54145u, any(select(!vec4<bool>(var_3.c.b, false, true, var_2.x), select(vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(var_3.c.b, true, var_2.x, var_3.c.b)), select(vec4<bool>(true, true, var_3.c.b, false), vec4<bool>(true, var_3.c.b, true, var_2.x), false)))));
    var var_6 = var_3.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}


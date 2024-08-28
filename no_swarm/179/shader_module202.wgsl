struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = select(u_input.b.xx, reverseBits(abs(vec2<u32>(u_input.b.x, 45458u) | vec2<u32>(u_input.a, 0u))), select(vec2<bool>(any(vec4<bool>(false, true, false, true)), true), vec2<bool>(true, true), true)) ^ ~vec2<u32>(u_input.a, (u_input.a & u_input.b.x) | u_input.b.x);
    var var_1 = Struct_2(true && (abs(var_0.x) == _wgslsmith_div_u32(var_0.x, var_0.x >> (4294967295u % 32u))), vec3<bool>(~countOneBits(-10902i) >= _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 47290i), vec3<i32>(22759i, 18128i, -1i))), any(vec4<bool>(true, true, true, true)), true), all(vec2<bool>(true, true)) == true, vec4<f32>(-1621f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1655f + _wgslsmith_f_op_f32(f32(-1f) * -1285f)))), _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1214f * _wgslsmith_f_op_f32(-686f + 1834f)), _wgslsmith_f_op_f32(ceil(-1133f)), true))));
    var var_2 = Struct_2(true, select(!select(select(vec3<bool>(var_1.b.x, true, false), var_1.b, vec3<bool>(var_1.a, var_1.b.x, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.b.x, false), vec3<bool>(var_1.c, var_1.a, true)), var_1.b.x), var_1.b, true), var_1.c, _wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(abs(var_1.d))));
    var var_3 = true;
    let var_4 = Struct_1(vec2<i32>(21277i, max(0i, firstTrailingBit(-12581i))) & _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(33659i, 0i), -vec2<i32>(1i, 0i)), vec2<i32>(1i, 1i)), var_0);
    return vec3<bool>(!((_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.x, var_4.a.x, -13532i, var_4.a.x), vec4<i32>(var_4.a.x, -21190i, var_4.a.x, var_4.a.x)) >> (1u % 32u)) <= ~(-var_4.a.x)), _wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2221f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(min(-182f, -785f))) * _wgslsmith_f_op_f32(-var_2.d.x)), !(true & all(var_2.b.yx)) & var_2.b.x);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = Struct_3(!func_3(), 1684f, ~(-vec4<i32>(63841i << (u_input.b.x % 32u), ~2147483647i, 1i, -27182i)), ~max(select(~vec2<i32>(30624i, 36911i), select(vec2<i32>(2147483647i, 0i), vec2<i32>(-32057i, 1i), vec2<bool>(true, true)), vec2<bool>(true, arg_0)), vec2<i32>(select(0i, 53908i, true), ~(-4493i))));
    let var_1 = Struct_2(var_0.a.x, select(func_3(), var_0.a, vec3<bool>(u_input.a >= 1u, !any(vec4<bool>(false, var_0.a.x, arg_0, var_0.a.x)), true)), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, 1517f, var_0.b, 730f)))))))));
    var_0 = Struct_3(var_1.b, 457f, var_0.c, _wgslsmith_add_vec2_i32(vec2<i32>(-firstTrailingBit(var_0.c.x), select(select(-1104i, var_0.d.x, var_1.b.x), var_0.d.x, var_0.a.x)), _wgslsmith_div_vec2_i32(~(-var_0.c.wx), var_0.d)));
    var_0 = Struct_3(select(vec3<bool>(false, select(true, any(vec4<bool>(var_1.c, false, true, var_1.c)), false), true), select(var_0.a, select(!vec3<bool>(var_1.b.x, true, true), vec3<bool>(var_0.a.x, var_1.b.x, true), !var_1.c), !vec3<bool>(var_0.a.x, var_0.a.x, false)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, var_1.b.x), var_0.a.x), vec3<bool>(var_0.a.x, var_1.b.x, var_0.a.x), false), var_1.b, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d.x))), ~var_0.c, _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(var_0.c, var_0.c), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-16588i, var_0.d.x), ~6806i)), var_0.c.zz));
    let var_2 = Struct_5(~0u, vec3<bool>(true, func_3().x, firstTrailingBit(~2147483647i) > ~_wgslsmith_div_i32(18950i, var_0.d.x)), var_0.d.x);
    return Struct_3(!func_3(), var_1.d.x, ~vec4<i32>(min(41239i, ~var_0.d.x), countOneBits(var_2.c | var_2.c), -2147483647i, -var_2.c), ~vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(-17727i, var_2.c)), var_2.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    var var_0 = Struct_4(Struct_3(select(vec3<bool>(false, arg_0.c.a, !arg_0.c.c), vec3<bool>(true, arg_0.a.a.x, 27876i <= arg_1.a.x), select(arg_0.a.a, vec3<bool>(arg_0.b.x, false, true), select(vec3<bool>(arg_0.a.a.x, arg_0.b.x, true), arg_0.a.a, arg_0.a.a))), arg_0.a.b, arg_0.a.c, arg_0.a.c.zz), select(arg_0.b, vec2<bool>(true, true), !any(arg_0.c.b.xx)), arg_0.c);
    let var_1 = arg_0.c.d.x;
    var var_2 = Struct_5(arg_1.b.x, select(func_3(), !(!arg_0.c.b), vec3<bool>(_wgslsmith_dot_vec3_i32(var_0.a.c.wwx, var_0.a.c.xxy) > _wgslsmith_add_i32(arg_1.a.x, arg_0.a.d.x), all(!vec4<bool>(false, false, var_0.c.c, false)), !any(vec3<bool>(var_0.b.x, true, var_0.a.a.x)))), ~_wgslsmith_div_i32(-4354i, arg_0.a.d.x));
    var_0 = arg_0;
    var_2 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_add_u32(~var_2.a, u_input.b.x ^ arg_1.b.x), ~(~countOneBits(u_input.a))), vec3<bool>(any(vec4<bool>(all(vec2<bool>(var_0.c.a, false)), true, var_0.b.x, true)), false, func_3().x), 0i << (~firstTrailingBit(abs(u_input.b.x)) % 32u));
    return (_wgslsmith_sub_u32(_wgslsmith_add_u32(7488u, arg_1.b.x), firstTrailingBit(1u)) | ~(~26366u)) < _wgslsmith_mult_u32(var_2.a, _wgslsmith_sub_u32(var_2.a, arg_1.b.x));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = select(vec2<bool>(func_4(Struct_4(func_2(false), !vec2<bool>(arg_0.x, arg_0.x), Struct_2(true, arg_0.yxz, arg_0.x, vec4<f32>(1708f, 1000f, 258f, 1193f))), Struct_1(~vec2<i32>(-1i, 0i), ~vec2<u32>(4294967295u, 1u))), all(!(!arg_0.wzw))), vec2<bool>(!(func_4(Struct_4(Struct_3(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), 1113f, vec4<i32>(-24629i, 0i, 0i, -12194i), vec2<i32>(17558i, 2147483647i)), vec2<bool>(arg_0.x, arg_0.x), Struct_2(arg_0.x, arg_0.zyw, arg_0.x, vec4<f32>(854f, -746f, 412f, -669f))), Struct_1(vec2<i32>(2147483647i, 74232i), u_input.b.yx)) || arg_0.x), arg_0.x), false);
    let var_1 = Struct_1(vec2<i32>(0i, firstLeadingBit(reverseBits(-21187i)) & (func_2(var_0.x).c.x >> (u_input.b.x % 32u))), u_input.b.zx);
    var var_2 = abs(vec3<i32>(var_1.a.x, _wgslsmith_clamp_i32(~28033i, var_1.a.x, ~var_1.a.x) & _wgslsmith_div_i32(var_1.a.x, _wgslsmith_div_i32(2147483647i, 17049i)), var_1.a.x));
    var_2 = ~min(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x)) | -vec3<i32>(0i, -1i, var_2.x), select(vec3<i32>(0i, var_2.x, var_1.a.x), ~vec3<i32>(0i, var_2.x, -32553i), func_2(true).a), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 2147483647i, -27642i, -32831i), vec4<i32>(var_2.x, -1i, 44086i, 1i)), ~var_2.x, var_2.x)), ~abs(-vec3<i32>(-29919i, 0i, -1i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1025f)), _wgslsmith_f_op_f32(f32(-1f) * -651f))), 1595f) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1033f), -1888f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1065f, -455f), vec2<f32>(1f, 1f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(457f, -2978f) + vec2<f32>(-816f, -1152f)), vec2<f32>(-551f, 922f)))));
    return _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mod_u32(var_1.b.x, u_input.a) ^ max(4294967295u, u_input.b.x)), ((var_1.b.x & u_input.a) | abs(1u)) & select(_wgslsmith_mult_u32(var_1.b.x, var_1.b.x), _wgslsmith_add_u32(u_input.a, var_1.b.x), func_3().x)) >> (_wgslsmith_sub_u32(var_1.b.x, u_input.a) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = vec3<u32>(func_1(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), false)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 1u), u_input.b.x) | (u_input.b << (vec3<u32>(4294967295u, u_input.b.x, ~u_input.a) % vec3<u32>(32u)));
    var_1 = u_input.b << (~(vec3<u32>(4294967295u, 1u << (var_1.x % 32u), abs(1u)) | vec3<u32>(abs(1u), var_1.x & 0u, ~u_input.b.x)) % vec3<u32>(32u));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1464f), _wgslsmith_f_op_f32(ceil(var_0))))), vec4<f32>(_wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1577f)) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(634f - -465f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2095f)), _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(firstLeadingBit(var_1.x), u_input.a)), vec2<u32>(~(~var_1.x), ~u_input.a >> (max(23985u, u_input.a) % 32u))), max(-(~vec4<i32>(1i, 0i, 10860i, -49100i)), ~(vec4<i32>(12921i, 66968i, 2147483647i, 1i) << (vec4<u32>(113494u, 1u, var_1.x, 9890u) % vec4<u32>(32u)))) >> (vec4<u32>(reverseBits(1u), 4294967295u, 67554u, _wgslsmith_dot_vec2_u32(~vec2<u32>(18278u, u_input.b.x), ~var_1.zx)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -615f), _wgslsmith_f_op_vec2_f32(vec2<f32>(679f, 2011f) * vec2<f32>(-680f, -603f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(-var_0)), true)));
}


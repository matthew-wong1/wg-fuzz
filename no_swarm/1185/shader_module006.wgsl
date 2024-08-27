struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> vec2<i32> {
    var var_0 = true;
    return u_input.a.zx;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(reverseBits(arg_0.xxw), func_2().x, vec2<i32>(1i, -max(-1i, 0i))), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.b.x, 31112u) ^ ~vec3<u32>(1u, u_input.b.x, u_input.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<u32>(4294967295u, 1u, u_input.b.x)) & select(vec3<u32>(4294967295u, 22484u, u_input.b.x), vec3<u32>(87060u, u_input.b.x, u_input.c.x) | vec3<u32>(u_input.c.x, 2923u, u_input.c.x), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))));
    let var_1 = vec3<bool>(true, u_input.c.x != 1u, !any(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, false, true)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-613f, -895f), _wgslsmith_f_op_f32(floor(arg_3)), arg_3, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(578f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3))), arg_3))), _wgslsmith_sub_i32(arg_0.x, -1i), Struct_1(vec3<i32>(u_input.a.x & var_0.a.a.x, -8677i, _wgslsmith_sub_i32(arg_1, arg_0.x)) ^ u_input.a, -1i, vec2<i32>(0i ^ max(-1i, arg_0.x), reverseBits(_wgslsmith_div_i32(u_input.a.x, var_0.a.b)))), _wgslsmith_f_op_f32(arg_3 - -572f), var_0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(~(~vec4<i32>(-1i, 0i, -34806i, 1i)), 18886i | ((~20389i << (_wgslsmith_mod_u32(46529u, 1u) % 32u)) | u_input.a.x), _wgslsmith_dot_vec2_i32(func_2(), u_input.a.yy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-788f, -501f))))));
    var var_1 = Struct_3(min(max(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 46340i), vec4<i32>(var_0.e.c.x, -2147483647i, 44027i, 0i)) | max(vec4<i32>(var_0.b, var_0.c.b, var_0.e.c.x, -36587i), vec4<i32>(-31560i, -17522i, 1i, -78960i)), _wgslsmith_div_vec4_i32(vec4<i32>(19993i, 1i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, var_0.e.b) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) | (-min(vec4<i32>(u_input.a.x, var_0.e.b, -12460i, -52035i), vec4<i32>(u_input.a.x, -32527i, 2147483647i, 19009i)) >> (firstTrailingBit(vec4<u32>(u_input.c.x, u_input.b.x, 12356u, u_input.c.x)) % vec4<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -60411i, var_0.e.c.x, 15784i), vec4<i32>(3740i, u_input.a.x, u_input.a.x, -5081i))), max(var_0.b, abs(-2147483647i)), u_input.a.x), ~_wgslsmith_div_vec3_i32(u_input.a, max(vec3<i32>(24066i, 42498i, -1i), vec3<i32>(var_0.b, var_0.e.b, u_input.a.x)))), var_0.e.c.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, _wgslsmith_div_f32(1260f, var_0.a.x), _wgslsmith_f_op_f32(abs(-1000f)), -246f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + -1625f), _wgslsmith_f_op_f32(-508f * 318f), _wgslsmith_f_op_f32(select(-830f, -227f, true)), 859f) * var_0.a)), _wgslsmith_dot_vec4_i32(var_1.a, var_1.a), var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_0.e);
    var var_2 = max(vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, min(~1u, 4294967295u)), ~4294967295u, select(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~44876u), any(vec4<bool>(false, true, false, true))), ~(~(~0u))), ~select(~(vec4<u32>(72130u, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.c.x)), vec4<u32>(u_input.b.x, abs(32970u), _wgslsmith_mult_u32(35708u, 10426u), u_input.b.x), true));
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(39898u, _wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, 81018u)), var_2.wy), _wgslsmith_mult_vec2_u32(var_2.yw, var_2.yy | ~(var_2.yx >> (vec2<u32>(37121u, 6002u) % vec2<u32>(32u)))));
    return Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~var_1.c, 62008i, ~(var_0.c.c.x >> (1u % 32u))), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(47852i, u_input.a.x, 2147483647i)) | var_0.c.a), -50674i, reverseBits(max(select(var_0.c.a.xz, ~vec2<i32>(28204i, var_1.b.x), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<i32>(firstLeadingBit(9198i), -19649i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1193f - -362f), 281f, _wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(round(-1467f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, -1229f, 762f, -367f)), false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1820f * -1418f), -203f, _wgslsmith_f_op_f32(trunc(-1874f)), -221f))))), 1i, func_1(), _wgslsmith_f_op_f32(exp2(1f)), func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-67182i, u_input.a.x, -56748i, -28126i) & vec4<i32>(31111i, u_input.a.x, 27771i, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 0i))) >> (~firstLeadingBit(vec4<u32>(u_input.b.x, 1u, 64720u, 1u)) % vec4<u32>(32u)), _wgslsmith_mod_i32(-11140i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), -u_input.a.xy)), func_1().b, _wgslsmith_f_op_f32(-func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 4162i), vec4<i32>(-2147483647i, 16819i, 57224i, 5645i)), _wgslsmith_mult_i32(u_input.a.x, -2147483647i), func_1().b, _wgslsmith_f_op_f32(max(1489f, -1493f))).d)).c);
    let var_1 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.c), firstTrailingBit(u_input.c), vec2<u32>(u_input.c.x << ((~67145u | u_input.b.x) % 32u), 28652u));
    let var_2 = vec2<u32>(1u, _wgslsmith_mult_u32(var_1.x, ~(~var_1.x)));
    let var_3 = var_0.c;
    let var_4 = -vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(12335i, var_0.e.c.x, 0i, var_0.e.a.x), vec4<i32>(60993i, var_3.b, 25642i, u_input.a.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.c.c.x, u_input.a.x), -3729i), ~1i, 1i) ^ firstTrailingBit(_wgslsmith_mod_vec4_i32(-min(vec4<i32>(var_0.e.c.x, var_3.c.x, var_0.b, var_3.b), vec4<i32>(11913i, var_0.c.b, u_input.a.x, var_3.b)), vec4<i32>(var_0.b | 16796i, firstTrailingBit(-2147483647i), abs(-17675i), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(min(_wgslsmith_mult_u32(29752u, 0u), var_2.x)), var_0.e.a, var_3.a.x, max(~_wgslsmith_add_i32(var_0.c.b, ~(-1819i)), -1i));
}


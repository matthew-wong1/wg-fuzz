struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(886f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(f32(-1f) * -947f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 961f)))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_i32(-u_input.d.x, ~_wgslsmith_mult_i32(min(u_input.b.x, -56003i), -u_input.b.x)) & ~min(-2147483647i | max(arg_0.x, 1i), max(u_input.b.x, u_input.d.x) >> ((1u << (arg_1.x % 32u)) % 32u));
    var var_3 = Struct_2(Struct_1(arg_1.yyx, vec2<bool>(var_1 < _wgslsmith_f_op_f32(step(var_0, -1096f)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true))), _wgslsmith_div_vec4_i32(~(~vec4<i32>(1i, arg_0.x, -13313i, 17481i)), vec4<i32>(max(-1i, u_input.b.x), _wgslsmith_add_i32(2147483647i, arg_0.x), _wgslsmith_mult_i32(u_input.b.x, -44181i), firstTrailingBit(1261i)))), _wgslsmith_div_vec3_i32(-((arg_0 | vec3<i32>(u_input.b.x, 2147483647i, 27534i)) ^ ~vec3<i32>(-2147483647i, 78920i, arg_0.x)), arg_0), !vec3<bool>(var_1 > _wgslsmith_f_op_f32(max(var_0, var_1)), false, false), max(vec2<i32>(0i, (1i << (arg_1.x % 32u)) | ~(-5117i)), u_input.b), vec3<u32>(firstTrailingBit(~(u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_sub_u32(u_input.c.x, abs(1607u)) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, u_input.a.x), vec2<u32>(u_input.a.x, arg_1.x)) % 32u), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(69791u, arg_1.x, arg_1.x, arg_1.x), u_input.c))));
    var_2 = u_input.d.x;
    return vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(14836u | var_3.e.x, 4294967295u, 29926u, firstTrailingBit(29308u)), ~(~vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x))), arg_1.x);
}

fn func_2() -> Struct_4 {
    let var_0 = !vec2<bool>(!all(vec2<bool>(false, false)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(138f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(338f, -1245f))))))) - _wgslsmith_f_op_f32(f32(-1f) * -1676f));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(262f, 1000f), _wgslsmith_div_vec2_f32(vec2<f32>(-430f, -366f), vec2<f32>(-505f, 139f))), vec2<f32>(-1150f, 1f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-926f, 492f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1089f))))));
    let var_3 = countOneBits(-38547i);
    var_1 = var_2.x;
    return Struct_4(Struct_1(select(u_input.c.yzw, func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-60535i, 12453i, var_3), vec3<i32>(var_3, u_input.d.x, -1i)), ~u_input.c), vec3<bool>(true, true, 1192i == var_3)), select(select(select(vec2<bool>(var_0.x, true), var_0, var_0), vec2<bool>(false, var_0.x), false), vec2<bool>(0u <= u_input.a.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), all(!vec4<bool>(var_0.x, true, true, var_0.x))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-4544i, u_input.d.x, u_input.d.x, u_input.b.x), vec4<i32>(u_input.b.x, -5862i, 1719i, var_3)), max(-vec4<i32>(2147483647i, var_3, 50160i, var_3), -vec4<i32>(var_3, -7654i, -2147483647i, var_3)))), u_input.c.x, Struct_3(Struct_2(Struct_1(select(u_input.c.zyw, u_input.c.yyw, vec3<bool>(var_0.x, var_0.x, true)), select(vec2<bool>(false, var_0.x), var_0, true), firstTrailingBit(vec4<i32>(21896i, -10466i, var_3, u_input.b.x))), abs(vec3<i32>(-3798i, var_3, var_3)), !select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true), true), u_input.b, u_input.c.xzy)), 2147483647i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, 1000f), vec3<f32>(var_2.x, 392f, var_2.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, -832f), vec3<f32>(var_2.x, var_2.x, 1089f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(544f, var_2.x, -630f))) + vec3<f32>(var_2.x, var_2.x, var_2.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-arg_2.c.x, 2147483647i), _wgslsmith_add_vec2_i32(-(~arg_1.yy), _wgslsmith_sub_vec2_i32(-max(vec2<i32>(arg_2.c.x, arg_3.c.x), arg_1.yz), _wgslsmith_sub_vec2_i32(arg_2.c.yy, max(u_input.d, vec2<i32>(-13921i, -3547i))))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.e.x);
    let var_2 = arg_0.c.a;
    let var_3 = select(false, arg_2.b.x == arg_3.b.x, select(true, true, !(arg_2.b.x | true))) || true;
    let var_4 = max(vec3<u32>(~var_2.a.a.x, ~1u, ~6746u) ^ reverseBits(vec3<u32>(17080u, 4294967295u, arg_0.a.a.x)), arg_2.a) ^ arg_2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - 1045f);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_2(), -_wgslsmith_div_vec3_i32(~arg_0.a.b, _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.b.x, -2147483647i, -2147483647i), arg_0.a.a.c.xyx), ~arg_0.a.b)), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(73143u, 29867u, 78641u), abs(u_input.c.wzz)), vec2<bool>(arg_0.a.c.x, true), ~vec4<i32>(-2147483647i, ~2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.d, arg_0.a.b.xx))), func_2().c.a.a));
    var var_1 = u_input.c.x;
    var var_2 = vec3<bool>(all(arg_0.a.c), arg_0.a.c.x, func_2().a.b.x || any(!(!vec4<bool>(arg_0.a.a.b.x, arg_0.a.a.b.x, false, arg_0.a.a.b.x))));
    var_2 = !(!(!select(vec3<bool>(false, false, var_2.x), !vec3<bool>(arg_0.a.a.b.x, true, var_2.x), arg_0.a.c)));
    var_0 = -1229f;
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 1707f)))))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, abs(arg_0.b.x)), arg_2.b.x);
    var var_2 = Struct_3(func_1(Struct_3(func_1(Struct_3(arg_2)))));
    var var_3 = -2147483647i;
    var var_4 = Struct_1(~func_3(arg_2.b, vec4<u32>(arg_0.a.a.x, 44827u, 83527u, 19634u)) | func_1(Struct_3(func_2().c.a)).a.a, func_2().c.a.a.b, var_2.a.a.c);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), true), vec4<bool>(~u_input.c.x >= u_input.a.x, _wgslsmith_div_i32(1i, u_input.b.x) < reverseBits(u_input.b.x), func_5(func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, 1u, 0u), vec2<bool>(false, false), vec4<i32>(u_input.b.x, u_input.d.x, -21793i, 1i)), vec3<i32>(u_input.d.x, 0i, 32586i), vec3<bool>(true, false, false), u_input.b, vec3<u32>(u_input.a.x, 7650u, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(195f, 1343f, 206f))), Struct_2(Struct_1(u_input.c.xyy, vec2<bool>(false, false), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, 65115i)), vec3<i32>(u_input.b.x, u_input.d.x, 0i), vec3<bool>(true, false, false), u_input.d, vec3<u32>(u_input.a.x, u_input.c.x, 1u)), func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.c.x, 47434u), vec2<bool>(true, true), vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, 11680i)), vec3<i32>(u_input.d.x, 2147483647i, 8693i), vec3<bool>(false, false, true), u_input.b, vec3<u32>(30046u, u_input.a.x, 85785u))))), u_input.d.x > select(-1i, u_input.b.x, false)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, true), true), true)));
    let var_1 = select(~(~_wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, u_input.d.x, -39910i, 51436i), vec4<i32>(-2147483647i, u_input.b.x, u_input.d.x, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -25309i, u_input.b.x, -15823i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 0i), vec4<i32>(0i, u_input.b.x, 6857i, 1i)))), u_input.b.x, any(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), true)));
    var_0 = !all(!vec4<bool>(true, true, false, func_2().c.a.a.b.x));
    let var_2 = -1612f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2 - var_2), var_2, _wgslsmith_f_op_f32(var_2 - -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_2, -625f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2, var_2, var_2)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -2060f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 584f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(346f, var_2, 1000f))) - vec3<f32>(-466f, _wgslsmith_f_op_f32(1105f + 1089f), 486f)), true)));
    let var_4 = func_2().c.a.c;
    var_0 = var_4.x & (_wgslsmith_f_op_f32(-136f * var_3.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * var_3.x) * _wgslsmith_f_op_f32(-var_3.x)) - _wgslsmith_f_op_f32(step(-625f, 758f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1, 1i), _wgslsmith_div_f32(1051f, 208f), _wgslsmith_clamp_i32(firstTrailingBit(var_1), 8040i, 1i), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), -1000f, _wgslsmith_f_op_f32(var_2 + -465f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, var_3.x))), -478f, var_2, 571f)));
}


struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = 115f;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(333f, 1496f, -188f, -240f) * vec4<f32>(1725f, -1138f, 793f, 545f)))))));
    var var_3 = -_wgslsmith_mod_i32(var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, 0i, arg_1), firstLeadingBit(var_1.d.xxy)));
    var_3 = _wgslsmith_mod_i32(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), var_1.a.yz), -var_1.a.x), var_1.a.x, true), -(~0i)) | -1i;
    return reverseBits(-arg_0.d.x << (0u % 32u));
}

fn func_2() -> vec4<f32> {
    let var_0 = (_wgslsmith_dot_vec3_u32(vec3<u32>(~69550u, ~u_input.a.x, u_input.a.x), ~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(4294967295u, 0u, u_input.a.x))) ^ abs(countOneBits(1u))) | _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    var var_1 = Struct_1(countOneBits(vec3<i32>(-(i32(-1i) * -35577i), select(_wgslsmith_clamp_i32(0i, -2147483647i, 27847i), -21472i, any(vec3<bool>(false, false, true))), func_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, 0i), vec2<u32>(u_input.a.x, 13520u), vec4<u32>(62224u, u_input.a.x, var_0, u_input.a.x), vec4<i32>(-1i, 2147483647i, 18224i, -57343i)), -1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 67982u, u_input.a.x), vec4<u32>(4294967295u, var_0, u_input.a.x, 1u)) % 32u))), ~(~u_input.a.yy), ~(~(vec4<u32>(4294967295u, u_input.a.x, 45170u, var_0) | vec4<u32>(var_0, 0u, u_input.a.x, 0u))) | (abs(select(vec4<u32>(1u, u_input.a.x, 1u, 2882u), vec4<u32>(var_0, var_0, 19611u, 4294967295u), vec4<bool>(true, false, false, false))) | abs(~vec4<u32>(4294967295u, var_0, u_input.a.x, u_input.a.x))), -vec4<i32>(~17428i, select(-1793i << (1u % 32u), 1i, any(vec3<bool>(false, true, false))), _wgslsmith_clamp_i32(func_3(Struct_1(vec3<i32>(1i, 10382i, 54959i), vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<i32>(-2147483647i, 2147483647i, -28562i, -27982i)), 1i), 1i, _wgslsmith_sub_i32(-20612i, -22061i)), max(abs(0i), _wgslsmith_clamp_i32(-46149i, 1i, 1i))));
    let var_2 = max(var_1.a, min(_wgslsmith_div_vec3_i32((var_1.d.wxz << (vec3<u32>(var_0, var_1.c.x, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(0u, 72289u, 16470u) % vec3<u32>(32u)), var_1.a), -max(var_1.d.wzz, abs(var_1.d.yyw))));
    var var_3 = Struct_1(vec3<i32>(1i, var_2.x, -4911i), ~abs(select(vec2<u32>(u_input.a.x, 1u), abs(var_1.b), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), var_1.c, var_1.d);
    var_1 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-5617i & var_3.a.x, var_2.x, -var_1.a.x) & (-var_1.d.x << (firstTrailingBit(47480u) % 32u)), var_2.x, 1i | countOneBits(var_2.x)), var_1.b, ~vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(11292u, var_3.c.x)), 1u, ~_wgslsmith_mult_u32(u_input.a.x, 74343u), ~var_1.b.x), ~var_1.d);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1016f, -552f, -297f, -238f), vec4<f32>(261f, 656f, 197f, -928f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-226f, 445f, true)) - _wgslsmith_f_op_f32(1610f * -1123f)), _wgslsmith_f_op_f32(-277f - -265f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(565f, -1247f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1168f, 1858f, -1366f), vec4<f32>(1000f, 934f, 1419f, -775f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, -351f, 514f, -952f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(477f, -142f, -869f, -966f))))))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), !vec4<bool>(select(false, false, false), false, any(vec2<bool>(true, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(535f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f - -271f)))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3, -141f, 576f, arg_2)))))))));
    let var_1 = vec2<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(max(u_input.a.x, ~40001u), arg_1.x), ~1u));
    let var_2 = !(!(var_1.x == (reverseBits(4294967295u) | _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, 95246u, var_1.x, u_input.a.x)))));
    let var_3 = _wgslsmith_f_op_f32(1610f + _wgslsmith_f_op_f32(floor(2026f)));
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(var_0));
    return Struct_1(vec3<i32>(~(-2147483647i), -max(select(-2147483647i, 13248i, true), ~(-66832i)), -1i), u_input.a.xx, _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, ~var_1.x, var_1.x, u_input.a.x), ~(~(~vec4<u32>(4294967295u, 0u, 51735u, arg_1.x)))), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, -2147483647i, 17550i, -1i), vec4<i32>(1i, 1i, 1i, 1i)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -313f);
    let var_2 = (arg_0.b.x ^ u_input.a.x) << (~u_input.a.x % 32u);
    var_0 = arg_0.d.x;
    var_0 = countOneBits(countOneBits(-31155i));
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_div_u32(13390u, ~1u), ~u_input.a.x << ((u_input.a.x & 70061u) % 32u)), u_input.a.x), reverseBits(~_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 55474u, u_input.a.x)), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))));
    var_0 = firstLeadingBit(vec3<u32>(func_4(func_1(false, vec4<u32>(0u, var_0.x, var_0.x, var_0.x), 441f, -1000f)) ^ u_input.a.x, _wgslsmith_add_u32(~min(var_0.x, var_0.x), var_0.x), var_0.x));
    var var_1 = func_1(reverseBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(51219i, 0i, 2147483647i), vec3<i32>(-2147483647i, 34423i, 28837i))) <= select(firstLeadingBit(func_1(true, vec4<u32>(23243u, u_input.a.x, 67463u, 55711u), 1350f, 841f).a.x), ~(-2147483647i), ~1u <= var_0.x), func_1(true, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 27462u, 15386u, 20795u), vec4<u32>(u_input.a.x, var_0.x, 56316u, var_0.x)), ~vec4<u32>(9140u, 4294967295u, 22166u, 25450u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1463f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1990f * -1000f))).c << (vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(58494u, u_input.a.x, 2493u, var_0.x)), countOneBits(vec4<u32>(var_0.x, 1u, var_0.x, u_input.a.x))), (u_input.a.x | u_input.a.x) >> (~44836u % 32u), var_0.x, ~15179u) % vec4<u32>(32u)), 553f, -145f);
    var_1 = Struct_1((abs(var_1.d.xzy) | max(~var_1.d.xxy, -vec3<i32>(36806i, var_1.d.x, 5728i))) ^ func_1(!(-1i <= var_1.a.x), var_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1146f + 135f))), 1f).a, var_0.xz, ~vec4<u32>(abs(~var_0.x), abs(13813u), 0u, u_input.a.x), var_1.d);
    let var_2 = func_1(true, vec4<u32>(3269u, _wgslsmith_dot_vec2_u32(var_0.zz, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, var_0.x)), var_0.yz)), ~(_wgslsmith_mod_u32(var_0.x, 0u) >> (_wgslsmith_clamp_u32(var_0.x, var_1.b.x, 61896u) % 32u)), 27307u & _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -154f));
    let var_3 = Struct_1(_wgslsmith_mod_vec3_i32(var_2.a, ~_wgslsmith_div_vec3_i32(max(vec3<i32>(var_1.d.x, -1i, 1i), vec3<i32>(var_1.a.x, -12182i, var_2.a.x)), vec3<i32>(var_1.a.x, 2147483647i, -42214i) & var_1.d.xxw)), ~((vec2<u32>(var_0.x, var_1.b.x) ^ vec2<u32>(var_1.c.x, 4294967295u)) | vec2<u32>(u_input.a.x, ~43296u)), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, var_2.b.x)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1481u), var_1.b) % vec2<u32>(32u)), ~var_0.yz), var_2.b.x, func_1(any(vec2<bool>(true, true)), vec4<u32>(77134u, _wgslsmith_mod_u32(var_1.b.x, 4294967295u), 1u, ~26116u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-226f))), _wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(266f * -490f))).b.x, var_0.x), -(~var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, 1498f);
}


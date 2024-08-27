struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1.a.yy;
    var_0 = arg_1.a.xx;
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1270f + -970f))) - 648f), _wgslsmith_f_op_f32(max(arg_1.d.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c.a.x * arg_1.d.a.x))))), arg_1.c.a.x, arg_1.d.a.x), var_0.x || true, max(81113u, 0u), _wgslsmith_mult_vec4_i32(arg_0, arg_1.d.d));
    var_0 = vec2<bool>(any(select(!vec4<bool>(arg_1.d.b, true, true, true), !vec4<bool>(var_0.x, false, true, false), select(vec4<bool>(true, true, var_1.b, var_0.x), vec4<bool>(true, var_1.b, false, true), vec4<bool>(var_0.x, true, var_1.b, false)))) & any(select(select(arg_1.a.xz, arg_1.a.yz, true), arg_1.a.zz, !var_0.x)), any(!(!(!arg_1.a))));
    var var_2 = vec2<bool>(var_0.x, (~2147483647i >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_1.c, var_1.c, 4294967295u), arg_1.d.c << (var_1.c % 32u)) % 32u)) == _wgslsmith_div_i32(~(-20043i), ~1i));
    return 1u;
}

fn func_3() -> bool {
    var var_0 = ~(~firstLeadingBit(4294967295u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -767f);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-304f * 641f) - -504f)))), 1f, 1f);
    let var_3 = Struct_2(!(!vec3<bool>(select(false, true, true), true, false)), all(vec2<bool>(!all(vec2<bool>(false, true)), ~8762u == _wgslsmith_dot_vec3_u32(vec3<u32>(12215u, 4294967295u, 89862u), vec3<u32>(0u, 67618u, 0u)))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1391f, var_2.x, var_2.x, 707f))))))), all(vec2<bool>(true, true)), 1u, select(-(u_input.d ^ u_input.d), firstTrailingBit(vec4<i32>(11521i, 0i, 28547i, -2147483647i)) ^ u_input.d, vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1063f, -1148f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(454f, 1076f, var_2.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, 1697f, -1959f)))), false, ~(~(~1u)), vec4<i32>(-76611i, 1i, u_input.b, ~1i >> (abs(1u) % 32u))));
    let var_4 = 1u ^ var_3.d.c;
    return var_3.a.x;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = -17414i;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-261f))), 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-742f, 379f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1180f * _wgslsmith_f_op_f32(f32(-1f) * -250f)), 2214f)));
    var var_2 = Struct_3(vec4<u32>(~firstTrailingBit(9128u), arg_1.x, ((arg_1.x >> (arg_1.x % 32u)) ^ 16648u) | ~_wgslsmith_mult_u32(arg_1.x, 0u), _wgslsmith_clamp_u32(5448u, _wgslsmith_div_u32(~arg_1.x, ~28927u), func_2(-vec4<i32>(arg_3.x, u_input.a, arg_2.x, arg_2.x), Struct_2(vec3<bool>(arg_0, arg_0, false), arg_0, Struct_1(vec4<f32>(432f, 1712f, 1637f, var_1.x), arg_0, arg_1.x, arg_3), Struct_1(vec4<f32>(var_1.x, var_1.x, 734f, var_1.x), true, 4294967295u, arg_3))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 161f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 627f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-965f, var_1.x, 1172f, -1415f) + vec4<f32>(2268f, var_1.x, var_1.x, 138f)), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0))))), func_3(), abs(_wgslsmith_div_u32(arg_1.x, 0u)) | arg_1.x, min(arg_3, _wgslsmith_mult_vec4_i32(max(vec4<i32>(arg_2.x, 2147483647i, arg_3.x, arg_3.x), u_input.d), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(arg_2.x, 0i, 1i, arg_3.x), vec4<i32>(-20980i, -2147483647i, arg_3.x, -2147483647i))))), Struct_2(vec3<bool>(select(func_3(), -1470f > var_1.x, true || arg_0), countOneBits(1u) > (arg_1.x | 0u), all(vec4<bool>(arg_0, false, arg_0, arg_0))), true & all(!vec3<bool>(arg_0, false, false)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(260f - var_1.x), 341f, _wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x), !(!arg_0), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, arg_1.x), ~13339u), (u_input.d << (arg_1 % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(arg_1, arg_1) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1533f, var_1.x, var_1.x, var_1.x)))), any(vec2<bool>(true, arg_0)), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_1.yzx), _wgslsmith_mod_vec3_u32(arg_1.zxw, vec3<u32>(arg_1.x, arg_1.x, arg_1.x))), vec4<i32>(~23476i, -2147483647i, u_input.b << (arg_1.x % 32u), max(1i, 0i)))));
    var var_3 = var_2.c;
    var_3 = var_2.c;
    return countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d.d.x, var_2.c.d.d.x, -2147483647i), vec3<i32>(arg_3.x, var_3.d.d.x, arg_2.x)), -(arg_2.x >> (var_3.d.c % 32u))), ~(_wgslsmith_mult_i32(-1i, var_3.c.d.x) & (var_2.b.d.x >> (1u % 32u)))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = arg_1.x;
    var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(183f, 1000f, -1048f, 764f), vec4<f32>(-215f, -222f, 628f, 359f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-910f, 1350f, 1959f, 664f), vec4<f32>(2283f, 131f, -918f, 861f), vec4<bool>(false, true, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1678f, 1000f, -1334f, 375f)))))), arg_1.x, 68481u, vec4<i32>(-arg_2.x, 10141i, arg_3.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-64513i, _wgslsmith_mult_i32(-1i, 9456i)), (arg_0 ^ arg_2.x) >> (4294967295u % 32u), countOneBits(firstTrailingBit(-1i)))));
    var_0 = !arg_1.x;
    let var_2 = _wgslsmith_sub_vec4_u32(~(~countOneBits(~vec4<u32>(var_1.c, var_1.c, var_1.c, var_1.c))), vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_1.c), max(0u, 0u) | _wgslsmith_sub_u32(28251u, var_1.c), abs(_wgslsmith_mult_u32(var_1.c, var_1.c)), max(var_1.c, ~76595u)) & ~vec4<u32>(var_1.c, 4294967295u, var_1.c, ~0u));
    return Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(40638u, 13959u, 1u >> (var_1.c % 32u), select(var_2.x, var_1.c, arg_1.x)), countOneBits(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c, var_2.x, 44082u, var_1.c), vec4<u32>(87300u, 4294967295u, 1u, 73343u))))), var_1, Struct_2(vec3<bool>(all(select(vec4<bool>(var_1.b, var_1.b, true, arg_1.x), vec4<bool>(true, false, arg_1.x, false), var_1.b)), !(2147483647i >= arg_3.x), true), func_3(), var_1, Struct_1(vec4<f32>(-153f, -1468f, _wgslsmith_div_f32(var_1.a.x, var_1.a.x), var_1.a.x), false, 1u, -reverseBits(arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2635u;
    var var_1 = func_4(firstTrailingBit(~func_1(select(true, false, true), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(4294967295u, var_0, 45454u, 1u)), vec2<i32>(-35794i, 10212i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 38719i, u_input.b), vec4<i32>(-1i, 0i, u_input.c.x, u_input.b)))), !select(vec3<bool>(func_3(), true, true), vec3<bool>(true, true, true), (u_input.d.x < u_input.c.x) | true), _wgslsmith_mult_vec2_i32(~u_input.c.zx, ~(~vec2<i32>(u_input.b, 1i)) | ~vec2<i32>(-6697i, 1i)), u_input.d);
    var var_2 = var_1.c;
    var_1 = Struct_3(reverseBits(~(~_wgslsmith_add_vec4_u32(vec4<u32>(20448u, 0u, 12650u, var_2.c.c), vec4<u32>(4294967295u, 61799u, 77970u, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.c.a.x), _wgslsmith_f_op_f32(809f * var_2.c.a.x), var_2.c.a.x)), false, var_2.c.c, u_input.d), var_1.c);
    let var_3 = Struct_3(func_4(~min(var_2.d.d.x, 0i), select(select(var_1.c.a, vec3<bool>(var_2.d.b, var_1.b.b, true), !vec3<bool>(var_1.b.b, var_1.c.b, true)), select(vec3<bool>(var_2.d.b, var_2.d.b, var_1.b.b), vec3<bool>(var_1.b.b, var_1.b.b, var_2.a.x), vec3<bool>(false, false, var_2.d.b)), var_1.c.d.b), -u_input.d.xy, select(_wgslsmith_sub_vec4_i32(max(vec4<i32>(var_1.c.d.d.x, -42980i, -13399i, 40832i), var_1.b.d), var_1.b.d), _wgslsmith_mult_vec4_i32(~var_1.b.d, vec4<i32>(var_1.c.d.d.x, var_1.b.d.x, -703i, var_1.c.c.d.x)), true)).a, Struct_1(vec4<f32>(var_1.c.c.a.x, _wgslsmith_div_f32(var_2.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -134f)), var_2.c.a.x, _wgslsmith_f_op_f32(-1606f - -1140f)), true, var_2.c.c, min(firstTrailingBit(var_1.b.d) >> (var_1.a % vec4<u32>(32u)), vec4<i32>(-20265i, var_2.c.d.x, 2147483647i, 0i) | -vec4<i32>(var_2.d.d.x, var_1.b.d.x, u_input.b, 1i))), func_4(countOneBits(-(~var_2.c.d.x)), !vec3<bool>(true, false, any(vec3<bool>(var_1.b.b, true, var_1.c.c.b))), vec2<i32>(var_1.b.d.x, var_2.d.d.x), vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(countOneBits(0i), 1i), 15310i, ~1i)).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1169f), func_4(29781i, var_2.a, var_2.c.d.ww, vec4<i32>(var_3.c.c.d.x, 63467i, var_2.c.d.x, -7277i)).c.c.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.c.a.x * var_3.c.d.a.x))))), _wgslsmith_f_op_f32(min(-474f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(960f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2152f + var_2.c.a.x) + var_1.c.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.c.c.a.x, var_1.b.a.x)) - _wgslsmith_f_op_f32(-var_2.c.a.x)), -286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.c.a.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - 614f), _wgslsmith_f_op_f32(-var_2.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -185f), 1400f))), vec4<f32>(192f, 368f, 960f, _wgslsmith_f_op_f32(min(var_1.c.c.a.x, -315f))));
}


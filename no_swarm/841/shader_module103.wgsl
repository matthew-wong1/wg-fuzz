struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = any(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, arg_0.d.x <= arg_0.d.x), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), true), !vec2<bool>(any(vec2<bool>(false, false)), true)));
    global0 = -min(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -2147483647i), select(select(u_input.b.yz, abs(vec2<i32>(global0.x, -29864i)), any(vec3<bool>(var_0, var_0, true))), vec2<i32>(2147483647i, abs(u_input.b.x)), true));
    return ~arg_0.a.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1593f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -851f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, -242f, -1157f))))));
    let var_1 = select(-(~abs(vec2<i32>(u_input.b.x, 10936i))), ~_wgslsmith_mod_vec2_i32(~vec2<i32>(global0.x, u_input.b.x), abs(vec2<i32>(-37073i, -4833i))), all(vec3<bool>(true, true, true))) << (vec2<u32>(39733u, 58301u) % vec2<u32>(32u));
    global0 = vec2<i32>(global0.x, var_1.x);
    var var_2 = Struct_1(~vec4<u32>(24529u, u_input.a.x, func_3(Struct_1(vec4<u32>(28220u, 0u, 3891u, 1u), u_input.b.zx, vec4<u32>(44552u, 1u, 29276u, 4294967295u), vec4<f32>(882f, arg_1, 547f, -602f), u_input.a.x), ~u_input.a.zx), u_input.a.x), _wgslsmith_mod_vec2_i32(-(u_input.b.ww ^ vec2<i32>(2147483647i, var_1.x)) ^ u_input.b.wz, ~vec2<i32>(_wgslsmith_sub_i32(2147483647i, 1i), -1i)), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(3790u, u_input.a.x, arg_0, 1u) & vec4<u32>(u_input.a.x, arg_0, 53183u, 21271u), ~vec4<u32>(0u, 64233u, 92578u, u_input.a.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(4294967295u), ~u_input.a.x), 10151u), max(4934u, 12572u), (arg_0 << (~53127u % 32u)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 24376u), vec3<u32>(7985u, 1u, 4294967295u)), vec3<u32>(4294967295u, 4257u, u_input.a.x)) % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, arg_1, var_0.x, -362f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_0.x, -1157f, var_0.x) * vec4<f32>(727f, var_0.x, var_0.x, -125f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(816f, arg_1, arg_1, var_0.x))))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), select(true, true, true)))), ~580u);
    var var_3 = -839f;
    return Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_0, 4294967295u >> (arg_0 % 32u)), _wgslsmith_mult_u32(11937u | ~arg_0, _wgslsmith_add_u32(_wgslsmith_mult_u32(4974u, 1u), var_2.a.x)), var_2.a.x, min(~(~u_input.a.x), ~firstTrailingBit(arg_0))), var_2.b, var_2.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d.x))) + _wgslsmith_f_op_f32(-145f + -171f)), _wgslsmith_f_op_f32(-880f + arg_1), -312f, arg_1), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = ~(~countOneBits(_wgslsmith_add_vec2_u32(arg_1.a.zy, arg_1.c.xy)) & vec2<u32>(countOneBits(1u), func_3(func_2(arg_0.e, 459f), arg_0.c.zz)));
    return vec2<i32>(-45230i, global0.x << (reverseBits(abs(countOneBits(25847u))) % 32u));
}

fn func_1() -> f32 {
    global0 = ~(_wgslsmith_mult_vec2_i32(~vec2<i32>(global0.x, 2147483647i) << (~u_input.a.yz % vec2<u32>(32u)), vec2<i32>(-1i) * -u_input.b.ww) ^ min(vec2<i32>(_wgslsmith_mult_i32(global0.x, u_input.b.x), _wgslsmith_div_i32(u_input.b.x, 2147483647i)), ~vec2<i32>(-2147483647i, 2147483647i) & firstTrailingBit(u_input.b.wx)));
    let var_0 = Struct_1(~(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) ^ (vec4<u32>(1u, 0u, 50270u, 42439u) >> (vec4<u32>(2026u, u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u)))) & max(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32377u)), vec4<u32>(0u, 1u, 0u, u_input.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(44125u, 1u, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), func_4(func_2(firstLeadingBit(60695u), _wgslsmith_f_op_f32(abs(-838f))), func_2(~(~u_input.a.x), 1f)), vec4<u32>(select(1u, 9746u, true) << (~(60424u >> (u_input.a.x % 32u)) % 32u), u_input.a.x, u_input.a.x, func_3(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(-5795i, 2147483647i), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1201f, 1241f, 1158f, 407f) + vec4<f32>(-711f, 1881f, 340f, 261f)), u_input.a.x), _wgslsmith_mult_vec2_u32(~u_input.a.zx, u_input.a.zz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -574f, -616f, -1215f) - vec4<f32>(1000f, -1110f, -267f, 653f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(445f, 230f, -1275f, -2155f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1433f, 1972f, 777f, 869f), vec4<f32>(384f, -876f, 1220f, 392f), false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1463f, 955f, 711f, -862f) * vec4<f32>(2962f, 2147f, 1103f, 260f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1806f, -2132f, 592f, -837f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1295f, 1445f, 189f, 565f) + vec4<f32>(-469f, -1604f, -1215f, 1204f))))), ~min(~_wgslsmith_sub_u32(u_input.a.x, 4294967295u), firstLeadingBit(u_input.a.x)));
    let var_1 = select(vec3<bool>(true, true, !all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), false), all(vec3<bool>(true, true, true))), all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), !(-26889i != u_input.b.x))));
    var var_2 = u_input.b.xx;
    let var_3 = Struct_1(var_0.a, vec2<i32>(~var_0.b.x, -_wgslsmith_sub_i32(var_0.b.x, min(var_2.x, 33918i))), countOneBits(var_0.c), var_0.d, u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-796f, _wgslsmith_f_op_f32(exp2(var_3.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), func_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1210f + 695f))).d.x), -2047f, all(vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)) | true, true))));
    global0 = vec2<i32>(-(1i & (min(u_input.b.x, -29148i) | (-30912i << (1u % 32u)))), func_4(Struct_1(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), ~vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.a.x, 1u, 22456u), vec4<u32>(u_input.a.x, 1u, 82358u, u_input.a.x) >> (vec4<u32>(1u, 3836u, 1u, 37464u) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(1416f * -458f), -198f, _wgslsmith_f_op_f32(func_1()), -581f), u_input.a.x), func_2(u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(f32(-1f) * -505f))))).x);
    var var_1 = func_2(~u_input.a.x, 317f);
    var_1 = Struct_1(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, u_input.a.x, 4294967295u, var_1.c.x) << (var_1.c % vec4<u32>(32u)), select(var_1.c, var_1.c, true), var_1.a)), _wgslsmith_mod_vec2_i32(select(-u_input.b.zw, var_1.b, !(global0.x >= var_1.b.x)), ~vec2<i32>(1i, global0.x | 1i)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a, firstTrailingBit(vec4<u32>(4294967295u, 6542u, u_input.a.x, var_1.a.x))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, var_1.e, 17815u))), _wgslsmith_f_op_vec4_f32(step(var_1.d, var_1.d)), ~(4294967295u | u_input.a.x) << (u_input.a.x % 32u));
    var_0 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(959f, func_2(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(41061u, 4294967295u)), var_1.d.x).d.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(1033f - _wgslsmith_f_op_f32(exp2(var_1.d.x))))), var_1.e);
}


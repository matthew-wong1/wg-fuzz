struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_4(arg_0, firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, 1u >> (u_input.b % 32u)), 2004u)));
    let var_1 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_0), 49234u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, arg_0)) ^ ~vec2<u32>(var_0.a, 4294967295u)), Struct_2(abs(~(-1i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), u_input.a.x)), u_input.a.yx);
    let var_2 = Struct_4(var_1.a, var_1.a & (~(u_input.b >> (arg_0 % 32u)) | ~52592u));
    let var_3 = _wgslsmith_f_op_f32(ceil(164f));
    var var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~(~vec2<i32>(u_input.a.x, 0i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.zx), vec2<i32>(u_input.a.x, u_input.a.x))), -_wgslsmith_mod_vec2_i32(select(u_input.a.zy, var_1.c, vec2<bool>(true, false)), vec2<i32>(u_input.a.x, -1i))) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.b, var_1.a) ^ ~68186u, arg_0, 1u) % 32u);
    return false;
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> Struct_2 {
    var var_0 = vec3<i32>(u_input.a.x, -(~22173i), u_input.a.x);
    let var_1 = Struct_1(vec2<bool>(arg_1.a.x, any(!select(arg_1.a.yxz, arg_1.a.wzx, arg_1.a.xzw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) - _wgslsmith_f_op_f32(284f + -1445f)))), 59186u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(sign(555f)), _wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(max(2021f, -844f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1754f, -281f, 1158f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-664f, -1001f, 489f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, 1298f))))))));
    let var_2 = -abs(~(vec4<i32>(var_0.x, -2147483647i, 12753i, 0i) & vec4<i32>(0i, -1i, -31280i, 1i))) | vec4<i32>(arg_0, var_0.x, -_wgslsmith_add_i32(-66007i, max(u_input.a.x, -36433i)), max(_wgslsmith_add_i32(arg_0, _wgslsmith_add_i32(arg_0, -2147483647i)), abs(~arg_0)));
    var var_3 = Struct_2(-_wgslsmith_mod_i32(var_0.x, abs(u_input.a.x)), max(abs(~arg_0), -1i >> (_wgslsmith_add_u32(0u, u_input.b) % 32u)));
    var var_4 = 0u != arg_1.b;
    return Struct_2(countOneBits(countOneBits(_wgslsmith_mult_i32(u_input.a.x, 2147483647i))), -44685i);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = func_3(~(-20979i), Struct_5(vec4<bool>(false, !(!arg_1), select(all(vec3<bool>(arg_1, false, false)), func_2(1u), arg_1 == true), true), ~34681u));
    var var_1 = select(!vec2<bool>(reverseBits(-38671i) == _wgslsmith_clamp_i32(4950i, 2147483647i, var_0.b), any(vec3<bool>(true, false, true))), vec2<bool>(false, any(select(!vec4<bool>(arg_1, arg_1, arg_1, true), select(vec4<bool>(false, true, arg_1, true), vec4<bool>(false, false, false, false), arg_1), !vec4<bool>(arg_1, arg_1, arg_1, false)))), !any(vec4<bool>(-1150f >= arg_0.x, any(vec4<bool>(arg_1, arg_1, true, arg_1)), true, arg_2 < 2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1414f)) * _wgslsmith_f_op_f32(-1466f - -1000f)) + arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_0.x)))));
    var var_3 = 32603u;
    let var_4 = Struct_3(~(~countOneBits(firstTrailingBit(18155u))), Struct_2(var_0.a, _wgslsmith_mult_i32(-u_input.a.x, -13052i)), u_input.a.xx);
    return _wgslsmith_f_op_f32(sign(arg_0.x));
}

fn func_4(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = select(select(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false))), select(vec2<bool>(true, all(vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(false, true, false))), true), !vec2<bool>(false, _wgslsmith_f_op_f32(floor(-217f)) >= 1594f), vec2<bool>(false, true || select(-885i >= u_input.a.x, u_input.a.x >= u_input.a.x, true)));
    let var_1 = Struct_3(~u_input.b, func_3(u_input.a.x, Struct_5(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), 1u)), firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -45404i) & vec2<i32>(u_input.a.x, u_input.a.x), min(u_input.a.zz, u_input.a.xz)), u_input.a.yx)));
    return vec4<u32>(~2698u, min(~_wgslsmith_clamp_u32(0u, ~4294967295u, ~1u), abs(40544u)), u_input.b, abs(var_1.a));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = vec4<bool>(select(any(!vec3<bool>(false, false, arg_2.a.x)), !all(vec4<bool>(arg_2.a.x, false, true, arg_2.a.x)), true) & true, true, !all(arg_2.a), true);
    var var_1 = arg_2;
    let var_2 = Struct_3(2430u, Struct_2(func_3(1i, Struct_5(vec4<bool>(false, false, true, arg_2.a.x), ~0u)).b, -19183i), arg_3.zz);
    var var_3 = _wgslsmith_mod_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, 2147483647i, -42254i, u_input.a.x), firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x)))), vec4<i32>(-1i, arg_3.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(var_2.b.a, -1i), var_2.c, var_1.a.x)), vec2<i32>(u_input.a.x, u_input.a.x) & ~vec2<i32>(1i, var_2.b.b)), arg_3.x));
    let var_4 = arg_1.x;
    return Struct_5(select(!(!select(vec4<bool>(var_0.x, false, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, false, false), var_0)), var_0, true), 81153u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~u_input.a.x | 8567i, 14844i, -483i, u_input.a.x) << (vec4<u32>(u_input.b, _wgslsmith_sub_u32(~u_input.b, 1u ^ u_input.b) >> (0u % 32u), 4294967295u, 1u) % vec4<u32>(32u));
    var var_1 = func_5(u_input.b, func_4(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-818f, -630f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-1932f, 588f, -1000f), true, var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1021f))))), Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), false), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, 174f, -1954f)), (32491i == var_0.x) || false, -11880i)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u) ^ vec2<u32>(1u, 57986u), ~vec2<u32>(u_input.b, 1u)), vec3<f32>(278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-581f)) + _wgslsmith_f_op_f32(-1000f * -1108f)), _wgslsmith_f_op_f32(f32(-1f) * -108f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(433f, 836f), vec2<f32>(654f, -162f))), vec2<f32>(1014f, 1328f), false)))), var_0.zww);
    var_0 = vec4<i32>(u_input.a.x, 14712i, ~abs(4867i), _wgslsmith_sub_i32(func_3(-1i << (_wgslsmith_clamp_u32(93042u, 20282u, 44174u) % 32u), Struct_5(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), var_1.b ^ u_input.b)).b, _wgslsmith_div_i32(u_input.a.x, countOneBits(17783i))));
    let var_2 = Struct_3(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 85235u), vec2<u32>(0u, u_input.b)))), func_3(max(max(var_0.x, ~(-1i)), 10969i), func_5(64890u, vec4<u32>(~var_1.b, 1u, 46666u, max(u_input.b, 82588u)), Struct_1(vec2<bool>(false, var_1.a.x), _wgslsmith_f_op_f32(603f * -603f), 1u | u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, 226f, 730f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2606f, -985f) - vec2<f32>(384f, 1327f))), -vec3<i32>(23212i, -1i, 43775i))), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x & var_0.x, var_0.x), u_input.a.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(1i, func_5(_wgslsmith_sub_u32(1u << (u_input.b % 32u), func_4(vec3<f32>(-1000f, 1000f, 1478f)).x), max(vec4<u32>(u_input.b, 21398u, 32046u, var_1.b), vec4<u32>(48429u, u_input.b, 0u, var_2.a)), Struct_1(select(var_1.a.wz, vec2<bool>(var_1.a.x, false), vec2<bool>(false, var_1.a.x)), _wgslsmith_f_op_f32(abs(196f)), var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 229f, -1502f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-351f, -1569f))), vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, 42240i)), ~var_0.x))).b, u_input.b);
}


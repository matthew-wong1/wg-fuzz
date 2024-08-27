struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<u32>(16888u, 29291u, 67392u), false), Struct_2(vec3<u32>(58644u, 4294967295u, 56857u), true), Struct_2(vec3<u32>(4294967295u, 18842u, 5995u), false), Struct_2(vec3<u32>(10349u, 28719u, 0u), false), vec4<u32>(1u, 52612u, 9375u, 62099u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_3(Struct_2(global0.d.a, !any(select(vec3<bool>(arg_0.b.b, arg_0.a.x, false), arg_0.a, vec3<bool>(arg_0.b.b, true, true)))), global0.c, Struct_2(arg_0.c, !arg_0.b.b), arg_0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 0u, arg_3.x, arg_3.x), global0.e)), arg_2, max(58148u, arg_0.c.x), 11281u), global0.e, countOneBits(global0.e)));
    var_0 = Struct_3(global0.b, Struct_2(vec3<u32>(~(arg_3.x ^ var_0.b.a.x), ~19205u ^ arg_3.x, arg_0.b.a.x), select(!all(arg_0.a.zy), var_0.c.b, true)), Struct_2(global0.a.a, all(!(!vec4<bool>(true, var_0.b.b, global0.a.b, global0.a.b)))), arg_0.b, global0.e);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * -531f), 867f, true && !global0.b.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1076f, 343f)))));
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1688f, -586f)))), _wgslsmith_f_op_f32(round(-721f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f - 757f) - _wgslsmith_f_op_f32(round(-937f)))), any(select(select(select(vec4<bool>(arg_0.a.x, var_0.a.b, true, arg_0.b.b), vec4<bool>(true, var_0.b.b, false, global0.d.b), vec4<bool>(true, var_0.c.b, global0.c.b, arg_0.b.b)), vec4<bool>(arg_0.b.b, var_0.a.b, false, false), select(vec4<bool>(arg_0.a.x, true, global0.b.b, arg_0.a.x), vec4<bool>(global0.a.b, false, var_0.d.b, arg_0.b.b), vec4<bool>(var_0.c.b, true, arg_0.a.x, true))), !vec4<bool>(var_0.a.b, false, var_0.d.b, var_0.b.b), true)), arg_0.a.x, true);
    let var_3 = Struct_5(Struct_4(select(select(arg_0.a, select(arg_0.a, arg_0.a, vec3<bool>(true, var_2.x, arg_0.a.x)), !vec3<bool>(global0.c.b, var_0.d.b, false)), vec3<bool>(true, !var_0.c.b, global0.a.b), all(var_2)), Struct_2(_wgslsmith_mod_vec3_u32(var_0.c.a, vec3<u32>(arg_0.b.a.x, 8997u, 40505u)) | vec3<u32>(5954u, arg_0.c.x, arg_0.b.a.x), global0.c.b), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(arg_2, 1u, 0u)), global0.b.a.x << ((18937u ^ var_0.b.a.x) % 32u), arg_2)), Struct_1(vec3<u32>(_wgslsmith_mult_u32(7578u ^ arg_3.x, _wgslsmith_dot_vec2_u32(global0.e.yy, vec2<u32>(7203u, arg_3.x))), arg_0.b.a.x, firstLeadingBit(~arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f * 482f) - _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(409f, -984f))))), 73944u, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(0i), -27496i), u_input.a.zw)), any(vec4<bool>(abs(0u) == (var_0.e.x & 102418u), !(false || arg_0.b.b), global0.d.b, false)), max(~firstTrailingBit(~var_0.e), vec4<u32>(7882u, 26459u, min(~1u, min(arg_2, arg_2)), ~arg_3.x | abs(arg_2))), false);
    return all(arg_0.a.zy);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    global0 = Struct_3(global0.b, Struct_2(global0.e.yww, global0.c.b), Struct_2(global0.d.a, !any(!vec3<bool>(global0.d.b, global0.b.b, global0.a.b))), global0.a, ~global0.e);
    var var_0 = select(vec3<i32>(14633i, arg_2, _wgslsmith_mult_i32(i32(-1i) * -u_input.a.x, (arg_0.x << (global0.e.x % 32u)) ^ firstLeadingBit(0i))), vec3<i32>(firstLeadingBit(-1i), -12329i, arg_0.x), true);
    let var_1 = _wgslsmith_mod_u32(global0.e.x, ~(~(~(~global0.d.a.x))));
    var var_2 = select(select(select(vec4<bool>(false, true, func_3(Struct_4(vec3<bool>(true, global0.a.b, true), Struct_2(global0.d.a, global0.a.b), vec3<u32>(var_1, 1u, global0.b.a.x)), 39360i, 1u, global0.a.a.zy), false & global0.b.b), !select(vec4<bool>(global0.b.b, global0.d.b, false, global0.a.b), vec4<bool>(false, global0.a.b, true, true), vec4<bool>(true, false, global0.d.b, false)), func_3(Struct_4(vec3<bool>(false, global0.a.b, global0.b.b), Struct_2(global0.e.xxw, true), global0.c.a), abs(1i), ~var_1, global0.c.a.xz)), select(vec4<bool>(-695f < arg_1, true, true, false), vec4<bool>(all(vec2<bool>(global0.a.b, false)), true, false, true), any(vec2<bool>(global0.a.b, false))), vec4<bool>(arg_2 >= (i32(-1i) * -1i), false, !(var_1 >= 96622u), true)), select(!(!(!vec4<bool>(true, false, global0.b.b, global0.b.b))), !select(select(vec4<bool>(global0.d.b, global0.b.b, global0.a.b, true), vec4<bool>(global0.d.b, true, false, global0.a.b), vec4<bool>(false, global0.d.b, false, global0.c.b)), !vec4<bool>(false, global0.c.b, global0.d.b, true), select(global0.d.b, false, global0.a.b)), select(!select(vec4<bool>(global0.d.b, false, global0.a.b, global0.b.b), vec4<bool>(global0.b.b, global0.c.b, global0.c.b, true), vec4<bool>(true, false, global0.b.b, global0.a.b)), !vec4<bool>(false, global0.c.b, false, false), select(select(vec4<bool>(false, global0.c.b, global0.c.b, true), vec4<bool>(true, false, true, global0.a.b), true), select(vec4<bool>(false, false, false, true), vec4<bool>(global0.c.b, false, global0.c.b, false), vec4<bool>(global0.a.b, global0.d.b, true, global0.b.b)), global0.d.b))), select(!vec4<bool>(true, true, global0.b.b, 15984u <= var_1), vec4<bool>(false, all(select(vec3<bool>(true, global0.a.b, true), vec3<bool>(false, false, global0.d.b), vec3<bool>(global0.c.b, false, true))), false, global0.d.b), !(!vec4<bool>(global0.a.b, global0.d.b, true, global0.c.b))));
    var var_3 = true;
    return global0.c;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec4<f32>) -> f32 {
    global0 = Struct_3(func_2(vec2<i32>(firstTrailingBit(arg_0), -7477i), _wgslsmith_f_op_f32(sign(arg_1.x)), u_input.a.x), Struct_2(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.b.a.x, global0.e.x, 0u) << (vec3<u32>(1u, global0.b.a.x, global0.b.a.x) % vec3<u32>(32u)), max(arg_2.c, arg_2.b.a))), true), func_2(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 17240i), vec2<i32>(~(-1i), 1i)), arg_3.x, -u_input.a.x), Struct_2(vec3<u32>(arg_2.b.a.x, arg_2.b.a.x, global0.b.a.x), func_2(vec2<i32>(-2147483647i >> (global0.c.a.x % 32u), 1i), arg_1.x, ~1i).b), ~(~firstLeadingBit(select(vec4<u32>(1u, 10328u, global0.c.a.x, 1u), global0.e, vec4<bool>(false, global0.b.b, global0.a.b, false)))));
    var var_0 = global0.a.b;
    var var_1 = Struct_1(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.e.x, 0u) & vec3<u32>(global0.d.a.x, 0u, arg_2.c.x), vec3<u32>(arg_2.c.x, arg_2.c.x, global0.c.a.x))), _wgslsmith_f_op_f32(sign(arg_1.x)), global0.d.a.x, ~(countOneBits(arg_0) & u_input.a.x) & abs(abs(u_input.a.x)));
    var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(abs(~abs(vec3<u32>(var_1.c, arg_2.b.a.x, 0u))), firstTrailingBit(global0.a.a) >> (vec3<u32>(~37335u, arg_2.b.a.x, ~83287u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(var_1.a.x, 0u, 0u) & vec3<u32>(global0.c.a.x, global0.c.a.x, arg_2.b.a.x))), _wgslsmith_f_op_f32(trunc(454f)), firstLeadingBit(~(global0.b.a.x >> (~global0.e.x % 32u))), ~_wgslsmith_add_i32(arg_0, u_input.a.x));
    let var_2 = ~firstTrailingBit(var_1.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1037f)) * -352f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.x, vec3<f32>(1148f, -1000f, 1000f), Struct_4(vec3<bool>(false, true, global0.c.b), Struct_2(vec3<u32>(global0.d.a.x, 37663u, 1u), global0.a.b), global0.d.a), vec4<f32>(2518f, -295f, 1837f, -739f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) - _wgslsmith_f_op_f32(-1000f + 1547f)))))));
    global0 = Struct_3(Struct_2(countOneBits(vec3<u32>(48025u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.a.x, global0.b.a.x, global0.b.a.x), vec3<u32>(global0.d.a.x, global0.d.a.x, 13392u)), ~global0.e.x)), global0.c.b), global0.c, global0.b, global0.b, ~(~vec4<u32>(0u, global0.b.a.x, 4294967295u, 13323u)));
    global0 = Struct_3(global0.c, func_2(~vec2<i32>(-2147483647i, firstTrailingBit(2147483647i)), 1000f, 0i), func_2(~reverseBits(abs(u_input.a.xy)), -197f, u_input.a.x & -2147483647i), Struct_2(global0.d.a, func_3(Struct_4(select(vec3<bool>(true, global0.a.b, false), vec3<bool>(global0.d.b, global0.b.b, global0.d.b), global0.d.b), Struct_2(vec3<u32>(global0.c.a.x, global0.c.a.x, global0.d.a.x), global0.c.b), ~global0.c.a), _wgslsmith_sub_i32(~u_input.a.x, u_input.a.x), global0.c.a.x, min(_wgslsmith_mod_vec2_u32(global0.d.a.zy, global0.b.a.yz), max(global0.d.a.zz, global0.e.wx)))), vec4<u32>(8951u, func_2(-u_input.a.wz, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)), -2147483647i).a.x, global0.e.x, ~(~(~9951u))));
    var var_1 = !(!select(vec2<bool>(any(vec3<bool>(true, global0.a.b, false)), var_0 < 161f), !(!vec2<bool>(global0.c.b, true)), select(vec2<bool>(true, global0.b.b), select(vec2<bool>(false, true), vec2<bool>(true, global0.c.b), vec2<bool>(false, global0.c.b)), true)));
    global0 = Struct_3(func_2(u_input.a.zx, var_0, u_input.a.x), global0.d, Struct_2(~(global0.a.a | reverseBits(global0.d.a)), any(vec2<bool>(true, true))), global0.b, vec4<u32>(global0.e.x, ~global0.c.a.x, global0.e.x, global0.d.a.x) & _wgslsmith_sub_vec4_u32(global0.e, ~global0.e));
    var var_2 = select(!func_2(max(~u_input.a.wz, u_input.a.ww), -829f, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<i32>(-1i, u_input.a.x, 0i))).b, func_3(Struct_4(select(!vec3<bool>(var_1.x, false, true), !vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(global0.c.b, var_1.x, true)), func_2(reverseBits(u_input.a.xy), 929f, u_input.a.x), ~firstTrailingBit(vec3<u32>(global0.e.x, global0.c.a.x, global0.a.a.x))), firstTrailingBit(firstTrailingBit(u_input.a.x ^ -22466i)), ~global0.c.a.x, ~vec2<u32>(~global0.b.a.x, _wgslsmith_mod_u32(37620u, global0.e.x))), global0.c.b);
    var_2 = var_0 >= -455f;
    let var_3 = Struct_3(func_2(~_wgslsmith_div_vec2_i32(u_input.a.yy, u_input.a.yx), _wgslsmith_f_op_f32(trunc(var_0)), -2147483647i), func_2(u_input.a.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(ceil(-431f))), ~abs(_wgslsmith_sub_i32(-2147483647i, -2147483647i))), func_2(-(vec2<i32>(-1i) * -vec2<i32>(-17029i, u_input.a.x)), var_0, 10485i), func_2(u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(11450i << (1u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(852f, var_0, -1069f)), Struct_4(vec3<bool>(true, global0.b.b, false), Struct_2(vec3<u32>(global0.e.x, 0u, 0u), true), global0.d.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1074f, var_0, var_0, var_0) + vec4<f32>(-265f, -1028f, var_0, 439f)))) + 1017f), -(~1i)), ~min(vec4<u32>(_wgslsmith_mod_u32(global0.a.a.x, 4294967295u), 20871u, max(global0.e.x, global0.a.a.x), global0.b.a.x), ~(vec4<u32>(15877u, 4294967295u, global0.d.a.x, global0.c.a.x) ^ global0.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-(~min(-1i, u_input.a.x)), u_input.a.x, -countOneBits(u_input.a.x)), 45735u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)) * -1000f), abs(var_3.c.a.x));
}


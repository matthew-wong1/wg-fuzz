struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = Struct_2(global0.a | ~global0.a);
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(853f * 535f), _wgslsmith_f_op_f32(1000f + -398f), -819f, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 260f, -201f, 284f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(223f, _wgslsmith_f_op_f32(sign(1035f)), _wgslsmith_f_op_f32(floor(-1153f)), _wgslsmith_f_op_f32(-523f * -508f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, 2279f, _wgslsmith_f_op_f32(round(-2005f)), _wgslsmith_f_op_f32(f32(-1f) * -731f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1148f, var_0.x, var_0.x, var_0.x), vec4<f32>(1687f, -342f, var_0.x, var_0.x))) + vec4<f32>(var_0.x, 387f, -804f, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x, _wgslsmith_f_op_f32(round(-689f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 240f, var_0.x, 1079f)))))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(74853i, -10990i), countOneBits(~vec2<u32>(110772u, global0.a)));
    var var_2 = _wgslsmith_dot_vec3_u32(~min(countOneBits(firstTrailingBit(vec3<u32>(0u, var_1.b.x, global0.a))), abs(countOneBits(vec3<u32>(global0.a, 0u, 39353u)))), firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(59583u, var_1.b.x, var_1.b.x), vec3<u32>(19794u, var_1.b.x, 0u)) ^ vec3<u32>(~var_1.b.x, ~var_1.b.x, ~var_1.b.x)));
    return _wgslsmith_dot_vec2_i32(select(countOneBits(-(vec2<i32>(14164i, 14022i) >> (var_1.b % vec2<u32>(32u)))), abs(u_input.a.xw), select(!select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, false)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(arg_0, false), false)), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0), arg_0))), vec2<i32>(-(var_1.a << (global0.a % 32u)), -10700i) | vec2<i32>(var_1.a, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.a, global0.a), global0.a) & _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(33613u, global0.a, 42589u, 26845u)), ~max(vec4<u32>(global0.a, global0.a, 1u, global0.a), vec4<u32>(42470u, 1u, 1u, 124305u))), _wgslsmith_add_u32((4294967295u & global0.a) & global0.a, _wgslsmith_mod_u32(~1u, firstTrailingBit(global0.a))) << (~(global0.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(global0.a, global0.a)) % 32u)) % 32u), 1u);
    global0 = Struct_2(77868u);
    var var_1 = Struct_4(Struct_3(Struct_2(global0.a), Struct_1(func_3(true), ~var_0.yx), Struct_2(global0.a), vec2<i32>(_wgslsmith_clamp_i32(-34227i, arg_0.x, max(arg_0.x, arg_0.x)), ~_wgslsmith_mod_i32(arg_0.x, u_input.a.x)), Struct_1(select(_wgslsmith_clamp_i32(u_input.a.x, 2266i, arg_0.x), 0i, true), ~firstLeadingBit(var_0.yx))), Struct_1(_wgslsmith_clamp_i32(-arg_0.x, 13171i, abs(arg_0.x)), var_0.xx), ~firstTrailingBit(1u));
    let var_2 = abs(_wgslsmith_mult_vec2_u32(var_0.zz, ~select(var_0.xx, var_1.a.b.b, vec2<bool>(true, true))) >> (~var_1.a.e.b % vec2<u32>(32u)));
    var_1 = Struct_4(Struct_3(Struct_2(~var_2.x), var_1.a.b, var_1.a.c, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_1.a.d, reverseBits(vec2<i32>(2147483647i, 1i))), abs(-var_1.a.d)), Struct_1(u_input.a.x ^ 8528i, ~(~vec2<u32>(3952u, 1u)))), Struct_1(arg_0.x, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(var_1.a.b.b.x, var_0.x)), var_0.xy), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 45855u), var_1.b.b))), _wgslsmith_add_u32(var_2.x, ~_wgslsmith_div_u32(~4294967295u, ~17060u)));
    return var_1.a.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    let var_0 = 12855u;
    global0 = arg_2;
    global0 = func_2(vec2<i32>(abs(~u_input.a.x), 613i));
    var var_1 = vec2<u32>(33820u, 30176u | (~select(1u, arg_2.a, false) & ~50063u));
    let var_2 = Struct_4(Struct_3(Struct_2(~(var_0 | var_1.x)), Struct_1(_wgslsmith_clamp_i32(u_input.a.x, 0i, -21767i), ~(vec2<u32>(global0.a, 1u) << (vec2<u32>(var_0, 0u) % vec2<u32>(32u)))), func_2((u_input.a.yy & u_input.a.xw) | vec2<i32>(u_input.a.x, -63046i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 32446i) | vec2<i32>(u_input.a.x, 1i), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a.zw), abs(u_input.a.yw))), Struct_1(u_input.a.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, 0u), vec2<u32>(0u, 59101u)))), Struct_1(reverseBits(0i), ~(~(~vec2<u32>(2025u, 51702u)))), _wgslsmith_div_u32(var_1.x, global0.a));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~(var_2.b.b.x ^ 4294967295u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.x, 34642u), 0u), global0.a), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.b.x, arg_2.a, var_1.x, 4294967295u), vec4<u32>(1u, global0.a, var_0, 69149u)), ~vec4<u32>(204u, arg_2.a, arg_2.a, 4294967295u)), ~0u, var_0)) < _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, ~global0.a) >> (countOneBits(25500u) % 32u), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, any(vec4<bool>(~u_input.a.x > u_input.a.x, select(func_1(vec3<f32>(1355f, 733f, 463f), vec2<bool>(true, false), Struct_2(global0.a)), true, true), true, true || all(vec3<bool>(false, false, false)))), all(vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), abs(global0.a) >= 62813u, any(vec2<bool>(true, true)))), (global0.a == 1u) || select(false, true, false));
    var var_1 = 1696f;
    global0 = Struct_2(global0.a);
    let var_2 = Struct_4(Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a, global0.a), vec2<u32>(global0.a, 4294967295u))), Struct_1(0i, vec2<u32>(0u, abs(16378u))), func_2(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x >> (23184u % 32u))), abs(~u_input.a.wy), Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), -27868i ^ u_input.a.x), vec2<u32>(countOneBits(50138u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 44199u, 4294967295u), vec3<u32>(global0.a, global0.a, 0u))))), Struct_1(u_input.a.x, ~(~abs(vec2<u32>(19327u, global0.a)))), 4847u);
    var var_3 = !vec4<bool>(!(!var_0.x), true, true, var_0.x);
    var var_4 = var_2.a;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - -179f), _wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -576f)))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1025f, 748f) - vec3<f32>(-2029f, 482f, 815f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(1u, select(63253u | var_4.b.b.x, ~34711u, 4294967295u < var_4.e.b.x), ~var_4.c.a), vec2<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-u_input.a.zwx, ~u_input.a.wwz), max(var_4.e.a, _wgslsmith_mod_i32(-39879i, 24812i)))));
}


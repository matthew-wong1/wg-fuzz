struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> vec3<u32> {
    var var_0 = select(select(false, true, true) & !arg_1.x, true, ~(~(~u_input.c.x)) >= u_input.c.x);
    var_0 = arg_1.x;
    return firstTrailingBit(_wgslsmith_mult_vec3_u32(arg_0 << (u_input.c.xxz % vec3<u32>(32u)), vec3<u32>((4294967295u >> (u_input.c.x % 32u)) << (~arg_0.x % 32u), min(abs(u_input.c.x), 4294967295u), u_input.c.x)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(547f, -1882f)) * 342f)));
    var var_1 = var_0;
    var var_2 = u_input.a.x;
    var var_3 = false;
    var var_4 = Struct_1(!any(vec3<bool>(true, var_0.a == var_1.a, !var_0.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-794f, var_0.b))), _wgslsmith_f_op_f32(-var_1.b)));
    return ~31992u >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c.wwz ^ u_input.c.xxy, u_input.c.yzw ^ vec3<u32>(41943u, u_input.c.x, u_input.c.x)) << (0u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c.x), _wgslsmith_mod_vec2_u32(reverseBits(u_input.c.yy), ~u_input.c.zx))) % 32u);
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.c.wwx;
    var_0 = _wgslsmith_mod_vec3_u32(~(~func_2(_wgslsmith_mult_vec3_u32(u_input.c.ywy, u_input.c.ywz), vec2<bool>(false, true), true)), max(firstLeadingBit(u_input.c.xzw), vec3<u32>(~(~1u), abs(func_3()), func_2(func_2(u_input.c.yyy, vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true).x)));
    let var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true)), vec2<bool>(true, any(vec4<bool>(true, true, false, false))), select(true, !any(vec2<bool>(true, true)), true));
    var_0 = u_input.c.zwz;
    let var_2 = 1u >> (1u % 32u);
    return Struct_1(true, _wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(561f + 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1453f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, ~(~select(vec3<u32>(55763u, u_input.c.x, u_input.c.x), u_input.c.wzw, vec3<bool>(false, true, false))) | abs(~u_input.c.yxy), func_1(), max(_wgslsmith_add_vec3_i32(u_input.d.zyy << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 18949u, u_input.c.x)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(-6450i, u_input.d.x), _wgslsmith_add_i32(u_input.a.x, u_input.d.x), 2147483647i)), u_input.a), countOneBits(vec2<i32>(-u_input.a.x & u_input.d.x, 11902i)));
    var_0 = Struct_2(false, firstTrailingBit(reverseBits(~var_0.b ^ ~vec3<u32>(var_0.b.x, 0u, 4294967295u))), var_0.c, ~var_0.d, u_input.d.ww);
    let var_1 = var_0.c;
    var_0 = Struct_2(!any(!vec2<bool>(var_1.a, var_1.a)) != ((1u < var_0.b.x) || true), var_0.b, Struct_1(all(select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(false, false, var_1.a), vec3<bool>(true, var_0.a, var_1.a)), select(vec3<bool>(var_0.c.a, false, var_1.a), vec3<bool>(true, var_0.c.a, var_0.a), vec3<bool>(var_1.a, true, var_1.a)), vec3<bool>(var_1.a, false, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.b))))))), abs(abs(u_input.d.xyy) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2126i, 9412i), -var_0.d, ~u_input.a)), vec2<i32>(var_0.d.x ^ u_input.d.x, u_input.b >> (~var_0.b.x % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1718f, _wgslsmith_f_op_f32(select(-654f, 586f, false))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(680f, 1565f))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 403f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -315f), -393f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, -828f) - vec2<f32>(var_1.b, var_1.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 646f) * vec2<f32>(var_1.b, var_0.c.b))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.b, -392f), vec2<f32>(var_1.b, var_1.b))))))));
    var_0 = Struct_2(all(vec3<bool>(any(vec3<bool>(var_1.a, var_1.a, true)), _wgslsmith_f_op_f32(min(-411f, -343f)) <= _wgslsmith_f_op_f32(-var_0.c.b), var_0.c.a)), firstLeadingBit(vec3<u32>(~1u, _wgslsmith_add_u32(u_input.c.x, ~15754u), select(~var_0.b.x, 1u, select(false, false, true)))), var_0.c, vec3<i32>(abs(u_input.a.x | ~u_input.a.x), u_input.b & -(~0i), 1i), ~vec2<i32>(i32(-1i) * -63397i, ~var_0.e.x >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, var_0.b.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.b, _wgslsmith_f_op_f32(abs(1145f)), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-var_0.c.b))))), var_2, ~(~54389u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, var_0.b.x), u_input.c.x, _wgslsmith_div_u32(4790u, 3978u), 23569u), select(vec4<u32>(var_0.b.x, 4294967295u, u_input.c.x, 2896u), u_input.c, select(vec4<bool>(true, var_1.a, true, var_0.a), vec4<bool>(true, var_1.a, false, true), false))) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-163f, 1049f, var_2.x))))));
}


struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = countOneBits(-u_input.b.zz);
    var var_1 = arg_1;
    var_1 = arg_1;
    var_1 = arg_1;
    var_1 = arg_1;
    return arg_2.x;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_5(vec2<i32>(countOneBits((i32(-1i) * -31674i) ^ _wgslsmith_add_i32(u_input.e.x, 1i)), u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_1, 880f) + vec4<f32>(-163f, arg_1, arg_1, arg_1)))), vec4<f32>(-1000f, _wgslsmith_div_f32(arg_1, -560f), -849f, 436f), 379f > arg_1)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1732f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_1)))))));
    var_0 = Struct_5(u_input.e.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, arg_1, arg_1, arg_0.a), vec4<f32>(1000f, -749f, 1733f, arg_1)) - _wgslsmith_f_op_vec4_f32(sign(var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(var_0.b.x + arg_0.c), var_0.b.x, -139f))) * vec4<f32>(-1060f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(1395f + 542f)), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f - arg_0.b) - _wgslsmith_f_op_f32(func_2(true, Struct_3(vec4<bool>(true, true, false, false), u_input.c.x), vec4<f32>(var_0.b.x, var_0.b.x, arg_0.a, 1006f), var_0.b))))));
    let var_1 = Struct_2(-1872f, -545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) - _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f))))));
    var var_2 = Struct_4(Struct_3(select(vec4<bool>(any(vec3<bool>(false, true, false)), true, true, var_1.c == 1037f), vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.c.x < 2610u, true)), 108294u));
    let var_3 = Struct_3(var_2.a.a, select(13816u >> (min(min(1u, var_2.a.b), 1u) % 32u), var_2.a.b, false));
    return ~vec4<u32>(~(~4353u | var_3.b), ~var_3.b, 55864u, select(~(~12271u), var_2.a.b, var_3.a.x));
}

fn func_1() -> Struct_5 {
    let var_0 = !select(vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), any(vec4<bool>(true, true, true, true)), u_input.a >= 1u), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(any(vec2<bool>(false, false)), true, false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)));
    let var_1 = vec4<i32>(u_input.b.x, firstTrailingBit(u_input.b.x), firstLeadingBit(-2147483647i & firstTrailingBit(select(-1i, u_input.e.x, false))), _wgslsmith_clamp_i32(-(~u_input.e.x), ~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(32407i, u_input.e.x), u_input.b.zz)) & 0i);
    let var_2 = func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(trunc(-1009f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -124f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-647f)) - _wgslsmith_f_op_f32(f32(-1f) * -1442f)), _wgslsmith_f_op_f32(-649f + _wgslsmith_f_op_f32(func_2(var_0.x, Struct_3(vec4<bool>(var_0.x, true, var_0.x, var_0.x), u_input.a), vec4<f32>(-1240f, 1448f, -1484f, 1536f), vec4<f32>(-405f, -739f, 520f, -1269f)))))));
    var var_3 = select(select(var_0, vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), true, !(var_0.x | true)), select(var_0, select(var_0, select(vec3<bool>(false, var_0.x, true), var_0, vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true))), all(var_0))), select(vec3<bool>(true, false, var_0.x), var_0, select(!vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true != var_0.x), !var_0)), vec3<bool>(var_0.x, !var_0.x, select((true | var_0.x) & false, false, all(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), true)))));
    var var_4 = Struct_1(~_wgslsmith_add_u32(var_2.x, _wgslsmith_sub_u32(u_input.a, u_input.d | 0u)), var_1.x, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(var_2 >> (vec4<u32>(34900u, u_input.d, 24583u, 26062u) % vec4<u32>(32u))), ~var_2));
    return Struct_5(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(reverseBits(u_input.e.x), _wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(-2147483647i, var_1.x))), -var_4.b), _wgslsmith_mult_i32(~70832i, countOneBits(~var_4.b))), vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(-1f), -2216f));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = vec3<f32>(arg_0.b.x, arg_0.b.x, 117f);
    var var_1 = func_1();
    return _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 80473u, 68988u, u_input.d), vec4<u32>(u_input.c.x, u_input.d, 1u, 37524u)) << (reverseBits(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 4294967295u, 4517u, 4294967295u), vec4<u32>(31012u, 4294967295u, 0u, 4294967295u), arg_1.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.d, 37616u), vec4<u32>(24652u, 19437u, 89650u, arg_1.b), vec4<u32>(u_input.c.x, u_input.a, 4294967295u, arg_1.b)))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~u_input.d, ~(~u_input.c.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(14503u, arg_1.b, 0u), 25996u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 34866u), firstLeadingBit(vec4<u32>(49349u, u_input.c.x, arg_1.b, u_input.a))) ^ func_3(Struct_2(236f, 380f, 507f), _wgslsmith_f_op_f32(-365f * var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-665f, 1122f), vec2<f32>(1569f, 138f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, -560f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(573f)), -1493f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(1000f + 336f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1674f, 400f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(243f, 901f))));
    var var_1 = _wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec4_u32(abs(func_4(func_1(), Struct_3(vec4<bool>(true, false, false, false), 1u))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.d, u_input.c.x), ~vec4<u32>(u_input.a, 14752u, u_input.d, u_input.a))));
    let var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(firstLeadingBit(~u_input.b.x), (-2147483647i << (u_input.d % 32u)) | func_1().a.x));
}


struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = max(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u), u_input.b.x), vec3<u32>(4294967295u, abs(u_input.b.x) ^ abs(4294967295u), select(u_input.b.x & ~u_input.b.x, 8851u, true)));
    var_0 = max(~vec3<u32>(u_input.b.x, ~u_input.b.x, 0u), ~u_input.b);
    let var_1 = !select(!vec4<bool>(all(vec4<bool>(true, false, false, false)), any(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)), false), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), true), true);
    var_0 = u_input.b;
    let var_2 = abs(vec2<i32>(select(100899i, abs(286i), var_1.x), select(33956i, ~(-32708i), select(var_1.x, false, true)))) >> ((countOneBits(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), 1u)) | vec2<u32>(var_0.x, min(select(26275u, 1u, false), 39952u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1110f, 1173f, -1000f, 488f), vec4<f32>(531f, -255f, 1000f, 2155f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, 1507f, 2189f, -1002f))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, arg_1, -324f, 1890f))) * _wgslsmith_f_op_vec4_f32(func_3())), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1385f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-3770f, arg_0.x, false)) * _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(exp2(arg_0.x)))), true, ~_wgslsmith_mult_i32(97579i, u_input.c.x), 1u);
    let var_1 = !var_0.c;
    var var_2 = -1235f;
    var var_3 = var_0.d;
    let var_4 = vec4<u32>(~12778u, u_input.b.x, var_0.e, select(abs(u_input.b.x), u_input.b.x, false) >> (~u_input.b.x % 32u));
    return Struct_5(-countOneBits(vec4<i32>(0i, u_input.c.x, reverseBits(u_input.a), u_input.c.x)), vec4<i32>(firstLeadingBit(min(-2147483647i, ~(-2147483647i))), var_0.d, firstTrailingBit(-1i << (var_0.e % 32u)) >> (66790u % 32u), firstLeadingBit(firstTrailingBit(1i)) | var_0.d), Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.a), true & var_0.c, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_0.d, var_0.d)), 1u), !select(vec2<bool>(false, true), !vec2<bool>(var_1, false), select(vec2<bool>(var_0.c, var_1), vec2<bool>(true, var_1), var_0.c)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -2486f, arg_1, var_0.b.x) + var_0.b) - var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, 333f, 1795f, -1000f))), all(vec4<bool>(var_0.c, false, var_0.c, var_0.c)), _wgslsmith_div_i32(~u_input.a, ~1i), abs(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(var_4.x, u_input.b.x)))), var_0, firstTrailingBit(vec3<i32>(u_input.c.x, abs(35135i), select(2147483647i, var_0.d, true)))));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-534f - _wgslsmith_f_op_f32(arg_0.c.a.a.x * arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -496f)))), arg_0.c.c.a.x)));
    var var_1 = arg_0.c.e;
    let var_2 = Struct_3(~(~(~4294967295u)));
    let var_3 = ~min(u_input.b.xx, _wgslsmith_sub_vec2_u32(u_input.b.zx, u_input.b.xy));
    var_1 = reverseBits(vec3<i32>(func_2(vec2<f32>(1000f, arg_1), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(round(689f)))).c.c.d, _wgslsmith_div_i32(reverseBits(2147483647i), firstTrailingBit(-21732i) << (u_input.b.x % 32u)), i32(-1i) * -u_input.c.x));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(vec2<f32>(var_0.x, 373f), arg_0.c.d.b.x).c.c.a.ww))), 908f).c.d;
}

fn func_1() -> f32 {
    var var_0 = vec2<f32>(283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f * -412f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(972f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-459f, -403f)) - -710f))));
    let var_1 = Struct_2(func_4(func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -577f))))), _wgslsmith_div_f32(-897f, -1667f)), _wgslsmith_f_op_f32(select(-1594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), true)), vec2<bool>(true, true)), vec2<bool>(true, true), func_4(Struct_5(vec4<i32>(u_input.c.x, 5594i, -1i, max(u_input.c.x, u_input.a)), vec4<i32>(-1i, -1i, -1i, u_input.a), func_2(vec2<f32>(389f, var_0.x), _wgslsmith_f_op_f32(var_0.x * 435f)).c), 1000f, select(vec2<bool>(true, true), vec2<bool>(true, false), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-773f, 206f, -106f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -433f, -887f))), !(countOneBits(u_input.b.x) <= (u_input.b.x >> (u_input.b.x % 32u))), 2147483647i, 4294967295u), ~vec3<i32>(-26171i, u_input.c.x ^ -2147483647i, reverseBits(u_input.c.x)) & vec3<i32>(u_input.a, ~(~u_input.a), ~u_input.c.x));
    return 1238f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + -405f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(1095f))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2886f))));
    var var_2 = ~(~_wgslsmith_mult_u32(~(~29382u), firstTrailingBit(u_input.b.x)));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))))), -344f);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - var_0);
    var_4 = var_0;
    var var_5 = reverseBits(_wgslsmith_sub_vec3_i32(abs(min(vec3<i32>(var_3.a.x, var_3.c.c.d, 20802i), var_3.c.e)), _wgslsmith_mult_vec3_i32(var_3.c.e, var_3.b.zyy))) >> (reverseBits(u_input.b) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(select(i32(-1i) * -20487i, -(i32(-1i) * -1i), all(select(vec4<bool>(var_3.c.c.c, true, false, var_3.c.a.c), vec4<bool>(var_3.c.d.c, false, true, true), false))), ~(-2147483647i)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-873f, var_0, false))))));
}


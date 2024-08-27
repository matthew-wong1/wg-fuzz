struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    return abs(u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a.x | 26254i), u_input.a.x, u_input.a.x, 32266i), u_input.a), select(vec4<i32>(-1i) * -vec4<i32>(8090i, u_input.a.x, -2147483647i, u_input.a.x), ~(~(~u_input.a)), !vec4<bool>(arg_0, arg_0, all(arg_1.a.e), true)));
    var var_1 = u_input.c.x;
    let var_2 = vec3<i32>(func_3(var_0.xwx, Struct_4(Struct_2(all(arg_1.a.b.b), Struct_1(arg_3, arg_1.a.e), _wgslsmith_f_op_vec4_f32(arg_1.a.c - vec4<f32>(362f, 1000f, 937f, 478f)), _wgslsmith_f_op_f32(max(1000f, arg_3)), select(vec2<bool>(true, true), arg_1.a.b.b, arg_0))), true, !vec3<bool>(arg_1.a.b.b.x, arg_2, true)), firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), var_0.yy))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.b), vec3<i32>(-63788i, -2147483647i, -6986i))), firstLeadingBit(select(u_input.a.x, u_input.b, true)), -u_input.b, ~(-u_input.a.x)), -max(var_0, u_input.a & vec4<i32>(49610i, -1i, u_input.b, var_0.x))));
    var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(~(u_input.c.x & 0u), ~1u), u_input.c.x);
    let var_3 = arg_1.a.c.wyz;
    return -305f;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(true, true, false, true)), Struct_4(Struct_2(false, Struct_1(-401f, vec2<bool>(true, false)), vec4<f32>(171f, -797f, -1000f, 813f), -148f, vec2<bool>(true, false))), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1018f + 1000f))))))), vec2<bool>(true, any(vec2<bool>(true, false))));
    var var_1 = any(!var_0.b);
    var_1 = !var_0.b.x;
    let var_2 = Struct_2(true, var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 838f, var_0.a, 459f)), _wgslsmith_f_op_f32(sign(var_0.a)), var_0.b);
    var var_3 = -(_wgslsmith_sub_vec2_i32(vec2<i32>(~23692i, -2147483647i), select(countOneBits(vec2<i32>(23378i, arg_0)), vec2<i32>(u_input.a.x, arg_0) >> (u_input.c % vec2<u32>(32u)), true)) | vec2<i32>(0i, u_input.a.x));
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_clamp_u32(u_input.c.x, 30968u, u_input.c.x & u_input.c.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_4(Struct_2(func_1(0i) | true, Struct_1(_wgslsmith_f_op_f32(round(326f)), vec2<bool>(true, true)), vec4<f32>(1f, 1f, 1f, 1f), -1159f, vec2<bool>(true, false)), select(true, true, any(vec4<bool>(true, true, true, true)) && all(vec4<bool>(true, false, true, true)))), any(!vec2<bool>(u_input.c.x < u_input.c.x, true)));
    var var_1 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1527f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0), select(var_0, vec2<bool>(var_0.x, var_0.x), var_0), false), select(var_0, select(var_0, vec2<bool>(var_0.x, var_0.x), false), func_1(u_input.b)), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, 463f, _wgslsmith_f_op_f32(-1000f + 1629f), _wgslsmith_f_op_f32(f32(-1f) * -1686f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-431f, 1970f, 161f, 354f) - vec4<f32>(-150f, 1514f, -1457f, 571f))))), 1052f, var_0);
    let var_2 = u_input.c.x;
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c.zww, vec3<f32>(var_1.c.x, 392f, 355f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(546f, 397f, var_1.c.x)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(100f, var_1.d, -1320f))))));
    var_1 = Struct_2(!(select(false, var_1.d >= -2170f, all(vec3<bool>(false, false, false))) || (false || var_1.b.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f + -725f) * -108f) * _wgslsmith_f_op_f32(-var_4.x)), vec2<bool>(true == (var_3 | var_0.x), select(u_input.a.x != u_input.a.x, !var_0.x, any(vec2<bool>(var_1.e.x, var_1.e.x))))), var_1.c, _wgslsmith_f_op_f32(-var_1.c.x), var_0);
    var_1 = Struct_2(true, var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, 563f, var_1.d, var_4.x) * vec4<f32>(var_1.c.x, var_1.d, var_4.x, var_1.c.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, 854f, -1759f, var_1.c.x), vec4<f32>(1141f, var_1.c.x, var_4.x, 1057f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1272f, 2027f, var_4.x))))), _wgslsmith_f_op_f32(-1307f + var_4.x), !(!vec2<bool>(false, var_0.x)));
    var_1 = Struct_2(true, var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_1.b.a, -377f, -3000f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 697f, 1301f, var_1.d))) + _wgslsmith_f_op_vec4_f32(min(var_1.c, var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.x))), -1004f, _wgslsmith_mod_i32(u_input.b, u_input.b) < u_input.b))), select(!vec2<bool>(any(vec3<bool>(false, false, var_3)), true), var_0, !vec2<bool>(var_1.b.b.x && var_1.a, !var_1.e.x)));
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-718f)), 1f) + vec2<f32>(-1129f, -669f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_1.b.a - 670f)))), (abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(u_input.a.x, -1i, 0i))) >> (~vec3<u32>(94228u, 1u, 4294967295u) % vec3<u32>(32u))) >> ((~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_2), vec3<u32>(var_2, 1u, 1u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 44796u, 44857u), vec3<u32>(17508u, u_input.c.x, u_input.c.x) & vec3<u32>(0u, var_2, var_2)) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(19238u));
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a.x, arg_0.b.a.x) - arg_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2463f, arg_1.a.x)), var_0.c.zy))), arg_1.b);
    let var_3 = var_0.b;
    let var_4 = !select(true, true, select(select(arg_0.c.x, true, arg_0.c.x) && true, any(!arg_0.c.wwy), var_0.c.x));
    return var_1.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = 0i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1648f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(153f, -718f, 1678f), Struct_1(vec2<f32>(-847f, 1000f), vec2<i32>(u_input.a, u_input.a)), vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(-228f, 396f), vec2<i32>(u_input.a, 1i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1907f, 261f)))))), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-15471i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 33654i), vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-2147483647i, -6676i))), u_input.a));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = -738f;
    return _wgslsmith_sub_vec3_u32(firstLeadingBit(abs(~(~vec3<u32>(u_input.b, 1u, 30762u)))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(2669u, 0u, 5336u), vec3<u32>(u_input.c, u_input.d, 0u)), vec3<u32>(u_input.b, u_input.b, u_input.d) | vec3<u32>(1u, 4294967295u, u_input.d), ~vec3<u32>(u_input.b, u_input.c, u_input.c)) | firstTrailingBit(~select(vec3<u32>(u_input.b, u_input.c, 36039u), vec3<u32>(45058u, 4294967295u, u_input.d), false)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 32996u), vec2<u32>(u_input.d, u_input.c)), ~u_input.b, select(u_input.d >> (u_input.d % 32u), ~0u, true)), vec3<u32>(countOneBits(68469u), 0u, 1888u), abs(_wgslsmith_sub_vec3_u32(func_4(select(true, true, false), func_2(), Struct_1(vec2<f32>(-1000f, 1286f), vec2<i32>(35603i, 1i)), func_2()), vec3<u32>(3917u, 66600u, u_input.b) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 5265u, 4294967295u), vec3<u32>(4367u, u_input.c, 30939u), vec3<u32>(19436u, 20080u, u_input.b)) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(max(~u_input.c >> (select(u_input.b, var_0.x, false) % 32u), ~(~4294967295u)), u_input.d, var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(var_0.x), var_0.x, var_0.x), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 95423u, 27698u), vec3<u32>(1u, 1u, 0u)))) | reverseBits(~(~vec3<u32>(94203u, 693u, 31390u))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-1000f, 151f, 1335f), Struct_1(vec2<f32>(716f, -228f), vec2<i32>(u_input.a, u_input.a)), vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(-205f, 1000f), vec2<i32>(6827i, u_input.a)))) - 791f), -904f), ~_wgslsmith_mult_vec2_i32(~(-vec2<i32>(0i, 52427i)), firstTrailingBit(vec2<i32>(1i, u_input.a))));
    let var_2 = func_2();
    var var_3 = false;
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(trunc(var_2.a))), max(-vec2<i32>(-var_1.b.x, u_input.a), var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(sign(-1230f));
    let var_3 = var_1;
    let var_4 = countOneBits(1i);
    let var_5 = all(vec3<bool>(all(vec2<bool>(true, true)), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), !(!all(vec4<bool>(false, false, true, false)))));
    var var_6 = var_0.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x));
    var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32((vec4<u32>(u_input.c, u_input.c, u_input.d, 7676u) | vec4<u32>(26031u, u_input.d, 4294967295u, u_input.c)) << (vec4<u32>(u_input.d, 1u, u_input.c, u_input.c) % vec4<u32>(32u)), vec4<u32>(~u_input.c, ~4294967295u, abs(59017u), ~24429u)) >> ((reverseBits(~vec4<u32>(1u, 1u, u_input.d, u_input.b)) ^ (vec4<u32>(u_input.c, 10368u, 4294967295u, u_input.c) << ((vec4<u32>(17975u, 36028u, 0u, 1u) ^ vec4<u32>(0u, 15687u, 4294967295u, u_input.d)) % vec4<u32>(32u)))) % vec4<u32>(32u)), abs(var_4), ~(~(vec2<u32>(1u, 1u) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, u_input.d)))));
}


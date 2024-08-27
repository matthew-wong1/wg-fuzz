struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec2<u32> {
    var var_0 = select(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), 13614u == u_input.c), vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, false, true)))), vec3<bool>(!any(vec3<bool>(false, false, false)), any(vec2<bool>(any(vec4<bool>(false, false, false, false)), true)), all(vec2<bool>(true, false))));
    let var_1 = Struct_3(~u_input.b.zyz << (vec3<u32>(u_input.c, u_input.c, 72441u) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, 882f, 511f, -858f)), _wgslsmith_div_vec4_f32(vec4<f32>(658f, 1480f, -1877f, 241f), vec4<f32>(1000f, -531f, 513f, -325f)))), firstTrailingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, 4294967295u, u_input.c)), ~vec3<u32>(u_input.c, 0u, 1u), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, true), false)))));
    var var_2 = abs(var_1.a.x);
    var_0 = select(!vec3<bool>(true, var_0.x, true), select(!select(!vec3<bool>(false, var_0.x, var_0.x), !vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, false), var_0.x)), vec3<bool>(any(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), true, !any(vec3<bool>(var_0.x, var_0.x, true))), 13403u < u_input.c), false);
    let var_3 = Struct_3(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, arg_0.x), vec4<i32>(u_input.b.x, u_input.a.x, arg_1, -10241i)), ~var_1.a.x, 37215i) | firstLeadingBit(vec3<i32>(arg_1, -12879i, 2147483647i) >> (var_1.b.b % vec3<u32>(32u)))), var_1.b);
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.b.b.x, 56117u) | max(vec2<u32>(~var_3.b.b.x, 1u), vec2<u32>(reverseBits(24598u), min(var_1.b.b.x, 42913u))), var_1.b.b.xz, _wgslsmith_sub_vec2_u32(~countOneBits(var_3.b.b.xx) | var_3.b.b.yx, select(vec2<u32>(~37384u, 0u), var_3.b.b.yx, vec2<bool>(-962f != var_1.b.a.x, var_0.x))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = arg_0;
    var var_1 = abs(firstTrailingBit(select(vec2<u32>(u_input.c, 121814u), vec2<u32>(62899u, u_input.c), var_0)) >> (~(~vec2<u32>(u_input.c, 7145u)) % vec2<u32>(32u))) & ((abs(max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(29319u, u_input.c))) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(31387u, u_input.c), vec2<u32>(u_input.c, 11782u))) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 80226u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(23766u, u_input.c)) % vec2<u32>(32u)));
    var_1 = ~_wgslsmith_mod_vec2_u32(func_3(~vec3<i32>(3668i, 32603i, u_input.b.x), reverseBits(u_input.a.x)), select(vec2<u32>(var_1.x, u_input.c), vec2<u32>(57277u, 1u), vec2<bool>(true, var_0)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(var_1.x, var_1.x))) | ~(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.c, 44663u)) ^ abs(~vec2<u32>(u_input.c, 0u)));
    let var_2 = -_wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), u_input.a), -u_input.b.yz), ~vec2<i32>(40772i, 2147483647i), !select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), false)), reverseBits(-_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(1i, -1i))));
    var var_3 = 597f;
    return 1503f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0))), _wgslsmith_f_op_f32(1754f - _wgslsmith_f_op_f32(select(143f, _wgslsmith_f_op_f32(func_2(arg_0)), !arg_0))), _wgslsmith_f_op_f32(round(-437f)), -905f), firstTrailingBit(vec3<u32>(~(~18789u), abs(0u), ~u_input.c)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1325f, 395f, -457f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2400f, var_0.a.x, -791f, 285f), var_0.a)), vec4<f32>(var_0.a.x, var_0.a.x, -1134f, 1000f), true))), true)), ~var_0.b);
    let var_1 = vec4<bool>(arg_0, !arg_0, all(select(select(select(vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, arg_0), false), select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false)), !vec3<bool>(arg_0, arg_0, true)), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(arg_0, false)), true))), all(vec4<bool>(!arg_0, arg_0, !any(vec4<bool>(arg_0, arg_0, arg_0, true)), arg_0)));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(887f * var_0.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 651f) - _wgslsmith_f_op_f32(-var_0.a.x))), ~(vec3<u32>(61022u, ~var_0.b.x, ~var_0.b.x) & (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 122665u, 39622u), var_0.b) ^ ~var_0.b)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), 1513f, var_0.a.x, _wgslsmith_f_op_f32(-186f * var_0.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, -890f, 720f, 1027f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1296f, -902f, 2549f, var_0.a.x))))), !arg_0)), vec3<u32>(~(~countOneBits(16750u)), func_3(select(-u_input.b.wwx, vec3<i32>(u_input.a.x, 2147483647i, -57069i), arg_0), u_input.e).x, var_0.b.x));
    return Struct_2(countOneBits(2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(521f, -764f, -390f, -197f))))), select(var_0.b, ~abs(vec3<u32>(u_input.c, var_0.b.x, 0u)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.e, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-709f, 751f, 1108f, -616f), vec4<f32>(1546f, -1285f, 1077f, -1539f)) - vec4<f32>(-1000f, -1959f, 206f, -385f))), ~vec3<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22800u, 90493u), vec3<u32>(u_input.c, u_input.c, u_input.c)), u_input.c)));
    var_0 = Struct_2(firstTrailingBit(var_0.a >> (4294967295u % 32u)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a.x, 1f, 829f, _wgslsmith_f_op_f32(f32(-1f) * -500f)), vec4<f32>(542f, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(abs(-230f)), _wgslsmith_f_op_f32(select(-452f, var_0.b.a.x, false))), true)), ~abs(~vec3<u32>(u_input.c, var_0.b.b.x, 15690u))));
    let var_1 = false;
    var var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(-1143f - _wgslsmith_div_f32(569f, var_0.b.a.x));
    var var_4 = func_1(var_1);
    var_3 = var_4.b.a.x;
    var_0 = Struct_2(i32(-1i) * -2147483647i, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.b.x, var_0.b.b.x, -select(~vec4<i32>(var_4.a, var_4.a, var_0.a, 1i), u_input.b, ~13621u <= _wgslsmith_sub_u32(u_input.c, var_0.b.b.x)));
}


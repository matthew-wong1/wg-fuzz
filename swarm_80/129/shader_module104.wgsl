struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec4<f32>) -> f32 {
    let var_0 = -(u_input.a << ((1u | ~min(u_input.b, 1u)) % 32u));
    let var_1 = _wgslsmith_f_op_f32(sign(255f));
    let var_2 = ~vec4<u32>(15399u, _wgslsmith_mod_u32(u_input.b, firstTrailingBit(u_input.b)), u_input.b, u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1216f + _wgslsmith_f_op_f32(var_1 + 1174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1)), -292f))), true)) * 255f);
}

fn func_2(arg_0: vec3<bool>) -> Struct_5 {
    var var_0 = Struct_4(Struct_1(~_wgslsmith_sub_vec4_i32(~vec4<i32>(45505i, u_input.a, 3150i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -18276i, u_input.a), vec4<i32>(-17916i, u_input.a, u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1122f), _wgslsmith_f_op_f32(func_3(select(arg_0.x, arg_0.x, arg_0.x), Struct_5(u_input.a, true, var_0.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1041f, -1082f, -1391f, 832f), vec4<f32>(-1000f, 364f, 1368f, -252f), arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-252f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-930f)) * -826f))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(var_0.a);
    let var_2 = Struct_5(-(~6071i), true, Struct_1(var_0.a.a & ~(~vec4<i32>(u_input.a, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))));
    return Struct_5(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_2.c.a.yy, vec2<i32>(-28155i, -u_input.a)), ((i32(-1i) * -1i) ^ (u_input.a & var_2.a)) ^ _wgslsmith_dot_vec3_i32(-var_2.c.a.ywy, var_2.c.a.wzz)), !(all(select(vec4<bool>(var_2.b, arg_0.x, true, var_2.b), vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.x, var_2.b, false))) && (all(vec4<bool>(var_2.b, arg_0.x, var_2.b, true)) != all(vec3<bool>(arg_0.x, true, true)))), var_0.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = select(!vec4<bool>(false, arg_1, arg_1, arg_1), !vec4<bool>(false, false, arg_1, any(select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), vec2<bool>(true, arg_1)))), !vec4<bool>(!any(vec4<bool>(false, true, true, true)), arg_1, true, true));
    let var_2 = func_2(vec3<bool>(arg_1, true, !(!arg_1)));
    let var_3 = arg_1;
    let var_4 = -1196f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1202f, 1000f))), 890f)));
    return Struct_3(Struct_2(select(vec3<bool>(var_1.x | var_4, var_4, all(vec3<bool>(var_4, true, true))), var_1.wyx, !any(vec4<bool>(true, false, var_1.x, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-433f, 1000f))))))), Struct_1(-_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.x, -15947i, u_input.a, -81720i), _wgslsmith_mult_vec4_i32(var_0, var_2.c.a))), !select(true || var_3, var_3, true), false, abs(vec3<u32>(abs(arg_0.x ^ 4294967295u), reverseBits(1u), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(u_input.b, u_input.b), true, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i)) & firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -24005i, u_input.a, -18141i), vec4<i32>(-1i, u_input.a, 24443i, u_input.a))), select(vec4<i32>(12424i, 2147483647i, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, 1i), vec4<bool>(true, true, true, false)) ^ -vec4<i32>(0i, u_input.a, u_input.a, 22441i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.b.x, var_0.a.b.x, 803f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(795f, 1282f, 122f)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(795f, var_0.a.b.x, 728f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(106f, 525f, var_1.x), vec3<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)))), false)));
    let var_2 = Struct_2(var_0.a.a, func_1(var_0.e.xy, !var_0.c, vec4<i32>(-14460i, -(~(-1605i)), ~u_input.a, ~(var_0.b.a.x << (1u % 32u)))).a.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 198f, var_2.b.x) - vec3<f32>(var_1.x, -392f, var_2.b.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2159f, -2348f, 1785f))))));
    let var_4 = var_0.b.a.x;
    var var_5 = true & var_2.a.x;
    let var_6 = vec3<i32>(var_0.b.a.x << (3534u % 32u), var_4, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_4, -abs(0i), func_1(var_0.e.yy, var_2.a.x, var_0.b.a).b.a.x & 1i) & vec3<i32>(~abs(var_4), var_0.b.a.x, 1i), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(var_6, vec3<i32>(-2147483647i, -25172i, 0i), vec3<bool>(var_0.c, var_2.a.x, true)) << ((vec3<u32>(4294967295u, 48957u, u_input.c) | var_0.e) % vec3<u32>(32u)), ~max(vec3<i32>(0i, -2147483647i, 5834i), vec3<i32>(2147483647i, -12337i, var_4))), -var_6));
}


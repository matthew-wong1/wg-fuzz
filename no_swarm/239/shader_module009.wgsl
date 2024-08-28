struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    var var_2 = ~(-vec2<i32>(arg_1.x, -arg_1.x));
    let var_3 = -11898i;
    let var_4 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.b, var_0.b), select(~vec2<u32>(var_0.b.x, reverseBits(u_input.b)), vec2<u32>(29273u, 8837u), vec2<bool>(all(vec3<bool>(true, true, true)), true)));
    return var_3;
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_0 = 73649i;
    var var_1 = Struct_4(func_3(Struct_1(vec4<u32>(u_input.d, u_input.b, u_input.d, u_input.d) | vec4<u32>(u_input.b, 1u, 0u, 65886u), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 23u)]), u_input.a.wxz | u_input.a.yyy) << (u_input.d % 32u), vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, true)))), all(vec4<bool>(true, true, true, true))), select(true, true, true) == false);
    var var_2 = select(!select(select(var_1.b.yx, !vec2<bool>(true, var_1.c), var_1.c), select(var_1.b.zz, !var_1.b.zz, true), !var_1.b.zy), vec2<bool>(u_input.d <= ~(4294967295u ^ u_input.b), var_1.c), var_1.c);
    return Struct_2(~firstTrailingBit(var_1.a), Struct_1(vec4<u32>(~max(0u, u_input.d), ~10524u, abs(abs(19918u)), u_input.d), global0[_wgslsmith_index_u32(~0u, 23u)]), countOneBits(select(u_input.a.ywx, ~u_input.a.yxx & (u_input.a.yzy & vec3<i32>(var_0, arg_0, 2147483647i)), !(!var_1.c))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 6370u, u_input.d), vec3<u32>(u_input.b, u_input.d, 17042u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 1007u, u_input.b), ~vec3<u32>(0u, 1u, 4294967295u), abs(vec3<u32>(34298u, 24121u, u_input.d))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.d, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.d), vec3<u32>(67281u, u_input.d, u_input.d)))), ~reverseBits(reverseBits(vec3<u32>(u_input.b, 20456u, u_input.b))), min(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.b, 4294967295u, u_input.b)), vec3<u32>(u_input.d, 1u, u_input.d) & vec3<u32>(42954u, u_input.b, u_input.d), vec3<bool>(false, false, true)), ~(~vec3<u32>(49120u, 0u, 11223u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 1179f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1019f, 441f, -698f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -387f), _wgslsmith_div_f32(1355f, -331f), _wgslsmith_f_op_f32(-832f * -1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-162f, 530f, 318f), vec3<f32>(-432f, 640f, -1045f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1137f, -328f, -457f))))));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1639f))) - -141f)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -701f);
    var var_2 = func_2(u_input.a.x);
    var var_3 = Struct_3(func_2(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(1i, 12386i))).b);
    let var_4 = _wgslsmith_mult_vec4_u32(~var_3.a.a, ((select(var_3.a.a, vec4<u32>(u_input.b, 0u, var_2.d.x, u_input.d), arg_0.x) ^ var_3.a.a) & (var_3.a.a | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.d, 38039u), vec4<u32>(0u, 1u, 4294967295u, 1u)))) >> (~(~(~var_3.a.a)) % vec4<u32>(32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 23>();
    var var_0 = select(vec4<bool>(true, false, 661f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, false)))), select(true, false, !any(vec4<bool>(false, true, false, true)))), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(true, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false))), false);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f - _wgslsmith_f_op_f32(797f * -2391f)))), _wgslsmith_f_op_f32(127f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -768f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-896f)), _wgslsmith_div_f32(1391f, -1000f)))));
    var var_2 = Struct_3(func_2(u_input.c).b);
    let var_3 = any(select(select(var_0.ww, !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), false), any(var_0.yw)), var_0.wz, var_0.zw));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 23u)], select(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(43683u, u_input.b, 4294967295u, var_2.a.b.x)), var_2.a.a), var_2.a.a, var_0.x | true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f - -708f)) - -229f), _wgslsmith_f_op_f32(step(559f, _wgslsmith_f_op_f32(round(585f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f * 495f)))));
}


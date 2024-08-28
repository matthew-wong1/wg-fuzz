struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(63738u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 105481u), vec2<u32>(106357u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(24323u, 2409u), vec2<u32>(21461u, 15190u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 20234u), vec2<u32>(36766u, 1u), vec2<u32>(1u, 0u), vec2<u32>(12582u, 50569u), vec2<u32>(0u, 63837u), vec2<u32>(49814u, 72567u), vec2<u32>(60342u, 51877u), vec2<u32>(45033u, 1u));

var<private> global1: i32 = 9898i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    var var_0 = Struct_3(Struct_1(~(countOneBits(1u) & select(u_input.b.x, 37716u, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f * 334f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -102f), 1438f))), -1000f), Struct_1(arg_1), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(49614u != u_input.d, true, true, all(vec4<bool>(false, false, true, false))), false), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, false), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true)), 30788u <= u_input.c.x), vec4<bool>(true, false, true, any(vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -497f), _wgslsmith_f_op_f32(f32(-1f) * -606f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1190f)));
    var var_1 = ~0u;
    var var_2 = Struct_3(var_0.c, var_0.e, var_0.c, !vec4<bool>(any(vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x)), var_0.d.x || !var_0.d.x, !var_0.d.x, false), _wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1182f))))));
    var var_3 = Struct_3(var_0.c, -556f, Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, var_2.c.a & 4294967295u), ~u_input.c.x)), select(var_2.d, var_2.d, vec4<bool>(-1129f > _wgslsmith_f_op_f32(floor(var_0.b)), var_2.d.x, true, var_2.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.e))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_2.e), vec2<f32>(var_2.b, var_0.e)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-233f, -2257f), vec2<f32>(1527f, -547f))) - vec2<f32>(-575f, _wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, var_2.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.e, var_3.e) * vec2<f32>(1194f, var_2.b))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.e, var_2.e), vec2<f32>(644f, var_3.b)), vec2<f32>(1f, 1f)))));
    return -252f;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(0i, -32659i), u_input.e)) * _wgslsmith_f_op_f32(-1672f + arg_2)))), _wgslsmith_f_op_f32(217f - arg_1.x), arg_1.x)));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(select(select(vec4<u32>(u_input.d, 100297u, u_input.a, 20459u), vec4<u32>(35483u, 4294967295u, u_input.a, u_input.b.x), false), u_input.c, true), ~u_input.c)));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1068f, _wgslsmith_f_op_f32(sign(arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1357f, arg_1.x, 1623f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(206f, var_0.x, 645f))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), -282f)));
    var var_2 = select(vec2<bool>(arg_3, true), vec2<bool>(select(true, true, arg_0), !select(arg_3, true, true)), vec2<bool>(all(select(!vec3<bool>(arg_3, arg_0, true), vec3<bool>(true, arg_3, arg_0), !vec3<bool>(false, arg_0, arg_3))), !(!all(vec3<bool>(true, arg_3, arg_0)))));
    let var_3 = Struct_2(vec2<bool>(arg_0, true));
    return Struct_3(Struct_1(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -512f), Struct_1(var_1.a), vec4<bool>(any(!vec4<bool>(var_3.a.x, false, true, true)), true, arg_3, var_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f * 573f) + _wgslsmith_f_op_f32(max(-113f, -1000f)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    let var_0 = select(!(!(!select(vec3<bool>(true, arg_1.d.x, true), arg_1.d.zxy, false))), arg_3, !arg_3.x);
    var var_1 = arg_3.zy;
    global1 = ~_wgslsmith_sub_i32(reverseBits(arg_2 >> (arg_0.x % 32u)), _wgslsmith_mult_i32(1i, 1i)) << (arg_1.c.a % 32u);
    var var_2 = u_input.b.x ^ reverseBits(abs(4294967295u));
    var var_3 = Struct_1(_wgslsmith_sub_u32(max(~select(26870u, u_input.c.x, var_0.x), ~arg_0.x), u_input.a));
    return 0u;
}

fn func_1() -> f32 {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1348f);
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 28372u, func_4(vec3<u32>(0u, u_input.e, 0u) & u_input.c.wwx, func_2(var_0.x, vec3<f32>(-596f, 1715f, -550f), 1110f, var_0.x), _wgslsmith_mod_i32(1i, -13578i), var_0.yxw), 38255u >> (~u_input.a % 32u)), vec4<u32>(firstTrailingBit(1u), 1u, u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.c.xx, u_input.c.wy, global0[_wgslsmith_index_u32(0u, 17u)])))), abs(vec4<u32>(u_input.c.x, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(53816u, 0u, u_input.a, 51006u), vec4<u32>(11046u, 64267u, u_input.d, 48064u)), u_input.d >> (u_input.a % 32u)) | min(u_input.c, firstLeadingBit(u_input.c))));
    var var_3 = var_2.x;
    var var_4 = Struct_3(Struct_1(_wgslsmith_clamp_u32(func_2(func_2(var_0.x, vec3<f32>(821f, -864f, 643f), 404f, true).d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1178f, 1383f, 830f)), _wgslsmith_f_op_f32(-1000f + -264f), var_0.x).c.a, 45623u, u_input.c.x)), 1548f, func_2(var_0.x, vec3<f32>(-620f, 522f, 273f), _wgslsmith_f_op_f32(exp2(func_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -490f, -836f) * vec3<f32>(1530f, -1235f, -487f)), _wgslsmith_f_op_f32(f32(-1f) * -800f), var_0.x).e)), !(13958u >= firstTrailingBit(4294967295u))).a, vec4<bool>(true, !func_2(var_0.x != var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-761f, -877f, -1000f) * vec3<f32>(846f, 358f, 275f)), _wgslsmith_div_f32(-1097f, -1877f), true).d.x, func_2(var_0.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-211f, -1134f, -1000f), vec3<f32>(727f, 952f, -1000f)))), -593f, any(vec4<bool>(false, var_0.x, false, true))).d.x, all(func_2(var_0.x, vec3<f32>(1921f, -102f, -2413f), 461f, true).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1256f * _wgslsmith_f_op_f32(f32(-1f) * -2022f))));
    return var_4.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b.x, 7419u, 26656u), ~vec4<u32>(u_input.e, u_input.c.x, 4294967295u, 0u)), u_input.a) >> (~11302u % 32u));
    global1 = ~(-_wgslsmith_div_i32(-1i, 1i));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(398f + _wgslsmith_f_op_f32(abs(182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(841f, 1880f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(865f)) - _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-979f - 205f) - _wgslsmith_f_op_f32(-181f * -1209f))))));
    global0 = array<vec2<u32>, 17>();
    global1 = -(~abs(max(~17595i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-134f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, 27356i), u_input.a))))), 1i & select(1i, ~(-70242i), true));
}


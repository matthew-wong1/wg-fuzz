struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-22916i, 25902i, 104338i), vec3<i32>(1i, 5022i, -60602i), vec3<i32>(-46555i, i32(-2147483648), 0i), vec3<i32>(-46240i, 2147483647i, 43476i), vec3<i32>(-25520i, 38152i, 0i), vec3<i32>(55099i, -51656i, i32(-2147483648)), vec3<i32>(1i, 1943i, -27507i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(5932i, -44775i, 2147483647i), vec3<i32>(1873i, 14666i, 11830i), vec3<i32>(2147483647i, 2147483647i, 1496i), vec3<i32>(39598i, 0i, 26703i), vec3<i32>(2147483647i, 10986i, 1i), vec3<i32>(72785i, 1i, -39839i));

var<private> global1: u32 = 1u;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    global1 = u_input.a.x | u_input.c;
    var var_0 = Struct_1(141f, -1000f, vec2<u32>(1u, 4294967295u >> (u_input.d % 32u)), 35376i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x));
    global0 = array<vec3<i32>, 14>();
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = -3717i;
    global0 = array<vec3<i32>, 14>();
    var var_1 = arg_2.b <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-200f, _wgslsmith_f_op_f32(arg_0.b * -1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * arg_0.a)));
    let var_2 = true;
    var var_3 = vec3<bool>(-39437i < select(arg_1.x, 12235i, true), arg_2.e > -2147483647i, any(vec4<bool>(!(!var_2), false, true, all(vec2<bool>(false, var_2)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -198f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(step(103f, 507f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)), vec2<f32>(arg_0, -269f), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 570f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(387f, 232f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(496f, -948f), vec2<f32>(-912f, arg_0))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(218f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 1122f)) * _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_mult_vec2_u32(vec2<u32>(~reverseBits(1028u), u_input.c), ~vec2<u32>(u_input.c ^ u_input.d, 0u)), -1i, ~(-u_input.b.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), u_input.b))))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(232f))), -2100f, vec2<u32>(u_input.c, u_input.d), 2895i, -u_input.b.x), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, 13775i), -var_1.e | -2147483647i), Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(func_2(true, var_1.e))), var_1.a, var_1.c, _wgslsmith_add_i32(var_1.e, -25161i << (var_1.c.x % 32u)), var_1.e))), ~(~select(var_1.c, vec2<u32>(64279u, u_input.c), vec2<bool>(true, false))) >> (var_1.c % vec2<u32>(32u)), _wgslsmith_sub_i32(-(u_input.b.x & u_input.b.x), ~_wgslsmith_sub_i32(firstTrailingBit(2147483647i), var_1.e)), ~2147483647i);
    let var_3 = vec4<bool>(596f >= var_0.x, any(vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true, var_2.c.x >= ~u_input.c)), true, true);
    var_2 = Struct_1(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f * var_0.x))))), 1201f, firstLeadingBit(max(var_1.c, vec2<u32>(var_2.c.x, 3846u) << (vec2<u32>(u_input.d, var_2.c.x) % vec2<u32>(32u)))) & u_input.a.yw, var_2.e, 51203i);
    return Struct_1(arg_0, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(680f * var_0.x), 1f))))), vec2<u32>(~(_wgslsmith_dot_vec2_u32(var_1.c, vec2<u32>(4294967295u, 1u)) ^ var_1.c.x), ~firstTrailingBit(select(4294967295u, u_input.c, true))), _wgslsmith_sub_i32(var_1.e, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.e, var_2.d, -18773i) | var_2.e, -var_1.e & _wgslsmith_mod_i32(0i, u_input.b.x))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-var_1.e, countOneBits(u_input.b.x), 34175i, _wgslsmith_clamp_i32(var_1.e, var_2.d, var_2.e))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_2.e, 6599i, u_input.b.x, 1i)), vec4<i32>(countOneBits(var_2.d), _wgslsmith_mult_i32(-2147483647i, var_1.e), var_2.e, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-649f - -394f) + _wgslsmith_div_f32(-2676f, 174f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1446f) - 1264f)), 1189f)));
    var var_1 = 0u;
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(11094i, 2147483647i, -24822i) >> (vec3<u32>(25356u, u_input.d, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ global0[_wgslsmith_index_u32(0u & u_input.c, 14u)]), global0[_wgslsmith_index_u32(u_input.c, 14u)]));
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) + _wgslsmith_f_op_f32(abs(-401f)))))));
    var_0 = var_3.a;
    global0 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 14>();
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(-var_3.a)), -u_input.b);
}


struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1929f))))), 165f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-998f, 543f, true)))))))), max(vec3<i32>(u_input.a, u_input.a | 0i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ abs(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, -1i)), abs(vec3<i32>(29517i, u_input.a, -1i)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-610f, -171f, 251f, -1658f) - vec4<f32>(-984f, -1228f, 1220f, 1234f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1429f, -344f, 106f, -912f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(507f)))))));
    let var_2 = 1i;
    return var_2 != -1i;
}

fn func_2() -> vec3<i32> {
    global0 = select(vec2<bool>(!(!(false & global0.x)), true), select(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), global0.x)), !all(vec3<bool>(false, global0.x, global0.x))), !(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x))), false), !global0.x);
    var var_0 = ~(-5299i);
    global0 = !(!(!vec2<bool>(true == global0.x, func_3())));
    let var_1 = 23140u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(782f - -1344f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(f32(-1f) * -928f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-771f, _wgslsmith_f_op_f32(f32(-1f) * -1703f)) * _wgslsmith_f_op_f32(-1740f - 1000f))));
    return firstTrailingBit(vec3<i32>(-2147483647i, countOneBits(-50035i), u_input.a));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(-564f, min(func_2(), ~(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 38447i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_div_vec4_f32(vec4<f32>(811f, 466f, 1000f, -174f), vec4<f32>(475f, 238f, -694f, 673f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, -1320f, -1000f, 913f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, -530f, -748f, -495f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(259f, -1309f, -304f, 521f) - vec4<f32>(-543f, 509f, -1000f, 543f)))), !any(vec4<bool>(global0.x, true, false, true)))))), _wgslsmith_f_op_f32(917f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(977f + _wgslsmith_f_op_f32(trunc(-628f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-801f)))))));
    let var_1 = true;
    var var_2 = vec4<i32>(16394i, _wgslsmith_clamp_i32(abs(var_0.b.x), var_0.b.x, -46141i), reverseBits(abs(var_0.b.x)), -abs(u_input.a));
    var var_3 = var_0.c.wwy;
    let var_4 = 34379u;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, reverseBits(max(var_0.b.x, var_0.b.x)) ^ 2147483647i, _wgslsmith_dot_vec2_i32(var_0.b.yx, ~min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(var_2.x, var_2.x)))), min(firstTrailingBit(~(vec4<i32>(u_input.a, var_0.b.x, var_2.x, var_2.x) | vec4<i32>(-29523i, u_input.a, -18321i, var_2.x))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, 0i, -1i, -1i), vec4<i32>(u_input.a, var_2.x, u_input.a, 0i)), vec4<i32>(var_0.b.x, u_input.a, var_2.x, u_input.a)) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, var_0.b.x, 1i, -1i), ~vec4<i32>(u_input.a, 52642i, 2147483647i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(41765u, _wgslsmith_add_u32(0u, firstTrailingBit(~1u)), ~(~(~5690u) << (0u % 32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -567f)), _wgslsmith_f_op_f32(-1f))), vec3<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-8912i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -15718i, -1i, -9593i)), func_1() & max(vec4<i32>(29078i, u_input.a, u_input.a, -308i), vec4<i32>(-16355i, 44258i, u_input.a, 1i))), _wgslsmith_clamp_i32(-u_input.a, u_input.a, min(firstTrailingBit(u_input.a), -1i))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(954f, 1127f, -225f, -1443f) + vec4<f32>(-1998f, -1264f, -480f, -990f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1514f, 1729f, -902f), vec4<f32>(-1125f, -852f, -1063f, -487f))))))))), _wgslsmith_f_op_f32(-1054f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(945f)))) - _wgslsmith_f_op_f32(min(-632f, -1087f)))));
    let var_2 = -15790i;
    var var_3 = Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(-var_1.a), var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1515f)))), var_1.c.x);
    var_3 = Struct_1(1640f, min(select(var_1.b, -vec3<i32>(5458i, 2147483647i, -342i), func_1().x != var_2), vec3<i32>(var_2, -2147483647i, 27708i)), vec4<f32>(-1663f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a))))), 804f), -189f);
    var var_4 = ~firstLeadingBit(reverseBits(min(vec4<i32>(var_3.b.x, var_2, -24385i, -5903i), ~vec4<i32>(var_3.b.x, var_2, -1i, u_input.a))));
    let var_5 = _wgslsmith_div_vec2_f32(var_1.c.wz, _wgslsmith_f_op_vec2_f32(-var_1.c.yw));
    global0 = vec2<bool>(any(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)) || ((-1127f >= _wgslsmith_f_op_f32(-var_5.x)) & all(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, false), false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, abs(vec3<i32>(var_4.x, var_4.x, _wgslsmith_sub_i32(var_4.x, countOneBits(27315i)))), var_0.x, var_3.b.x, _wgslsmith_dot_vec2_u32(var_0.yy, _wgslsmith_mult_vec2_u32(var_0.zx, var_0.xz)));
}


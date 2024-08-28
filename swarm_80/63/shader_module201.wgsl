struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(562f, -508f, -439f), vec3<f32>(-814f, 485f, 292f), vec3<f32>(-636f, -529f, 174f), vec3<f32>(-1325f, -934f, -846f));

var<private> global1: vec2<i32> = vec2<i32>(-735i, 38406i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-411f, -468f) - 429f));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, 717f, 780f, -757f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -550f, -447f, -145f) - vec4<f32>(389f, -856f, 805f, -578f)))), vec4<f32>(438f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-581f, 589f), _wgslsmith_f_op_f32(619f * 1544f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, -373f, 432f, 312f) * vec4<f32>(1454f, 742f, 1000f, 846f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1081f, 1000f, 550f, 477f) * vec4<f32>(-1000f, -390f, -1000f, 294f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, 2293f, 1000f, -242f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1215f, 1790f, -1187f, 116f))), vec4<f32>(1452f, 241f, -1381f, 536f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), all(vec3<bool>(true, false, false)))))), _wgslsmith_f_op_f32(trunc(355f)) < _wgslsmith_f_op_f32(696f + _wgslsmith_f_op_f32(-1093f - _wgslsmith_f_op_f32(sign(-102f))))));
    global0 = array<vec3<f32>, 4>();
    let var_1 = any(select(vec4<bool>(false, all(vec2<bool>(true, true)) && true, true, select(true, true, true)), !vec4<bool>(any(vec3<bool>(true, false, false)), select(true, false, true), all(vec2<bool>(true, false)), any(vec2<bool>(false, true))), false));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1190f - var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 1830f))))), 1714f, var_0.x)));
    let var_2 = Struct_1(max(vec2<u32>(reverseBits(~0u), ~(~4294967295u)), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(40078u, 24498u), vec2<u32>(35185u, 7256u), any(vec2<bool>(var_1, true))), vec2<u32>(1u, 1u))), vec2<f32>(_wgslsmith_f_op_f32(round(804f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_mult_u32(37912u, ~(~7845u >> (_wgslsmith_mult_u32(0u, 0u) % 32u))), _wgslsmith_mult_u32(1u, min(19985u, 11892u)), ~(~16167u));
    return vec2<u32>(reverseBits(var_2.c), _wgslsmith_dot_vec2_u32(~var_2.a, firstTrailingBit(var_2.a | vec2<u32>(var_2.c, 6786u)) | ~var_2.a));
}

fn func_2() -> f32 {
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_1(abs(_wgslsmith_mod_vec2_u32(func_3(), vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2140f, -1446f))), 17326u, ~0u, ~(~abs(firstTrailingBit(4294967295u))));
    var_0 = Struct_1(~countOneBits(firstLeadingBit(var_0.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(840f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1988f + var_0.b.x)))))), select(var_0.c, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, var_0.d, 17766u), vec3<u32>(1u, 4294967295u, 19297u)), vec3<u32>(abs(1u), var_0.e, var_0.c >> (var_0.c % 32u))), false), _wgslsmith_add_u32(1u, ~(~53781u)), var_0.a.x);
    var var_1 = ~(vec3<u32>(var_0.e, abs(var_0.c), firstTrailingBit(var_0.e)) & _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.e, 12823u, var_0.d) >> (vec3<u32>(var_0.c, var_0.d, 51511u) % vec3<u32>(32u)), ~vec3<u32>(15572u, 1u, 0u))) >> (~(~(~(~vec3<u32>(var_0.c, var_0.e, 28142u)))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(980f + var_0.b.x), 1f)) + _wgslsmith_div_f32(-1283f, -224f)) - var_0.b.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = !(!vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    var_0 = vec2<bool>(true, true);
    let var_1 = -((min(0i, countOneBits(-2147483647i)) << ((4294967295u | arg_3.x) % 32u)) | (_wgslsmith_sub_i32(~(-23468i), u_input.b.x) ^ global1.x));
    return StorageBuffer(~(4294967295u >> (arg_1.e % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(5742u, _wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(43390u, 0u, 4323u, 1u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, 0u, 104417u, 4294967295u), vec4<u32>(4294967295u, 48109u, 10213u, 0u), false), vec4<u32>(1u, 4294967295u, 0u, 18041u)))), abs(_wgslsmith_mult_u32(83385u, ~4294967295u)));
    let var_1 = vec2<bool>(true, !all(vec3<bool>(true, true, false)));
    var var_2 = _wgslsmith_f_op_f32(func_1());
    var var_3 = reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(countOneBits(global1.x), ~1i), ~2147483647i), u_input.d.ww));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1692f, 158f)))))), Struct_1(vec2<u32>(4294967295u, ~(~4612u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-334f, -1265f)), _wgslsmith_f_op_f32(1894f * -1014f)), vec2<f32>(-1297f, _wgslsmith_f_op_f32(max(-634f, 183f))))), 1u, 1u, select(1u, func_3().x, var_1.x)), firstTrailingBit(u_input.b.xyw) ^ u_input.d.zxz, vec3<u32>(abs(var_0.x), ~1u, ~_wgslsmith_dot_vec2_u32(abs(var_0.yy), vec2<u32>(4294967295u, 80312u) & vec2<u32>(0u, var_0.x))));
}


struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(1u, _wgslsmith_div_i32(-3332i ^ u_input.a, -1i) << (select(~4294967295u, max(8363u, 4294967295u), true) % 32u), select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(all(vec4<bool>(false, true, false, true)), true), true)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1197f - _wgslsmith_f_op_f32(sign(-1120f))))), _wgslsmith_f_op_f32(trunc(-916f))), -130f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c, var_0.c))))))));
    let var_2 = reverseBits(vec4<i32>(reverseBits(max(_wgslsmith_add_i32(u_input.a, 6228i), _wgslsmith_mod_i32(var_0.a.b, u_input.a))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, -36077i), vec4<i32>(var_0.a.b, 18233i, 0i, var_0.a.b)), -(~var_0.a.b)), _wgslsmith_add_i32(1i, countOneBits(1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b, -10886i), vec2<i32>(u_input.a ^ u_input.a, 46922i))));
    var var_3 = ~(~(~max(vec4<u32>(var_0.a.a, var_0.a.a, 4294967295u, 17464u), vec4<u32>(8197u, 4294967295u, var_0.a.a, 1u)))) & ~(~(~vec4<u32>(var_0.a.a, 1u, 1u, 1u)));
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -413f))), var_0), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(var_0.b)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_0.b.x, 185f))), Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1297f * var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1541f)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))) - _wgslsmith_f_op_f32(max(-371f, _wgslsmith_f_op_f32(exp2(var_0.b.x))))), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.x, -201f)), 1000f)), 1000f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_4.b.b.b.x - var_0.c), var_4.a.b.b.x, -677f))))));
}

fn func_2() -> u32 {
    var var_0 = vec3<f32>(-472f, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(251f)) * _wgslsmith_f_op_f32(ceil(-344f)))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1000f, -905f)), _wgslsmith_f_op_f32(round(var_0.x)), 526f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, -239f, _wgslsmith_f_op_f32(min(229f, var_0.x))) - vec3<f32>(_wgslsmith_div_f32(var_0.x, 1001f), _wgslsmith_f_op_f32(floor(1594f)), _wgslsmith_f_op_f32(-584f - 1141f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1533f, -1640f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, 1579f, var_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, var_0.x, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), -1014f)), var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-357f, 242f, 2080f), var_1, vec3<bool>(true, true, true)))))))) - var_1);
    return ~102470u;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~(~0u)), 1u, func_2()), select(vec3<u32>(~4294967295u, ~(~4294967295u), 1u), ~firstLeadingBit(vec3<u32>(93251u, 48865u, 11183u)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)));
    let var_1 = ~(0i & _wgslsmith_div_i32(u_input.a, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, -24876i), vec4<i32>(-22420i, -46054i, u_input.a, 6522i)))));
    var var_2 = select(select(!vec2<bool>(all(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), true), vec2<bool>(!(184f <= _wgslsmith_f_op_f32(floor(-787f))), all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-546f, 1584f))))), Struct_2(Struct_1(~426u, 1i, select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1075f) - vec2<f32>(-1000f, 296f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(min(1021f, -884f))))), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 755f)), _wgslsmith_f_op_f32(max(-1181f, 1000f))), vec2<f32>(1315f, -301f))), Struct_2(Struct_1(1u, select(38482i, 2147483647i, true), !vec2<bool>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 922f), vec2<f32>(945f, 2057f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(139f, -407f))), -372f)));
    let var_4 = var_3;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~func_1()), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(83944i, 0i, -58088i), vec3<i32>(u_input.a, u_input.a, -94i))), firstLeadingBit(vec3<i32>(3187i, u_input.a, -2505i))), -select(vec3<i32>(0i, u_input.a, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a), any(vec4<bool>(false, false, true, false)))), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(!any(vec2<bool>(false, true)), u_input.a > ~1i), vec2<bool>(!(u_input.a > u_input.a), all(vec4<bool>(false, false, true, true)))));
    let var_1 = 117f;
    let var_2 = Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), Struct_2(var_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.a, _wgslsmith_div_u32(func_1(), select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 1u, var_0.a), vec3<u32>(var_2.a.b.a.a, var_0.a, 0u)), firstLeadingBit(0u), true)), var_2.a.b.a.a), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_0.a, 4294967295u, 37683u, 37762u)), vec4<u32>(var_0.a, var_2.a.b.a.a, 0u, 0u) | vec4<u32>(0u, var_2.a.b.a.a, 1u, var_2.a.b.a.a)), vec4<u32>(~53562u, ~0u, reverseBits(var_0.a), max(var_2.a.b.a.a, 36747u))));
}


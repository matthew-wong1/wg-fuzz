struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(1680f, 346f), vec2<f32>(1387f, 1117f), vec2<f32>(116f, -719f), vec2<f32>(269f, -200f), vec2<f32>(1000f, 903f), vec2<f32>(1000f, -2522f), vec2<f32>(-2055f, -1470f), vec2<f32>(978f, -729f), vec2<f32>(352f, -1214f), vec2<f32>(-547f, 821f), vec2<f32>(136f, -172f), vec2<f32>(1000f, -302f), vec2<f32>(785f, -124f), vec2<f32>(1700f, 929f), vec2<f32>(-322f, -1000f), vec2<f32>(116f, -1170f), vec2<f32>(-1000f, 114f));

var<private> global1: array<vec4<i32>, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_1.a, -8713i, -60046i);
    var_0 = arg_1;
    var var_1 = vec4<u32>(firstTrailingBit(abs(_wgslsmith_mod_u32(0u, 31841u) | _wgslsmith_dot_vec2_u32(vec2<u32>(71507u, 4294967295u), vec2<u32>(4294967295u, 1u)))), ~0u, 1u, 1u);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f + -766f) - _wgslsmith_f_op_f32(-865f + -1577f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f * -1031f) - _wgslsmith_f_op_f32(max(-1243f, -1276f))), _wgslsmith_f_op_f32(select(1158f, _wgslsmith_f_op_f32(floor(389f)), true))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1134f, -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(144f)), _wgslsmith_div_f32(-430f, -668f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(909f)))))));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    var var_0 = Struct_1(~vec4<i32>(~(-8059i >> (arg_2.x % 32u)), -(2147483647i << (arg_2.x % 32u)), arg_0.a.x >> (arg_2.x % 32u), arg_1.b), arg_3 ^ reverseBits(func_3(Struct_1(arg_1.a, -5592i, 0i), arg_1)), -(~(-u_input.c.x >> (14226u % 32u))));
    var var_1 = ~(vec4<u32>(~(~arg_2.x), arg_2.x, _wgslsmith_sub_u32(1u, arg_2.x) | firstLeadingBit(1u), arg_2.x ^ ~4294967295u) & (countOneBits(select(vec4<u32>(arg_2.x, arg_2.x, 17603u, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, false, true))) | vec4<u32>(1u, min(0u, arg_2.x), arg_2.x >> (arg_2.x % 32u), ~0u)));
    var_1 = vec4<u32>(65260u, arg_2.x, _wgslsmith_div_u32(min(var_1.x, arg_2.x), var_1.x), reverseBits(0u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1344f)), -387f) * 1f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(662f))), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1191f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(229f, 1000f), 1f), -1530f)) - _wgslsmith_f_op_f32(-991f + _wgslsmith_f_op_f32(f32(-1f) * -2172f))));
    let var_3 = !select(!vec2<bool>(true, all(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, false, false)), countOneBits(0u) <= var_1.x));
    return ~abs(u_input.c.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    var var_0 = 6943u;
    global1 = array<vec4<i32>, 21>();
    var_0 = min(~(~_wgslsmith_mod_u32(~1u, ~38597u)), max(0u, ~9719u));
    var var_1 = _wgslsmith_f_op_f32(sign(722f));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(290f))));
    return vec2<u32>(_wgslsmith_sub_u32(1u, ~_wgslsmith_clamp_u32(6322u, 1u, 0u) >> (_wgslsmith_div_u32(max(0u, 41673u), ~9718u) % 32u)), _wgslsmith_dot_vec3_u32(abs(~reverseBits(vec3<u32>(4294967295u, 0u, 1u))), ~vec3<u32>(1u, 1u, 1u)));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = reverseBits(select(~vec2<u32>(0u, 1847u), vec2<u32>(1u, 1u), true)) << (select(vec2<u32>(1u, 1u), func_4(-1i, Struct_1(-global1[_wgslsmith_index_u32(1u, 21u)], -25704i, _wgslsmith_div_i32(-1i, 75829i)), Struct_1(vec4<i32>(1i, -4753i, 30021i, arg_0), arg_0, func_2(Struct_1(vec4<i32>(u_input.a, 1i, arg_0, u_input.c.x), arg_0, 0i), Struct_1(vec4<i32>(28074i, -1i, -10223i, arg_0), 1i, arg_0), vec3<u32>(115336u, 49517u, 4294967295u), arg_0)), 1i), true) % vec2<u32>(32u));
    var var_1 = Struct_1(firstTrailingBit(reverseBits(u_input.b)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, firstLeadingBit(0u)), 21u)], countOneBits(-vec4<i32>(36689i, -2147483647i, arg_0, arg_0))), -_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(44234u, 21u)] << (vec4<u32>(50364u, var_0.x, 11060u, 7498u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, arg_0, arg_0, -65200i))), -10580i);
    global0 = array<vec2<f32>, 17>();
    global1 = array<vec4<i32>, 21>();
    global0 = array<vec2<f32>, 17>();
    return true;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(~1u, 17u)]));
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = -(i32(-1i) * -2147483647i);
    global0 = array<vec2<f32>, 17>();
    return Struct_1(-arg_0.a, -2147483647i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 21>();
    let var_0 = func_5(Struct_1(~firstTrailingBit(-vec4<i32>(-1i, -7086i, 0i, u_input.b.x)), u_input.d << (select(~38278u, ~49376u, func_1(u_input.c.x)) % 32u), 2147483647i));
    var var_1 = select(vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1578f)) - -204f) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-214f, -1061f)))), true), vec3<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-514f, -2515f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(710f - 173f), 324f), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), 1074f, any(!vec4<bool>(true, var_1.x, var_1.x, false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-691f, 1000f, true)) + -448f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f * -1000f))));
    let var_3 = !vec3<bool>(true, u_input.a <= func_2(Struct_1(u_input.b, u_input.c.x, var_0.c), func_5(Struct_1(vec4<i32>(-11208i, u_input.b.x, -16412i, -1i), 1i, var_0.c)), vec3<u32>(1u, 34571u, 92242u), 2147483647i), all(var_1.zx));
    var var_4 = vec3<i32>(-_wgslsmith_div_i32(var_0.c, abs(u_input.c.x)), _wgslsmith_add_i32(~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.a, 2147483647i)), -var_0.c), _wgslsmith_add_i32(var_0.c | var_0.a.x, 2147483647i));
    let var_5 = reverseBits(func_5(var_0).a.xz);
    var_1 = vec3<bool>(true, select(true, false, !select(true, any(var_3), all(vec4<bool>(false, false, false, false)))), !select(!(var_1.x | var_1.x), false, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, var_0.c, u_input.c.wzz, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(42231u, 1u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) >> (~_wgslsmith_add_u32(66943u, _wgslsmith_sub_u32(42740u, 1u)) % 32u));
}


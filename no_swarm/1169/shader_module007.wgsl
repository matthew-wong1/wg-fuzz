struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = ~vec2<i32>(firstTrailingBit(arg_0.x), _wgslsmith_sub_i32(min(1i, min(-1i, u_input.b.x)), -arg_0.x >> (~4294967295u % 32u)));
    var var_1 = Struct_1(arg_0.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(703f - 218f) + 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(abs(1174f)))))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, any(vec3<bool>(false, true, true))), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(any(vec3<bool>(false, false, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a >> (0u % 32u)));
    let var_2 = Struct_1(var_1.a, 1864f, vec3<bool>(var_1.b == _wgslsmith_f_op_f32(exp2(var_1.b)), true, !(!all(vec4<bool>(true, var_1.c.x, true, var_1.c.x)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_1.d.x, u_input.a, 4294967295u), _wgslsmith_sub_vec4_u32(var_1.d, var_1.d)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b));
    var_1 = var_2;
    return abs(~var_2.d.x);
}

fn func_2() -> Struct_1 {
    let var_0 = max(u_input.a << (func_3(~abs(vec3<i32>(-37782i, u_input.b.x, 75568i))) % 32u), firstLeadingBit(u_input.a));
    let var_1 = Struct_1(~(~(-min(u_input.b, vec2<i32>(51827i, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1136f, -837f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2057f)) * _wgslsmith_f_op_f32(floor(-129f))))), vec3<bool>(true, true, true), ~vec4<u32>(~1u, _wgslsmith_div_u32(0u, u_input.a), ~_wgslsmith_add_u32(u_input.a, var_0), _wgslsmith_clamp_u32(var_0, 35931u, 18852u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(219f, -1493f)))) + vec2<f32>(1511f, var_1.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, -1161f), vec2<f32>(var_1.b, -326f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) + vec2<f32>(var_1.b, -166f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1000f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))), -1064f));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(719f, -352f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(958f, var_2.x))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(756f, var_2.x)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1759f + var_1.b))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(794f))), 1097f)));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = countOneBits(~arg_0.a.x);
    var var_2 = func_2();
    var_2 = Struct_1(var_0.a, var_2.b, !select(!arg_0.c, arg_0.c, !select(var_2.c, arg_0.c, vec3<bool>(var_0.c.x, true, var_2.c.x))), arg_0.d);
    let var_3 = select(-8178i, 2147483647i, var_2.c.x);
    return Struct_1(abs(~arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -324f), select(!var_0.c, select(!select(vec3<bool>(false, false, true), var_0.c, true), vec3<bool>(any(var_0.c), arg_0.c.x, !var_0.c.x), var_2.c), var_2.c), ~vec4<u32>(_wgslsmith_sub_u32(u_input.a, 6529u), reverseBits(~var_2.d.x), var_0.d.x, firstTrailingBit(9986u)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> bool {
    let var_0 = func_4(func_2());
    let var_1 = arg_0;
    let var_2 = false;
    var var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_clamp_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.b, -var_0.a), u_input.b & ~(u_input.b | vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(1i << (1u % 32u), 32388i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.b)), -1168f))))), !(!var_0.c), vec4<u32>(var_3.d.x, 0u, ~abs(var_0.d.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(func_4(Struct_1(var_0.a, 1000f, vec3<bool>(var_3.c.x, var_0.c.x, var_2), var_3.d)).d.x, var_0.d.x), ~_wgslsmith_sub_u32(var_3.d.x, 0u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, -711f) + _wgslsmith_f_op_f32(var_1 + var_4.b)), func_4(func_4(var_0)).b))) < 528f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f)))) <= -366f) || (_wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.a, u_input.a), firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 1u))) >= reverseBits(u_input.a));
    let var_1 = Struct_1(-(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(7958i, -2147483647i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -834f))), !vec3<bool>(true | var_0, func_1(_wgslsmith_div_f32(655f, -1153f), u_input.b.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1801f, 868f, 503f), vec3<f32>(1000f, 1222f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -870f)), var_0), select(select(vec4<u32>(75957u, 4294967295u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 0u, 43393u, u_input.a), max(~vec4<u32>(4294967295u, 35304u, 58000u, 25640u), vec4<u32>(u_input.a, 24915u, u_input.a, u_input.a)), select(vec4<bool>(var_0, true, true, false), select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(false, false, var_0, true), var_0), !vec4<bool>(var_0, var_0, var_0, true))), _wgslsmith_mod_vec4_u32(vec4<u32>(53683u, ~1u, 0u, 1u), ~vec4<u32>(51446u, u_input.a, 1u, u_input.a)), vec4<bool>(true, !any(vec2<bool>(false, true)), ~5181u <= u_input.a, ~u_input.a == countOneBits(8967u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))), -623f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))));
    var var_3 = vec2<u32>(21431u, var_1.d.x);
    var var_4 = func_2();
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(var_1.d.x, var_4.d.x)), 1u) & 4294967295u, func_4(var_1).a.x);
}


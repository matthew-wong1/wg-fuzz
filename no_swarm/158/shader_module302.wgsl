struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> Struct_1 {
    let var_0 = 0u;
    var var_1 = -(~1i);
    var_1 = -_wgslsmith_sub_i32(-16788i, -2147483647i);
    var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -1i >> (~u_input.a.x % 32u)) >> (countOneBits(~u_input.a.x) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~(-1i), ~(-2147483647i), 45246i), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, -51340i, 0i), vec4<i32>(-50000i, 0i, 1i, 0i))));
    let var_2 = select(firstLeadingBit(_wgslsmith_mod_i32(~(-41308i), max(1i, ~2147483647i))), 43801i, !(!(true | (55165u == var_0))));
    return Struct_1(-_wgslsmith_add_vec3_i32(~vec3<i32>(var_2, var_2, var_2), min(vec3<i32>(var_2, 12709i, var_2) >> (vec3<u32>(u_input.a.x, 4294967295u, 5951u) % vec3<u32>(32u)), ~vec3<i32>(var_2, -1i, var_2))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_2(true, func_1());
    let var_1 = reverseBits(var_0.b.a.x);
    var var_2 = 15287u;
    let var_3 = var_0;
    let var_4 = true;
    return _wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1149f * 306f), _wgslsmith_f_op_f32(f32(-1f) * -1158f))), -1231f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = ~arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(max(-1031f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + 1636f)))));
    var var_3 = select(!(!vec2<bool>(true, arg_1)), vec2<bool>(true, !all(vec4<bool>(false, false, arg_1, true))), select(vec2<bool>(true, arg_1), vec2<bool>(false, true), select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, arg_1)), !(!vec2<bool>(arg_1, false)), ~108u <= arg_0.x)));
    var var_4 = Struct_2(false, func_1());
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32((arg_0.x >> (u_input.a.x % 32u)) << (~arg_0.x % 32u), _wgslsmith_mod_u32(arg_0.x, 77189u) & 1u), 61076u >> ((u_input.a.x & ~4294967295u) % 32u), ~(_wgslsmith_add_u32(arg_0.x, 37601u) & ~1u)), arg_0.www);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2((vec4<i32>(30938i, 12296i, 95241i, 1i) << (vec4<u32>(22579u, 0u, u_input.a.x, 27486u) % vec4<u32>(32u))) | (vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 12684u), vec4<u32>(61976u, 69284u, 13575u, u_input.a.x)) % vec4<u32>(32u))), Struct_2(any(vec2<bool>(true, true)), func_1()), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -489f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1995f, _wgslsmith_div_f32(857f, 1305f))))))));
    let var_1 = vec2<u32>(func_3(max(vec4<u32>(u_input.a.x, ~1237u, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), vec4<u32>(4294967295u, abs(1u), u_input.a.x, ~17902u)), true, func_1()), _wgslsmith_mod_u32(71337u, u_input.a.x));
    let var_2 = firstTrailingBit(-vec3<i32>(_wgslsmith_clamp_i32(-15047i, 2147483647i, firstTrailingBit(-12623i)), ~(i32(-1i) * -42725i), -2147483647i));
    let var_3 = Struct_2(true, func_1());
    let var_4 = Struct_1(~max(max(var_3.b.a & vec3<i32>(var_3.b.a.x, 2147483647i, var_2.x), abs(vec3<i32>(-4695i, var_3.b.a.x, 19209i))), select(~vec3<i32>(var_3.b.a.x, 2147483647i, var_2.x), vec3<i32>(1i, -1i, var_2.x), select(vec3<bool>(var_3.a, var_3.a, var_3.a), vec3<bool>(var_3.a, var_3.a, var_3.a), vec3<bool>(var_3.a, var_3.a, true)))));
    var var_5 = func_1();
    var_5 = Struct_1(reverseBits(var_3.b.a));
    var var_6 = select(!select(vec4<bool>(var_3.a && var_3.a, var_3.a, false, var_3.a | var_3.a), select(select(vec4<bool>(var_3.a, true, true, var_3.a), vec4<bool>(var_3.a, false, false, false), vec4<bool>(true, var_3.a, var_3.a, var_3.a)), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_3.a, var_3.a, true)), !vec4<bool>(true, var_3.a, true, var_3.a)), select(select(select(!vec4<bool>(false, var_3.a, true, false), select(vec4<bool>(false, true, var_3.a, var_3.a), vec4<bool>(var_3.a, var_3.a, var_3.a, false), var_3.a), !var_3.a), vec4<bool>(true, !var_3.a, var_3.a, true), !(var_2.x > 1i)), !(!select(vec4<bool>(true, var_3.a, var_3.a, var_3.a), vec4<bool>(var_3.a, var_3.a, var_3.a, true), vec4<bool>(var_3.a, false, true, false))), !vec4<bool>(var_3.a, any(vec2<bool>(var_3.a, false)), select(false, var_3.a, var_3.a), false)), any(!vec4<bool>(!var_3.a, false, true, true || var_3.a)));
    var var_7 = Struct_2(!(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(floor(912f)))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-865f - 210f)))), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, select(_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(47479u, var_1.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 59929u, 0u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 7020u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(12083u, 67220u, 56112u, 26351u), vec4<u32>(var_1.x, u_input.a.x, var_1.x, u_input.a.x)), vec4<u32>(~var_1.x, ~u_input.a.x, var_1.x | var_1.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 4294967295u)))), vec4<u32>(var_1.x, select(u_input.a.x, var_1.x, var_3.a), min(31156u, var_1.x), u_input.a.x) << (vec4<u32>(0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, var_1.x, 4294967295u), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), 10545u) % vec4<u32>(32u)), !select(!vec4<bool>(var_3.a, var_6.x, true, true), vec4<bool>(var_6.x, var_3.a, var_3.a, var_3.a), select(vec4<bool>(false, var_7.a, var_3.a, var_6.x), vec4<bool>(var_7.a, var_7.a, var_7.a, var_3.a), var_6.x))), 1u, vec3<f32>(396f, 819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(abs(var_0)))), -var_7.b.a.x);
}


struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(select(max(arg_0, 4294967295u), 0u, -222i != u_input.a.x), 0u), ~arg_0, ~(~reverseBits(vec3<u32>(arg_0, 4294967295u, 1u))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -260f)), any(!vec4<bool>(true, u_input.a.x <= 2147483647i, true, select(true, true, false))), -2147483647i, ~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, 33259u)), max(vec2<u32>(1u, arg_0), vec2<u32>(arg_0, arg_0)) ^ ~vec2<u32>(arg_0, arg_0)), Struct_1(countOneBits(select(4361u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51653u, arg_0), vec3<u32>(arg_0, arg_0, 1u)), true)), arg_0, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 36865u, arg_0), vec3<u32>(arg_0, arg_0, 15656u) | vec3<u32>(15924u, 71392u, arg_0)) ^ ~firstTrailingBit(vec3<u32>(arg_0, arg_0, 0u)), vec2<bool>(!all(vec3<bool>(false, false, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -754f))))));
    var var_1 = vec3<u32>(countOneBits(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(59693u, 1u))), ~(~arg_0), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, var_0.a.b, 1u, 15690u), vec4<u32>(var_0.e.b, 1u, 0u, 4294967295u))), ~firstTrailingBit(vec4<u32>(var_0.a.c.x, arg_0, 78835u, 1u)) >> ((~vec4<u32>(var_0.e.a, var_0.d.x, arg_0, arg_0) << (vec4<u32>(4294967295u, 71785u, var_0.d.x, 81795u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = min(-_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a.x, var_0.c) | u_input.a.wx, countOneBits(vec2<i32>(0i, var_0.c))), countOneBits(vec2<i32>(var_0.c, -1i) >> (var_0.e.c.yx % vec2<u32>(32u)))), -36095i);
    return _wgslsmith_add_u32(firstTrailingBit(~var_1.x), _wgslsmith_div_u32(~2305u, arg_0));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = 1i;
    var_0 = i32(-1i) * -24192i;
    let var_1 = vec4<i32>(_wgslsmith_add_i32(arg_1.c, u_input.a.x), -2147483647i, arg_1.c, min(-1i, arg_1.c));
    var_0 = ~_wgslsmith_mod_i32(2147483647i, arg_1.c);
    var var_2 = ~arg_1.e.c.zy;
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(-53251i, func_4(vec4<u32>(reverseBits(1u), ~36474u, 4294967295u, func_3(~31076u)), Struct_2(Struct_1(~18580u, ~0u, countOneBits(vec3<u32>(4294967295u, 20198u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -737f)), (u_input.a.x | -44964i) != reverseBits(39835i), _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 25873i), 38979i), ~(~vec2<u32>(0u, 6281u)), Struct_1(1u, 1u, vec3<u32>(4294967295u, 31335u, 0u), vec2<bool>(false, false), _wgslsmith_f_op_f32(f32(-1f) * -503f)))), -1i);
    var var_1 = false;
    var var_2 = vec3<bool>(false, any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)))), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1817f, -138f));
    var var_4 = Struct_2(Struct_1(abs(0u), ~((51222u << (0u % 32u)) >> (~4294967295u % 32u)), max(abs(vec3<u32>(4294967295u, 26579u, 88095u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(1u), reverseBits(38867u), 1u)), vec2<bool>(false, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))), true, min(-_wgslsmith_dot_vec2_i32(-var_0.xz, vec2<i32>(u_input.a.x, 1i) ^ u_input.a.xy), (i32(-1i) * -16417i) << (0u % 32u)), ~vec2<u32>(1u, abs(1u)), Struct_1(~(~(~7473u)), func_3(max(min(4294967295u, 39294u), ~1u)), countOneBits(vec3<u32>(abs(11827u), ~35071u, reverseBits(4294967295u))), var_2.yz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(744f + _wgslsmith_f_op_f32(f32(-1f) * -1438f)), var_3.x))));
    return Struct_1(var_4.d.x, firstLeadingBit(firstTrailingBit(var_4.a.a)), var_4.a.c, var_4.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    return Struct_1(var_0.b, var_0.a, vec3<u32>(select(~_wgslsmith_mod_u32(4294967295u, 4294967295u), ~12265u, true), ~(~1u) | max(var_0.b, 45798u), ~1u), var_0.d, _wgslsmith_f_op_f32(var_0.e + var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-u_input.a.x);
    var var_1 = u_input.a;
    var var_2 = 1124f;
    let x = u_input.a;
    s_output = StorageBuffer(-28511i);
}


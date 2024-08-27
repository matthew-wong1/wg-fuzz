struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<bool>) -> u32 {
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(83964u, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.a, u_input.c), vec3<u32>(2485u, 0u, 4294967295u)) << (vec3<u32>(21463u, u_input.b, 43205u) % vec3<u32>(32u))), vec3<u32>(u_input.c, ~4294967295u, abs(u_input.b | 0u))), _wgslsmith_mult_u32(~abs(4294967295u), u_input.a));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.x, 1179f), _wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), any(vec3<bool>(false, false, false))));
    var_0 = Struct_1(((firstLeadingBit(15120i) << (u_input.c % 32u)) > ~1i) && var_0.c.x, 1000f, var_0.c);
    var_0 = Struct_1(!(var_0.a & var_0.c.x), _wgslsmith_f_op_f32(abs(-704f)), var_0.c);
    let var_1 = select(var_0.c.yxx, var_0.c.wwy, vec3<bool>(all(var_0.c.ww), true, var_0.c.x));
    var_0 = Struct_1(var_1.x, -1714f, select(!vec4<bool>(true && var_1.x, all(vec4<bool>(true, var_0.c.x, true, false)), false, var_0.a | var_0.a), select(var_0.c, !vec4<bool>(false, var_1.x, var_0.a, false), var_0.c), vec4<bool>(true, (u_input.d.x != u_input.d.x) || false, !select(var_1.x, var_0.a, var_0.a), all(!var_0.c))));
    return _wgslsmith_clamp_vec2_u32(arg_1.b.zz, ~(~(arg_1.b.xx & ~vec2<u32>(56385u, arg_2.x))), ~(~vec2<u32>(~1u, 22134u | u_input.c)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = func_3(arg_2.c.zzz, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(arg_2.c.x - arg_1.a.x)), _wgslsmith_f_op_f32(ceil(-186f)), 2861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(360f * arg_1.a.x) - _wgslsmith_f_op_f32(step(arg_2.c.x, -178f)))), select(vec3<u32>(_wgslsmith_mod_u32(0u, 4294967295u), 1u, func_2(Struct_4(Struct_1(arg_2.a.x, -1343f, vec4<bool>(arg_2.a.x, arg_0.x, arg_2.a.x, arg_2.a.x)), false), vec3<f32>(1102f, arg_2.c.x, arg_2.c.x), vec3<bool>(true, true, true))), vec3<u32>(_wgslsmith_sub_u32(71218u, arg_1.b.x), 1u, 0u >> (u_input.a % 32u)), arg_0)), countOneBits(firstLeadingBit(_wgslsmith_add_vec2_u32(arg_1.b.xz, arg_1.b.zy >> (vec2<u32>(arg_1.b.x, 4294967295u) % vec2<u32>(32u))))));
    let var_1 = abs(var_0.x) ^ _wgslsmith_add_u32(max(u_input.a, ~_wgslsmith_add_u32(u_input.c, 31582u)), 1u);
    let var_2 = Struct_4(Struct_1(true, _wgslsmith_f_op_f32(min(-1250f, 1715f)), vec4<bool>(all(!arg_2.a), _wgslsmith_f_op_f32(abs(arg_2.c.x)) <= arg_2.c.x, arg_2.a.x && select(false, true, arg_0.x), arg_2.a.x)), arg_2.a.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2.c))), arg_2.c)), vec3<u32>((1u << (u_input.a % 32u)) ^ _wgslsmith_mod_u32(5523u, var_0.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, u_input.c, 14102u), var_1, _wgslsmith_mult_u32(43630u, 1u)) ^ arg_1.b.x, var_1 | _wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(2989u, var_1))));
    let var_4 = any(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f + -599f) * arg_1.a.x) >= -615f, 42503u > _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, u_input.c, 38485u, var_3.b.x) << (vec4<u32>(83955u, arg_1.b.x, u_input.c, 27134u) % vec4<u32>(32u)), ~vec4<u32>(arg_1.b.x, 4294967295u, var_1, 32132u)), var_1 < ~_wgslsmith_sub_u32(u_input.a, 4294967295u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a), _wgslsmith_f_op_vec4_f32(-var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(1u);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-135f, 852f, -808f, -366f) * vec4<f32>(710f, -452f, 3057f, 1824f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, 226f, 752f, -1464f))) - vec4<f32>(_wgslsmith_f_op_f32(-943f + -1110f), 262f, -1322f, _wgslsmith_f_op_f32(min(-563f, -1006f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2066f, -1000f, -624f, -1645f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1781f, -1099f, 240f, -384f)) - _wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, false), Struct_2(vec4<f32>(841f, -326f, -205f, -1027f), vec3<u32>(u_input.b, u_input.a, u_input.c)), Struct_3(vec2<bool>(true, true), u_input.d.x, vec4<f32>(-1212f, 483f, -798f, -433f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(639f, 719f, 781f, -596f)), vec4<f32>(-749f, 1000f, 218f, -1622f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, -1018f, -1192f, 1192f) - vec4<f32>(622f, -1440f, 1248f, -1044f)))))));
    var var_2 = select(!vec2<bool>(select(true, false, false) & (var_1.x >= var_1.x), _wgslsmith_mod_u32(u_input.b, u_input.c) <= 1u), vec2<bool>(true, true), all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), true), vec2<bool>(-2147483647i != u_input.d.x, true), vec2<bool>(true, true))));
    var var_3 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-581f + var_1.x), _wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, var_2.x, var_2.x), Struct_2(vec4<f32>(-1000f, -429f, -764f, -1000f), vec3<u32>(91903u, u_input.c, 30546u)), Struct_3(vec2<bool>(true, true), u_input.d.x, vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f * var_1.x) * var_1.x)))));
    var_2 = !select(select(select(vec2<bool>(var_2.x, true), !vec2<bool>(var_2.x, var_2.x), true && var_2.x), select(vec2<bool>(var_2.x, false), select(vec2<bool>(true, false), vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x)), vec2<bool>(var_2.x, var_2.x)), any(!vec3<bool>(true, var_2.x, var_2.x))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, var_2.x), var_2.x), vec2<bool>(true, true), !vec2<bool>(false, var_2.x)), vec2<bool>(var_2.x, u_input.a >= u_input.b), true & select(false, var_2.x, var_2.x)), !(!vec2<bool>(var_2.x, var_2.x)));
    var var_4 = ~(~vec4<i32>(u_input.d.x, -max(u_input.d.x, u_input.d.x), -33818i, ~abs(u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x - 1f));
}


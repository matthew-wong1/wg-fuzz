struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: i32, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1321f)) + _wgslsmith_f_op_f32(2109f * 241f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-607f + -2480f), -565f)))), -1000f);
    var var_1 = Struct_3(327f, ~vec3<u32>(u_input.a, arg_0, ~arg_1.b.b.c.x | ~u_input.a), arg_1.b.d, arg_1.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1744f * _wgslsmith_f_op_f32(-var_0)), 958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2319f)) + 266f))));
    return select(select(select(vec2<bool>(any(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, false), vec2<bool>(all(vec3<bool>(true, false, true)), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), select(vec2<bool>(false & select(true, true, false), all(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), true), u_input.a < 0u);
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(39610u, ~countOneBits(countOneBits(121931u))));
    let var_1 = select(select(vec2<bool>(false, true), vec2<bool>(false, any(vec3<bool>(false, true, true))), select(vec2<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, true, true))), !func_3(var_0.x, Struct_5(Struct_1(vec2<u32>(0u, var_0.x), u_input.b.yzz, u_input.b.zwy), Struct_4(vec2<u32>(var_0.x, var_0.x), Struct_1(vec2<u32>(1u, var_0.x), u_input.b.zyz, u_input.b.xzz), Struct_2(var_0.x), Struct_2(u_input.a), u_input.b.yyz)), -2147483647i, vec2<i32>(-2147483647i, -22464i)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true))), vec2<bool>(true, true), select(vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    let var_2 = 447f;
    var_0 = u_input.b.xz;
    return Struct_4(~(~(~vec2<u32>(u_input.b.x, 1u)) >> (vec2<u32>(~24685u, firstTrailingBit(var_0.x)) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(abs(var_0.x), _wgslsmith_clamp_u32(0u, var_0.x, 1u)), ~vec2<u32>(4294967295u, var_0.x)), select(vec3<u32>(0u, ~var_0.x, var_0.x), u_input.b.zyy ^ abs(u_input.b.wwy), !vec3<bool>(var_1.x, true, false)), vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(28893u, 1u)), ~vec2<u32>(u_input.a, var_0.x)), 53027u)), Struct_2(~69994u), Struct_2(countOneBits(min(1u, 74728u) << ((u_input.b.x | u_input.a) % 32u))), u_input.b.wyy);
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = Struct_5(arg_0.a, func_2());
    var_0 = arg_0;
    let var_1 = Struct_1(~vec2<u32>(var_0.a.a.x, 21665u), vec3<u32>(_wgslsmith_add_u32(1u, arg_0.a.b.x), var_0.b.d.a, arg_0.a.b.x), vec3<u32>(_wgslsmith_clamp_u32(select(arg_0.b.c.a, ~11716u, all(vec4<bool>(false, false, true, true))), _wgslsmith_add_u32(~0u, _wgslsmith_div_u32(1u, 52043u)), 1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u >> (1u % 32u), var_0.b.c.a), select(4294967295u, var_0.a.c.x, false) & firstLeadingBit(1u)), select(arg_1, arg_1, true) | arg_1));
    var_0 = arg_0;
    var var_2 = vec4<u32>(~67141u, 1u, var_1.b.x, ~_wgslsmith_sub_u32(arg_1, 0u) >> (var_0.a.b.x % 32u)) | _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, arg_0.a.c.x, var_1.a.x), vec4<u32>(arg_0.a.c.x, u_input.b.x, u_input.b.x, var_0.b.b.b.x)), ~vec4<u32>(0u, 50125u, 11050u, min(var_1.a.x, 19020u)), vec4<u32>(arg_0.a.c.x, reverseBits(0u), countOneBits(arg_0.b.a.x), var_1.b.x) & u_input.b);
    return ~24618u;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> vec4<bool> {
    return vec4<bool>(true, true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -19432i;
    let var_1 = false || all(func_4(vec3<f32>(_wgslsmith_f_op_f32(step(813f, 690f)), _wgslsmith_f_op_f32(abs(1000f)), 366f), _wgslsmith_div_u32(0u << (u_input.a % 32u), func_1(Struct_5(Struct_1(u_input.b.wx, u_input.b.yyz, vec3<u32>(61169u, u_input.b.x, u_input.a)), Struct_4(u_input.b.zw, Struct_1(u_input.b.xy, u_input.b.wyy, u_input.b.xyx), Struct_2(0u), Struct_2(u_input.a), vec3<u32>(2526u, 34164u, u_input.a))), 26042u, -804f))));
    let var_2 = -106f;
    let var_3 = Struct_4(u_input.b.ww, func_2().b, Struct_2(~u_input.a), Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(1037u, 95879u), 30592u), max(71889u, abs(8589u)))), ~(~(~u_input.b.yzw) | u_input.b.yyw));
    let var_4 = firstLeadingBit(firstTrailingBit(vec4<u32>(var_3.a.x, ~1u, var_3.b.c.x, 76461u)));
    var var_5 = Struct_5(func_2().b, func_2());
    var_5 = Struct_5(func_2().b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~countOneBits(~var_5.a.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_5.b.e.x, 1u, u_input.a, u_input.a), vec4<u32>(~45426u, func_2().d.a, ~var_4.x, firstLeadingBit(var_4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, -1946f, -1000f, var_2))))), -(_wgslsmith_mod_i32(1i, 3726i) >> (var_3.d.a % 32u)) & 30348i, max(~var_3.b.b, abs(var_5.a.b)), var_0);
}


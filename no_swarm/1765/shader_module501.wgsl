struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(2147483647i, 17493u, vec2<i32>(-1i, -11641i)), Struct_1(56951i, 49509u, vec2<i32>(-41409i, 2147483647i)), Struct_1(-56906i, 58421u, vec2<i32>(2147483647i, 2147483647i)), Struct_1(2147483647i, 48285u, vec2<i32>(i32(-2147483648), 1i)), Struct_1(0i, 1u, vec2<i32>(2301i, 2147483647i)), Struct_1(-13951i, 44046u, vec2<i32>(13961i, 22567i)), Struct_1(i32(-2147483648), 11401u, vec2<i32>(-1914i, 38948i)), Struct_1(i32(-2147483648), 47810u, vec2<i32>(9729i, 34825i)), Struct_1(-6478i, 1u, vec2<i32>(11178i, 39751i)), Struct_1(-4429i, 112113u, vec2<i32>(63118i, 816i)), Struct_1(-5427i, 24620u, vec2<i32>(-40460i, -51005i)), Struct_1(2147483647i, 4294967295u, vec2<i32>(1i, 2147483647i)), Struct_1(-1i, 13567u, vec2<i32>(2147483647i, -24145i)), Struct_1(-7589i, 1u, vec2<i32>(-37518i, -1994i)), Struct_1(1i, 4294967295u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(-1i, 0u, vec2<i32>(i32(-2147483648), 0i)), Struct_1(1i, 24903u, vec2<i32>(13089i, 2147483647i)), Struct_1(i32(-2147483648), 105198u, vec2<i32>(i32(-2147483648), -1i)), Struct_1(-52055i, 45496u, vec2<i32>(-1i, 30793i)), Struct_1(36675i, 50962u, vec2<i32>(-37344i, 1551i)), Struct_1(-16572i, 29424u, vec2<i32>(-45478i, 0i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = Struct_1(1i & u_input.a, ~(~u_input.c.x), -(~(-u_input.b.yz) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(73545u, 81643u), vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1688f, _wgslsmith_f_op_f32(f32(-1f) * -1477f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-515f)))), -188f)), 844f, _wgslsmith_f_op_f32(f32(-1f) * -481f)), vec4<f32>(-146f, -633f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1357f, -178f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1946f * -733f)))));
    var var_2 = abs(vec3<i32>(0i, 2147483647i, 1i));
    let var_3 = max(29264u, ~_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b, var_0.b) >> (_wgslsmith_add_u32(2037u, 0u) % 32u), ~_wgslsmith_mult_u32(var_0.b, 1u)));
    let var_4 = max(u_input.b.x, 44582i);
    return var_0.c.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = vec3<bool>(!all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true), true)), true, !select(func_3(true, false) <= abs(28005i), true, false));
    let var_1 = vec4<f32>(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1574f))))), -1650f, _wgslsmith_f_op_f32(floor(-2256f)));
    global0 = array<Struct_1, 21>();
    var var_2 = Struct_1(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 2151u), ~(~(~vec3<u32>(4294967295u, 3050u, 1u)))), vec2<i32>(u_input.a, u_input.b.x));
    var var_3 = Struct_1(2147483647i, firstTrailingBit(~max(~var_2.b, u_input.c.x << (4294967295u % 32u))), firstLeadingBit(vec2<i32>(func_3(true, var_0.x), -firstTrailingBit(-2147483647i))));
    return !(!select(vec3<bool>(55242u > var_3.b, true, var_0.x && var_0.x), !(!var_0), var_0));
}

fn func_1() -> u32 {
    var var_0 = ~abs(countOneBits(vec3<u32>(0u, 17147u, 0u) & vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)));
    let var_1 = _wgslsmith_add_u32(u_input.c.x, 7868u);
    var var_2 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_2(), vec3<bool>(true, true, true)), countOneBits(var_1) < 4294967295u), !func_2(), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), select(select(vec3<bool>(false, select(false, true, false), func_2().x), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true)), vec3<bool>(true, true, true), vec3<bool>(u_input.c.x >= firstLeadingBit(38984u), any(vec3<bool>(true, true, true)), true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true)));
    let var_3 = !vec4<bool>(all(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)), !any(vec3<bool>(false, var_2.x, true)) && false, func_2().x, !var_2.x);
    var_2 = vec3<bool>(var_2.x, true, select(firstLeadingBit(u_input.c.x ^ var_0.x) > _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_1, 31611u), _wgslsmith_div_u32(0u, var_0.x)), all(!vec3<bool>(var_2.x, false, var_2.x)), select(true, var_3.x, !(1i == u_input.a))));
    return 13669u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1655f;
    global0 = array<Struct_1, 21>();
    var var_1 = ~vec3<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, 30422u), 1u);
    let var_2 = Struct_1(~u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_1.x), ~vec2<u32>(0u, var_1.x) >> (vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u))) ^ u_input.c.x, ~(~(min(u_input.b.xy, u_input.b.xw) & u_input.b.xx)));
    let var_3 = max(u_input.c.x, _wgslsmith_sub_u32(~(~(~var_1.x)), _wgslsmith_add_u32(~56504u, ~var_1.x) << (select(9257u, ~u_input.c.x, true) % 32u)));
    global0 = array<Struct_1, 21>();
    var_1 = _wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, var_3, var_2.b), firstTrailingBit(vec3<u32>(4294967295u, u_input.c.x, 1u)))) >> (((~vec3<u32>(58931u, var_2.b, 7782u) | ~vec3<u32>(1u, 4294967295u, 17257u)) >> (vec3<u32>(select(var_3, 1u, true), var_3, ~u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(102516u, var_3, var_2.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_3), vec3<u32>(1u, var_1.x, 13372u)))));
    var_1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x | _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_2.b, 46246u)), abs(~42310u), _wgslsmith_sub_u32(func_1(), var_1.x)), vec3<u32>(56061u, 20120u, 1u ^ u_input.c.x) >> (vec3<u32>(func_1(), ~u_input.c.x, var_2.b) % vec3<u32>(32u)), countOneBits(firstTrailingBit(~(~vec3<u32>(var_2.b, 11527u, 1u)))));
    var var_4 = ((_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 1i), vec2<i32>(24402i, -13665i)) ^ var_2.c.x) | firstLeadingBit(-26304i)) ^ ~reverseBits(i32(-1i) * -5393i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(countOneBits(u_input.b.xxz))), 1i, -u_input.b);
}


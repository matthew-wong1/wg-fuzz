struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec4<u32>(26333u, 22002u, 90698u, 36359u), Struct_2(45010i, true, vec2<bool>(false, false), -69664i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = (u_input.a | 8964u) >> (_wgslsmith_dot_vec3_u32(global0.b.wyx | ~(global0.b.yzy & vec3<u32>(17639u, 0u, 6666u)), ~(~vec3<u32>(1u, 4294967295u, 4294967295u))) % 32u);
    let var_1 = Struct_5(global0.c, -25456i, Struct_1(-1i, ~countOneBits(reverseBits(vec2<u32>(u_input.a, 11319u)))), vec3<bool>(select(!all(vec3<bool>(false, global0.a, global0.a)), !any(vec4<bool>(false, true, true, global0.c.b)), true), global0.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(39915i, 2147483647i, global0.c.d, 2147483647i), vec4<i32>(global0.c.d, 2080i, global0.c.d, global0.c.a), vec4<bool>(global0.a, true, false, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.d, global0.c.a, -20764i, global0.c.d), vec4<i32>(global0.c.d, global0.c.a, global0.c.d, global0.c.a))) >= _wgslsmith_mod_i32(reverseBits(global0.c.a), countOneBits(27038i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, _wgslsmith_f_op_f32(-153f + 843f), _wgslsmith_f_op_f32(898f * -837f), -1524f) * vec4<f32>(_wgslsmith_f_op_f32(floor(298f)), _wgslsmith_f_op_f32(step(1000f, -267f)), _wgslsmith_f_op_f32(240f * 1149f), -705f)))));
    let var_2 = Struct_5(Struct_2(reverseBits(-40377i), any(select(global0.c.c, select(var_1.a.c, var_1.a.c, true), false)), var_1.a.c, firstTrailingBit(-1i)), _wgslsmith_div_i32(-1i, i32(-1i) * -1i), var_1.c, vec3<bool>(global0.c.b, global0.c.c.x, var_1.a.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x + -546f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-809f)) - -123f)), _wgslsmith_f_op_f32(460f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x))), var_1.e.x));
    var var_3 = select(var_1.a.c, !select(select(select(var_2.d.zy, var_2.a.c, vec2<bool>(global0.a, false)), !var_1.d.zy, var_1.a.c.x), vec2<bool>(global0.c.b, true), vec2<bool>(true, all(vec4<bool>(var_2.d.x, var_2.a.b, var_1.d.x, false)))), var_2.a.c);
    let var_4 = Struct_2(var_2.b, 9657u == _wgslsmith_add_u32(countOneBits(u_input.a), _wgslsmith_add_u32(1u, 1u)), var_1.d.xy, firstLeadingBit(var_1.b | _wgslsmith_mod_i32(i32(-1i) * -21758i, _wgslsmith_mult_i32(22489i, var_1.b))));
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(48853u, ~4294967295u, 4294967295u, var_1.c.b.x), vec4<u32>(~select(u_input.a, 33972u, var_3.x), ~_wgslsmith_mult_u32(1u, 1u), _wgslsmith_dot_vec3_u32(abs(global0.b.zxy), vec3<u32>(68368u, 0u, 1u)), countOneBits(7839u)));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = vec4<u32>(~(~(~firstLeadingBit(u_input.a))), ~4294967295u, u_input.a, 0u);
    global0 = Struct_3(global0.c.b, vec4<u32>(_wgslsmith_mod_u32(1u, 68954u), 17920u, _wgslsmith_clamp_u32(~var_0.x, firstTrailingBit(global0.b.x) ^ ~0u, ~func_3()), 1u), global0.c);
    let var_1 = var_0.x > _wgslsmith_add_u32(var_0.x, ~var_0.x);
    global0 = Struct_3(false, global0.b, global0.c);
    var var_2 = _wgslsmith_add_i32(-(~(-2147483647i | _wgslsmith_mod_i32(30571i, global0.c.a))), _wgslsmith_div_i32(abs(global0.c.d), -34055i));
    return abs(1530u);
}

fn func_1() -> vec4<f32> {
    var var_0 = ~reverseBits(_wgslsmith_div_u32(func_2(vec3<f32>(-417f, 1000f, 1394f)), 45147u));
    let var_1 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(global0.c.a, -1i, 1i, global0.c.a)), ~vec4<i32>(-1i, global0.c.d, global0.c.a, 22775i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 31280i, -2147483647i), vec4<i32>(71185i, global0.c.a, global0.c.a, -10914i)) << (~vec4<u32>(u_input.a, global0.b.x, u_input.a, 79026u) % vec4<u32>(32u)));
    var_0 = u_input.a;
    var_0 = ~max(max(countOneBits(~0u), _wgslsmith_add_u32(_wgslsmith_div_u32(global0.b.x, 53722u), u_input.a)), _wgslsmith_sub_u32(~(~global0.b.x), ~(~1u)));
    global0 = Struct_3(any(global0.c.c), global0.b, Struct_2(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-95687i, -27987i, global0.c.a, -1i)), var_1), _wgslsmith_mult_u32(~global0.b.x, ~u_input.a) >= ~(15754u << (1u % 32u)), !(!(!vec2<bool>(global0.a, global0.c.c.x))), -2147483647i));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -351f), -469f, global0.c.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-511f)), 120f)), -1099f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2442f, 1785f) - -2254f) + _wgslsmith_f_op_f32(round(445f))), -1476f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(262f * 853f)) + -831f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-511f - _wgslsmith_f_op_f32(-1197f * 687f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-990f, 285f) * _wgslsmith_f_op_f32(-1496f * 1110f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_1 = 37163i;
    let var_2 = vec3<u32>(~u_input.a, global0.b.x, _wgslsmith_sub_u32(1u, ~_wgslsmith_mod_u32(4294967295u, u_input.a)) << (~(~_wgslsmith_div_u32(global0.b.x, u_input.a)) % 32u));
    var var_3 = !vec3<bool>(true, _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(f32(-1f) * -800f), global0.a & !(global0.a & true));
    let var_4 = Struct_4(Struct_1(~(-58180i), ~(~vec2<u32>(18821u, 50709u))), Struct_2(2147483647i, !all(vec3<bool>(false, var_3.x, true)) & (true && global0.c.c.x), !vec2<bool>(var_3.x, true), min(1i << (~global0.b.x % 32u), -63564i)), var_0.x, true, Struct_1(min(~global0.c.a, global0.c.d), global0.b.xy));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(-firstLeadingBit(vec2<i32>(var_1, var_1))), vec2<i32>(-(i32(-1i) * -var_1), global0.c.a), _wgslsmith_sub_vec2_i32(reverseBits(countOneBits(vec2<i32>(var_1, global0.c.a))), vec2<i32>(_wgslsmith_mod_i32(var_4.e.a, 40922i) >> (~global0.b.x % 32u), max(0i, global0.c.a))), vec3<u32>(4294967295u, 17704u, 0u));
}


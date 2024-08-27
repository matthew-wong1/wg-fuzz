struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = vec2<u32>(~43153u, u_input.a);
    var var_1 = firstTrailingBit(vec3<u32>(u_input.c.x, 5465u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1424u, 43044u), vec3<u32>(var_0.x, arg_0.x, var_0.x)))) >> (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1, 39981u), arg_0.x) | abs(_wgslsmith_mult_u32(68091u, 1u)), u_input.c.x, u_input.c.x >> (arg_1 % 32u)) % vec3<u32>(32u));
    var var_2 = Struct_4(0i, vec3<bool>(true, true, true), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, -1145f)), _wgslsmith_f_op_f32(sign(-1071f)), var_0.x == ~2884u), 2147483647i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1345f, -252f, -1032f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1683f, 179f, -925f), vec3<f32>(1032f, 1752f, -1000f), vec3<bool>(true, false, true)))))), Struct_2(vec3<bool>(true, true, true), abs(~var_1.xx))), 24168i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1281f, 1264f) * vec2<f32>(-271f, 336f)))), 315f, !any(vec3<bool>(true, true, true))));
    let var_3 = Struct_5(~_wgslsmith_sub_u32(~1u, ~19131u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3542f, var_2.e.b, var_2.e.a.x, var_2.c.a.b))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(911f, -1109f, var_2.e.b, var_2.e.b)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.a.x, -666f, var_2.e.b, 1259f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-765f, 433f, var_2.e.b, -705f))), var_2.b.x && var_2.e.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.a.x, _wgslsmith_f_op_f32(282f + -1087f), _wgslsmith_f_op_f32(-var_2.e.b), -1158f)))), Struct_2(vec3<bool>(all(vec3<bool>(var_2.c.d.a.x, true, false)), false, countOneBits(u_input.b.x) > var_2.d), var_0), _wgslsmith_mult_vec2_u32(min(var_2.c.d.b, firstTrailingBit(vec2<u32>(arg_1, arg_0.x))), min(var_2.c.d.b, select(~vec2<u32>(arg_1, 74632u), _wgslsmith_mult_vec2_u32(arg_0, vec2<u32>(var_2.c.d.b.x, 4294967295u)), var_2.b.yx))), var_2.c.d);
    var var_4 = ~var_2.a;
    return ~vec4<u32>(~reverseBits(~var_1.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(var_1.x), _wgslsmith_div_u32(13752u, u_input.a)), var_0.x), ~var_3.a, var_3.e.b.x);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    let var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(ceil(-1581f)));
    let var_1 = func_3(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), arg_2.b.x);
    let var_2 = u_input.d;
    var var_3 = true;
    var_3 = true;
    return min(func_3(vec2<u32>(0u, ~var_1.x << (111968u % 32u)), var_1.x), ~abs((vec4<u32>(1u, 68454u, arg_3, 0u) | var_1) & ~vec4<u32>(arg_3, 23853u, 0u, u_input.c.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-257f, 1025f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(677f, 1000f) + vec2<f32>(1692f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, 130f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, _wgslsmith_f_op_f32(105f + -1426f))), vec2<bool>(arg_2, true))), _wgslsmith_f_op_f32(sign(1000f)), ~arg_1.b.x > (arg_0.x | 29507u));
}

fn func_1() -> bool {
    var var_0 = Struct_3(func_4(~func_2(-454f, _wgslsmith_f_op_f32(round(1000f)), Struct_2(vec3<bool>(false, false, true), vec2<u32>(u_input.c.x, u_input.a)), ~1u), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~(~vec2<u32>(u_input.a, u_input.c.x))), true, select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, false, all(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true))), -34110i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-600f, -1109f, _wgslsmith_f_op_f32(trunc(-149f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2367f, -1634f, -908f))))))), Struct_2(vec3<bool>(!all(vec2<bool>(false, true)), true, true), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20910u, u_input.c.x, u_input.a, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.c.x)), u_input.c.x) & vec2<u32>(_wgslsmith_mult_u32(11169u, u_input.c.x), 1u)));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b, var_0.a.b), vec2<f32>(-144f, var_0.c.x), vec2<bool>(false, var_0.d.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))), var_0.a.b)), true), 51625i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-982f, var_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.b, -581f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), var_0.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(661f, var_0.a.b, var_0.c.x), vec3<f32>(var_0.c.x, 1137f, -577f), var_0.d.a.x))))), Struct_2(select(vec3<bool>(var_0.a.c, all(vec3<bool>(true, false, var_0.d.a.x)), true), var_0.d.a, var_0.d.a), ~func_2(_wgslsmith_f_op_f32(-575f * -207f), _wgslsmith_f_op_f32(round(-434f)), var_0.d, 0u).xz));
    var_0 = Struct_3(func_4(reverseBits(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.c.x), ~u_input.c.x, var_0.d.b.x & var_0.d.b.x, abs(57204u))), var_0.d, false, select(vec4<bool>(-17737i != u_input.b.x, var_0.d.a.x, var_0.d.a.x, u_input.a <= 4294967295u), vec4<bool>(all(var_0.d.a.yz), select(false, var_0.d.a.x, false), true, var_0.d.a.x & false), var_0.b == (2147483647i ^ var_0.b))), _wgslsmith_mult_i32(var_0.b, -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - -1841f), -174f, _wgslsmith_div_f32(var_0.c.x, 418f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(200f)), -1613f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x + var_0.a.a.x))))), var_0.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, -959f, var_0.a.b, var_0.a.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(608f, 1387f, 1000f, 1000f) * vec4<f32>(-260f, 932f, var_0.a.b, var_0.c.x))))));
    let var_2 = Struct_2(!(!var_0.d.a), max(~vec2<u32>(26108u, 4294967295u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.c << (u_input.c % vec2<u32>(32u)), vec2<u32>(var_0.d.b.x, 4294967295u), ~var_0.d.b))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<bool>((32757u >> (1u % 32u)) <= u_input.c.x, !func_1(), any(vec2<bool>(true, true)) || true), u_input.c);
    var_0 = Struct_2(var_0.a, var_0.b);
    var_0 = Struct_2(select(var_0.a, var_0.a, true), vec2<u32>(~var_0.b.x | u_input.a, _wgslsmith_mod_u32(u_input.a, ~0u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, func_2(644f, -1000f, Struct_2(var_0.a, u_input.c), var_0.b.x).x), vec2<u32>(45005u, 81462u), vec2<u32>(~var_0.b.x, 18628u)) % vec2<u32>(32u)));
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -1084f))), -1000f, Struct_2(var_0.a, ~vec2<u32>(~var_0.b.x, _wgslsmith_div_u32(1u, u_input.a))), u_input.c.x).xx;
    var_0 = Struct_2(var_0.a, ~vec2<u32>(func_3(vec2<u32>(62180u, 3661u), 59818u).x, ~var_0.b.x | 14246u));
    var var_2 = Struct_2(var_0.a, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u & var_2.b.x, _wgslsmith_sub_u32(444u, _wgslsmith_div_u32(~var_0.b.x, var_2.b.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-585f)), _wgslsmith_f_op_f32(step(1530f, _wgslsmith_f_op_f32(sign(func_4(vec4<u32>(22802u, u_input.c.x, 6586u, var_1.x), Struct_2(var_2.a, vec2<u32>(u_input.c.x, 1u)), true, vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)).b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-645f, _wgslsmith_f_op_f32(f32(-1f) * -1015f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-837f)) * _wgslsmith_f_op_f32(floor(1854f))))), ~12071u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(185f)), -478f));
}


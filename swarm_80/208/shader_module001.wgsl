struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_5(-2988i | _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 10884i, -2147483647i, 1i), vec4<i32>(2050i, -5823i, 62510i, -29346i)), countOneBits(~0i)), vec3<bool>(false, any(vec3<bool>(true, false, false)), true));
    let var_1 = abs(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(16341i, -9867i, -12327i, 1i) ^ vec4<i32>(-1i, var_0.a, 0i, var_0.a)), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, -2147483647i, -10157i, 49747i), vec4<i32>(2147483647i, var_0.a, var_0.a, var_0.a)), -min(vec4<i32>(var_0.a, -2147483647i, var_0.a, var_0.a), vec4<i32>(var_0.a, 1i, var_0.a, var_0.a))) << (vec4<u32>(42987u, firstLeadingBit(38794u), 0u, _wgslsmith_div_u32(19091u, abs(u_input.b.x))) % vec4<u32>(32u)));
    let var_2 = Struct_1(~abs(vec2<u32>(firstLeadingBit(31257u), ~0u)), countOneBits(u_input.b.yy));
    var var_3 = Struct_3(var_2, Struct_1(abs(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 0u)), vec2<u32>(_wgslsmith_sub_u32(38614u, var_2.a.x), 18325u) ^ countOneBits(vec2<u32>(65577u, u_input.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-724f)), _wgslsmith_f_op_f32(-135f - 1892f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1436f, _wgslsmith_f_op_f32(355f + -588f), select(false, var_0.b.x, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f - 396f)))));
    var_3 = Struct_3(var_3.b, Struct_1(~u_input.b.xx, vec2<u32>(~abs(var_3.a.b.x), countOneBits(~u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-351f, var_3.c.x) + var_3.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, var_3.c.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(118f, _wgslsmith_div_f32(var_3.c.x, -1885f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.c * vec2<f32>(var_3.c.x, 320f)) - vec2<f32>(var_3.c.x, 1000f))), var_0.b.yz)));
    return u_input.a.xz;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(Struct_1(arg_3.zw, vec2<u32>(u_input.a.x & 81577u, 0u)), Struct_1(func_3(), vec2<u32>(4294967295u << (u_input.a.x % 32u), 0u ^ arg_1)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), true), all(vec3<bool>(true, true, true)))), 1f, Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 62646u), _wgslsmith_mod_vec2_u32(arg_0, vec2<u32>(96015u, arg_2))), select(arg_0, u_input.b.xy, true) | u_input.a.zz), Struct_1(vec2<u32>(arg_0.x, ~arg_0.x), ~arg_3.yx), select(vec4<bool>(all(vec2<bool>(false, false)), 19790u > u_input.b.x, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true))), Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(firstLeadingBit(arg_3.zw), min(vec2<u32>(arg_1, arg_2), vec2<u32>(0u, 47426u))), _wgslsmith_div_vec2_u32(vec2<u32>(32976u, arg_1), vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u)))), Struct_1(reverseBits(vec2<u32>(4355u, arg_1)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, arg_3.x), vec2<u32>(arg_1, 4294967295u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(963f * 904f) * _wgslsmith_f_op_f32(select(-291f, 253f, true))), _wgslsmith_f_op_f32(-1371f - _wgslsmith_f_op_f32(min(-286f, -811f))))));
    var var_1 = var_0.a.b.a.x;
    var_1 = 51299u;
    let var_2 = ~arg_3;
    let var_3 = Struct_4(Struct_2(var_0.a.b, var_0.c.b, !(!select(var_0.a.c, vec4<bool>(true, false, var_0.c.c.x, var_0.c.c.x), var_0.c.c.x))), var_0.d.c.x, var_0.a, Struct_3(var_0.a.a, Struct_1(arg_0, vec2<u32>(46033u, arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(var_0.d.c)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -860f), var_0.b))));
    return Struct_1(_wgslsmith_div_vec2_u32(~(var_3.c.a.a & _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.x, arg_1), vec2<u32>(1u, var_2.x))), select(~(~vec2<u32>(u_input.b.x, 51349u)), select(arg_0, arg_3.yw >> (var_3.c.a.a % vec2<u32>(32u)), vec2<bool>(true, var_3.a.c.x)), vec2<bool>(!var_0.c.c.x, all(var_0.a.c)))), var_2.wy);
}

fn func_1(arg_0: f32) -> vec4<i32> {
    var var_0 = Struct_3(func_2(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x) & u_input.b.x), _wgslsmith_sub_u32(countOneBits(select(35213u, u_input.a.x, true)), _wgslsmith_div_u32(u_input.b.x >> (u_input.b.x % 32u), 1u)), u_input.b.x, ~vec4<u32>(~u_input.b.x, abs(1u), u_input.b.x >> (1u % 32u), 0u)), func_2(u_input.a.yz, _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(1u, 4294967295u)) >> (~1u % 32u), abs(u_input.a.x), select(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 35992u, 0u, 45226u), u_input.a), u_input.a, vec4<bool>(any(vec4<bool>(true, false, true, false)), false, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 363f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(select(1804f, arg_0, true)), arg_0))));
    var_0 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_div_u32(reverseBits(4294967295u), var_0.a.b.x), u_input.a.x << (func_3().x % 32u)), u_input.b.yy), var_0.a, _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-182f, var_0.c.x)))))));
    var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(countOneBits(var_0.b.b), u_input.b.zy), vec2<u32>(_wgslsmith_sub_u32(~66005u, u_input.b.x), ~select(54148u, 1u, false))), var_0.b, _wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(_wgslsmith_div_f32(var_0.c.x, arg_0), _wgslsmith_f_op_f32(abs(-326f)))));
    let var_1 = true;
    var var_2 = Struct_3(func_2(reverseBits(u_input.b.zy) >> ((firstTrailingBit(vec2<u32>(u_input.b.x, 62473u)) >> (var_0.b.a % vec2<u32>(32u))) % vec2<u32>(32u)), 96272u, u_input.a.x, ~vec4<u32>(var_0.b.b.x, func_2(vec2<u32>(85839u, u_input.b.x), 2096u, 40495u, vec4<u32>(35385u, 5420u, u_input.a.x, 17697u)).a.x, _wgslsmith_sub_u32(37653u, 0u), ~u_input.b.x)), Struct_1(~(~(var_0.b.b & vec2<u32>(var_0.b.a.x, u_input.b.x))), u_input.b.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.x, arg_0)) - _wgslsmith_f_op_f32(-var_0.c.x))) + vec2<f32>(_wgslsmith_f_op_f32(abs(-429f)), -2560f)));
    return -vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, max(-20520i, 10789i)), _wgslsmith_clamp_vec2_i32(min(vec2<i32>(17539i, 1i), vec2<i32>(6972i, 2147483647i)), ~vec2<i32>(1i, -44130i), vec2<i32>(2147483647i, -28957i))), max(firstLeadingBit(-2147483647i) << (~u_input.a.x % 32u), 1i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(601f * -709f)))));
    var var_1 = 940i;
    var var_2 = func_2(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.x, 27847u, vec4<u32>(~1u, ~1u & ~u_input.a.x, 1u, ~34678u));
    var_2 = Struct_1(_wgslsmith_sub_vec2_u32(min(reverseBits(~var_2.a), var_2.b), ~func_3()), min(select(abs(min(vec2<u32>(var_2.a.x, u_input.a.x), vec2<u32>(u_input.b.x, u_input.b.x))), vec2<u32>(~u_input.a.x, _wgslsmith_mult_u32(1u, 4834u)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), vec2<u32>(14451u, var_2.b.x)));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(floor(-180f))), firstLeadingBit(u_input.a.yy), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(-2605f)), -761f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, _wgslsmith_f_op_f32(-1722f * -358f))))));
}


struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f * -182f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-300f, 1657f, -816f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1658f, -504f, 1189f))) * vec3<f32>(1f, 1f, 1f)))));
    let var_1 = -_wgslsmith_sub_vec3_i32(select(u_input.d.zwz, ~firstLeadingBit(u_input.d.xyx), vec3<bool>(any(vec3<bool>(true, false, true)), 1u >= u_input.b, true)), vec3<i32>(-8606i, -59370i, u_input.c));
    let var_2 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(66684u, u_input.b, u_input.b, 1u), ~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)), 0u ^ u_input.b)) << ((u_input.b & _wgslsmith_div_u32(55614u, 83910u)) % 32u);
    let var_3 = -(~abs(select(min(u_input.d.x, u_input.d.x), 0i, all(vec3<bool>(true, true, false)))));
    let var_4 = 1f;
    return -u_input.c;
}

fn func_2() -> i32 {
    var var_0 = ~reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.b), min(vec2<u32>(u_input.b, 33425u), vec2<u32>(u_input.b, u_input.b))) >> (vec2<u32>(1u, ~1u) % vec2<u32>(32u)));
    let var_1 = Struct_1(-44344i, vec2<bool>((-u_input.d.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(1u, u_input.b, var_0.x)) % 32u)) >= (-63329i << (_wgslsmith_add_u32(var_0.x, 4294967295u) % 32u)), all(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true))), vec4<f32>(-2311f, -1263f, 302f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-714f, _wgslsmith_f_op_f32(1143f - -1576f)) + -1293f)), _wgslsmith_div_i32(u_input.c, -u_input.a.x ^ func_3()));
    var var_2 = any(!select(vec3<bool>(true, all(vec2<bool>(var_1.b.x, false)), select(false, true, false)), !(!vec3<bool>(var_1.b.x, false, var_1.b.x)), select(!vec3<bool>(true, var_1.b.x, var_1.b.x), select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), false), all(vec3<bool>(true, var_1.b.x, var_1.b.x)))));
    var var_3 = _wgslsmith_clamp_u32(1u, ~4294967295u, _wgslsmith_mod_u32(~u_input.b, min(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 49204u), ~69982u), _wgslsmith_clamp_u32(59772u, 1u, var_0.x))));
    var_3 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~var_0.x, ~47887u), ~vec2<u32>(~18009u, 0u));
    return u_input.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, arg_0, -325f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.c.xwx)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c.x, arg_2.b.c.x, _wgslsmith_f_op_f32(round(arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.b.c.xxx, arg_1.b.c.ywy) * arg_2.b.c.wxz) + arg_2.b.c.zzx)), !select(!vec3<bool>(arg_1.b.b.x, false, false), select(!vec3<bool>(arg_2.b.b.x, arg_1.b.b.x, false), vec3<bool>(true, true, true), any(arg_1.b.b)), !select(vec3<bool>(true, arg_2.b.b.x, false), vec3<bool>(false, false, true), false))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(var_0.x - arg_2.b.c.x), arg_2.b.c.x);
    var var_1 = vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(select(u_input.b, 14098u, true), ~(~u_input.b)), 1u), select(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 43079u, 16920u, u_input.b)) << (vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b) % vec4<u32>(32u)), ~abs(vec4<u32>(u_input.b, 0u, u_input.b, 18132u))), _wgslsmith_add_u32(~abs(u_input.b), max(u_input.b, u_input.b) | u_input.b), true), u_input.b);
    let var_2 = abs(reverseBits(~(_wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(u_input.c, arg_1.a.x, 2147483647i, -2147483647i)) >> ((64190u >> (u_input.b % 32u)) % 32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -107f, -895f) + vec3<f32>(874f, arg_2.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f), var_0.x)));
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> f32 {
    let var_0 = u_input.d;
    let var_1 = func_4(_wgslsmith_f_op_f32(abs(arg_2.b.a.c.x)), Struct_3(vec4<i32>(u_input.d.x, func_2(), 2147483647i, abs(-4140i)), Struct_1(-1i, select(arg_2.a.d.b, vec2<bool>(arg_2.b.a.b.x, arg_2.e.d.b.x), false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(478f, 1173f, -651f, 1127f), vec4<f32>(arg_2.e.a.c.x, -165f, arg_2.b.e, arg_2.a.b), true)), ~(-2147483647i))), Struct_3(vec4<i32>(firstLeadingBit(-41207i), -2147483647i, _wgslsmith_mod_i32(u_input.d.x, -1i), 15361i) ^ vec4<i32>(max(arg_2.d.x, arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, -2147483647i, var_0.x), u_input.d), arg_2.a.d.d ^ u_input.d.x, arg_0), arg_2.e.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.e.a.c.x, _wgslsmith_f_op_f32(max(368f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_2.b.d.c.x)))))), arg_2.b.a.c.x, 376f)));
    var var_3 = reverseBits(reverseBits(firstLeadingBit(~firstTrailingBit(vec4<u32>(1u, 0u, var_1, 4294967295u)))));
    var_3 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 357u), var_3.yw), 0u, max(11487u, _wgslsmith_dot_vec2_u32(var_3.xy, vec2<u32>(u_input.b, 4294967295u))), ~(arg_1 << (4294967295u % 32u))) & ((vec4<u32>(arg_1, min(1u, var_3.x), _wgslsmith_add_u32(1u, u_input.b), ~arg_2.c) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.c, 4294967295u, var_1, 26628u), vec4<u32>(48890u, u_input.b, 65138u, arg_1) >> (vec4<u32>(0u, 19737u, u_input.b, var_3.x) % vec4<u32>(32u))) % vec4<u32>(32u))) & ~(~(~vec4<u32>(arg_2.c, arg_1, 43224u, var_3.x))));
    return _wgslsmith_div_f32(arg_2.e.b, _wgslsmith_f_op_f32(max(-815f, -2003f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f * _wgslsmith_f_op_f32(trunc(-852f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(257f, -1728f, false)), -521f))) * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-796f, 1875f, false)) + _wgslsmith_f_op_f32(func_1(-28386i, 4294967295u, Struct_4(Struct_2(Struct_1(-2147483647i, vec2<bool>(false, true), vec4<f32>(578f, -448f, 575f, -1495f), 0i), -1104f, u_input.a.x, Struct_1(-2147483647i, vec2<bool>(true, true), vec4<f32>(992f, 1000f, -1090f, 1000f), u_input.d.x), -935f), Struct_2(Struct_1(0i, vec2<bool>(false, true), vec4<f32>(-1859f, -1000f, -1304f, -1703f), u_input.c), 1000f, u_input.c, Struct_1(u_input.d.x, vec2<bool>(false, true), vec4<f32>(248f, 2427f, -499f, 600f), -2147483647i), 383f), u_input.b, vec3<i32>(u_input.d.x, u_input.a.x, -4896i), Struct_2(Struct_1(u_input.c, vec2<bool>(false, false), vec4<f32>(-916f, 337f, -1616f, -1092f), 33160i), -158f, u_input.d.x, Struct_1(u_input.d.x, vec2<bool>(true, false), vec4<f32>(839f, -1056f, 120f, 777f), -29418i), -265f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1857f, 919f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-571f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1345f - -1000f))), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + -325f))) + 303f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2558f, 1000f) * vec2<f32>(1036f, -1630f)), vec2<f32>(1831f, 420f)))))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(u_input.b), ~u_input.b), vec2<u32>(u_input.b, 1287u)));
}


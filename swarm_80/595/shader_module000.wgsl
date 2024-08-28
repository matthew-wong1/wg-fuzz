struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = Struct_4(true, ~u_input.c.xyx);
    var var_2 = Struct_1(vec2<i32>(select(22301i, _wgslsmith_sub_i32(u_input.e.x, _wgslsmith_mult_i32(-2147483647i, arg_3.e)), max(-12312i, 1i) == -u_input.e.x), -(~min(arg_3.e, arg_3.e))), vec2<u32>(~1u, (42695u << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, var_1.b.x)) % 32u)) >> (var_1.b.x % 32u)), select(arg_3.c, !(!select(arg_3.c, arg_3.c, vec2<bool>(false, arg_3.d.a))), true), false, ~abs(vec3<u32>(var_1.b.x, 0u, select(0u, 563u, false))));
    var var_3 = _wgslsmith_clamp_u32(~var_1.b.x, ~abs(~_wgslsmith_clamp_u32(19660u, var_2.e.x, 1u)), u_input.c.x);
    let var_4 = abs(-13978i);
    return select(!vec2<bool>(all(select(vec3<bool>(true, arg_3.c.x, var_2.c.x), vec3<bool>(false, false, true), false)), true), vec2<bool>(any(vec3<bool>(arg_3.c.x, all(vec4<bool>(false, arg_2.a, true, true)), true)), all(select(!vec3<bool>(var_1.a, false, true), vec3<bool>(true, true, true), !var_1.a))), true);
}

fn func_2() -> i32 {
    let var_0 = select(select(func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1160f, -162f, 739f, 177f) * vec4<f32>(3144f, -1377f, -154f, 337f)), vec4<f32>(-534f, 489f, -561f, 120f))), Struct_2(all(vec3<bool>(false, false, true))), Struct_2(u_input.c.x > 0u), Struct_3(3929u, min(u_input.c.zzx, vec3<u32>(u_input.c.x, u_input.d.x, 878u)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(true), _wgslsmith_dot_vec3_i32(u_input.b.www, vec3<i32>(-7823i, 47352i, u_input.e.x)))), vec2<bool>(any(vec2<bool>(true, false)) | true, all(vec3<bool>(false, false, true))), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), u_input.a.x < u_input.a.x), -u_input.e.x < _wgslsmith_div_i32(-2147483647i, u_input.a.x))), vec2<bool>(-42427i > (_wgslsmith_div_i32(46332i, 16930i) << (u_input.d.x % 32u)), true), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_3(vec4<f32>(-1126f, 2301f, -411f, -754f), Struct_2(true), Struct_2(false), Struct_3(u_input.c.x, vec3<u32>(4294967295u, 4294967295u, u_input.d.x), vec2<bool>(true, true), Struct_2(true), u_input.e.x))), vec2<bool>(true, true), any(vec4<bool>(false, true, false, true))));
    let var_1 = Struct_3(~(~_wgslsmith_sub_u32(~18365u, 0u)), min(~(~(u_input.c.ywy | u_input.c.wwx)), vec3<u32>(u_input.c.x, 4294967295u, 68u)), !var_0, Struct_2(var_0.x), -2147483647i);
    let var_2 = u_input.a.zzx ^ u_input.a.ywz;
    let var_3 = Struct_4(true, u_input.c.ywx);
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.b.x, ~var_1.b.x, ~_wgslsmith_mod_u32(4294967295u, u_input.d.x) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.b.x, var_1.a, u_input.d.x, 4294967295u), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x))), select(~(vec3<u32>(var_1.b.x, 0u, 93543u) & vec3<u32>(9942u, 101774u, 2048u)), ~var_3.b, true));
    return -35531i;
}

fn func_1() -> u32 {
    var var_0 = vec4<i32>(u_input.e.x, 43268i, _wgslsmith_mult_i32(func_2() >> (11182u % 32u), select(_wgslsmith_clamp_i32(-1i, 56530i, -2147483647i) >> (39229u % 32u), _wgslsmith_sub_i32(-71604i, u_input.b.x) ^ 0i, false)), ~18763i);
    let var_1 = Struct_3(0u, vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, ~u_input.d.x, ~(u_input.d.x << (0u % 32u))), 86540u, max(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), u_input.d.x >> (29690u % 32u)) ^ u_input.c.x), vec2<bool>(true, all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)))), Struct_2(false), countOneBits(var_0.x));
    var var_2 = 71475u;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2682f, -556f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1434f, _wgslsmith_f_op_f32(-686f * 418f), var_1.d.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-303f)) * _wgslsmith_f_op_f32(f32(-1f) * -410f)))))));
    let var_4 = !var_1.c.x;
    return 34363u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~(-select(abs(-1i), _wgslsmith_mod_i32(u_input.e.x, -4990i), true)));
    var var_1 = u_input.b.zw;
    var_1 = u_input.e;
    let var_2 = ~vec4<u32>(~29208u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), u_input.c.xy), vec2<u32>(30658u, 65140u)), _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(max(u_input.d.x, 1u), func_1())), min(~countOneBits(u_input.d.x), firstLeadingBit(52189u)));
    var var_3 = Struct_3(_wgslsmith_add_u32(~1u, var_2.x), vec3<u32>(~(u_input.c.x << (~86659u % 32u)), 1u, abs(u_input.d.x)), vec2<bool>(any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), ((var_2.x & 4294967295u) | 47339u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.c.x, var_2.x), vec3<u32>(112309u, var_2.x, u_input.c.x) >> (u_input.c.wyx % vec3<u32>(32u)))), Struct_2(true), -11641i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f)), -173f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1204f, -227f)))) * _wgslsmith_div_f32(-350f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1644f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-1140f, 426f), -899f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(706f, 1000f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(504f, 183f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, _wgslsmith_f_op_f32(trunc(-318f))))), countOneBits(vec4<i32>(-var_1.x, u_input.a.x, 2147483647i | var_0, _wgslsmith_sub_i32(var_3.e, 20799i))) ^ vec4<i32>(var_3.e, _wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_sub_i32(var_0, 0i)), 2147483647i, -max(0i, u_input.a.x)));
}


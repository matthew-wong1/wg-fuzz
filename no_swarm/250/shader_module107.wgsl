struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, false, false)), false), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), any(vec3<bool>(true, true, true)))), !vec3<bool>(select(false, false, true), true, any(vec2<bool>(true, true))), vec3<bool>(~arg_1.x >= 47895i, true, false)), vec3<u32>(~u_input.a, u_input.a, _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(~4294967295u, 50424u))), ~(~abs(u_input.d.x)), abs(~max(u_input.c.x, -35293i)));
    var var_1 = vec2<u32>(var_0.b.x, ~u_input.d.x >> (u_input.a % 32u));
    var var_2 = var_0;
    var var_3 = arg_0.x;
    var var_4 = var_0;
    return vec3<bool>(true, true, any(!(!(!var_4.a.xz))));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = true;
    var var_1 = reverseBits(vec4<u32>(62065u, u_input.b, u_input.b, ~abs(u_input.a)));
    var_1 = min(vec4<u32>(4294967295u, 62330u, ~u_input.d.x, 1u), ~vec4<u32>(~(~0u), u_input.b, 4294967295u, ~var_1.x));
    var var_2 = ~max(~abs(~0u), min(~_wgslsmith_div_u32(u_input.a, var_1.x), firstTrailingBit(~45810u)));
    var_2 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.d, ~_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.a, u_input.b))), 53532u);
    return min(0i, max(u_input.c.x, min(max(-9453i, arg_0.x), ~(-2147483647i))));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = 2147483647i;
    var var_1 = Struct_1(select(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, -1339f, -2077f, -1029f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, -431f, 1806f, -547f))), -u_input.c), vec3<bool>(false, _wgslsmith_f_op_f32(select(-579f, -362f, true)) > 102f, arg_0.x), _wgslsmith_mod_i32(min(0i, -1i), u_input.c.x) != 1i), vec3<u32>(u_input.b, 29250u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(u_input.b), _wgslsmith_sub_u32(u_input.d.x, 50868u)), 0u)), select(~abs(5555u) & min(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), ~vec3<u32>(4294967295u, 39772u, u_input.b)), vec3<u32>(u_input.b, ~26739u, ~u_input.a)), false & !arg_0.x), min(_wgslsmith_mod_i32(_wgslsmith_mod_i32(max(-21199i, -25739i), u_input.c.x), func_3(vec3<i32>(-1i, -1i, u_input.c.x) | vec3<i32>(61770i, u_input.c.x, u_input.c.x))), _wgslsmith_div_i32(select(-u_input.c.x, ~u_input.c.x, func_2(vec4<f32>(1443f, 313f, -1000f, -679f), u_input.c).x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-28624i, u_input.c.x, 42655i, 1i), vec4<i32>(u_input.c.x, -2147483647i, 0i, 1i))))));
    let var_2 = Struct_1(select(var_1.a, var_1.a, any(select(select(var_1.a.yy, var_1.a.yx, false), func_2(vec4<f32>(1529f, 206f, 2235f, 1246f), vec2<i32>(13492i, var_1.d)).xx, select(arg_0, vec2<bool>(arg_0.x, true), false)))), var_1.b | ~var_1.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b.x ^ 4294967295u, 76154u << (0u % 32u)), ~select(4294967295u, 10369u, var_1.a.x)), var_1.b.x), -22836i);
    var_0 = countOneBits(_wgslsmith_div_i32((var_1.d & var_2.d) ^ _wgslsmith_mod_i32(42962i, var_1.d), var_2.d) ^ countOneBits(min(-7347i, ~u_input.c.x)));
    let var_3 = var_1.a.zz;
    return all(select(!(!(!vec4<bool>(var_3.x, false, true, var_3.x))), !vec4<bool>(var_1.a.x, arg_0.x, true, false), all(vec4<bool>(true, var_1.a.x, false, !var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(all(vec3<bool>(true, true, true)), true, false), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), select(vec3<bool>(true, !func_1(vec2<bool>(true, false)), !(u_input.d.x > u_input.a)), !select(func_2(vec4<f32>(-1021f, -1564f, 1793f, -272f), vec2<i32>(-1i, -2147483647i)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), any(!func_2(vec4<f32>(514f, 1000f, -844f, 1097f), u_input.c))));
    var var_1 = vec3<bool>(var_0.x, true, var_0.x);
    let var_2 = !(!vec4<bool>(true, true, var_0.x, var_1.x));
    var var_3 = Struct_1(!select(!vec3<bool>(var_2.x, false, var_0.x), func_2(vec4<f32>(389f, 1137f, -1962f, 215f), -u_input.c), !all(var_2)), ~vec3<u32>(~u_input.d.x, _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 0u, 1u), vec4<u32>(u_input.d.x, u_input.a, 60856u, 19320u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(130468u, 0u, 64002u, 13291u), vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a)))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(79124u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22534u, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.b, 62508u))), u_input.b), ~17012i);
    var_1 = select(func_2(vec4<f32>(1f, 1f, 1f, 1f), ~(-(vec2<i32>(var_3.d, -14612i) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))))), select(vec3<bool>(var_0.x, true, var_2.x), var_2.xyz, !(!(!vec3<bool>(var_0.x, false, true)))), var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b) ^ ~4294967295u, var_3.d, ~var_3.b.yx);
}


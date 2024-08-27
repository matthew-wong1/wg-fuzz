struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    let var_0 = abs(abs(vec3<i32>(u_input.b, u_input.d, -(~u_input.d))));
    let var_1 = Struct_1(~10753u, countOneBits(~(-var_0.x)), ~(-_wgslsmith_add_vec2_i32(var_0.yz, var_0.zy << (u_input.c % vec2<u32>(32u)))), -var_0.yy);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1547f - -408f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1787f * -206f) - _wgslsmith_f_op_f32(f32(-1f) * -932f)) - 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1195f)), 2616f)))));
    let var_3 = var_1;
    let var_4 = ~vec4<u32>(min(reverseBits(0u) >> (var_1.a % 32u), 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 23443u) << (vec2<u32>(19213u, var_1.a) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, var_3.a) ^ (vec2<u32>(23290u, var_1.a) << (vec2<u32>(1u, var_1.a) % vec2<u32>(32u)))), ~(~var_3.a) >> (10080u % 32u), _wgslsmith_sub_u32(~var_1.a, var_1.a) >> (6779u % 32u));
    return ~vec3<u32>(~(~_wgslsmith_div_u32(u_input.a, 62195u)), var_3.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(559u, var_4.x) >> (vec2<u32>(4294967295u, 13828u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a, 4294967295u), u_input.c, vec2<u32>(4294967295u, 86677u))));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = -(~(~arg_0.b.x >> (~4294967295u % 32u)));
    let var_1 = vec2<bool>(true, true);
    return vec3<u32>(u_input.c.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(func_3(), max(vec3<u32>(u_input.c.x, arg_0.c, u_input.e), vec3<u32>(583u, u_input.a, u_input.c.x))), ~select(vec3<u32>(9326u, arg_0.c, 4294967295u), vec3<u32>(66023u, arg_0.c, u_input.e), vec3<bool>(true, false, var_1.x))), 26252u);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    let var_0 = func_2(arg_2);
    var var_1 = ~vec2<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_0.x, u_input.c.x, var_0.x), vec4<u32>(arg_2.c, var_0.x, 88900u, arg_1.x)) ^ firstLeadingBit(6164u), 4294967295u), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_2.c, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(11175u, 35554u))));
    var_1 = ~vec2<u32>(var_1.x, _wgslsmith_dot_vec3_u32(min(func_2(arg_2), func_2(arg_2)), vec3<u32>(var_0.x, arg_2.c, var_1.x) << (select(vec3<u32>(arg_1.x, 70177u, 1u), arg_1, vec3<bool>(false, false, true)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~arg_1.x, arg_0), u_input.a, var_0.x) >> (~max(var_0.x, ~var_1.x) % 32u);
    var var_3 = true;
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1251f * 1455f) + _wgslsmith_f_op_f32(f32(-1f) * -523f)))))), _wgslsmith_f_op_f32(-1513f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f))), -771f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, 402f, -444f)), _wgslsmith_f_op_vec3_f32(func_1(u_input.e, vec3<u32>(40807u, u_input.c.x, 4294967295u), Struct_2(vec2<i32>(u_input.d, u_input.b), vec3<i32>(u_input.d, 18788i, -42087i), 53873u), 1i)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, 1435f, 1206f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.zz))), _wgslsmith_f_op_vec2_f32(var_0.yz + var_0.xz))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, -251f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, var_0.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(974f, var_0.x))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(1618f, var_0.x)), _wgslsmith_f_op_vec3_f32(func_1(u_input.c.x, vec3<u32>(0u, 82645u, u_input.a), Struct_2(vec2<i32>(u_input.d, -1i), vec3<i32>(u_input.b, u_input.d, 2147483647i), 20135u), u_input.b)).yx)))));
    let var_2 = vec4<bool>((66501i <= ~u_input.d) || true, any(!vec3<bool>(true, true, all(vec3<bool>(true, false, true)))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))), false);
    var var_3 = u_input.c << (~(vec2<u32>(func_3().x, u_input.c.x) >> (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u));
    var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(var_3.x, 0u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.c.x), vec3<u32>(12562u, 0u, 4294967295u)), 1100u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_3.x), vec3<u32>(41382u, u_input.c.x, u_input.c.x)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16965u), u_input.c), u_input.c.x), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, var_3.x, var_3.x), vec3<u32>(u_input.a, 0u, 67166u)) << (vec3<u32>(6706u, var_3.x, 71789u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -190f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz))), var_0.xx), -34311i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))));
}


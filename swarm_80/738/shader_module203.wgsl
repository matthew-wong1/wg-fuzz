struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_4(select(!vec2<bool>(any(vec3<bool>(true, true, arg_0)), arg_0), select(vec2<bool>(true, true), !select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false)), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0))), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, true)), !vec2<bool>(arg_0, false), vec2<bool>(false, false)), !vec2<bool>(true, arg_0), vec2<bool>(arg_1.b > -1i, true))), -675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2241f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-706f + _wgslsmith_f_op_f32(-1407f - -727f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(171f + arg_1.a)))))));
    var var_1 = select(!select(var_0.a, vec2<bool>(any(vec4<bool>(var_0.a.x, var_0.a.x, arg_0, var_0.a.x)), arg_0), any(select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(false, false, var_0.a.x, false), vec4<bool>(true, arg_0, false, true)))), var_0.a, var_0.a.x & (((49489u << (0u % 32u)) != (arg_1.c & 0u)) | all(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(true, arg_0, false), vec3<bool>(false, true, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -1225f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.e, -1766f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-250f, arg_1.e)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 375f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-961f, var_0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, -307f))))), select(true && var_0.a.x, any(vec2<bool>(all(var_0.a), arg_0 || false)), select(arg_0, all(vec3<bool>(var_1.x, var_0.a.x, var_0.a.x)), !arg_0)));
    var_1 = var_0.a;
    let var_3 = arg_1.d;
    return 79461u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -760f)), _wgslsmith_add_i32(arg_0, arg_0), u_input.a, func_3(arg_1, Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1885f)))), -15625i, ~u_input.a, _wgslsmith_add_u32(27196u, u_input.a), -505f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996f + arg_2))))));
    var var_1 = max(~vec4<i32>(2147483647i ^ var_0.b, var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b, var_0.b, -39178i), -vec4<i32>(-61i, arg_0, -2147483647i, -1i)), -40511i), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, 1i, arg_0 ^ arg_0, reverseBits(u_input.b.x)), select(~vec4<i32>(-2147483647i, -1i, u_input.b.x, 18142i), countOneBits(vec4<i32>(u_input.b.x, var_0.b, var_0.b, arg_0)), !vec4<bool>(arg_1, arg_1, arg_1, arg_1)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, 1u, var_0.c, 5085u), vec4<u32>(var_0.d, u_input.a, u_input.a, var_0.d), vec4<u32>(0u, u_input.a, var_0.d, u_input.a)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f + 893f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_2))))) - 537f));
    let var_3 = Struct_4(!vec2<bool>(any(vec4<bool>(false, true, arg_1, true)), !arg_1), _wgslsmith_f_op_f32(1722f - _wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(trunc(287f)))), _wgslsmith_f_op_f32(-arg_2));
    let var_4 = ~(-vec4<i32>(1i, 34341i, var_1.x, var_1.x));
    return u_input.b.x;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = Struct_4(vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(752f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1589f, 1157f)) + _wgslsmith_f_op_f32(567f - 121f)), !any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-537f - 1099f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(819f, 233f)) * _wgslsmith_f_op_f32(-608f - -1000f)))));
    let var_1 = 24654u;
    let var_2 = Struct_4(vec2<bool>(false, false), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-601f)))) - -1000f));
    var var_3 = ~var_1 == arg_0;
    var_3 = var_2.a.x;
    return _wgslsmith_f_op_f32(ceil(-1337f));
}

fn func_1() -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-492f, -1634f)) * _wgslsmith_f_op_f32(-859f + 326f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f), -2012f)), _wgslsmith_div_f32(1105f, _wgslsmith_f_op_f32(f32(-1f) * -917f)));
    let var_1 = _wgslsmith_f_op_f32(func_4(0u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 18657u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(19062u, 1u, u_input.a)) % 32u), ~vec3<i32>(0i, select(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 33987i), true), -42366i), u_input.b.x & -func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(u_input.b.x, 13132i)), true, _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-632f + _wgslsmith_f_op_f32(func_4(u_input.a, vec3<i32>(13879i, u_input.b.x, -56217i), -2147483647i))))) * -469f), -u_input.b.x, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~9252u, u_input.a), ~_wgslsmith_sub_u32(u_input.a, u_input.a), ~(~1u), 13652u), vec4<u32>(~u_input.a, 4294967295u, 29808u, 4524u)), _wgslsmith_f_op_f32(-var_1));
    var_2 = Struct_2(var_0.x, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), countOneBits(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(14152u, var_2.d), vec2<u32>(62726u, 17901u)))), u_input.a << (29800u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1733f * var_1), var_0.x))) * _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(f32(-1f) * -886f), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(0u >> (~u_input.a % 32u), -countOneBits(vec3<i32>(-45484i, 0i, 1i)), -u_input.b.x)) * -331f), u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(14890u, var_2.c)), ~abs(vec2<u32>(var_2.d, 0u))), max(u_input.a, ~u_input.a)), 1u, -1000f);
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b | vec2<i32>(func_1(), func_2(u_input.b.x, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-207f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(562f, -2948f), _wgslsmith_f_op_f32(step(-897f, 120f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-793f, 2197f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(147f, -1927f), vec2<f32>(375f, -901f))))))), !(_wgslsmith_add_u32(u_input.a, 1u) == 1u));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_1.a.x, -1313f)), _wgslsmith_f_op_f32(step(-763f, _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))))), !(any(select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, true))) | select(false, true, all(vec3<bool>(var_1.b, false, var_1.b)))));
    var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1611f, var_1.a.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.a)) - var_1.a) - var_1.a)), true);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, var_1.a.x)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(-var_1.a)) * _wgslsmith_f_op_vec2_f32(-var_1.a))), u_input.b.x >= ((var_0.x & var_0.x) >> (_wgslsmith_div_u32(1u, u_input.a) % 32u)));
    let var_2 = reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(35394u, 4294967295u) << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<u32>(1u, ~u_input.a)) ^ ~max(reverseBits(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1310f, 708f))), func_1(), vec4<i32>(2147483647i, 2147483647i << (_wgslsmith_mod_u32(u_input.a, 87544u) % 32u), _wgslsmith_clamp_i32(~2147483647i, 1i, u_input.b.x), -u_input.b.x) >> (abs(vec4<u32>(43441u, ~var_2.x, 4294967295u, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 601f, _wgslsmith_f_op_f32(var_1.a.x + 551f), var_1.a.x), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(step(var_1.a.x, 147f)), 435f, _wgslsmith_f_op_f32(-518f * 1289f))))));
}


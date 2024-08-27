struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    global0 = _wgslsmith_sub_i32(i32(-1i) * -1i, i32(-1i) * -countOneBits(-33823i));
    global1 = firstLeadingBit(~((~vec3<i32>(12888i, 1i, global1.x) ^ abs(vec3<i32>(62724i, arg_0, arg_2.b.x))) >> (~vec3<u32>(u_input.a, u_input.a, 37904u) % vec3<u32>(32u))));
    var var_0 = arg_2;
    var var_1 = reverseBits(0u);
    global0 = _wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(arg_0, _wgslsmith_add_i32(firstTrailingBit(global1.x), -4776i))), _wgslsmith_mod_i32(-1i, arg_0));
    return vec3<i32>(-var_0.b.x, 41966i, -2147483647i) & ~min(-countOneBits(vec3<i32>(-2147483647i, arg_1, arg_2.b.x)), ~(-vec3<i32>(global1.x, -1i, arg_1)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec2<i32> {
    global0 = arg_0.b.x;
    var var_0 = -2147483647i;
    let var_1 = vec3<bool>(true, arg_0.a.x > abs(abs(arg_0.a.x)), true);
    var var_2 = arg_2.ywz | arg_2.wzz;
    let var_3 = Struct_1(vec4<u32>(~(~u_input.a), _wgslsmith_mult_u32(0u, 46621u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1017u, 1u), vec2<u32>(u_input.a, u_input.a))), abs(82083u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 40579u, arg_0.a.x, u_input.a), ~vec4<u32>(0u, 1u, arg_0.a.x, arg_0.a.x))), vec2<i32>(~0i, _wgslsmith_clamp_i32(-u_input.c, var_2.x | 17043i, -8126i) | func_1(-2147483647i, -47123i, arg_0).x), !select(!select(arg_0.c, arg_0.c, true), vec4<bool>(any(vec4<bool>(true, var_1.x, false, var_1.x)), !var_1.x, true, false), !(!arg_0.c)), arg_0.e.yz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + _wgslsmith_f_op_vec4_f32(-arg_1)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + arg_1)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_div_f32(arg_1.x, -729f)), arg_1.x, arg_1.x, 1033f)));
    return var_3.b;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(0u, u_input.a, u_input.a, 30562u))), vec4<u32>(1u, min(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(0u, 0u)), select(~u_input.a, reverseBits(0u), true), _wgslsmith_sub_u32(~0u, ~1u))), ~func_3(Struct_1(vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec2<i32>(12760i, 16531i), vec4<bool>(false, false, true, false), vec2<f32>(arg_0, arg_0), vec4<f32>(666f, -1499f, 1181f, -863f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, -1136f, arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, u_input.d, -1i, u_input.d), vec4<i32>(2147483647i, -204i, global1.x, -1i))) | (abs(-global1.zy) | reverseBits(firstLeadingBit(vec2<i32>(global1.x, u_input.d)))), select(!vec4<bool>(true, -295f < arg_0, all(vec2<bool>(true, false)), true), vec4<bool>(any(vec2<bool>(false, false)) | true, _wgslsmith_mod_i32(u_input.d, global1.x) < 2345i, !(arg_0 == arg_0), (arg_0 != arg_0) || true), !any(vec4<bool>(false, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-1103f + 1607f), _wgslsmith_f_op_f32(select(arg_0, arg_0, false)), 531f)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * _wgslsmith_f_op_f32(floor(1000f))), arg_0, _wgslsmith_f_op_f32(abs(arg_0)), arg_0)));
    let var_1 = ~vec3<u32>(~min(_wgslsmith_mod_u32(u_input.a, 55426u), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(0u, 1u, 11266u, 17711u))), u_input.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 26996u, 49443u), var_0.a.yyw >> (vec3<u32>(var_0.a.x, u_input.a, 65946u) % vec3<u32>(32u))));
    var_0 = Struct_1(var_0.a, select(-countOneBits(~global1.xz), global1.xx, vec2<bool>(false, _wgslsmith_dot_vec4_u32(vec4<u32>(8079u, 22710u, 62887u, 727u), var_0.a) >= _wgslsmith_clamp_u32(var_1.x, var_1.x, u_input.a))), var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -273f)), var_0.d, select(var_0.c.xx, var_0.c.yz, var_0.c.xx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 158f)) - vec2<f32>(-711f, 932f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_0.e, var_0.e, var_0.b.x <= global1.x))))));
    var var_2 = vec4<bool>(!((-9809i == _wgslsmith_mult_i32(2887i, u_input.c)) || true), true, var_0.c.x, true);
    var_0 = Struct_1(vec4<u32>(1u, u_input.a, 1u, 0u), max(var_0.b, u_input.b), vec4<bool>(var_2.x, true, var_2.x, var_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + var_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f + arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f - -1515f)), var_0.e.x, _wgslsmith_f_op_f32(692f - var_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(627f, var_0.d.x)) * _wgslsmith_f_op_f32(-var_0.e.x))) + var_0.e));
    return abs(~(~(~var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    global1 = ~(~(func_1(-2147483647i, _wgslsmith_mod_i32(global1.x, 2147483647i), Struct_1(vec4<u32>(0u, 0u, 0u, 60510u), global1.zy, vec4<bool>(false, false, true, false), vec2<f32>(-818f, 251f), vec4<f32>(1000f, -1761f, 1819f, -1448f))) >> (abs(vec3<u32>(u_input.a, 4294967295u, 97791u)) % vec3<u32>(32u))));
    global0 = global1.x;
    global1 = vec3<i32>(-2147483647i, -(-_wgslsmith_mod_i32(-1i, -1i) ^ ~firstLeadingBit(global1.x)), _wgslsmith_sub_i32(abs(reverseBits(~global1.x)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, 2147483647i, -1i, 8512i)) & vec4<i32>(49032i, global1.x, u_input.d, global1.x), abs(vec4<i32>(global1.x, u_input.b.x, -42439i, -29764i)))));
    let var_0 = ~countOneBits(53724u);
    var var_1 = ~(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2049f, -387f)))) >> (u_input.a % 32u));
    let var_2 = all(select(!vec3<bool>(select(true, false, false), true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)));
    var var_3 = Struct_1(~abs(abs(select(vec4<u32>(var_0, 1u, u_input.a, 11719u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<bool>(true, var_2, var_2, false)))), _wgslsmith_div_vec2_i32(vec2<i32>(global1.x, global1.x | -2147483647i), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(6803i, u_input.c), ~global1.x), _wgslsmith_mod_i32(1i >> (var_0 % 32u), -6196i >> (var_0 % 32u)))), !vec4<bool>(true, var_2 || !var_2, any(!vec3<bool>(true, var_2, false)), all(select(vec2<bool>(true, var_2), vec2<bool>(var_2, var_2), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1786f, _wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, 646f)) + vec2<f32>(-692f, -1000f)))), vec4<f32>(-249f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(831f, _wgslsmith_f_op_f32(1549f - 792f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(abs(-1077f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-633f, -1330f, false)) - -2351f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(2594f - _wgslsmith_f_op_f32(var_3.d.x * -1724f)), _wgslsmith_f_op_vec3_f32(step(var_3.e.wyx, var_3.e.ywz)), select(~select(~var_3.a.yzy, var_3.a.xwz, !var_2), var_3.a.zxy, var_2 & !select(false, false, var_3.c.x)));
}


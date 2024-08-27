struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1307f, 625f, 915f), -782f, -20207i, vec4<u32>(38662u, 4294967295u, 4294967295u, 59884u), 1i);

var<private> global2: vec4<u32> = vec4<u32>(7418u, 16064u, 1u, 99297u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(global1.a)), 923f, -38247i, reverseBits(vec4<u32>(global2.x, abs(reverseBits(66738u)), ~(~22678u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 11002u, 4294967295u))), min(~firstTrailingBit(global1.c), -2147483647i));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -457f);
    var var_1 = Struct_3(189f, !any(!select(vec3<bool>(global0.x, true, true), vec3<bool>(true, true, global0.x), false)), Struct_2(61207u, select(vec2<u32>(global2.x, 1u) ^ ~vec2<u32>(0u, global1.d.x), ~vec2<u32>(global1.d.x, 74621u), select(vec2<bool>(false, global0.x), !vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), global0.x))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.e, global1.e, 1i, global1.e), vec4<i32>(-643i, 1i, 1i, global1.e), global0.x), -vec4<i32>(global1.c, global1.e, 23645i, 2147483647i)) | global1.c, Struct_1(global1.a, global1.a.x, -(global1.c << (1u % 32u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global1.d.x, global2.x, global1.d.x, 26932u)), ~global1.d), 1i)));
    var var_2 = var_1.a;
    let var_3 = var_1.c;
    return global1.d.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(func_3(), vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(~arg_3), 83832u, ~(~0u)), ~max(arg_0.x >> (0u % 32u), ~arg_3)), ~arg_2.d.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(-arg_2.d.b), false)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(-1438f, _wgslsmith_f_op_f32(f32(-1f) * -904f)))), arg_2.d.b, -38614i, ~u_input.a ^ countOneBits(select(vec4<u32>(arg_2.d.d.x, 33669u, global2.x, arg_3), global1.d, false)), global1.c));
    global0 = select(vec2<bool>(_wgslsmith_f_op_f32(select(-194f, var_0.d.b, any(vec4<bool>(arg_1, global0.x, false, arg_1)))) <= 215f, global0.x), select(!vec2<bool>(134f == arg_2.d.a.x, global1.c <= 65662i), vec2<bool>(arg_1, !(!arg_1)), any(select(vec2<bool>(arg_1, global0.x), !vec2<bool>(global0.x, true), true))), any(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, select(true, true, true)), !(!vec2<bool>(true, arg_1)))));
    global1 = var_0.d;
    let var_1 = ~42030u;
    var var_2 = var_0.d.a.x;
    return arg_2.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    global0 = select(!select(vec2<bool>(51794i <= arg_1.d.c, true), select(select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), global0.x), !vec2<bool>(global0.x, global0.x), !global0.x), global0.x), select(vec2<bool>(-global1.e <= 7841i, true), vec2<bool>(all(!vec3<bool>(true, global0.x, false)), !global0.x), select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(global0.x, select(global0.x, global0.x, global0.x)), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), true))), select(vec2<bool>(global0.x, true), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), !(!vec2<bool>(true, global0.x)), false), vec2<bool>(global0.x, true)));
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.yyx)))), _wgslsmith_div_vec3_f32(arg_1.d.a, _wgslsmith_f_op_vec3_f32(-arg_0.wwz))), arg_0.x, -1i, _wgslsmith_sub_vec4_u32(firstTrailingBit(arg_1.d.d), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b, u_input.c, 18611u, global1.d.x)), abs(reverseBits(arg_1.d.d)))), -2147483647i);
    var var_0 = 1479f;
    global2 = ~arg_1.d.d;
    global0 = select(select(select(select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), vec2<bool>(false, false)), !vec2<bool>(false, global0.x), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(global0.x, true), vec2<bool>(true, true)), select(!(!vec2<bool>(true, global0.x)), select(!vec2<bool>(true, global0.x), vec2<bool>(false, false), global1.c == arg_1.d.e), any(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(false, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x))))), vec2<bool>(false, select(1i, 2147483647i, any(vec4<bool>(true, false, global0.x, global0.x))) <= -2147483647i), !vec2<bool>(true, global0.x));
    return reverseBits(-2147483647i);
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = 14626u >= (min(~1u & ~global1.d.x, global1.d.x) >> (abs(select(100094u, 1u << (u_input.b % 32u), any(vec4<bool>(global0.x, true, global0.x, true)))) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.a))), _wgslsmith_f_op_f32(min(992f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(step(global1.b, global1.a.x))) * _wgslsmith_f_op_f32(max(-112f, 2422f))))), 0i, ~(~(~global1.d)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -2208f, 711f, global1.a.x))), Struct_2(countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, global1.d)), (vec2<u32>(u_input.c, 4294967295u) ^ vec2<u32>(0u, u_input.c)) | (vec2<u32>(4294967295u, 0u) ^ vec2<u32>(global2.x, 22025u)), abs(global1.e) & 1i, func_2(vec4<u32>(48420u, global1.d.x, u_input.a.x, 70178u), true, Struct_2(1u, vec2<u32>(1u, global2.x), global1.e, Struct_1(global1.a, 509f, 34255i, vec4<u32>(global2.x, 4294967295u, global1.d.x, 0u), 1i)), reverseBits(485u)))));
    global2 = ~_wgslsmith_add_vec4_u32(var_1.d, ~global1.d);
    var var_2 = (1u & u_input.c) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), global1.d.zw), vec2<u32>(var_1.d.x, global1.d.x)), func_2(_wgslsmith_add_vec4_u32(var_1.d, vec4<u32>(1u, 13171u, global1.d.x, u_input.b)), any(vec3<bool>(false, true, global0.x)), Struct_2(global2.x, vec2<u32>(global2.x, global1.d.x), var_1.c, Struct_1(vec3<f32>(2070f, global1.b, var_1.a.x), global1.b, -8110i, var_1.d, 0i)), global2.x).d.wx) % 32u);
    let var_3 = Struct_1(global1.a, _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.b)))))), arg_0.x, min(var_1.d, u_input.a & ~vec4<u32>(0u, 79908u, global2.x, 4294967295u)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(global1.c, var_1.e, global1.e), vec3<i32>(global1.e, arg_0.x, 123i)), abs(vec3<i32>(global1.c, global1.e, global1.c) | vec3<i32>(-1i, global1.c, arg_0.x))) & -((arg_0.x >> (121039u % 32u)) & _wgslsmith_mod_i32(var_1.e, arg_0.x)));
    return Struct_3(-1324f, global0.x, Struct_2(countOneBits(~global2.x) & 0u, vec2<u32>(abs(4294967295u), _wgslsmith_sub_u32(global1.d.x, global2.x)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 0u), _wgslsmith_sub_vec2_u32(var_1.d.yy, var_1.d.xx), ~vec2<u32>(1u, 72174u)), max(-6817i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -24827i, var_3.e), vec3<i32>(global1.e, -26579i, var_1.c))) ^ -global1.c, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global1.d;
    let var_1 = true;
    var var_2 = vec4<u32>(4294967295u, var_0.x, countOneBits(firstLeadingBit(156225u | (u_input.b ^ var_0.x))), countOneBits(~0u));
    let var_3 = func_1(abs(-vec2<i32>(-1i, 2147483647i) << (vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, 0u, 40489u), vec3<u32>(67629u, 0u, global2.x))) % vec2<u32>(32u))));
    global2 = min(var_0, var_0);
    let var_4 = vec4<i32>(global1.c, ~global1.e, var_3.c.c, ~global1.c);
    global1 = func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i | -var_3.c.d.c, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, var_3.c.d.e), 1i | var_4.x)), select(select(reverseBits(var_4.yx), max(vec2<i32>(-2147483647i, global1.e), vec2<i32>(1i, 15032i)), select(vec2<bool>(var_1, false), vec2<bool>(global0.x, var_3.b), var_3.b)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(var_4.x, var_4.x)), vec2<i32>(var_4.x, 3971i)), true), ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_4.xx, var_4.zw), ~vec2<i32>(15897i, -7618i)))).c.d;
    let var_5 = any(select(vec4<bool>(all(!vec2<bool>(var_1, false)), var_1, !select(true, global0.x, var_1), any(vec2<bool>(var_1, false))), vec4<bool>(all(vec4<bool>(true, false, var_1, true)), !var_1, var_1, var_1), true || var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(global1.d, reverseBits(vec4<u32>(var_3.c.a, var_0.x, 4294967295u, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(508f - _wgslsmith_f_op_f32(select(1680f, -599f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-363f * global1.b)))), var_3.a, func_1(vec2<i32>(4313i, var_3.c.d.c << (var_0.x % 32u))).c.d.a.x));
}


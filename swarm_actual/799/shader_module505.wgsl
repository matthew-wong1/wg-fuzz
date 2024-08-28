struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, false, true, false, true, true, true, false, false, false, false, false, false, false, false, true, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> u32 {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let var_0 = vec2<bool>(false, false && any(vec4<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(arg_2, global0[_wgslsmith_index_u32(0u, 19u)], true)), true, true)));
    return u_input.c & ~0u;
}

fn func_2(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(min(u_input.e.x, 1i >> ((u_input.c | func_3(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), Struct_1(0i, vec3<f32>(-970f, 136f, 1620f), vec2<f32>(-703f, 2154f), vec4<f32>(116f, 1854f, 512f, 667f)), global0[_wgslsmith_index_u32(0u, 19u)]), Struct_3(vec3<u32>(66493u, 1u, 1815u), true, vec3<f32>(1147f, -1050f, 463f), 3158f), false)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(132f, 317f, 1901f))) - vec3<f32>(1314f, -2217f, 1036f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1403f, 198f, 782f), vec3<f32>(1516f, -616f, -1000f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(879f, -1155f, 1000f), vec3<f32>(1000f, -424f, -1468f), global0[_wgslsmith_index_u32(4294967295u, 19u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(1f, 1f)) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(469f, -928f))), 394f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-208f, -1966f, 136f, -802f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1175f, -603f, -1608f, 756f) - vec4<f32>(583f, -281f, 1107f, 1010f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(928f, -2450f, 1798f, 1442f) - vec4<f32>(1354f, -646f, 102f, 1000f)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 19u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(13463u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], true), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 19u)])))))))));
    global0 = array<bool, 19>();
    var var_1 = Struct_2(!(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(58139u, 19u)])))), var_0, global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 19u)]);
    var_1 = Struct_2(!var_1.a, Struct_1(1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + var_1.b.d.wxx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.c)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), 185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(-var_1.b.d.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(var_1.b.d.x))))), var_1.c);
    var var_2 = vec3<f32>(511f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(trunc(var_1.b.b.x)));
    return vec4<i32>(var_0.a, -firstTrailingBit(i32(-1i) * -var_1.b.a), -max(reverseBits(var_1.b.a), countOneBits(-1i >> (arg_0.x % 32u))), -16910i);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_clamp_i32(func_2(u_input.d).x, -8011i << (u_input.c % 32u), u_input.e.x)), -19305i), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(140f, arg_0.x, arg_0.x), vec3<f32>(arg_2.x, arg_2.x, arg_0.x))), vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(384f, -635f, -909f), arg_0.yxw, global0[_wgslsmith_index_u32(52490u, 19u)])), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -711f), -951f, 1f), vec3<bool>(true, true, select(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(18743u, 19u)], global0[_wgslsmith_index_u32(1378u, 19u)]))))), arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, arg_2.x, -415f) - arg_0));
    var_0 = Struct_1(var_0.a, var_0.d.ywy, var_0.d.yx, arg_0);
    let var_1 = min(~u_input.d, _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(u_input.c, 4294967295u), 7100u), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), vec2<u32>(u_input.c, 48727u), u_input.d), abs(vec2<u32>(u_input.c, u_input.d.x)) & vec2<u32>(0u, 4294967295u))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(var_1.x, 0u), ~abs(0u)), ~vec2<u32>(~1u, 0u)) >> (1u % 32u), 19u)];
    var var_3 = global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_mult_u32(55494u, u_input.c)))), 19u)];
    return _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(sign(2040f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_3(arg_1.a, select(true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, u_input.c, 13674u, u_input.d.x), vec4<u32>(26858u, 29918u, 1u, 1u) ^ vec4<u32>(0u, arg_1.a.x, 0u, 17535u)), 19u)], true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1164f, arg_1.d, 970f))), _wgslsmith_f_op_vec3_f32(step(arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.c, vec3<f32>(arg_1.d, arg_1.c.x, arg_1.c.x))))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_1.d, arg_1.d, 415f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, 503f, -243f, -1642f) * vec4<f32>(2789f, 739f, -397f, -293f)))), 2147483647i, _wgslsmith_f_op_vec2_f32(round(arg_1.c.yz)), -_wgslsmith_dot_vec4_i32(func_2(u_input.d), vec4<i32>(49298i, u_input.a, arg_0.x, 4935i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-544f, _wgslsmith_f_op_f32(ceil(575f)), _wgslsmith_f_op_f32(arg_1.d - -1226f)), var_0.c), _wgslsmith_div_vec3_f32(arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -765f, 1104f) * vec3<f32>(arg_1.d, arg_1.d, arg_1.d)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1596f - _wgslsmith_div_f32(-1402f, _wgslsmith_f_op_f32(round(-1716f)))))));
    var var_3 = Struct_3(arg_1.a, arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(244f, var_2.x, arg_1.d)))), _wgslsmith_f_op_f32(f32(-1f) * -1370f));
    var_0 = Struct_3(select(~var_3.a, vec3<u32>(firstTrailingBit(~u_input.c), _wgslsmith_mult_u32(~29105u, arg_1.a.x), ~(~4294967295u)), vec3<bool>(true, (false == var_3.b) || global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_3.a.x), var_0.a.yy), 19u)], any(vec3<bool>(true, true, false)))), false & (false & !arg_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-756f - var_0.c.x), _wgslsmith_f_op_f32(534f - arg_1.c.x), _wgslsmith_div_f32(-1000f, var_3.c.x)) - var_3.c) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(arg_1.c)), vec3<f32>(var_0.c.x, 425f, var_1.x)))))), var_1.x);
    return !select(vec2<bool>(arg_1.b, !var_0.b), vec2<bool>((arg_1.c.x >= -683f) & global0[_wgslsmith_index_u32(arg_1.a.x, 19u)], var_0.b & var_0.b), vec2<bool>(!all(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 19u)])), !global0[_wgslsmith_index_u32(u_input.d.x, 19u)]));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    global0 = array<bool, 19>();
    let var_0 = vec3<bool>(max(_wgslsmith_sub_u32(u_input.c, 30258u), u_input.d.x) != select(~countOneBits(1487u), countOneBits(~u_input.c), true), arg_2.c, !arg_0);
    return Struct_3(select(~(u_input.b >> (u_input.b % vec3<u32>(32u))), ~u_input.b, var_0) ^ _wgslsmith_sub_vec3_u32(max(u_input.b, ~vec3<u32>(u_input.d.x, u_input.c, u_input.d.x)), firstTrailingBit(u_input.b ^ u_input.b)), select(true, all(!(!var_0.xz)), ~u_input.b.x > ~u_input.d.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.b * arg_1.d.zxw))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.b) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.d.x, arg_2.b.c.x, arg_2.b.c.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-1867f * -151f), 779f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, arg_2.b.c.x, arg_2.b.d.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-165f, arg_2.b.d.x, 962f), arg_1.b)), true))), var_0)), arg_2.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(func_1(-max(vec2<i32>(u_input.a, 0i), u_input.e.yx), Struct_3(~vec3<u32>(70013u, 4294967295u, 25774u), !global0[_wgslsmith_index_u32(34401u, 19u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(293f, 660f, 214f) - vec3<f32>(-1279f, 1728f, 844f)), -2244f))), Struct_1(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(u_input.e.x, u_input.a)), countOneBits(-2147483647i & u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1360f, 708f, 995f)), vec3<f32>(1404f, _wgslsmith_f_op_f32(round(-1031f)), -800f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(666f)), _wgslsmith_f_op_f32(-544f * -786f)) - vec2<f32>(_wgslsmith_f_op_f32(-306f * 1541f), _wgslsmith_f_op_f32(trunc(-1813f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1587f)), _wgslsmith_div_f32(1117f, -160f), -346f, _wgslsmith_f_op_f32(-1219f + 1000f)))), Struct_2(func_1(u_input.e.xz, Struct_3(u_input.b << (u_input.b % vec3<u32>(32u)), select(true, true, global0[_wgslsmith_index_u32(10892u, 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(1198f, 1257f, 3041f) + vec3<f32>(1001f, -595f, 306f)), _wgslsmith_f_op_f32(f32(-1f) * -1924f))), Struct_1(func_2(vec2<u32>(17786u, u_input.d.x)).x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(-206f - -711f), -853f), vec4<f32>(_wgslsmith_f_op_f32(-970f - 133f), _wgslsmith_div_f32(-582f, -1529f), -1000f, _wgslsmith_f_op_f32(-398f + -115f))), true));
    let var_1 = u_input.d;
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let var_2 = Struct_3(u_input.b, false, _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1566f, var_0.d, -1000f)))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.d, _wgslsmith_f_op_f32(var_0.d + 1601f), -1059f)), -_wgslsmith_sub_i32(~u_input.e.x, u_input.e.x), var_0.c.xy, 34244i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.yx, select(vec4<i32>(-2147483647i, 1i, ~u_input.a, -1i), vec4<i32>(reverseBits(u_input.e.x), (1i >> (u_input.b.x % 32u)) & -u_input.e.x, -u_input.a << ((var_0.a.x | 1u) % 32u), (-16371i & u_input.e.x) | u_input.e.x), select(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(56341u, var_0.a.x), 19u)], select(var_0.b, var_2.b || true, true), (u_input.a ^ u_input.e.x) < -2147483647i)), select(vec3<i32>(-u_input.e.x, 1i >> ((u_input.b.x >> (var_0.a.x % 32u)) % 32u), countOneBits(i32(-1i) * -2147483647i)), countOneBits(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.e.wyx, vec3<i32>(64559i, -2147483647i, u_input.a)), _wgslsmith_add_i32(u_input.a, -1i))), select(false, var_2.b || any(vec2<bool>(true, var_0.b)), all(!vec4<bool>(var_0.b, false, false, true)))));
}


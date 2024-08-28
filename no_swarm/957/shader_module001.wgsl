struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-6379i, 51195i, 1i, 1i), vec4<i32>(9238i, 29278i, -8146i, 0i), vec4<i32>(1i, i32(-2147483648), -36690i, 0i), vec4<i32>(-13275i, 0i, 1i, 5429i), vec4<i32>(i32(-2147483648), -58833i, 2147483647i, 1i), vec4<i32>(-47935i, 2147483647i, 49614i, -32671i), vec4<i32>(-37434i, -1i, -1i, -28926i), vec4<i32>(1i, 18416i, -6487i, -24707i), vec4<i32>(66155i, -1129i, 2147483647i, 25780i), vec4<i32>(12331i, 0i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i), vec4<i32>(2147483647i, 1i, 27765i, 67372i), vec4<i32>(0i, 2173i, 1763i, -3336i), vec4<i32>(1i, 0i, 2147483647i, 62938i), vec4<i32>(i32(-2147483648), 13606i, 67221i, -50800i), vec4<i32>(i32(-2147483648), -8939i, 1i, -5465i), vec4<i32>(19714i, 6883i, 1i, 1i), vec4<i32>(10401i, 0i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 20870i, 13579i, 2147483647i), vec4<i32>(81103i, 21212i, -65443i, 0i), vec4<i32>(1i, 0i, -11677i, -38807i), vec4<i32>(-1i, 25197i, -9319i, 2147483647i));

var<private> global1: vec4<i32> = vec4<i32>(29537i, -11725i, -14667i, 11166i);

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1786f, 1539f, 429f, -1104f), vec4<f32>(-1518f, -925f, 890f, 938f), vec4<f32>(453f, -424f, -289f, -252f), vec4<f32>(-454f, 1944f, 1980f, 2398f), vec4<f32>(1273f, -142f, 1693f, 1347f), vec4<f32>(1336f, 163f, 600f, -1848f), vec4<f32>(-1000f, 1000f, 670f, -1140f), vec4<f32>(496f, 1000f, 530f, 391f), vec4<f32>(-2134f, -416f, -337f, 699f), vec4<f32>(-814f, -2851f, 517f, 151f), vec4<f32>(1860f, -1510f, -149f, 861f), vec4<f32>(-349f, 1236f, -536f, 322f), vec4<f32>(544f, 897f, 1513f, 105f), vec4<f32>(562f, -1000f, 945f, 244f), vec4<f32>(-790f, 1411f, -2047f, 1074f), vec4<f32>(136f, 1007f, -1682f, -2083f), vec4<f32>(-2295f, 613f, -991f, -1316f), vec4<f32>(-1898f, 555f, -908f, 1573f), vec4<f32>(567f, 499f, -188f, 1275f), vec4<f32>(1958f, -477f, -146f, 241f), vec4<f32>(730f, 654f, 814f, -296f), vec4<f32>(527f, -1070f, 179f, -499f), vec4<f32>(-201f, 787f, 1097f, 1520f));

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_4) -> f32 {
    let var_0 = u_input.c.wwz;
    let var_1 = global2[_wgslsmith_index_u32(u_input.d >> (_wgslsmith_mult_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(79324u, 52350u, u_input.c.x, 0u), vec4<u32>(var_0.x, var_0.x, 7174u, var_0.x)) >> (1u % 32u)), 40079u) % 32u), 4u)];
    global3 = array<vec4<f32>, 23>();
    global3 = array<vec4<f32>, 23>();
    let var_2 = vec2<u32>(~53986u, ~min(0u, _wgslsmith_mult_u32(~arg_3.b.x, var_1.d.c.x)));
    return -788f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1387f, arg_2, -138f) + vec3<f32>(arg_2, arg_2, 325f))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), arg_2, _wgslsmith_f_op_f32(func_3(Struct_5(vec4<i32>(global1.x, 14496i, u_input.b.x, u_input.b.x)), 1u | u_input.e.x, global4.xxy, Struct_4(vec3<f32>(arg_2, -624f, arg_2), vec3<u32>(u_input.e.x, arg_0.x, u_input.e.x)))))), _wgslsmith_div_vec3_u32(arg_1.wwy, vec3<u32>(_wgslsmith_mult_u32(~arg_0.x, _wgslsmith_clamp_u32(4294967295u, u_input.d, arg_1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_0.yx), ~(~0u))));
    var var_1 = Struct_1(u_input.a.x > _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.yyy, u_input.a.wwx), reverseBits(u_input.a.x << (1u % 32u))), arg_1.x, arg_1);
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(trunc(var_0.a))), var_0.a))), vec3<u32>(abs(4294967295u), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1244u), vec3<u32>(4294967295u, arg_1.x, 87718u)), 14548u), 0u));
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<u32>(~abs(10251u), _wgslsmith_add_u32(~0u, countOneBits(u_input.d) & ~arg_1.x), _wgslsmith_div_u32(u_input.c.x, 3351u)));
    var var_2 = Struct_5(u_input.a);
    return -1i;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = min(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.d) | vec3<u32>(10469u, u_input.d, 71897u), vec3<u32>(u_input.c.x, 35199u, abs(u_input.e.x))), ~(min(u_input.c.xxz, u_input.c.yxz) ^ ~vec3<u32>(u_input.e.x, 56235u, u_input.d)) | vec3<u32>(_wgslsmith_sub_u32(u_input.d, u_input.e.x >> (u_input.d % 32u)), _wgslsmith_dot_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(2622u, 4294967295u, u_input.d, u_input.e.x), u_input.c)), _wgslsmith_mod_u32(u_input.e.x, ~1u)));
    global1 = vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), firstLeadingBit(~(global1.x & 1i))), _wgslsmith_mod_i32(~(~(-11542i)) ^ func_2(vec3<u32>(1u, u_input.e.x, 3491u), _wgslsmith_add_vec4_u32(vec4<u32>(63311u, 0u, 56439u, var_0.x), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.e.x)), -126f), u_input.a.x), min(~0i, -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-15467i, 1i, -5016i), global1.wxz, global4.x), global1.zyy)), -1i);
    global0 = array<vec4<i32>, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(max(abs(4294967295u), 4294967295u) & u_input.d, 23u)]));
    global0 = array<vec4<i32>, 22>();
    return var_1.x;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = Struct_5(select(vec4<i32>(arg_3.b.x, 2323i, _wgslsmith_mult_i32(arg_3.b.x, u_input.b.x >> (u_input.d % 32u)), min(arg_0 ^ global1.x, ~61824i)), vec4<i32>((33044i << (u_input.d % 32u)) >> (1u % 32u), -max(-1i, 4550i), arg_1, func_2(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, u_input.e.x), vec3<u32>(u_input.e.x, 1u, arg_3.a.b)), vec4<u32>(arg_3.d.b, 1u, u_input.d, arg_3.d.b), _wgslsmith_f_op_f32(sign(-422f)))), select(vec4<bool>(true, arg_3.a.a, false, arg_3.d.a & arg_3.d.a), vec4<bool>(!global4.x, global4.x, true, any(global4.wzz)), !(!vec4<bool>(arg_3.d.a, global4.x, true, global4.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f * arg_2) * _wgslsmith_f_op_f32(-arg_2));
    let var_2 = ~_wgslsmith_clamp_u32(~24187u, 4294967295u, u_input.d);
    let var_3 = _wgslsmith_clamp_u32(abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_3.a.b & 118117u, _wgslsmith_add_u32(arg_3.a.b, 4294967295u)), 4722u)), u_input.e.x, 64533u);
    var var_4 = _wgslsmith_f_op_f32(-var_1);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 535f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 446f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = var_0;
    global3 = array<vec4<f32>, 23>();
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(-u_input.a.x, -var_1, _wgslsmith_f_op_f32(func_1((u_input.a.x ^ (var_1 & -427i)) & firstTrailingBit(var_0))), global2[_wgslsmith_index_u32(29014u, 4u)]));
    var var_3 = Struct_5(global0[_wgslsmith_index_u32(u_input.d, 22u)]);
    global3 = array<vec4<f32>, 23>();
    var var_4 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1690f)))), var_2.x), u_input.c.www);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, var_2.x) + var_2))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2)), _wgslsmith_f_op_vec2_f32(-var_4.a.zz)), select(vec2<bool>(global4.x, global4.x), select(global4.wy, vec2<bool>(false, global4.x), vec2<bool>(true, global4.x)), select(vec2<bool>(global4.x, global4.x), global4.zz, false))))), var_4.b << (_wgslsmith_mod_vec3_u32(~var_4.b, u_input.c.wwx) % vec3<u32>(32u)));
}


struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<f32, 6> = array<f32, 6>(-126f, -1025f, -180f, 1686f, 1464f, -276f);

var<private> global2: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-1000f, -822f), vec2<f32>(-695f, 720f), vec2<f32>(-1543f, -1246f), vec2<f32>(-1039f, 459f), vec2<f32>(232f, -1493f), vec2<f32>(-469f, 730f), vec2<f32>(-1023f, -1012f), vec2<f32>(340f, 431f), vec2<f32>(969f, -1046f), vec2<f32>(-1666f, 260f), vec2<f32>(1438f, -584f), vec2<f32>(163f, 1354f), vec2<f32>(-245f, -1000f), vec2<f32>(273f, -989f), vec2<f32>(1204f, -972f), vec2<f32>(-1469f, 271f), vec2<f32>(652f, 1380f), vec2<f32>(365f, -1570f), vec2<f32>(-352f, -202f), vec2<f32>(1491f, -1000f), vec2<f32>(-689f, 165f), vec2<f32>(1243f, 174f), vec2<f32>(-218f, -480f), vec2<f32>(910f, -1285f), vec2<f32>(1178f, -683f), vec2<f32>(780f, 945f), vec2<f32>(770f, -1035f), vec2<f32>(253f, -811f), vec2<f32>(703f, -474f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i), abs(vec4<i32>(1i, u_input.b, -30051i, u_input.b)), vec4<i32>(u_input.b, u_input.b, -9349i, 1i)), select(_wgslsmith_div_u32(42247u, 1u), 4294967295u, -896f >= _wgslsmith_div_f32(-1014f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), all(vec2<bool>(true, true)) != select(true, false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), !(_wgslsmith_mod_i32(-u_input.b, 1i) < 2147483647i), vec4<i32>(u_input.b, ~(-8885i), -(~u_input.b), -(~_wgslsmith_clamp_i32(-41602i, 8399i, u_input.b))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-371f, 163f, false))), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~var_0.b & ~6381u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)] + 924f), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 6u)])), !var_0.c)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_0.b, 29u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(20092u, 6u)], global1[_wgslsmith_index_u32(var_0.b, 6u)]) - vec2<f32>(-2670f, global1[_wgslsmith_index_u32(var_0.b, 6u)]))) * _wgslsmith_f_op_vec2_f32(step(var_1.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], -237f) + vec2<f32>(global1[_wgslsmith_index_u32(38383u, 6u)], -1000f))))) - _wgslsmith_f_op_vec2_f32(var_1.yx + vec2<f32>(var_1.x, global1[_wgslsmith_index_u32(~u_input.a.x, 6u)])))));
    let var_3 = u_input.a;
    let var_4 = ~_wgslsmith_div_i32(0i, 19817i);
    return !vec4<bool>(_wgslsmith_mod_u32(~var_3.x, ~33207u) <= u_input.a.x, false, select(~var_4 < min(2147483647i, var_0.a.x), false, true), !any(vec2<bool>(true, false)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = func_3();
    global2 = array<vec2<f32>, 29>();
    global0 = array<Struct_1, 23>();
    let var_1 = global0[_wgslsmith_index_u32(~arg_3, 23u)];
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    global1 = array<f32, 6>();
    let var_0 = vec3<bool>(arg_1, (any(!vec2<bool>(arg_1, arg_1)) || arg_1) && arg_1, all(select(vec4<bool>(arg_1, !arg_1, all(vec2<bool>(false, arg_1)), false && arg_1), !vec4<bool>(arg_1, arg_1, true, true), !(arg_1 && false))));
    return func_2(global0[_wgslsmith_index_u32(arg_0, 23u)], _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, firstTrailingBit(15447i) & u_input.b), vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), ~(~(~vec2<u32>(56479u, 1u))), 0u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    let var_0 = func_1(u_input.a.x, arg_0.x);
    global1 = array<f32, 6>();
    var var_1 = Struct_1(~(-(var_0.e << (firstLeadingBit(vec4<u32>(0u, 89759u, arg_1.b, arg_1.b)) % vec4<u32>(32u)))), func_1(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), true).b ^ arg_1.b, global1[_wgslsmith_index_u32(4294967295u, 6u)] == _wgslsmith_f_op_f32(f32(-1f) * -200f), any(select(select(arg_0, !arg_0, !vec3<bool>(true, false, arg_0.x)), vec3<bool>(all(arg_0.zy), true, true), all(func_3().wzz))), -vec4<i32>(var_0.a.x, _wgslsmith_add_i32(arg_1.e.x, -var_0.e.x), arg_1.e.x, ~max(var_0.e.x, arg_1.e.x)));
    let var_2 = Struct_1(max(min(firstLeadingBit(vec4<i32>(var_0.e.x, arg_1.a.x, -2147483647i, arg_1.a.x)), var_1.a) >> ((vec4<u32>(25789u, var_1.b, var_0.b, arg_1.b) << (~vec4<u32>(22690u, 4294967295u, 10990u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(1i, var_0.e.x ^ u_input.b, -8357i, -16675i)), var_1.b, !arg_1.d, !(!all(arg_0)), select(~vec4<i32>(27386i, 0i | var_0.a.x, -17244i, _wgslsmith_div_i32(u_input.b, 38431i)), -var_1.e & vec4<i32>(var_0.a.x, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-20623i, 73967i, var_1.e.x), vec3<i32>(var_1.a.x, -1i, 0i)), 1i), select(false, any(!arg_0.yy), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 84324u, 7001u, u_input.a.x), vec4<u32>(var_1.b, u_input.a.x, 4294967295u, var_1.b)) == _wgslsmith_mod_u32(arg_1.b, arg_1.b))));
    global1 = array<f32, 6>();
    return true & !(!(func_1(4294967295u, true).c || func_1(8069u, arg_1.d).c));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.b, u_input.a.x, 69742u), arg_0.wxw), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.zww, arg_0.wxz), vec3<u32>(u_input.a.x, u_input.a.x, 1u))), arg_2.b, u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32((_wgslsmith_sub_u32(arg_2.b, ~1u) ^ 46042u) | var_0, 29u)] - vec2<f32>(-1854f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(751f * 1000f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f + _wgslsmith_f_op_f32(abs(var_1.x))));
    var var_3 = 1u;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(505f)), _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(step(1207f, 507f))) * vec4<f32>(var_1.x, global1[_wgslsmith_index_u32(6218u, 6u)], _wgslsmith_f_op_f32(sign(1123f)), _wgslsmith_f_op_f32(-var_1.x)))));
    return -(func_2(func_2(global0[_wgslsmith_index_u32(arg_2.b, 23u)], -arg_1, u_input.a, _wgslsmith_add_u32(49324u, 47265u)), firstTrailingBit(-vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b)), _wgslsmith_add_vec2_u32(arg_0.yy, firstLeadingBit(vec2<u32>(arg_2.b, arg_0.x))), countOneBits(6206u)).e ^ ~(~vec4<i32>(arg_2.e.x, 1i, arg_2.e.x, -22598i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]);
    var var_1 = 49452u;
    let var_2 = vec2<bool>(true, false);
    let var_3 = Struct_1(vec4<i32>(countOneBits(-1i), -18480i, 2147483647i, u_input.b), min(u_input.a.x, u_input.a.x), true, !var_2.x, func_5(select(~(~vec4<u32>(21828u, u_input.a.x, 1u, 35275u)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u) | vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), func_4(select(vec3<bool>(var_2.x, false, false), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, false, var_2.x)), func_1(0u, var_2.x))), select((vec4<i32>(u_input.b, -11670i, u_input.b, u_input.b) | vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)) & vec4<i32>(u_input.b, 20136i, -22366i, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i) ^ vec4<i32>(0i, -43710i, u_input.b, 0i), func_2(Struct_1(vec4<i32>(27896i, 15937i, 5019i, 0i), 4294967295u, true, false, vec4<i32>(-5632i, 2147483647i, 0i, -16207i)), vec4<i32>(u_input.b, u_input.b, -2147483647i, -39034i), u_input.a, 1u).c | !var_2.x), func_2(func_2(Struct_1(vec4<i32>(2147483647i, u_input.b, u_input.b, -64068i), u_input.a.x, true, var_2.x, vec4<i32>(u_input.b, u_input.b, -19142i, u_input.b)), min(vec4<i32>(0i, -2147483647i, u_input.b, u_input.b), vec4<i32>(64716i, u_input.b, u_input.b, u_input.b)), vec2<u32>(u_input.a.x, 1u), ~u_input.a.x), -(~vec4<i32>(2147483647i, -31561i, 2147483647i, u_input.b)), countOneBits(u_input.a), 4294967295u)));
    var_1 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -904f, -148f, global1[_wgslsmith_index_u32(50338u, 6u)]), vec4<f32>(var_0, 1120f, global1[_wgslsmith_index_u32(var_3.b, 6u)], 1054f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1296f, global1[_wgslsmith_index_u32(var_3.b, 6u)], var_0, var_0))), var_2.x)), vec4<f32>(-817f, _wgslsmith_f_op_f32(-829f + var_0), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), _wgslsmith_f_op_f32(var_0 - global1[_wgslsmith_index_u32(var_3.b, 6u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(48415u, 6u)], 699f, 1000f, var_0), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(736f, -586f, 2431f, global1[_wgslsmith_index_u32(0u, 6u)]))))))), -40339i ^ -_wgslsmith_mult_i32(~(-1i), var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 - 2569f)))) + var_0));
}


struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, 1i, 2147483647i, 37821i), vec4<i32>(2147483647i, 50208i, 2147483647i, 85040i));

var<private> global1: array<f32, 23> = array<f32, 23>(338f, -1359f, 1022f, 635f, 1242f, -2355f, 703f, 885f, 447f, 338f, 690f, -1252f, -852f, 260f, -229f, -206f, 156f, 484f, -1020f, -1000f, -1586f, 1446f, -181f);

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 13>;

var<private> global4: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(1091f, -117f), vec2<f32>(-200f, 109f), vec2<f32>(-1067f, 726f), vec2<f32>(847f, -686f), vec2<f32>(-1013f, -1120f), vec2<f32>(-1000f, 1000f), vec2<f32>(-1080f, 1164f), vec2<f32>(179f, 183f), vec2<f32>(-378f, -532f), vec2<f32>(1171f, 1175f), vec2<f32>(-168f, -919f), vec2<f32>(1409f, 1497f), vec2<f32>(211f, 1538f), vec2<f32>(-1000f, -1000f), vec2<f32>(197f, -1000f), vec2<f32>(-908f, -1494f), vec2<f32>(-2070f, -925f), vec2<f32>(1232f, -140f), vec2<f32>(-556f, 1625f), vec2<f32>(-727f, 219f), vec2<f32>(-617f, 1000f), vec2<f32>(-892f, 180f), vec2<f32>(-364f, -792f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_mult_i32(i32(-1i) * -(~_wgslsmith_div_i32(0i, 17639i)), -19400i);
    let var_1 = 1u == u_input.a.x;
    global3 = array<Struct_2, 13>();
    let var_2 = u_input.a.zxz & u_input.a.wwz;
    let var_3 = vec3<i32>(abs(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(max(1u, ~var_2.x), 2u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 7843u), 2u)] ^ global0[_wgslsmith_index_u32(var_2.x, 2u)])), 1i, 0i);
    return vec2<f32>(624f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1218f)))) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_2.x, 23u)]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_1 {
    global3 = array<Struct_2, 13>();
    var var_0 = u_input.a.yx;
    return Struct_1(_wgslsmith_div_vec2_f32(global4[_wgslsmith_index_u32(43976u << (_wgslsmith_div_u32(~1u, arg_0.x) % 32u), 23u)], _wgslsmith_f_op_vec2_f32(func_3())), 1u, true == global2.x, global1[_wgslsmith_index_u32(var_0.x, 23u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(arg_1, 9451u, 1u, arg_0.x)), vec4<u32>(u_input.a.x, 4294967295u, firstLeadingBit(~u_input.a.x), 39313u)), firstTrailingBit(~reverseBits(-vec3<i32>(22863i, -4405i, 17696i))));
    var var_1 = Struct_4(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -416f)) - global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 23u)]) != var_0.d, any(!(!vec4<bool>(var_0.c, true, var_0.c, false))), global2.x, !var_0.c), vec2<f32>(var_0.a.x, var_0.a.x), max(~_wgslsmith_sub_vec4_u32(arg_0, u_input.a), ~vec4<u32>(7921u, arg_1, 87855u, 4294967295u)) >> (~(~vec4<u32>(var_0.b, 1u, 0u, 1u) << ((u_input.a ^ vec4<u32>(1019u, arg_0.x, arg_1, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = max(vec4<u32>(30535u, (var_0.b >> (u_input.a.x % 32u)) | 18084u, 4294967295u, ~(arg_0.x ^ 0u)) | _wgslsmith_sub_vec4_u32(min(var_1.c, min(vec4<u32>(arg_0.x, u_input.a.x, var_1.c.x, 89326u), vec4<u32>(228u, var_0.b, 1u, arg_0.x))), ~_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(var_0.b, u_input.a.x, 20039u, arg_1))), vec4<u32>(~_wgslsmith_sub_u32(var_1.c.x, 4294967295u) ^ 0u, ~(~_wgslsmith_mod_u32(0u, var_1.c.x)), 24564u, var_0.b));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f * var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f - _wgslsmith_f_op_f32(trunc(var_0.d))))), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 531f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1370f) * _wgslsmith_f_op_f32(round(var_1.b.x))) - var_0.a.x)), _wgslsmith_f_op_f32(ceil(-1221f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-915f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))), -25730i >= ~countOneBits(_wgslsmith_clamp_i32(26039i, -2147483647i, -26920i))));
    return reverseBits(vec3<u32>(func_2(vec4<u32>(reverseBits(var_2.x), 19522u, firstLeadingBit(var_0.b), arg_1), ~abs(vec3<i32>(-165i, -18013i, 53987i))).b, _wgslsmith_mult_u32(abs(1u), 0u), ~abs(_wgslsmith_clamp_u32(var_0.b, var_0.b, 88378u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = ~reverseBits(~max(_wgslsmith_mult_vec2_u32(u_input.a.yx, vec2<u32>(0u, 1u)), vec2<u32>(7265u, 0u) ^ u_input.a.zz));
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(countOneBits((var_0.x << (~arg_2.x % 32u)) & 0u), 13u)]);
    var var_2 = !(!vec2<bool>(any(global2.xw) || (arg_1 | arg_1), !var_1.a.b));
    var_1 = Struct_3(Struct_2(func_2(u_input.a, vec3<i32>(49035i, arg_3.x, arg_3.x) & reverseBits(arg_3.ywx)), false));
    var var_3 = vec4<bool>(false, var_2.x, true & var_1.a.a.c, func_2(vec4<u32>(1u, 0u, ~70688u >> (func_2(vec4<u32>(24274u, u_input.a.x, arg_2.x, arg_2.x), vec3<i32>(arg_3.x, arg_3.x, -44242i)).b % 32u), 11899u), ~arg_3.zxx).c);
    return 76681u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 13>();
    let var_0 = vec3<i32>(1i, 1i, 1i);
    var var_1 = ~29848i;
    global4 = array<vec2<f32>, 23>();
    var var_2 = select(vec2<bool>(true, true), select(global2.zw, !global2.xz, global2.zx), false);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(6892u, 23u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global4[_wgslsmith_index_u32(u_input.a.x, 23u)]))))));
    global3 = array<Struct_2, 13>();
    global3 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_add_i32(-_wgslsmith_clamp_i32(-var_0.x, i32(-1i) * -7054i, -42206i), 60177i), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, -882f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<f32>(822f, 590f, -824f))))) - vec3<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 23u)], _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], var_3.x)))), false, _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.yxx, func_1(vec4<u32>(u_input.a.x, 88621u, 13278u, u_input.a.x), u_input.a.x)), ~_wgslsmith_add_vec3_u32(u_input.a.zzz, vec3<u32>(77176u, u_input.a.x, u_input.a.x))), vec4<i32>(9755i, ~select(-6924i, -51576i, true), ~var_0.x, _wgslsmith_mod_i32(2147483647i, min(-3899i, var_0.x)))));
}


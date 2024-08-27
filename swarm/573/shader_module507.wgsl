struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 19834u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    let var_0 = all(!(!(!(!vec4<bool>(arg_0.c, arg_0.b, true, arg_0.c)))));
    global1 = vec4<u32>(reverseBits(~(~reverseBits(global1.x))), ~_wgslsmith_add_u32(34226u, countOneBits(_wgslsmith_add_u32(u_input.b, global1.x))), ~(33997u & global1.x) << (_wgslsmith_dot_vec2_u32(global1.wz, global1.yy) % 32u), _wgslsmith_add_u32(47970u, global1.x) | _wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(u_input.b), 19572u), _wgslsmith_add_u32(~0u, _wgslsmith_sub_u32(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2846f, -428f))))));
    global0 = arg_0;
    let var_2 = Struct_1(vec2<i32>(58813i, ~abs(min(14323i, arg_1.x))), false & (((var_0 & arg_0.c) | true) || !(arg_1.x > -24331i)), var_0);
    return (var_2.b || var_0) && (all(vec3<bool>(true, true, true)) && true);
}

fn func_2() -> vec3<f32> {
    global0 = Struct_1(~(~_wgslsmith_mod_vec2_i32(-u_input.a.zy, _wgslsmith_mult_vec2_i32(global0.a, vec2<i32>(global0.a.x, 2147483647i)))), global0.c, func_3(Struct_1(-(~vec2<i32>(-1i, global0.a.x)), false, all(select(vec2<bool>(global0.b, true), vec2<bool>(false, global0.b), global0.c))), vec3<i32>(global0.a.x, 7092i, 2147483647i & ~global0.a.x)));
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-19639i, global0.a.x), ~vec2<i32>(u_input.d.x, select(global0.a.x, 1i, global0.c))), any(select(vec3<bool>(global1.x > 4294967295u, global0.b, all(vec4<bool>(false, false, true, false))), !(!vec3<bool>(global0.c, global0.c, global0.b)), !(!vec3<bool>(global0.c, global0.b, global0.c)))), (true | (any(vec4<bool>(global0.c, global0.b, false, global0.c)) && true)) | false);
    var var_1 = 1090f;
    let var_2 = global0.b;
    global0 = Struct_1(~var_0.a, var_0.c, false);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1064f, -155f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -534f, 889f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1204f, -376f, 1322f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, _wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(select(582f, 487f, true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(484f, -945f, -1481f), vec3<f32>(-316f, -236f, 821f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1071f, 1883f, -1624f) - vec3<f32>(-141f, -1300f, -751f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1602f, -1189f, 1441f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, 1229f, -773f))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 791f, arg_1) * vec3<f32>(arg_1, arg_1, 604f)) + _wgslsmith_f_op_vec3_f32(func_2())) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(850f, -1000f, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, arg_1)) - vec3<f32>(arg_1, arg_1, -1439f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-942f, -769f, arg_1), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1788f, arg_1, arg_1), vec3<f32>(arg_1, arg_1, arg_1))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_1)) - 598f), -1050f, _wgslsmith_f_op_vec3_f32(func_2()).x));
    global1 = vec4<u32>(1u, ~_wgslsmith_mult_u32(select(0u, 59387u, false), 79660u), 1u, ~u_input.b) << ((~(~(vec4<u32>(78470u, 1u, u_input.b, 4294967295u) >> (vec4<u32>(u_input.b, 29874u, u_input.b, u_input.b) % vec4<u32>(32u)))) & max(~vec4<u32>(4294967295u, 0u, 0u, global1.x), ~(~vec4<u32>(global1.x, 26623u, global1.x, 0u)))) % vec4<u32>(32u));
    global0 = Struct_1(vec2<i32>(arg_0.x, -11646i), global0.b, !any(vec2<bool>(any(vec2<bool>(global0.c, global0.b)), true)));
    return ~reverseBits(vec4<u32>(firstTrailingBit(18084u), reverseBits(0u), _wgslsmith_sub_u32(~1u, 17960u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(firstTrailingBit(reverseBits(func_1(u_input.a, -1499f))), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(37586u, 18761u, global1.x, global1.x), vec4<u32>(u_input.b, 0u, u_input.b, global1.x))), select(!select(vec4<bool>(global0.b, global0.c, true, true), vec4<bool>(false, global0.b, global0.c, global0.b), vec4<bool>(false, global0.c, true, false)), !select(vec4<bool>(true, false, true, false), vec4<bool>(global0.b, true, global0.c, global0.c), vec4<bool>(false, global0.b, global0.b, true)), true));
    global1 = _wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.b, var_0.x), vec4<u32>(8669u, var_0.x, u_input.b, global1.x)), vec4<u32>(0u, global1.x, 35489u, 4294967295u) & (vec4<u32>(global1.x, 1u, 75466u, u_input.b) ^ vec4<u32>(1u, u_input.b, var_0.x, var_0.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, global1.x, 0u, 50351u), vec4<u32>(1448u, 1u << (1u % 32u), 1u, 1u))), vec4<u32>(~_wgslsmith_mult_u32(53658u, abs(global1.x)), global1.x, ~countOneBits(~global1.x), var_0.x));
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec2_u32(global1.wy, var_0.wx));
    var var_2 = Struct_1(global0.a, false, -countOneBits(37264i << (0u % 32u)) >= (-2147483647i & ~_wgslsmith_add_i32(0i, u_input.d.x)));
    global0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(max(global0.a.x, select(-26392i, -2147483647i, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 12615i, -1i) << (var_0.xxz % vec3<u32>(32u)), -u_input.d)), reverseBits(~global0.a.x)), var_2.c, true);
    let var_3 = min(~57179u, 35168u ^ global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(max(reverseBits(vec2<u32>(var_0.x, global1.x) ^ vec2<u32>(var_1.x, u_input.b)), vec2<u32>(var_1.x, global1.x))), ~(~(~4294967295u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(var_0, var_0), abs(_wgslsmith_sub_vec4_u32(var_0, var_0))), ~_wgslsmith_mult_vec4_u32(var_0, vec4<u32>(0u, global1.x, 40271u, global1.x)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(101595u, 40221u, 16122u, var_0.x), _wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(0u, 51899u, global1.x, 1u), vec4<u32>(4294967295u, 18798u, 1u, 0u))) % vec4<u32>(32u))), u_input.a, vec4<f32>(-315f, _wgslsmith_f_op_vec3_f32(func_2()).x, 986f, _wgslsmith_div_f32(1789f, 2295f)));
}


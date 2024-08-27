struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: Struct_4 = Struct_4(vec3<i32>(27337i, 2147483647i, i32(-2147483648)), true, vec3<f32>(489f, -1158f, 602f), vec3<i32>(55279i, 1i, i32(-2147483648)));

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec3<i32>(-1i, i32(-2147483648), 1397i), true, vec3<f32>(1431f, -251f, 2140f), vec3<i32>(1i, -1i, 2147483647i)), Struct_4(vec3<i32>(63718i, -1i, -1i), false, vec3<f32>(-1562f, -289f, 1000f), vec3<i32>(i32(-2147483648), i32(-2147483648), -20061i)), Struct_4(vec3<i32>(0i, -11467i, 0i), false, vec3<f32>(-156f, 1000f, -2117f), vec3<i32>(-1i, 1i, 2147483647i)), Struct_4(vec3<i32>(0i, i32(-2147483648), 0i), true, vec3<f32>(2720f, 944f, 661f), vec3<i32>(39993i, 2147483647i, -3682i)), Struct_4(vec3<i32>(1i, -1i, -20268i), true, vec3<f32>(-2152f, 379f, 171f), vec3<i32>(7228i, -10905i, 6954i)), Struct_4(vec3<i32>(2147483647i, 18680i, 1i), false, vec3<f32>(332f, 1493f, 335f), vec3<i32>(40557i, 3596i, 1i)), Struct_4(vec3<i32>(2147483647i, 8964i, -1i), true, vec3<f32>(-1752f, -937f, -845f), vec3<i32>(6473i, 0i, 1i)), Struct_4(vec3<i32>(-33198i, 0i, 0i), true, vec3<f32>(1608f, -455f, -739f), vec3<i32>(0i, 1i, 2147483647i)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_3(reverseBits(_wgslsmith_div_vec4_i32(min(vec4<i32>(global2.a.x, u_input.a.x, 43745i, global2.d.x), ~vec4<i32>(global2.a.x, -11350i, u_input.c.x, u_input.d.x)), vec4<i32>(global2.d.x >> (u_input.b.x % 32u), ~global2.d.x, ~global2.a.x, _wgslsmith_clamp_i32(11247i, global2.a.x, global2.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, 537f, global2.c.x)), vec4<f32>(480f, global2.c.x, -2176f, 1939f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(153f, -1340f, 1040f, 2899f), vec4<f32>(global2.c.x, -650f, -1947f, global2.c.x), arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, 385f, -725f, global2.c.x) * vec4<f32>(-437f, -748f, global2.c.x, 388f)))))), u_input.d.x);
    var_0 = Struct_3(abs(vec4<i32>(_wgslsmith_mult_i32(reverseBits(u_input.d.x), -2147483647i), firstLeadingBit(-4228i), 0i, 2147483647i)), _wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(abs(var_0.b))), abs(var_0.c));
    let var_1 = false;
    let var_2 = Struct_3(~var_0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)) - global2.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1186f - -828f))), u_input.d.x);
    var var_3 = Struct_2(abs(_wgslsmith_add_i32(-9318i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 0i), select(vec2<i32>(-2147483647i, -1i), var_2.a.wx, vec2<bool>(var_1, true))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(global2.c.x - var_2.b.x)))) != -1000f, ~(~u_input.b.x), Struct_1(~((u_input.d.xx ^ u_input.c.xz) | ~u_input.d.yy), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global1.x, false, true), vec4<bool>(true, global2.b, global2.b, global1.x), true), false)));
    return _wgslsmith_f_op_f32(-global2.c.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> vec3<f32> {
    global3 = array<Struct_4, 8>();
    var var_0 = arg_0;
    var var_1 = Struct_4(~_wgslsmith_div_vec3_i32(-vec3<i32>(3523i, arg_1.d.x, var_0.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.a.zwy, vec3<i32>(-2147483647i, global2.a.x, u_input.a.x)), arg_0.a.x, firstLeadingBit(-1i))), global1.x, vec3<f32>(_wgslsmith_f_op_f32(select(1153f, var_0.b.x, !arg_1.b)), 250f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(!global2.b))))), vec3<i32>(global2.a.x, ~arg_1.d.x, -1i));
    global3 = array<Struct_4, 8>();
    let var_2 = u_input.b.x;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, 1978f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), arg_1.c.x, true)) - _wgslsmith_f_op_f32(abs(arg_0.b.x))), arg_0.b.x) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, -1309f, -759f), var_0.b.wzw) + _wgslsmith_f_op_vec3_f32(var_1.c + arg_0.b.wxz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c * var_1.c))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_4 {
    global3 = array<Struct_4, 8>();
    return Struct_4(vec3<i32>(max(global2.d.x, _wgslsmith_mod_i32(2147483647i, max(-9543i, global2.a.x))), abs(select(-1i, -u_input.c.x, all(vec2<bool>(global2.b, false)))), _wgslsmith_div_i32(~global2.d.x, u_input.a.x)), arg_3, _wgslsmith_div_vec3_f32(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.x))), _wgslsmith_f_op_f32(863f + _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.c, global2.c) * _wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<i32>(-74061i, global2.d.x, u_input.a.x, 11008i), vec4<f32>(-1000f, -845f, 801f, global2.c.x), 23015i), global3[_wgslsmith_index_u32(78531u, 8u)]))))), global2.a);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = func_1(vec2<bool>(all(vec3<bool>(true, true, u_input.b.x >= u_input.b.x)), select(0u >= _wgslsmith_dot_vec3_u32(u_input.b.zwz, u_input.b.xxw), _wgslsmith_f_op_f32(f32(-1f) * -1002f) > arg_0.c.x, all(!vec4<bool>(true, arg_0.b, arg_0.b, false)))), u_input.b, select(!vec3<bool>(61351u > u_input.b.x, true, any(vec2<bool>(true, false))), !select(vec3<bool>(arg_1.x, arg_0.b, arg_1.x), select(arg_1, vec3<bool>(arg_1.x, true, true), false), false), false), all(!vec3<bool>(!arg_0.b, !global2.b, select(global1.x, true, arg_0.b)))).a.x;
    var var_1 = arg_2.xyx;
    var var_2 = u_input.b.x;
    let var_3 = ~min(-_wgslsmith_mult_vec4_i32(vec4<i32>(17260i, global2.a.x, 12613i, 1342i), arg_2), arg_2) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x << (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, ~u_input.b), ~(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 69288u) >> (u_input.b % vec4<u32>(32u))))) % vec4<u32>(32u));
    var_1 = vec3<i32>(~arg_2.x, ~0i, 0i);
    return Struct_2(countOneBits(-39014i), any(!vec4<bool>(!arg_0.b, select(false, arg_1.x, arg_0.b), global1.x, true)), u_input.b.x >> (~u_input.b.x % 32u), Struct_1(-vec2<i32>(24796i, 0i) | global2.d.xy, !(!(!vec4<bool>(arg_0.b, global1.x, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(global1.wz, firstLeadingBit(countOneBits(vec4<u32>(13710u, u_input.b.x, u_input.b.x, u_input.b.x))) | (~u_input.b << (vec4<u32>(0u, 45344u, 0u, 4294967295u) % vec4<u32>(32u))), global1.yxx, global1.x), !vec3<bool>(true || !global2.b, func_1(vec2<bool>(global1.x, global1.x), vec4<u32>(u_input.b.x, u_input.b.x, 33904u, u_input.b.x), vec3<bool>(true, global1.x, true), false).b || !global1.x, any(global1.yz)), -_wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, global2.a.x, u_input.c.x, global2.a.x), countOneBits(vec4<i32>(-19156i, -1i, -2147483647i, 0i)), !vec4<bool>(false, global1.x, true, global2.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 0i, 2147483647i, u_input.a.x), -vec4<i32>(global2.a.x, u_input.d.x, 2147483647i, u_input.c.x))));
    global1 = vec4<bool>(global2.b, true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.c.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1437f + global2.c.x))), true);
    global3 = array<Struct_4, 8>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.c.zx - vec2<f32>(1f, global2.c.x)), global2.c.xz));
    global3 = array<Struct_4, 8>();
    global3 = array<Struct_4, 8>();
    let var_3 = vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(~(-abs(var_0.d.a.x)), -19257i), -_wgslsmith_dot_vec2_i32(-func_4(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], global1.wxw, vec4<i32>(-1i, var_0.a, -24135i, var_0.d.a.x)).d.a, global2.d.zz));
    let var_4 = Struct_4(vec3<i32>(_wgslsmith_clamp_i32(-abs(-11649i), var_0.a, ~_wgslsmith_mod_i32(var_1.d.a.x, -2147483647i)), var_3.x, -6001i), !(var_1.d.b.x || global2.b), func_1(select(vec2<bool>(!global2.b, true), func_4(func_1(global1.zw, u_input.b, vec3<bool>(global1.x, true, global1.x), false), global1.yxw, vec4<i32>(var_0.d.a.x, var_1.d.a.x, -269i, var_0.a) >> (vec4<u32>(0u, var_1.c, 12605u, 0u) % vec4<u32>(32u))).d.b.xz, global2.a.x <= u_input.c.x), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c, var_0.c, u_input.b.x, u_input.b.x), u_input.b, vec4<u32>(var_1.c, 4294967295u, 15868u, var_0.c)), ~u_input.b, !vec4<bool>(false, global2.b, true, true)), select(!(!var_0.d.b.zwx), var_1.d.b.yxx, !func_4(global3[_wgslsmith_index_u32(var_0.c, 8u)], var_1.d.b.ywz, vec4<i32>(var_3.x, 2147483647i, -18641i, global2.a.x)).d.b.wzw), true).c, select(_wgslsmith_sub_vec3_i32(func_1(func_4(Struct_4(vec3<i32>(global2.d.x, 0i, 11949i), var_1.d.b.x, global2.c, vec3<i32>(2147483647i, var_1.d.a.x, -9005i)), var_0.d.b.wwx, vec4<i32>(-9942i, var_0.a, var_3.x, 0i)).d.b.yw, u_input.b, vec3<bool>(true, global2.b, false), var_2.x >= var_2.x).d, ~var_3), global2.a, select(-global2.d.x < global2.a.x, func_4(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], !global1.xzx, ~vec4<i32>(-2147483647i, 12526i, var_1.d.a.x, var_3.x)).d.b.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c + vec3<f32>(529f, -436f, -770f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1061f, var_2.x, var_4.c.x), vec3<f32>(-1128f, var_4.c.x, 921f)))))), select(_wgslsmith_dot_vec4_u32(~u_input.b >> (~u_input.b % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 3451u), countOneBits(20298u), select(var_0.c, 4294967295u, false), 0u)), u_input.b.x << (~_wgslsmith_sub_u32(37547u, u_input.b.x) % 32u), true));
}


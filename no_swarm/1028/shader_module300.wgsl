struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_4,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 18> = array<i32, 18>(i32(-2147483648), 16972i, i32(-2147483648), -192i, 2147483647i, -1i, -1i, -393i, 1i, 0i, i32(-2147483648), 30494i, 31336i, 0i, -30339i, 4083i, -15375i, -42537i);

var<private> global2: array<vec4<bool>, 6>;

var<private> global3: u32;

var<private> global4: vec3<i32> = vec3<i32>(62076i, 36268i, 1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec3<f32> {
    global2 = array<vec4<bool>, 6>();
    global1 = array<i32, 18>();
    let var_0 = Struct_5(~(-_wgslsmith_div_i32(~global1[_wgslsmith_index_u32(arg_1, 18u)], global4.x)), Struct_2(Struct_1(vec2<u32>(arg_1, ~arg_1), vec3<f32>(-1594f, 2089f, -383f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, 1085f, 1303f, -336f))))), Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(arg_0.x, global1[_wgslsmith_index_u32(arg_1, 18u)], -35920i, -2147483647i) | u_input.c, -vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(arg_1, 18u)], -1i, global4.x)), vec4<i32>(_wgslsmith_mod_i32(-82815i, arg_0.x), -25095i, arg_0.x | -6596i, -18944i)), vec4<i32>(arg_0.x, min(countOneBits(-27366i), -46769i), global4.x, 0i)), 103009u, !vec3<bool>(true, all(!global2[_wgslsmith_index_u32(arg_1, 6u)]), any(vec3<bool>(true, true, true)) & true));
    let var_1 = vec2<bool>(all(var_0.e.xz), true);
    global4 = -u_input.c.wxx;
    return _wgslsmith_f_op_vec3_f32(-var_0.b.a.c.yzw);
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = ~4294967295u;
    var var_1 = Struct_1(vec2<u32>(abs(_wgslsmith_clamp_u32(18833u, 9274u, countOneBits(var_0))), 101751u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -1175f, 366f))), _wgslsmith_f_op_vec3_f32(func_3(u_input.c.wxx, var_0))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-302f, arg_0, arg_0, arg_0), vec4<f32>(-752f, arg_0, arg_0, 1049f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -731f, arg_0) + vec4<f32>(arg_0, -1336f, 1622f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -1332f), vec4<f32>(arg_0, 893f, -1191f, -404f))), vec4<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(false, true)), true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1762f, arg_0, -1145f, arg_0) - vec4<f32>(arg_0, arg_0, 1187f, arg_0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-853f, 1000f, arg_0, arg_0) * vec4<f32>(arg_0, -262f, arg_0, 150f)), true)))));
    var var_2 = Struct_3(Struct_2(Struct_1(vec2<u32>(0u, var_1.a.x) ^ ~vec2<u32>(var_0, 0u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, var_1.b.x, -1740f), vec3<f32>(-134f, 1980f, -239f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(arg_0, arg_0, var_1.b.x, 599f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), any(!global2[_wgslsmith_index_u32(4294967295u, 6u)]) & (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(259f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(step(-1000f, -926f)))));
    global1 = array<i32, 18>();
    let var_3 = ~_wgslsmith_div_i32(1i, 2199i);
    return ~abs(0u);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(countOneBits(max(-1774i, u_input.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(29600u, 1u, 27637u), vec3<u32>(4294967295u, 4294967295u, 67604u)) % 32u)) | (_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(global4.x, 9406i)) << (firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4271u, 48598u), vec4<u32>(2270u, 37531u, 4924u, 34833u))) % 32u)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~0u >> (func_2(-1013f) % 32u), 18u)], min(global1[_wgslsmith_index_u32(1u, 18u)] << (1u % 32u), 0i)) << (~(0u ^ _wgslsmith_clamp_u32(25227u, 4294967295u, 1u)) % 32u));
    var var_1 = Struct_2(Struct_1(select(countOneBits(vec2<u32>(62936u, 44760u)) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4836u), vec2<u32>(0u, 0u), vec2<u32>(0u, 231u)), _wgslsmith_div_vec2_u32(~vec2<u32>(58162u, 29249u), ~vec2<u32>(25183u, 0u)), false && any(vec3<bool>(false, false, true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f + -954f) * _wgslsmith_f_op_f32(trunc(-742f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(689f, 1151f), _wgslsmith_f_op_f32(abs(-1892f)))), 2411f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1038f, _wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(-284f * 363f), _wgslsmith_f_op_f32(max(1000f, 1046f)))))));
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(var_1.a.a.x, 18u)], Struct_2(Struct_1(var_1.a.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(var_1.a.b.x * 1049f), var_1.a.b.x), _wgslsmith_f_op_vec4_f32(-var_1.a.c))), Struct_4(_wgslsmith_mod_i32(firstLeadingBit(~(-1i)), ~min(u_input.a, 54727i)), u_input.c), 1u, vec3<bool>(true, true, any(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    let var_3 = var_2.b.a;
    var var_4 = var_2.c.b.xzw;
    return Struct_1(vec2<u32>(~(1u << (_wgslsmith_sub_u32(26202u, var_2.b.a.a.x) % 32u)), var_1.a.a.x), var_3.b, vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(ceil(-2118f)), _wgslsmith_f_op_f32(trunc(var_2.b.a.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(u_input.d, 2147483647i, 2147483647i), var_3.a.x)).x * _wgslsmith_f_op_f32(-var_2.b.a.b.x)), _wgslsmith_f_op_f32(-var_1.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) * _wgslsmith_f_op_f32(1325f + 553f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1471f * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1372f)), _wgslsmith_f_op_f32(select(222f, -1010f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f) + _wgslsmith_f_op_f32(ceil(-1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -417f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-313f * 147f), _wgslsmith_f_op_f32(ceil(-1000f)))) - 220f), _wgslsmith_f_op_f32(f32(-1f) * -289f)));
    var var_1 = var_0.yz;
    let var_2 = -min(~2147483647i, -global1[_wgslsmith_index_u32(44294u, 18u)]);
    let var_3 = Struct_3(Struct_2(func_1()), var_0.x, true);
    var var_4 = all(vec4<bool>(true, var_3.c, !(false || var_3.c), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(~4294967295u, func_1().a.x), select(4294967295u, (var_3.a.a.a.x >> (var_3.a.a.a.x % 32u)) & ~var_3.a.a.a.x, false)), var_0.yy, var_3.a.a.a.x, vec2<u32>(var_3.a.a.a.x, min(0u, var_3.a.a.a.x)), _wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(-var_0.x)));
}


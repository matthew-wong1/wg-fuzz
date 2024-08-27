struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: f32 = 182f;

var<private> global2: i32 = -28489i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> vec2<bool> {
    global2 = -1i & countOneBits(_wgslsmith_mult_i32(~firstLeadingBit(46861i), _wgslsmith_div_i32(u_input.a.x, -2048i)));
    var var_0 = arg_0.a.c;
    global2 = firstLeadingBit(_wgslsmith_add_i32(9612i, u_input.a.x));
    global0 = array<vec2<i32>, 2>();
    global2 = min(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x);
    return select(!select(!select(vec2<bool>(true, arg_0.a.a.x), vec2<bool>(arg_0.a.c, false), arg_0.a.c), vec2<bool>(false, all(vec3<bool>(false, false, true))), arg_0.a.a.wz), select(select(!select(arg_0.a.a.yx, vec2<bool>(arg_0.a.a.x, true), true), select(arg_0.a.d.zx, arg_0.a.a.wy, select(arg_0.a.c, arg_0.a.a.x, true)), vec2<bool>(true, true)), vec2<bool>(arg_0.a.d.x, true), arg_0.a.d.zz), !(u_input.a.x >= ~38973i));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.b.x, -149f, var_0.a.c)))))));
    global0 = array<vec2<i32>, 2>();
    let var_2 = arg_0.a;
    let var_3 = select(abs(~(global0[_wgslsmith_index_u32(18983u, 2u)] | u_input.a.yz)), vec2<i32>(19394i, -1i), func_3(var_0, u_input.b.x, ~firstTrailingBit(vec2<u32>(u_input.b.x, u_input.b.x)))) >> (vec2<u32>(u_input.b.x, _wgslsmith_add_u32(~(12200u >> (u_input.b.x % 32u)), countOneBits(46452u))) % vec2<u32>(32u));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), 1f, var_0.a.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_1, var_2.b.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.b.wxy, _wgslsmith_f_op_vec3_f32(-var_0.a.b.xxy))))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = true;
    global2 = select(-43115i, abs(-4331i), any(select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, true), var_0))) & max(_wgslsmith_mult_i32(u_input.a.x, 1i) >> (u_input.b.x % 32u), u_input.a.x);
    var var_1 = ~select(u_input.b.x, _wgslsmith_div_u32(7675u, _wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x) | ~u_input.b.x), !any(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, var_0, true, true))));
    let var_2 = firstLeadingBit(firstLeadingBit(vec4<i32>(-u_input.a.x, i32(-1i) * -12332i, max(39927i, ~17061i), -21248i >> (0u % 32u))));
    global0 = array<vec2<i32>, 2>();
    return Struct_3(Struct_1(select(select(vec4<bool>(false, true, var_0, var_0), !vec4<bool>(true, var_0, false, false), vec4<bool>(true, true, true, var_0)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, u_input.b.x != 0u, all(vec3<bool>(true, var_0, true)))), vec4<f32>(1227f, _wgslsmith_f_op_f32(min(433f, arg_1.x)), 2335f, 1406f), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(1i, var_2.x, -1i)) > _wgslsmith_div_i32(1i, u_input.a.x), !(!vec3<bool>(var_0, false, true))), vec3<bool>(var_0, select(false, any(vec2<bool>(var_0, var_0)) | any(vec4<bool>(var_0, var_0, true, var_0)), var_0), !all(vec3<bool>(var_0, var_0, var_0))), 1i <= _wgslsmith_mod_i32(~(-21350i), select(var_2.x, 0i, all(vec3<bool>(var_0, var_0, var_0)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(select(vec4<bool>(true, -1513f <= arg_0.a.b.x, false, true), select(vec4<bool>(false, arg_2.d.x, arg_2.c, false), func_4(arg_0.a.b.x, vec3<f32>(arg_3, -1589f, var_0.a.b.x)).a.a, arg_2.c || var_0.a.a.x), !arg_2.d.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.b.x))), _wgslsmith_f_op_f32(-var_1.a.b.x)), reverseBits(u_input.a.x) > (u_input.a.x | (u_input.a.x | -24217i)), vec3<bool>(true, func_4(1000f, _wgslsmith_f_op_vec3_f32(-arg_0.a.b.wyy)).c, false)));
    global2 = -_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -1i, 60568i) & vec4<i32>(18213i, u_input.a.x, u_input.a.x, 46176i), vec4<i32>(0i, u_input.a.x, u_input.a.x, -47306i) | vec4<i32>(u_input.a.x, 1948i, 22076i, u_input.a.x)), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -23240i, u_input.a.x, 1i), vec4<i32>(34775i, u_input.a.x, u_input.a.x, u_input.a.x)) << (~vec4<u32>(39215u, u_input.b.x, 18255u, 65379u) % vec4<u32>(32u))));
    let var_3 = Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_3, var_0.a.b.yyx).a.b.x - _wgslsmith_f_op_f32(1010f - -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.b.xyx)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(var_0.a.b.xxy)), var_1.a.b.xxx, vec3<bool>(true, true, true))))).a);
    return -884f;
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(sign(-583f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2021f, -1083f, -803f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-1628f, 987f, -174f, -849f), true, vec3<bool>(false, false, true))))))), vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), 10503u), firstLeadingBit(~0u), select(u_input.b.x, u_input.b.x, func_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(1000f, 965f, -114f, -229f), true, vec3<bool>(true, true, false))), u_input.b.x, vec2<u32>(u_input.b.x, u_input.b.x)).x), 4294967295u), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-403f, _wgslsmith_f_op_f32(round(527f)), _wgslsmith_f_op_f32(trunc(-540f)), -1335f), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(262f)), _wgslsmith_f_op_f32(step(-1415f, 827f)), any(vec2<bool>(false, false))))))) - 298f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), -185f)))))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(714f, vec3<f32>(-928f, 1000f, -1000f)).a.b.x) + _wgslsmith_f_op_f32(func_1()))));
    let var_1 = u_input.b.x;
    let var_2 = Struct_3(Struct_1(!func_4(1178f, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -439f, -827f), vec3<f32>(673f, -1375f, -399f))).a.a, vec4<f32>(1f, 1f, 1f, 1f), true, vec3<bool>(!any(vec4<bool>(false, true, true, false)), true, false)), vec3<bool>(false, false, all(vec2<bool>(true, true))), select(!(!func_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-1000f, -1530f, 1053f, 207f), true, vec3<bool>(true, false, true))), u_input.b.x, u_input.b.zz).x), false & (any(vec3<bool>(true, false, true)) == all(vec3<bool>(false, true, true))), all(vec3<bool>(true, true, true))));
    let var_3 = vec4<bool>(var_2.a.b.x < _wgslsmith_f_op_f32(floor(337f)), var_2.a.a.x, var_2.b.x, ~min(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(22508u, 30049u, 0u), u_input.b.zxx)) < _wgslsmith_dot_vec2_u32(u_input.b.xw, abs(u_input.b.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.a.b.x - var_2.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.b.x))))), var_2.a.b.x);
}


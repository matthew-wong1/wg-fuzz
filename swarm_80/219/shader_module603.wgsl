struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(1599f, -579f), vec2<f32>(-1000f, 621f)), Struct_1(vec2<f32>(1974f, 807f), vec2<f32>(567f, -860f)), Struct_1(vec2<f32>(868f, 139f), vec2<f32>(661f, 159f)), Struct_1(vec2<f32>(541f, -914f), vec2<f32>(1465f, -1733f)), Struct_1(vec2<f32>(-438f, 791f), vec2<f32>(-1537f, -308f)), Struct_1(vec2<f32>(-679f, 1000f), vec2<f32>(-1061f, 1423f)), Struct_1(vec2<f32>(-420f, 1478f), vec2<f32>(134f, -674f)), Struct_1(vec2<f32>(534f, 679f), vec2<f32>(-946f, -867f)), Struct_1(vec2<f32>(-281f, 1494f), vec2<f32>(762f, 976f)), Struct_1(vec2<f32>(-1039f, 540f), vec2<f32>(1327f, 395f)), Struct_1(vec2<f32>(286f, -1762f), vec2<f32>(412f, 601f)), Struct_1(vec2<f32>(-1000f, 455f), vec2<f32>(199f, -922f)), Struct_1(vec2<f32>(-411f, -318f), vec2<f32>(1278f, -746f)), Struct_1(vec2<f32>(-1810f, 698f), vec2<f32>(-260f, -1874f)), Struct_1(vec2<f32>(820f, 1000f), vec2<f32>(-279f, 1344f)), Struct_1(vec2<f32>(487f, 157f), vec2<f32>(-1070f, 561f)), Struct_1(vec2<f32>(-346f, 1002f), vec2<f32>(-365f, 790f)), Struct_1(vec2<f32>(-330f, -1416f), vec2<f32>(-357f, 203f)), Struct_1(vec2<f32>(494f, 529f), vec2<f32>(1359f, 506f)), Struct_1(vec2<f32>(-1000f, 552f), vec2<f32>(-221f, -518f)), Struct_1(vec2<f32>(1081f, 1000f), vec2<f32>(-682f, -1000f)), Struct_1(vec2<f32>(-879f, 604f), vec2<f32>(-470f, -928f)), Struct_1(vec2<f32>(-2095f, -493f), vec2<f32>(-945f, 601f)), Struct_1(vec2<f32>(-1000f, 287f), vec2<f32>(522f, 1000f)), Struct_1(vec2<f32>(825f, -821f), vec2<f32>(-127f, 1709f)), Struct_1(vec2<f32>(424f, 133f), vec2<f32>(1120f, -1749f)), Struct_1(vec2<f32>(1000f, 1215f), vec2<f32>(-1833f, -633f)));

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<u32> {
    global1 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_add_i32(-66668i, u_input.a);
    var_0 = _wgslsmith_div_i32(-19288i, -arg_1.x | ~(-1i));
    return _wgslsmith_mod_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(58627u, u_input.b, u_input.b, 60184u), vec4<u32>(u_input.b, 6403u, 104342u, u_input.b)) >> ((vec4<u32>(u_input.b, 1u, u_input.b, 22749u) << (vec4<u32>(89393u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(34856u, u_input.b, 14876u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 21687u))), countOneBits(~u_input.b), _wgslsmith_mod_u32(~53228u, 1211u), 59920u), ~vec4<u32>(u_input.b, _wgslsmith_div_u32(35308u, u_input.b), firstTrailingBit(u_input.b), u_input.b & 4294967295u)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 27>();
    let var_0 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1460f, -1000f) * vec2<f32>(-130f, -634f)), _wgslsmith_div_vec2_f32(vec2<f32>(932f, 1033f), vec2<f32>(1441f, 1034f)))))), vec2<f32>(-1716f, _wgslsmith_f_op_f32(f32(-1f) * -430f))), ~_wgslsmith_mult_vec3_i32(u_input.d.xyz, ~(-u_input.d.xzx)));
    global0 = array<Struct_1, 27>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1389f, -410f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-101f, -197f), vec2<f32>(302f, -3038f), true)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(332f, -653f) - vec2<f32>(-750f, 1501f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-802f, -464f) - vec2<f32>(-275f, -818f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, -2158f)), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1048f, 296f))))), vec2<f32>(1f, 1f))));
    let var_2 = abs(-u_input.d.yyy);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(abs(var_0.x), min(~_wgslsmith_mult_u32(134195u, var_0.x), func_3(global0[_wgslsmith_index_u32(4294967295u, 27u)], vec3<i32>(var_2.x, 2147483647i, -30152i)).x), var_0.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 4294967295u) & ~1u, 1u))), 27u)];
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(18295u, 4294967295u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(467f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-588f, 1573f), _wgslsmith_div_f32(363f, -263f)), 1f)));
    let var_1 = func_1(u_input.d.x, reverseBits(u_input.d.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-293f * -1000f), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(abs(var_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-759f + var_0)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), -535f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1188f)), _wgslsmith_f_op_f32(f32(-1f) * -1080f)))));
    var var_2 = ~(vec4<u32>(~u_input.b, ~(~4294967295u), 0u, ~reverseBits(37685u)) << ((countOneBits(~vec4<u32>(u_input.b, 4294967295u, 34570u, u_input.b)) >> (countOneBits(~vec4<u32>(u_input.b, 53188u, u_input.b, 39927u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = array<Struct_1, 27>();
    var var_3 = func_2();
    var var_4 = select(vec2<bool>(true, true), !vec2<bool>(!select(true, true, true), any(vec3<bool>(true, true, true))), true);
    var var_5 = 5652u;
    var_2 = abs(~(~(~vec4<u32>(39672u, u_input.b, u_input.b, 4294967295u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 0u, 54589u), vec4<u32>(33497u, 49298u, 1u, 31185u)) % vec4<u32>(32u)))));
    var_5 = _wgslsmith_div_u32(57609u, (firstTrailingBit(u_input.b) ^ u_input.b) ^ 84733u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~1119i), select(u_input.d, vec4<i32>(u_input.d.x >> (var_2.x % 32u), _wgslsmith_add_i32(9788i, -2147483647i), u_input.d.x, 0i) & select(vec4<i32>(u_input.d.x, u_input.a, u_input.c.x, u_input.c.x) & vec4<i32>(2147483647i, u_input.d.x, 2147483647i, -48433i), u_input.d, false), !select(select(vec4<bool>(var_4.x, var_4.x, false, true), vec4<bool>(true, true, var_4.x, var_4.x), vec4<bool>(var_4.x, false, var_4.x, var_4.x)), select(vec4<bool>(false, var_4.x, var_4.x, var_4.x), vec4<bool>(true, var_4.x, var_4.x, var_4.x), true), true)), vec4<u32>(~var_2.x, 1u, u_input.b, 0u << (u_input.b % 32u)), u_input.d.wyx, vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(exp2(var_1.a.x)), var_3.b.x));
}


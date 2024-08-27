struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(3489f, -802f, 554f, 2364f, 271f, 960f, -756f, -784f, 654f, -2420f, 814f, -208f, 1000f);

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<f32>(-1365f, -868f, -1345f), vec4<i32>(-1i, 50997i, -78730i, -39834i), vec4<bool>(false, true, false, true)), Struct_2(vec3<f32>(163f, -1080f, -325f), vec4<i32>(-28276i, 1i, -9695i, 44270i), vec4<bool>(true, false, true, true)), Struct_2(vec3<f32>(-818f, -1290f, 451f), vec4<i32>(-1i, 42966i, 16334i, 39747i), vec4<bool>(true, false, false, true)), Struct_2(vec3<f32>(822f, 1000f, 1298f), vec4<i32>(1i, i32(-2147483648), 9272i, 0i), vec4<bool>(false, false, true, false)), Struct_2(vec3<f32>(-1244f, 1492f, -1212f), vec4<i32>(-31823i, 20425i, 0i, 38665i), vec4<bool>(true, true, true, false)), Struct_2(vec3<f32>(375f, 255f, 929f), vec4<i32>(0i, 2407i, -2437i, 485i), vec4<bool>(true, false, true, false)), Struct_2(vec3<f32>(831f, 1024f, 1000f), vec4<i32>(-1i, -31584i, 37283i, i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_2(vec3<f32>(-1696f, 1173f, -431f), vec4<i32>(22385i, -1i, 2147483647i, 35004i), vec4<bool>(false, false, false, false)), Struct_2(vec3<f32>(-460f, -150f, 620f), vec4<i32>(-16207i, -5930i, 1i, 1i), vec4<bool>(true, true, true, true)), Struct_2(vec3<f32>(1313f, 1785f, -477f), vec4<i32>(2147483647i, 2147483647i, 1i, -1i), vec4<bool>(true, true, false, true)), Struct_2(vec3<f32>(1662f, -572f, -1262f), vec4<i32>(-21124i, -5308i, 1i, 1i), vec4<bool>(true, false, false, true)), Struct_2(vec3<f32>(706f, -705f, -1000f), vec4<i32>(-59528i, i32(-2147483648), -1i, -1i), vec4<bool>(false, true, false, false)), Struct_2(vec3<f32>(-1000f, -1000f, 272f), vec4<i32>(-13525i, i32(-2147483648), -17483i, 1i), vec4<bool>(true, false, false, true)), Struct_2(vec3<f32>(1862f, 1424f, -269f), vec4<i32>(1i, -1i, 56011i, -78698i), vec4<bool>(false, false, false, true)), Struct_2(vec3<f32>(-179f, 878f, -718f), vec4<i32>(i32(-2147483648), -1i, -26363i, -17740i), vec4<bool>(false, true, false, true)), Struct_2(vec3<f32>(1317f, 1022f, -422f), vec4<i32>(10455i, 44572i, 2147483647i, -1i), vec4<bool>(false, false, true, false)), Struct_2(vec3<f32>(-255f, 751f, -1210f), vec4<i32>(-1i, 23344i, 1i, 1753i), vec4<bool>(true, false, true, false)), Struct_2(vec3<f32>(-1295f, 865f, 488f), vec4<i32>(1i, -1i, -40420i, 4073i), vec4<bool>(true, false, true, true)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = vec3<i32>(u_input.b.x, 55234i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-28681i), countOneBits(-4759i), _wgslsmith_mult_i32(2147483647i, u_input.b.x)) << (~vec3<u32>(u_input.c, 4294967295u, u_input.c) % vec3<u32>(32u)), select(arg_0.b.zyy, vec3<i32>(1i, _wgslsmith_add_i32(-1i, u_input.a.x), abs(u_input.a.x)), arg_0.c.xwx)));
    global1 = array<vec3<bool>, 16>();
    var var_1 = ~vec3<u32>(u_input.c, u_input.c, 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-506f, -141f, arg_0.a.x, _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(var_1.x, 13u)]))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 13u)]))), 245f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1256f + global0[_wgslsmith_index_u32(var_1.x, 13u)]), 2358f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, u_input.c), 13u)])))));
    var var_3 = vec2<bool>(arg_0.c.x == (2147483647i == -abs(var_0.x)), !arg_0.c.x);
    return ~(~(~countOneBits(0u)));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec2<u32>(u_input.c, firstLeadingBit(_wgslsmith_mult_u32(u_input.c ^ u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c)) ^ ~33316u));
    global0 = array<f32, 13>();
    let var_1 = ~var_0.x ^ _wgslsmith_add_u32(4294967295u, func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), abs(vec2<u32>(4525u, u_input.c))), 18u)]));
    var var_2 = Struct_1(all(arg_0), 12429u, global0[_wgslsmith_index_u32(var_1, 13u)], ~firstTrailingBit(reverseBits(vec2<u32>(var_1, 4294967295u))) << (vec2<u32>(abs(~var_0.x), 94715u) % vec2<u32>(32u)));
    var var_3 = vec4<u32>(var_1, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(16333u, var_0.x, var_1)) << (firstTrailingBit(vec3<u32>(var_1, var_0.x, var_1)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(78215u, 0u, 61496u), vec3<u32>(var_2.d.x, 1u, 1u) ^ vec3<u32>(1u, var_1, u_input.c), ~vec3<u32>(var_0.x, 15675u, var_0.x))), 4294967295u, 5301u) << (vec4<u32>(var_2.d.x, var_0.x, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(var_0.x, 4294967295u, var_0.x)), vec3<u32>(70041u, var_0.x, var_2.b) ^ ~vec3<u32>(var_1, var_1, 0u)), var_0.x ^ 15919u) % vec4<u32>(32u));
    return ~func_3(global2[_wgslsmith_index_u32(1u, 18u)]);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = Struct_1(0u == arg_0, ~func_2(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)), global0[_wgslsmith_index_u32(0u, 13u)], vec2<u32>(_wgslsmith_mult_u32(u_input.c, arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.c), reverseBits(vec2<u32>(arg_0, 0u) >> (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))))));
    var var_1 = var_0;
    global1 = array<vec3<bool>, 16>();
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = 4294967295u;
    global1 = array<vec3<bool>, 16>();
    global1 = array<vec3<bool>, 16>();
    return Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1370f, _wgslsmith_f_op_f32(-867f + arg_0.c), global0[_wgslsmith_index_u32(arg_0.d.x, 13u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, global0[_wgslsmith_index_u32(43300u, 13u)])))))), vec4<i32>(_wgslsmith_add_i32(u_input.d.x, firstLeadingBit(~2147483647i)), u_input.d.x, countOneBits(0i), 2147483647i ^ -_wgslsmith_clamp_i32(-11610i, u_input.b.x, -9077i)), select(select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_1, false), select(select(vec4<bool>(arg_0.a, arg_0.a, true, true), !vec4<bool>(arg_1.x, true, true, arg_0.a), vec4<bool>(arg_1.x, arg_1.x, arg_0.a, arg_1.x)), !(!arg_1), !func_1(arg_2)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    let var_0 = 3305i;
    var var_1 = func_4(Struct_1(true, u_input.c, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 13u)])), vec2<u32>(~u_input.c, ~select(50949u, 45966u, false))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), func_1(~52249u)), select(vec4<bool>(var_0 < 61194i, false, all(vec3<bool>(false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true), true)), select(vec4<bool>(true, true, false, any(vec4<bool>(true, true, false, false))), vec4<bool>(func_1(0u), select(true, true, true), global0[_wgslsmith_index_u32(u_input.c, 13u)] == 1529f, select(true, false, true)), vec4<bool>(true, true, true, true))), ~(~0u));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(911f, -611f, 224f, 1888f) * vec4<f32>(-1161f, var_1.a.x, 1007f, var_1.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, global0[_wgslsmith_index_u32(u_input.c, 13u)], -123f, var_1.a.x) * vec4<f32>(-591f, -354f, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(627f, global0[_wgslsmith_index_u32(u_input.c, 13u)], -1320f, -301f), vec4<f32>(-752f, global0[_wgslsmith_index_u32(u_input.c, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 989f), vec4<bool>(false, true, true, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wy, u_input.c, var_1.a.xz, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(57230u, 13u)])), -1259f))), var_1.b.xzy);
}


struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(2022u, 51597u));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-815f, 4294967295u, vec4<bool>(true, true, true, true), vec2<i32>(0i, -17429i)), Struct_1(-1000f, 0u, vec4<bool>(false, true, false, true), vec2<i32>(48629i, 1i)), Struct_1(-256f, 1u, vec4<bool>(true, false, false, false), vec2<i32>(29361i, 22421i)), Struct_1(1245f, 29439u, vec4<bool>(false, false, true, true), vec2<i32>(-58595i, 2147483647i)), Struct_1(396f, 1u, vec4<bool>(true, false, false, false), vec2<i32>(0i, -14505i)), Struct_1(-1430f, 20152u, vec4<bool>(false, false, true, false), vec2<i32>(-79155i, -9285i)), Struct_1(734f, 0u, vec4<bool>(true, true, true, false), vec2<i32>(8317i, -28663i)), Struct_1(1497f, 31983u, vec4<bool>(false, false, true, true), vec2<i32>(-19782i, -86827i)), Struct_1(-290f, 3777u, vec4<bool>(true, false, true, false), vec2<i32>(0i, 0i)), Struct_1(1000f, 23869u, vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), 1i)));

var<private> global2: Struct_2 = Struct_2(Struct_1(584f, 11865u, vec4<bool>(false, false, false, true), vec2<i32>(5382i, -13962i)), 1u, -910f, vec4<bool>(false, true, true, true), -1483f);

var<private> global3: array<f32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(164f)), firstTrailingBit(1u), global2.d, -vec2<i32>(global2.a.d.x, -2147483647i) | -(vec2<i32>(-1i, global2.a.d.x) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), select(abs(~u_input.a), _wgslsmith_clamp_u32(firstTrailingBit(40070u), _wgslsmith_div_u32(arg_0, 46173u) | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global2.a.b, 10249u), vec3<u32>(4294967295u, 58722u, 38252u)), arg_0), global2.a.c.x || (true | global2.d.x)), _wgslsmith_f_op_f32(ceil(-1050f)), vec4<bool>(any(!global2.a.c), select(all(!global2.d.ww), global2.a.c.x, true), !(true & (0u <= arg_0)), !all(global2.a.c.yw)), global2.a.a);
    var var_0 = vec2<f32>(-103f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.a.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2199f), _wgslsmith_f_op_f32(ceil(409f)))))))));
    var var_1 = global2.d.xz;
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~34624u, arg_0), 10u)], reverseBits(~reverseBits(global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(-1306f - -314f)), _wgslsmith_f_op_f32(min(372f, _wgslsmith_f_op_f32(min(-992f, var_0.x)))))), select(!global2.d, vec4<bool>(global2.d.x == true, any(vec2<bool>(var_1.x, var_1.x)), global2.a.c.x, global2.a.c.x), vec4<bool>(var_1.x, all(select(vec3<bool>(false, global2.d.x, global2.a.c.x), global2.d.yxy, false)), true, false)), 1309f);
    var var_3 = vec4<bool>(any(select(vec4<bool>(any(vec3<bool>(global2.a.c.x, true, false)), var_1.x, var_2.d.x, true == global2.d.x), select(vec4<bool>(global2.d.x, false, var_2.a.c.x, true), global2.a.c, global2.a.c.x), true)), true, !(!all(vec4<bool>(false, var_1.x, global2.d.x, true))) & var_1.x, var_2.a.c.x);
    return firstTrailingBit(~(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.b, var_2.a.b, 5015u, 0u), vec4<u32>(49069u, u_input.a, global2.b, global2.b)), 4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = reverseBits(-vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(5796i, -2147483647i, -8615i, arg_0.b.x), vec4<i32>(-2147483647i, global2.a.d.x, -1i, global2.a.d.x)), ~vec4<i32>(arg_0.a.d.x, 1i, arg_0.e.a.d.x, 99372i)), _wgslsmith_div_i32(~(-19626i), arg_0.b.x), global2.a.d.x));
    var var_1 = arg_0.e;
    global3 = array<f32, 13>();
    let var_2 = global2.a.d.x;
    let var_3 = arg_0;
    return ~(~(-vec3<i32>(_wgslsmith_sub_i32(var_0.x, var_1.a.d.x), min(var_3.a.d.x, arg_0.a.d.x), -1i ^ arg_0.a.d.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> vec2<u32> {
    let var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(global2.e + global2.a.a), func_3(26677u), !vec4<bool>(true, false, arg_0.x, global2.d.x), vec2<i32>(global2.a.d.x, global2.a.d.x)), ~(-vec3<i32>(global2.a.d.x, -22013i, 2147483647i)), arg_0.x, any(!arg_0.zx), Struct_2(Struct_1(1060f, 6366u, vec4<bool>(global2.a.c.x, global2.d.x, global2.d.x, false), vec2<i32>(25395i, global2.a.d.x)), _wgslsmith_clamp_u32(arg_1.x, 4294967295u, arg_3), -620f, select(global2.d, vec4<bool>(true, arg_2, arg_2, arg_0.x), true), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(61601u, 13u)] + 564f))), _wgslsmith_sub_vec2_u32(firstLeadingBit(arg_1.yz) >> (_wgslsmith_mod_vec2_u32(arg_1.yz, vec2<u32>(arg_1.x, 4294967295u)) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(abs(0u), 1u)])) ^ reverseBits(vec3<i32>(-6518i, abs(global2.a.d.x), global2.a.d.x));
    global1 = array<Struct_1, 10>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(arg_1.x, 13u)])))), ~44137u, select(global2.a.c, vec4<bool>(all(vec4<bool>(true, true, true, true)), arg_0.x & true, !global2.d.x, true), any(select(vec2<bool>(global2.d.x, arg_2), arg_0.zz, vec2<bool>(arg_2, arg_0.x)))), min(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.zz, vec2<i32>(global2.a.d.x, 15334i), var_0.xz), var_0.xz << (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u))), var_0.xz)), arg_3, _wgslsmith_f_op_f32(f32(-1f) * -146f), !vec4<bool>(global2.a.c.x, true && !arg_0.x, any(vec4<bool>(global2.a.c.x, global2.a.c.x, true, arg_2)), (arg_2 && arg_2) || (global2.d.x | false)), global3[_wgslsmith_index_u32(1u << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(9881u, u_input.a, 9438u, 1u), vec4<u32>(29359u, 27100u, arg_3, global2.a.b)) % 32u), 13u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.c), global3[_wgslsmith_index_u32(arg_3, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(abs(30264u), 13u)], _wgslsmith_f_op_f32(-global2.e), 933f)))));
    global1 = array<Struct_1, 10>();
    return min(~arg_1.zz, arg_1.zz);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 13u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(1u, 1u)], select(global0[_wgslsmith_index_u32(61711u, 1u)], global0[_wgslsmith_index_u32(arg_1.b.b, 1u)], vec2<bool>(arg_1.c, false)))), ~_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(arg_1.d.a.b | arg_0, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), 13u)], global3[_wgslsmith_index_u32(arg_1.d.a.b >> (arg_1.d.a.b % 32u), 13u)]);
    let var_1 = abs(_wgslsmith_mult_vec4_i32(max(-vec4<i32>(2147483647i, global2.a.d.x, global2.a.d.x, arg_1.e), -_wgslsmith_mult_vec4_i32(vec4<i32>(-35423i, -5644i, arg_1.b.a.d.x, -2147483647i), vec4<i32>(global2.a.d.x, -20646i, 24264i, arg_1.e))), vec4<i32>(-6226i, _wgslsmith_mod_i32(-18342i, -arg_1.e), arg_1.e, abs(global2.a.d.x))));
    global3 = array<f32, 13>();
    global2 = arg_1.b;
    var var_2 = all(global2.a.c);
    return _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global2.a.b, 1u)]), min(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(arg_1.b.b, 1u)])), ~vec2<u32>(u_input.a, 10098u)), global2.a.b);
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_1, 10>();
    global3 = array<f32, 13>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.e))) * -567f), global2.c) - _wgslsmith_div_f32(-1076f, global2.a.a));
    var_0 = global3[_wgslsmith_index_u32(func_5(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 17967u, 1u, 6308u), vec4<u32>(u_input.a, 1u, 41820u, global2.b)) | u_input.a), 1u), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~1u, 13u)], _wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global3[_wgslsmith_index_u32(4294967295u, 13u)]) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 13u)] + 378f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(926f + -1358f), u_input.a, !global2.a.c, reverseBits(vec2<i32>(global2.a.d.x, -2147483647i))), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(2550u, 1u)], func_2(global2.d.zwy, vec3<u32>(4294967295u, u_input.a, global2.b), false, 4294967295u)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(39416u, 13u)]), select(select(vec4<bool>(global2.d.x, global2.d.x, global2.a.c.x, true), vec4<bool>(true, global2.d.x, global2.a.c.x, true), false), select(global2.a.c, vec4<bool>(true, global2.a.c.x, false, global2.d.x), global2.a.c), global2.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4556u, 13u)] - global3[_wgslsmith_index_u32(4294967295u, 13u)]) + _wgslsmith_f_op_f32(-1198f * -1000f))), true, Struct_3(Struct_1(global2.a.a, abs(u_input.a), !global2.d, _wgslsmith_mod_vec2_i32(vec2<i32>(global2.a.d.x, global2.a.d.x), global2.a.d)), vec3<i32>(~global2.a.d.x, _wgslsmith_clamp_i32(global2.a.d.x, global2.a.d.x, global2.a.d.x), global2.a.d.x | global2.a.d.x), all(vec4<bool>(false, true, global2.a.c.x, global2.d.x)), global2.a.d.x != _wgslsmith_mod_i32(3061i, -16718i), Struct_2(global2.a, ~0u, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.a.b, 13u)]), select(global2.d, vec4<bool>(true, false, global2.a.c.x, false), vec4<bool>(global2.d.x, false, global2.d.x, false)), _wgslsmith_f_op_f32(-global2.c))), global2.a.d.x), vec3<bool>(true | any(select(global2.a.c.zzw, global2.d.yyy, global2.d.xyw)), global2.a.c.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 13u)]) < 196f)), 13u)];
    var var_1 = false;
    return Struct_2(global2.a, global2.a.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1424f - _wgslsmith_f_op_f32(-global2.e)))))), !global2.a.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a, 13u)], -459f, global2.d.x)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(7387u, 13u)], 1662f)))), global2.e)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5) -> i32 {
    let var_0 = arg_0.a.c.x;
    let var_1 = func_1();
    global1 = array<Struct_1, 10>();
    var var_2 = vec3<u32>(global2.a.b, 55236u, _wgslsmith_mult_u32((arg_0.a.b ^ 4294967295u) << (~global2.b % 32u), 4294967295u)) >> (select(~vec3<u32>(0u, arg_0.b, 1u), ((vec3<u32>(41311u, 0u, global2.a.b) & vec3<u32>(4294967295u, 134731u, 1u)) & vec3<u32>(u_input.a, u_input.a, arg_0.a.b)) ^ vec3<u32>(~var_1.b, 58023u, 1u), arg_1.a.x) % vec3<u32>(32u));
    global3 = array<f32, 13>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 13>();
    let var_0 = vec2<bool>(any(global2.d.xxy), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(f32(-1f) * -251f))) != 646f);
    var var_1 = _wgslsmith_add_i32(reverseBits(1i), _wgslsmith_div_i32(global2.a.d.x, global2.a.d.x));
    global0 = array<vec2<u32>, 1>();
    let var_2 = vec4<i32>(global2.a.d.x, func_6(func_1(), Struct_5(vec4<bool>(false, global2.d.x, global2.a.c.x, true), global1[_wgslsmith_index_u32(global2.b, 10u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(610f, global2.c, global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]))))), ~global2.a.d.x, -15966i) << (_wgslsmith_clamp_vec4_u32(~(abs(vec4<u32>(global2.b, 0u, u_input.a, 1u)) >> (~vec4<u32>(u_input.a, 47766u, 66151u, u_input.a) % vec4<u32>(32u))), countOneBits(~(~vec4<u32>(global2.a.b, u_input.a, global2.b, u_input.a))), vec4<u32>(94291u, ~max(u_input.a, global2.a.b), abs(78403u), 1u)) % vec4<u32>(32u));
    global3 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(25968i, global2.a.d.x, -_wgslsmith_mod_i32(2147483647i >> (u_input.a % 32u), -global2.a.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, i32(-1i) * -1i, 1i), _wgslsmith_div_vec3_i32(var_2.yxx, var_2.yyz) >> (abs(vec3<u32>(21447u, 23013u, 1u)) % vec3<u32>(32u)))));
}


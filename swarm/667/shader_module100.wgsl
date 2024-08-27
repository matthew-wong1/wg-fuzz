struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, false, true, true, true, true, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> vec3<u32> {
    var var_0 = u_input.a.xy;
    let var_1 = vec4<u32>(10549u, _wgslsmith_sub_u32(87886u, var_0.x) << (u_input.b % 32u), u_input.a.x, max(var_0.x, ~reverseBits(var_0.x)));
    var_0 = (_wgslsmith_div_vec2_u32(max(~vec2<u32>(var_0.x, var_1.x), ~vec2<u32>(36728u, var_1.x)), _wgslsmith_mult_vec2_u32(u_input.a.yw << (u_input.a.xy % vec2<u32>(32u)), ~u_input.a.yz)) << (var_1.xy % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(max(vec2<u32>(abs(0u), u_input.b), u_input.a.xw), u_input.a.xz) % vec2<u32>(32u));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(arg_2 >> (~firstLeadingBit(1u) % 32u), 2147483647i), arg_2, min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 1i, ~arg_2), vec3<i32>(3494i, 23386i, 26782i)), 16351i), reverseBits(~max(max(0i, 2147483647i), firstLeadingBit(1i))));
    global0 = array<bool, 10>();
    return abs(abs(_wgslsmith_sub_vec3_u32(~(~var_1.yzx), ~vec3<u32>(u_input.a.x, var_1.x, 1u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_4) -> bool {
    return any(vec2<bool>(arg_0.x, !(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3.d, u_input.b), 10u)])));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = vec4<bool>(!((515f > arg_0.b.x) || global0[_wgslsmith_index_u32(~arg_0.a, 10u)]), select(global0[_wgslsmith_index_u32(min(~7604u << (abs(arg_0.a) % 32u), _wgslsmith_sub_u32(arg_1.x ^ 19928u, 30473u)), 10u)], true, any(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 10u)], global0[_wgslsmith_index_u32(arg_0.a, 10u)], global0[_wgslsmith_index_u32(33032u, 10u)])))), global0[_wgslsmith_index_u32(73206u, 10u)], func_4(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(~arg_1.x, 10u)]), (vec3<u32>(4294967295u, arg_1.x, arg_1.x) | func_3(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 10u)], false), arg_2.x, -21523i)) ^ vec3<u32>(2139u, 12725u, ~44123u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(767f)), _wgslsmith_f_op_f32(sign(-252f)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(38663u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-670f)) - arg_0.b.x)), arg_0));
    let var_1 = abs(_wgslsmith_mod_i32(1i, abs(arg_2.x)));
    let var_2 = arg_0;
    let var_3 = vec3<bool>(all(!select(var_0.wx, select(var_0.zy, vec2<bool>(true, var_0.x), var_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.d, 10u)]))), any(select(!var_0.xxz, select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(arg_1.x, 10u)], true), var_0.wwx), reverseBits(arg_1.x) != ~1u)), !func_4(!(!var_0.xz), vec3<u32>(~var_2.d, var_2.a, firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1559f - arg_0.b.x)), var_2));
    global0 = array<bool, 10>();
    return Struct_3(Struct_1(var_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-955f * -880f), -341f)))), u_input.b));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~(~func_2(Struct_4(arg_2.x, arg_0.a.a, vec4<i32>(-1i, 1i, 1i, -2147483647i), arg_1.x), u_input.a, vec4<i32>(-35212i, -2147483647i, 0i, 57688i)).a.c), 4294967295u), 1u, arg_1.x);
    global0 = array<bool, 10>();
    let var_1 = !(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(arg_0.a.c, 10u)], false), vec3<bool>(global0[_wgslsmith_index_u32(22093u, 10u)], global0[_wgslsmith_index_u32(47803u, 10u)], false), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(45134u, 10u)], global0[_wgslsmith_index_u32(arg_2.x, 10u)]), global0[_wgslsmith_index_u32(0u, 10u)])), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(35079u, 10u)], false, true)), true, true), !select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true), vec3<bool>(true, false, false))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(Struct_4(1u, vec3<f32>(339f, -1054f, 2025f), vec4<i32>(2147483647i, 2147483647i, 8212i, -2147483647i), 80421u), vec4<u32>(u_input.a.x, var_0.x, 1u, 31618u), max(vec4<i32>(27362i, 3333i, -54827i, -21442i), vec4<i32>(6473i, 17729i, -1i, 2147483647i))).a.a.x, -422f, arg_0.a.a.x) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.b, 664f, arg_0.a.a.x), arg_0.a.a))))));
    var_0 = ~(firstTrailingBit(_wgslsmith_add_vec3_u32(arg_1.xzy, countOneBits(vec3<u32>(48633u, 67823u, 1u)))) & vec3<u32>(_wgslsmith_mult_u32(arg_0.a.c, arg_2.x), func_2(Struct_4(4294967295u, arg_0.a.a, vec4<i32>(-58885i, 0i, 1i, -6526i), arg_0.a.c), u_input.a, vec4<i32>(1i, 1i, 1i, 1i)).a.c, 18406u));
    return ~(-2970i);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(abs(1u >> (~arg_1.d.x % 32u)), ~abs(u_input.a.x)), abs(~(~(~vec2<u32>(25263u, 4294967295u)))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, func_5(func_2(Struct_4(4294967295u, vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x), vec4<i32>(arg_0, arg_0, 17696i, -74393i), arg_1.d.x), vec4<u32>(0u, var_0.x, 4294967295u, arg_1.d.x), vec4<i32>(arg_0, arg_1.a.x, arg_1.a.x, arg_0)), vec4<u32>(arg_1.d.x, 1u, arg_1.d.x, 46699u), vec2<u32>(var_0.x, 48108u)), abs(_wgslsmith_div_i32(2147483647i, -2147483647i))) | ~vec3<i32>(firstTrailingBit(0i), -arg_0, 0i | arg_1.e.x), abs(countOneBits(arg_1.e)));
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, arg_1.c.x, arg_1.c.x, arg_1.c.x) + vec4<f32>(-409f, 850f, arg_1.c.x, arg_1.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, 1390f, arg_1.c.x, arg_1.c.x) - vec4<f32>(-328f, 597f, arg_1.c.x, arg_1.c.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 1321f, arg_1.c.x, 392f)))))));
    return Struct_3(func_2(Struct_4(firstTrailingBit(1177u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(455f, arg_1.c.x, -814f)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, arg_1.a.x, arg_0, var_1.x), vec4<i32>(var_1.x, arg_0, arg_1.a.x, 2147483647i)), arg_1.d.x), ~abs(~arg_1.d), -(~_wgslsmith_div_vec4_i32(vec4<i32>(-23362i, arg_1.a.x, arg_1.a.x, 6477i), vec4<i32>(61612i, -16493i, arg_0, var_1.x)))).a);
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_0 = !(!all(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true)) & func_4(vec2<bool>(func_4(vec2<bool>(false, true), vec3<u32>(15273u, u_input.b, 26102u), 657f, Struct_4(arg_0.a.c, vec3<f32>(2063f, 1000f, arg_0.a.a.x), vec4<i32>(2147483647i, arg_1, -1i, -1i), u_input.b)), true), _wgslsmith_clamp_vec3_u32(u_input.a.wzx, u_input.a.ywy, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 43983u, 0u), u_input.a.xzz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) + arg_0.a.a.x), Struct_4(arg_0.a.c, vec3<f32>(944f, 1187f, -244f), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 0i, 7956i, arg_1), vec4<i32>(arg_1, arg_1, arg_1, -50107i)), arg_0.a.c)));
    global0 = array<bool, 10>();
    var var_1 = vec3<bool>(false, true, !(-64739i >= _wgslsmith_div_i32(55599i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), vec2<i32>(arg_1, arg_1)))));
    return arg_0;
}

fn func_7(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = Struct_2(-abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-25550i, -19793i), vec2<i32>(42629i, 2147483647i) << (u_input.a.yx % vec2<u32>(32u)))), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(30569u, 10u)], global0[_wgslsmith_index_u32(arg_0.a.c, 10u)])), vec2<bool>(select(global0[_wgslsmith_index_u32(~arg_0.a.c, 10u)], true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.c, 10u)], global0[_wgslsmith_index_u32(62165u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)]))), true), vec2<bool>(true, _wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(min(arg_0.a.b, 1078f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_0.a.b) * arg_1.zz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -184f))))), u_input.a ^ _wgslsmith_mod_vec4_u32(min(~u_input.a, vec4<u32>(u_input.b, u_input.b, u_input.a.x, 4294967295u)), u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(max(-5019i, 2147483647i), _wgslsmith_clamp_i32(17820i, 88733i, 1i), 0i), vec3<i32>(3418i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 48106i, 1i, 29205i), vec4<i32>(-50689i, 0i, 0i, 2147483647i)), 29447i)) | vec3<i32>(1i, _wgslsmith_add_i32(~(-1i), i32(-1i) * -1i), 0i));
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_1 = arg_0.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(arg_1.zz)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = i32(-1i) * -1i;
    global0 = array<bool, 10>();
    let var_1 = 49942i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, 722f, _wgslsmith_f_op_f32(f32(-1f) * -256f), -286f))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1257f, 191f, global0[_wgslsmith_index_u32(4294967295u, 10u)]))), 1f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(406f, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, -1461f, 1254f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, -144f, var_2.x, var_2.x)))))));
    let x = u_input.a;
    s_output = func_7(func_6(func_1(var_0, Struct_2(~vec2<i32>(-46320i, var_1), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), var_2.wz, ~vec4<u32>(u_input.b, u_input.b, u_input.a.x, 11349u), vec3<i32>(893i, var_1, -2147483647i))), 0i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.wzx) - _wgslsmith_f_op_vec3_f32(var_2.wxy - var_2.zwy)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(var_2.zzw)))) * _wgslsmith_f_op_vec3_f32(-var_2.zzy))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(abs(433f)), 1529f, _wgslsmith_f_op_f32(abs(-1495f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 628f, -254f, 467f) * vec4<f32>(-391f, -386f, 178f, -315f)))))))));
}


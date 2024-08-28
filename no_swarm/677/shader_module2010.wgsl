struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, false);

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 3>;

var<private> global3: array<Struct_3, 12>;

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = max(vec2<i32>(u_input.a, _wgslsmith_mult_i32(-36440i, ~(~1i))), countOneBits(-vec2<i32>(min(16557i, -50988i), max(u_input.a, 51477i))));
    global3 = array<Struct_3, 12>();
    var var_1 = max(vec2<i32>(reverseBits(~(~1i)), u_input.a), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(8401i, var_0.x), -vec2<i32>(-2147483647i, var_0.x)));
    var var_2 = -min(-1i, min(var_1.x, -22920i << (u_input.c % 32u))) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, u_input.c), vec3<u32>(50291u, 1u, u_input.c))) << (u_input.b % 32u), min(abs(8181u), ~0u >> (global1.x % 32u))) % 32u);
    let var_3 = select(vec3<bool>(true, global0.a, select(_wgslsmith_f_op_f32(round(arg_2)) <= _wgslsmith_f_op_f32(arg_2 - arg_2), true, !select(global2[_wgslsmith_index_u32(global1.x, 3u)], global2[_wgslsmith_index_u32(4866u, 3u)], arg_1))), !arg_0, select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 3u)], false, global0.b), select(vec3<bool>(arg_1, true, global2[_wgslsmith_index_u32(global1.x, 3u)]), arg_0, vec3<bool>(true, global0.a, true)), !arg_0), select(!arg_0, vec3<bool>(global0.a, true, false), true), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(0u, global1.x, global1.x))), 3u)]), vec3<bool>(global0.b, true, false), true));
    return min(-2147483647i, u_input.a);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> vec4<i32> {
    global2 = array<bool, 3>();
    global1 = firstTrailingBit(~(_wgslsmith_mod_vec2_u32(arg_1.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 43311u), vec2<u32>(0u, 59389u), arg_1.yy)) | vec2<u32>(min(1u, arg_0), 77378u >> (arg_0 % 32u))));
    let var_0 = any(!select(!vec2<bool>(true, global0.b), select(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 3u)]), !vec2<bool>(global2[_wgslsmith_index_u32(5455u, 3u)], global0.a), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 3u)], global2[_wgslsmith_index_u32(arg_0, 3u)]))), !select(vec2<bool>(false, global2[_wgslsmith_index_u32(arg_1.x, 3u)]), vec2<bool>(global0.b, false), vec2<bool>(global0.a, false))));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(-u_input.a, ~u_input.a)), _wgslsmith_mod_i32(21404i, u_input.a ^ 1i) ^ func_3(vec3<bool>(var_0, global2[_wgslsmith_index_u32(126176u, 3u)], global2[_wgslsmith_index_u32(25888u, 3u)]), all(vec4<bool>(var_0, global2[_wgslsmith_index_u32(316u, 3u)], var_0, true)), -2039f), _wgslsmith_add_i32(min(~u_input.a, abs(-43024i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-12181i, u_input.a, -1i, 40822i)))), select(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(-60274i, u_input.a, u_input.a), vec3<i32>(3308i, 42600i, u_input.a))), vec3<i32>(65686i >> (0u % 32u), ~(-5599i), 1i), vec3<bool>(false, all(vec3<bool>(var_0, true, true)), any(select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0, 3u)], global2[_wgslsmith_index_u32(6560u, 3u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global0.b, false, true), var_0)))));
    var var_2 = -13483i;
    return _wgslsmith_mod_vec4_i32(~min(~firstLeadingBit(vec4<i32>(1i, -1i, var_1.x, u_input.a)), select(firstTrailingBit(vec4<i32>(-1i, -2147483647i, -40555i, 2147483647i)), firstLeadingBit(vec4<i32>(var_1.x, var_1.x, u_input.a, 19096i)), select(vec4<bool>(false, global0.b, global2[_wgslsmith_index_u32(arg_1.x, 3u)], global0.b), vec4<bool>(false, false, true, true), vec4<bool>(true, true, var_0, true)))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a & u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), ~var_1.x, 20220i), ~select(-vec4<i32>(var_1.x, u_input.a, -57167i, 1i), vec4<i32>(-2147483647i, -1i, 2147483647i, 0i), any(vec3<bool>(false, true, true)))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> Struct_4 {
    global0 = Struct_1(true, global2[_wgslsmith_index_u32(global1.x, 3u)]);
    global3 = array<Struct_3, 12>();
    global1 = vec2<u32>(_wgslsmith_mult_u32(global1.x & u_input.b, reverseBits(_wgslsmith_sub_u32(~u_input.b, ~1u))), u_input.d);
    return Struct_4(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1290f * arg_0)))) * arg_0), vec2<bool>(global0.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(select(vec2<u32>(20498u, 1u), vec2<u32>(3955u, 4294967295u), vec2<bool>(global0.b, global0.a)), select(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, global1.x), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 3u)], false))), ~vec2<u32>(0u, 2928u) & ~vec2<u32>(u_input.b, global1.x)), 3u)]), select(vec4<bool>(!global2[_wgslsmith_index_u32(global1.x, 3u)], true, true, true), select(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(42697u, 3u)], global2[_wgslsmith_index_u32(u_input.d, 3u)]), vec4<bool>(true, false, global0.b | global2[_wgslsmith_index_u32(u_input.c, 3u)], !global2[_wgslsmith_index_u32(global1.x, 3u)]), !(!vec4<bool>(true, global0.b, global2[_wgslsmith_index_u32(4532u, 3u)], global0.a))), !(!vec4<bool>(global0.b, true, global0.b, false))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b))));
    global0 = Struct_1(arg_0.c.a, false);
    global1 = max(_wgslsmith_add_vec2_u32(firstTrailingBit(~_wgslsmith_add_vec2_u32(arg_1.xy, arg_1.wz)), ~(~vec2<u32>(4294967295u, global1.x))), reverseBits(select(vec2<u32>(arg_1.x, arg_1.x) >> (arg_1.yx % vec2<u32>(32u)), arg_1.yz, !arg_0.a.zz)) | ~arg_1.wz);
    var var_1 = arg_2;
    global3 = array<Struct_3, 12>();
    return arg_0.b.xz;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: f32) -> Struct_4 {
    global3 = array<Struct_3, 12>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - arg_2) * _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 707f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)))), vec4<i32>(arg_1.x, arg_1.x, u_input.a, func_5(global4[_wgslsmith_index_u32(firstTrailingBit(global1.x), 21u)], _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.c, 5563u, 4294967295u, global1.x)), vec4<u32>(6185u, global1.x, 4294967295u, global1.x), ~vec4<u32>(global1.x, 0u, 1u, global1.x)), Struct_4(func_3(vec3<bool>(global0.b, false, false), true, 422f), -474f, !vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 3u)], true), select(vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(38543u, 3u)], global2[_wgslsmith_index_u32(global1.x, 3u)], arg_0.x), vec4<bool>(false, true, true, arg_0.x), global2[_wgslsmith_index_u32(26397u, 3u)]))).x));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29273u, u_input.b, ~_wgslsmith_add_u32(8479u, 0u)) >> (vec4<u32>(abs(global1.x), ~1u, 51377u, global1.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.b, u_input.d, global1.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1.x, 4294967295u, 0u, u_input.b)), vec4<u32>(global1.x, u_input.d, 1u, 0u))))), 12u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 981f, 1062f, var_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, var_0.b, -1000f, -473f))))), vec4<f32>(-1004f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), var_1.c), !(!(global2[_wgslsmith_index_u32(0u, 3u)] || true)))));
    let var_3 = func_4(_wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(floor(var_1.c))), vec4<i32>(func_3(vec3<bool>(true, true, true), global0.a, _wgslsmith_f_op_f32(floor(558f))), ~arg_1.x, -7964i, ~(-34513i))).d.yz;
    return func_4(var_2.x, _wgslsmith_add_vec4_i32(var_1.a.b, vec4<i32>(-u_input.a, -54325i, _wgslsmith_mult_i32(min(var_1.a.b.x, 1i), arg_1.x), u_input.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.c, -350f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1093f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)))));
    let var_1 = 4294967295u << (global1.x % 32u);
    var var_2 = arg_0;
    let var_3 = func_6(vec3<bool>(arg_1.x, false, !(!any(arg_1.yy))), func_5(Struct_2(!(!arg_2.a.a), max(~arg_2.a.b, arg_2.a.b << (vec4<u32>(u_input.d, 63099u, 34367u, 66755u) % vec4<u32>(32u))), arg_2.a.c), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, var_1, arg_2.b.x), vec4<u32>(67977u, 74717u, 6295u, global1.x)) ^ _wgslsmith_add_vec4_u32(max(vec4<u32>(var_1, 4294967295u, 26767u, var_1), vec4<u32>(u_input.b, 44729u, 4294967295u, arg_2.b.x)), reverseBits(vec4<u32>(var_1, 5652u, var_1, 0u))), func_4(-609f, func_2(arg_2.b.x, abs(vec4<u32>(22085u, global1.x, 4294967295u, 1u))))), -792f);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-964f)), arg_2.c, -687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(arg_2.c, arg_2.a.b).b) * arg_2.c)) + vec4<f32>(var_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_div_f32(1000f, arg_0.x)))), arg_2.c, -1770f));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_4), 1i, select(~vec4<u32>(arg_2.b.x, 2122u, 11941u, var_1), ~vec4<u32>(global1.x, u_input.d, u_input.b, u_input.d) ^ firstLeadingBit(vec4<u32>(60468u, 61557u, var_1, global1.x)), true) << (vec4<u32>(7925u, 4294967295u, ~global1.x, _wgslsmith_sub_u32(20963u, countOneBits(4294967295u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-176f)))), _wgslsmith_f_op_f32(f32(-1f) * -312f), 300f));
    var var_1 = ~firstTrailingBit(vec4<u32>(global1.x, ~70705u, firstTrailingBit(22876u), ~_wgslsmith_sub_u32(u_input.c, 4294967295u)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(591f)) + _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2155f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 1561f, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1237f) - _wgslsmith_f_op_f32(f32(-1f) * -1656f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(step(-136f, var_0.x))))) + var_0.x));
    let var_3 = vec2<i32>(max(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(8303i | u_input.a, 1i & u_input.a)), u_input.a), u_input.a);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, var_0.x, -1000f)), vec3<f32>(_wgslsmith_div_f32(2617f, var_0.x), var_2.x, 1579f))), !select(vec4<bool>(true, any(vec3<bool>(global2[_wgslsmith_index_u32(37899u, 3u)], true, true)), false, var_1.x <= 0u), !(!vec4<bool>(true, false, global0.b, true)), ~var_1.x == ~1u), global3[_wgslsmith_index_u32(global1.x, 12u)]);
}


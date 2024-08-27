struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, false, true, true, false, true, true, true, true, false, true, false, true, false, false, true);

var<private> global1: Struct_3 = Struct_3(0u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    var var_0 = arg_0;
    let var_1 = !select(!global0[_wgslsmith_index_u32(1u, 17u)], true & arg_1, all(vec4<bool>(true, global0[_wgslsmith_index_u32(max(global1.a, 88581u), 17u)], all(vec2<bool>(global0[_wgslsmith_index_u32(33684u, 17u)], arg_3)), true)));
    global0 = array<bool, 17>();
    global1 = Struct_3(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, global1.a)), u_input.c));
    global0 = array<bool, 17>();
    return -2147483647i;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<bool> {
    global0 = array<bool, 17>();
    let var_0 = reverseBits(~vec4<i32>(~(-16406i), ~13080i, -_wgslsmith_div_i32(-19144i, -1i), countOneBits(func_3(Struct_2(vec2<i32>(0i, 16093i)), global0[_wgslsmith_index_u32(10945u, 17u)], vec4<i32>(2147483647i, 21359i, -1i, -1i), false))));
    global1 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 23074u), vec3<u32>(global1.a, arg_0.a, global1.a))) & _wgslsmith_div_u32(4294967295u | u_input.c.x, u_input.a), 122616u));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(select(-302f, arg_1.x, false)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 517f, arg_1.x, -1000f), arg_1) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -396f), vec4<f32>(arg_1.x, arg_1.x, -1000f, arg_1.x), true))))), arg_1, !vec4<bool>(false, all(select(vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 17u)], true, global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 17u)], global0[_wgslsmith_index_u32(arg_0.a, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), true)), global0[_wgslsmith_index_u32(37376u, 17u)], all(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a, 17u)], true), vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 17u)], global0[_wgslsmith_index_u32(17271u, 17u)]))))));
    var var_2 = ~vec2<u32>(u_input.b.x << (global1.a % 32u), 9072u);
    return !vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a & var_2.x, 17u)], all(vec2<bool>(true, false)), true, false || global0[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.wy, vec2<i32>(var_0.x, -49912i)), _wgslsmith_mod_i32(1i, var_0.x), _wgslsmith_div_i32(var_0.x, 1i)) <= 1i, any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a, 17u)], !global0[_wgslsmith_index_u32(0u, 17u)])));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, arg_2.a, arg_2.a, global1.a), vec4<u32>(global1.a, 1u, 2591u, arg_1.x))), 4294967295u), ~1u));
    let var_1 = !(!(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(0i, -12063i)), vec2<i32>(arg_0, arg_0) >> (vec2<u32>(arg_1.x, 68835u) % vec2<u32>(32u))) > arg_0));
    var var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_0, 61549i, 7386i, 10040i)), firstTrailingBit(vec4<i32>(-32740i, 83528i, -1i, 2147483647i))), vec4<i32>(26332i, arg_0, 1i, ~(~arg_0)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0, -22063i, 0i, 18472i), vec4<i32>(arg_0, arg_0, 25120i, 2147483647i)), select(vec4<i32>(-36059i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(0i, 32430i, 2147483647i, arg_0), true) & (vec4<i32>(arg_0, arg_0, arg_0, arg_0) << (vec4<u32>(u_input.a, arg_1.x, 0u, arg_2.a) % vec4<u32>(32u))))), _wgslsmith_div_vec4_i32(vec4<i32>(func_3(Struct_2(vec2<i32>(-2147483647i, arg_0)), arg_3.x, ~vec4<i32>(2147483647i, arg_0, arg_0, 28765i), true), -13849i, arg_0, i32(-1i) * -arg_0), vec4<i32>(-arg_0, 1i, -2147483647i, -2147483647i)));
    global0 = array<bool, 17>();
    var var_3 = max(_wgslsmith_mod_vec3_u32(firstLeadingBit(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.a, 14394u), vec3<u32>(44166u, arg_1.x, u_input.a)))), vec3<u32>(arg_2.a, select(firstTrailingBit(0u), ~arg_1.x, true), min(48638u, arg_1.x))), ~(vec3<u32>(1u >> (arg_2.a % 32u), ~var_0.a, ~u_input.c.x) << (vec3<u32>(var_0.a, ~arg_1.x, ~0u) % vec3<u32>(32u))));
    return Struct_3(u_input.c.x);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1128f, 920f, -233f, -1669f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1532f, -507f, -3099f, -103f) * vec4<f32>(1526f, 582f, -1277f, 864f)))), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1180f, 1695f, -1281f, -157f), vec4<f32>(-1394f, 1000f, -906f, -350f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, -500f, 1742f, -639f))), vec4<f32>(_wgslsmith_div_f32(209f, 379f), _wgslsmith_div_f32(-1295f, -1574f), _wgslsmith_div_f32(262f, -590f), -241f), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(21419u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(global1.a, 17u)]))))));
    global1 = func_4(firstLeadingBit(countOneBits(abs(min(-18063i, -1i)))), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(~u_input.a, firstLeadingBit(0u))) << (_wgslsmith_clamp_vec2_u32(reverseBits(~u_input.b), ~_wgslsmith_add_vec2_u32(vec2<u32>(global1.a, 0u), vec2<u32>(1u, 89124u)), ~u_input.c) % vec2<u32>(32u)), Struct_3(u_input.a), !select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(global1.a, 17u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(44752u, 17u)], global0[_wgslsmith_index_u32(global1.a, 17u)]), global0[_wgslsmith_index_u32(0u, 17u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(96793u, 17u)], true)), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(35865u, 17u)], true), func_2(Struct_3(u_input.a), vec4<f32>(-235f, -1342f, var_0.x, -180f)), true), global0[_wgslsmith_index_u32(0u, 17u)]));
    let var_1 = Struct_1(firstLeadingBit(~u_input.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.a, 44073u), u_input.b), u_input.c, abs(vec2<u32>(global1.a, u_input.a))), countOneBits(reverseBits(u_input.b) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), u_input.c) % vec2<u32>(32u)))), ~((vec3<u32>(2962u, u_input.c.x, u_input.a) & vec3<u32>(u_input.c.x, 0u, global1.a)) & ~vec3<u32>(global1.a, 1u, u_input.b.x)) & firstLeadingBit(abs(vec3<u32>(u_input.b.x, global1.a, 4294967295u))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = var_0.x;
    return Struct_3(var_1.a);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)]);
    let var_1 = max(~arg_0.a | 8123u, 120228u) >> (~0u % 32u);
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_2 {
    global0 = array<bool, 17>();
    let var_0 = Struct_1(50000u, (~vec2<u32>(u_input.a, u_input.b.x) ^ vec2<u32>(global1.a, _wgslsmith_add_u32(0u, global1.a))) >> (u_input.b % vec2<u32>(32u)), ~select(countOneBits(~vec3<u32>(arg_0.a, global1.a, u_input.b.x)), vec3<u32>(_wgslsmith_mod_u32(113102u, u_input.b.x), ~arg_0.a, 22852u), false));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-668f, _wgslsmith_f_op_f32(round(-163f)))) - _wgslsmith_f_op_f32(step(-349f, 1775f)))));
    global1 = arg_0;
    global0 = array<bool, 17>();
    return Struct_2(vec2<i32>(_wgslsmith_add_i32(-arg_2, arg_2), _wgslsmith_div_i32(14777i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global1.a, 17u)];
    let var_1 = -13279i;
    var var_2 = func_6(func_5(func_1()), any(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 17u)], true), vec4<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a, 17u)], false)), global0[_wgslsmith_index_u32(34080u, 17u)] || global0[_wgslsmith_index_u32(u_input.c.x, 17u)], any(vec2<bool>(global0[_wgslsmith_index_u32(global1.a, 17u)], true)), var_1 <= 53731i), all(vec2<bool>(true, global0[_wgslsmith_index_u32(40192u, 17u)])))), min(max(func_3(Struct_2(vec2<i32>(var_1, var_1)), u_input.b.x == 6047u, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1, var_1, 2147483647i), vec4<i32>(var_1, var_1, var_1, 11594i)), true), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, var_1), -vec2<i32>(var_1, var_1))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-48611i, var_1, var_1, var_1), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -2147483647i, 2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, var_1, 52710i, -1i), vec4<i32>(0i, var_1, 2147483647i, 2147483647i), vec4<i32>(2147483647i, var_1, var_1, -50102i))))), _wgslsmith_sub_i32(var_1, var_1));
    let var_3 = select(func_2(Struct_3(0u), vec4<f32>(_wgslsmith_f_op_f32(-224f + _wgslsmith_f_op_f32(floor(-499f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-537f, -152f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(1819f + _wgslsmith_f_op_f32(-2211f * 533f)))).xy, vec2<bool>(global0[_wgslsmith_index_u32(func_5(func_5(func_5(Struct_3(u_input.b.x)))).a, 17u)], 1i != var_2.a.x), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true)));
    let var_4 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec2_i32(var_2.a, firstLeadingBit(select(var_2.a, vec2<i32>(1i, 44035i), global0[_wgslsmith_index_u32(u_input.a, 17u)])))));
    global0 = array<bool, 17>();
    let var_5 = false;
    var var_6 = true;
    var var_7 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(806f, 418f, 697f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(27451u, 34105u, u_input.a, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 49024u, global1.a, 1u), vec4<u32>(u_input.b.x, 0u, 0u, 0u))))), -308f, -349f, -166f);
}


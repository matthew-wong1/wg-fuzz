struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(38256i, 296i, -4162i, -601i);

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global4: Struct_1 = Struct_1(-37521i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    return reverseBits(abs(_wgslsmith_mult_u32(4294967295u, min(29915u, 0u))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    global1 = max(vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.e.a, 14407i, global0.c.a, arg_2.c.a)) | min(vec4<i32>(-6469i, arg_3.x, -1381i, 27085i), vec4<i32>(arg_2.e.a, 0i, global2.a, u_input.a.x)), countOneBits(vec4<i32>(-53381i, 2147483647i, arg_3.x, -49561i)) >> (vec4<u32>(49676u, 172u, 0u, 20629u) % vec4<u32>(32u))), arg_2.b, 32661i, global4.a), ~vec4<i32>(0i ^ global0.b, min(global4.a, i32(-1i) * -7559i), countOneBits(arg_2.c.a), ~(-global0.c.a)));
    let var_0 = Struct_2(arg_2.a, global2.a, Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(global4.a, global2.a), arg_3.x)), arg_2.d, Struct_1(global2.a));
    global4 = var_0.e;
    let var_1 = _wgslsmith_dot_vec3_i32(global1.wxy, firstLeadingBit(vec3<i32>(46244i, countOneBits(_wgslsmith_mult_i32(global1.x, global2.a)), 2147483647i)));
    global1 = vec4<i32>(40482i, select(-1i, abs(var_0.c.a) & -2147483647i, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.d.x, global0.d.x, var_0.d.x, true), arg_2.d.x))), max(abs(-arg_0.a), ~(-1i)), _wgslsmith_mod_i32((_wgslsmith_mult_i32(1i, 1i) << (1u % 32u)) | global0.c.a, ~global2.a | _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_3.x, 2147483647i), global2.a)));
    return firstLeadingBit(0i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = 0i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)))), ~countOneBits(10950i) << (1u % 32u), Struct_1(global1.x), global0.d, global0.e);
    let var_2 = ~(~1u);
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(var_0, 0i, select(var_1.b ^ global4.a, arg_1.a, any(vec2<bool>(false, false)))), arg_0.xzz);
    let var_4 = global2.a;
    return arg_3.a;
}

fn func_2() -> Struct_1 {
    global3 = array<vec2<bool>, 19>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2032f - global0.a)))), func_4(_wgslsmith_clamp_vec4_i32(-vec4<i32>(50494i, 2147483647i, global2.a, 0i), vec4<i32>(func_3(Struct_1(global4.a), vec2<f32>(global0.a, global0.a), Struct_2(global0.a, global1.x, Struct_1(global0.c.a), vec2<bool>(global0.d.x, false), global0.e), vec2<i32>(8562i, 2147483647i)), -4454i, ~global2.a, _wgslsmith_sub_i32(u_input.a.x, global2.a)), min(select(vec4<i32>(global4.a, global2.a, -52208i, global4.a), vec4<i32>(0i, global1.x, global1.x, -1i), vec4<bool>(true, global0.d.x, global0.d.x, false)), vec4<i32>(32306i, global2.a, global1.x, global4.a))), global0.e, _wgslsmith_f_op_f32(floor(-1190f)), Struct_1(~global1.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 17044u), vec3<u32>(85737u, 1u, 0u)) % 32u))), Struct_1(~_wgslsmith_div_i32(~2147483647i, firstLeadingBit(69505i))), vec2<bool>(global0.d.x, true), Struct_1(max(firstTrailingBit(global0.e.a), global2.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, 451f));
    var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -636f)))), ~global2.a, var_0.c, !vec2<bool>(false, true || var_0.d.x), var_0.c);
    var var_2 = Struct_2(var_0.a, ~global4.a, var_0.e, var_0.d, Struct_1(reverseBits(abs(global0.c.a & -2147483647i))));
    return Struct_1(u_input.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global4 = func_2();
    var var_0 = !arg_3.d;
    global4 = arg_3.e;
    var var_1 = firstLeadingBit(1u);
    var var_2 = func_2();
    return Struct_2(-1150f, global2.a, arg_2, !(!global0.d), arg_2);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = !(global0.d.x || (_wgslsmith_add_u32(func_1(vec2<i32>(global2.a, u_input.a.x), global0.e), _wgslsmith_clamp_u32(86796u, 7127u, 70720u)) > ~(~80363u)));
    global3 = array<vec2<bool>, 19>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -410f)), ~_wgslsmith_add_i32(~_wgslsmith_div_i32(u_input.a.x, arg_0.b), -firstTrailingBit(u_input.a.x)), Struct_1(_wgslsmith_add_i32(~global1.x, ~1i)), global0.d, func_2());
    var var_3 = vec3<i32>(-(_wgslsmith_div_i32(-38786i, -arg_1.a) & abs(1i)), func_4(_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1.x, -20018i, -46971i), vec4<i32>(var_2.b, var_0.a, 0i, 29459i)), ~(-vec4<i32>(-55693i, 0i, 2147483647i, 47936i))), Struct_1(_wgslsmith_div_i32(2147483647i, i32(-1i) * -2147483647i)), -709f, arg_0.e), 1i);
    return vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-65556i, var_0.a, u_input.a.x, 6441i)), ~vec4<i32>(global0.c.a, -42509i, 0i, arg_0.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.e;
    let var_0 = vec3<u32>(abs(1u) >> (func_1(vec2<i32>(global4.a, u_input.a.x) | select(vec2<i32>(global0.e.a, global4.a), vec2<i32>(2147483647i, u_input.a.x), global0.d.x), global0.e) % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, func_1(global1.xw, Struct_1(2147483647i))), firstTrailingBit(1u), ~1u), ~23701u), abs(~abs(1u)));
    var var_1 = countOneBits(-1i);
    var var_2 = Struct_1(firstTrailingBit(-global0.e.a) & select(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(global2.a, global4.a)), _wgslsmith_clamp_i32(25472i, 1i, 0i) << (firstLeadingBit(8121u) % 32u), global0.d.x));
    var var_3 = global3[_wgslsmith_index_u32(~(~(~44278u)), 19u)];
    let var_4 = global4.a;
    global1 = firstLeadingBit(func_6(func_5(global0.c, global0.a, func_2(), Struct_2(_wgslsmith_f_op_f32(global0.a + -1263f), global1.x, global0.c, vec2<bool>(var_3.x, var_3.x), func_2())), Struct_1(global1.x)));
    var var_5 = !(!all(global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2147483647i, ~(global2.a << (~var_0.x % 32u))), u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, -974f, -588f, global0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-388f, -1308f, -477f, global0.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-132f, global0.a, 2471f, global0.a) + vec4<f32>(789f, 1063f, 368f, global0.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, -445f, -848f, global0.a)))))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(abs(884f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-236f, global0.a))), var_3.x)), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(select(0u, var_0.x, false), ~var_0.x), 1u));
}


struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: Struct_1;

var<private> global2: f32 = 516f;

var<private> global3: array<f32, 19> = array<f32, 19>(325f, -158f, -437f, -1000f, -1000f, 1370f, -454f, -1411f, 335f, 771f, -1000f, 814f, -1458f, 1000f, 315f, 430f, -934f, 143f, 1891f);

var<private> global4: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, 532f, 485f)), vec3<f32>(global1.a, -1000f, 1703f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a, global3[_wgslsmith_index_u32(global1.c.x, 19u)], global3[_wgslsmith_index_u32(23111u, 19u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global1.c.x, 19u)], global1.a, global1.a) + vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], -1340f, global1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(231f, 160f, global3[_wgslsmith_index_u32(global1.b, 19u)]), vec3<f32>(global3[_wgslsmith_index_u32(21898u, 19u)], 1843f, global1.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(676f, global1.a, global3[_wgslsmith_index_u32(global1.c.x, 19u)])))), select(!vec3<bool>(global0[_wgslsmith_index_u32(global1.b, 24u)] & global0[_wgslsmith_index_u32(1u, 24u)], all(global4[_wgslsmith_index_u32(global1.c.x, 18u)]), global1.a >= -258f), select(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.c.x << (global1.b % 32u), 24u)], global0[_wgslsmith_index_u32(global1.c.x, 24u)] & global0[_wgslsmith_index_u32(10195u, 24u)]), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(global1.b, 24u)]), global0[_wgslsmith_index_u32(59246u, 24u)]), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(global1.b, 24u)], true, false))), vec3<bool>(false, true, true))));
    let var_2 = vec3<u32>(67807u, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.c.x, global1.b, _wgslsmith_add_u32(0u, ~global1.b), ~_wgslsmith_mod_u32(global1.b, global1.c.x)), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, global1.c.x, global1.b, 40632u), vec4<u32>(76220u, global1.c.x, global1.b, 4294967295u), vec4<bool>(true, global0[_wgslsmith_index_u32(59442u, 24u)], true, true)), vec4<u32>(global1.b, 56861u, global1.c.x, global1.b))), countOneBits(~global1.b));
    global0 = array<bool, 24>();
    global1 = Struct_1(global1.a, global1.c.x, abs(countOneBits(vec3<u32>(global1.c.x, var_2.x, 59532u)) >> (_wgslsmith_mod_vec3_u32(var_2, global1.c) % vec3<u32>(32u))) ^ ~max(~global1.c, vec3<u32>(0u, var_2.x, 1u)));
    return global1.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    global0 = array<bool, 24>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.a), ~(~0u), firstTrailingBit(~(~vec3<u32>(47430u, 4294967295u, 0u))));
    global4 = array<vec4<bool>, 18>();
    global4 = array<vec4<bool>, 18>();
    let var_1 = !(!(!select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.b, 24u)], global0[_wgslsmith_index_u32(4461u, 24u)]), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(8853u, 24u)])));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(abs(-1071f)), global1.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, 1830f, global3[_wgslsmith_index_u32(34924u, 19u)])) - vec3<f32>(arg_0.a, -888f, global1.a)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -816f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(step(774f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(308f)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = select(arg_1.c.xz, ~vec2<u32>(1u, ~min(0u, global1.b)), !any(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(11538u, 24u)], global0[_wgslsmith_index_u32(arg_1.b, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.c.x, 24u)], false, global0[_wgslsmith_index_u32(0u, 24u)]), global0[_wgslsmith_index_u32(9029u, 24u)])));
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 82552u), 19u)], 1526f))))));
    var_0 = firstLeadingBit(arg_1.c.zy);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-global1.a), global1.c.x, global1.c), u_input.a.x, Struct_1(_wgslsmith_f_op_f32(round(arg_1.a)), _wgslsmith_clamp_u32(arg_1.c.x, var_0.x, _wgslsmith_mod_u32(~var_0.x, 1u)), vec3<u32>(_wgslsmith_mod_u32(func_3(), _wgslsmith_mult_u32(global1.c.x, 1u)), ~arg_1.c.x, ~(~arg_1.c.x)))));
    return _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, global1.b, global1.c.x), vec3<u32>(arg_1.b, 4294967295u, arg_1.c.x))) & (global1.c << (~countOneBits(arg_1.c) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_clamp_u32(~var_0.x, ~var_0.x, reverseBits(1u)), arg_1.c.x, ~var_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a * -291f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(41285u, 19u)]), select(true, false, false))))), global1.c.x, vec3<u32>(_wgslsmith_add_u32(arg_0.b, 1u), 16284u, ~(arg_0.c.x | (global1.b & 1u))));
    let var_1 = select(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.c.xz, vec2<u32>(var_0.b, arg_0.c.x)), 1u), 40891u) << (4294967295u % 32u), 18u)], select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 24u)], false, true, true)), !select(global4[_wgslsmith_index_u32(global1.c.x, 18u)], global4[_wgslsmith_index_u32(89914u, 18u)], false), true), !select(!global4[_wgslsmith_index_u32(8031u, 18u)], select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1.c.x, 24u)], true), global4[_wgslsmith_index_u32(arg_0.b, 18u)], false), !global4[_wgslsmith_index_u32(var_0.c.x, 18u)]), select(false, true | any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(var_0.b, 24u)], global0[_wgslsmith_index_u32(global1.b, 24u)], false)), any(global4[_wgslsmith_index_u32(global1.c.x, 18u)]) || false)), vec4<bool>(global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(global1.b, arg_0.c.x) | abs(34215u)), 24u)], false, any(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(104707u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(30644u, 24u)], global0[_wgslsmith_index_u32(global1.c.x, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(78007u, 24u)], global0[_wgslsmith_index_u32(var_0.c.x, 24u)]))), (var_0.c.x < select(5353u, 1u, global0[_wgslsmith_index_u32(6300u, 24u)])) | any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(var_0.c.x, 24u)], false))));
    var var_2 = ~select(~firstLeadingBit(vec4<i32>(u_input.b.x, -1i, arg_2.x, u_input.b.x)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<u32>(var_0.c.x, 4294967295u, 4294967295u, var_0.b)) ^ vec4<u32>(1u, 102833u, arg_0.b, arg_0.b)) % vec4<u32>(32u)), vec4<i32>(~_wgslsmith_dot_vec3_i32(arg_1.xwz, vec3<i32>(arg_2.x, 2147483647i, arg_2.x)), u_input.b.x, arg_1.x, -2147483647i), false);
    let var_3 = var_1.x;
    let var_4 = arg_0;
    return var_4;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !all(!(!global4[_wgslsmith_index_u32(arg_3.b, 18u)])) | any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.c.x, 24u)], global0[_wgslsmith_index_u32(arg_0.c.x, 24u)] != false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.c.x, 6120u, arg_1.c.x), 24u)], true), global4[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(arg_3.b)), 24u)]));
    global4 = array<vec4<bool>, 18>();
    global0 = array<bool, 24>();
    var var_1 = _wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1091f, _wgslsmith_f_op_f32(-global1.a)))));
    global1 = Struct_1(-1053f, arg_1.b, global1.c);
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> f32 {
    global3 = array<f32, 19>();
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_mod_u32(arg_0.b, 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global1.c, arg_0.c), arg_0.c)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, ~1i) << (vec4<u32>(global1.b, abs(~arg_0.b), 31505u, select(~0u, func_2(u_input.b, Struct_1(global1.a, 14973u, arg_0.c)).x, true)) % vec4<u32>(32u)), -u_input.a);
    var var_1 = (1u >> ((firstTrailingBit(~global1.b) ^ _wgslsmith_mult_u32(4138u, arg_0.c.x)) % 32u)) ^ ~func_3();
    var var_2 = global3[_wgslsmith_index_u32(1u, 19u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(var_0.a)), ~1u, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.c.zy, vec2<u32>(1u, global1.b) | var_0.c.zx), global1.b, ~var_0.c.x), ~(~vec3<u32>(0u, var_0.c.x, 56410u))));
    return _wgslsmith_f_op_f32(1247f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + 361f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_7(func_6(func_5(Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(68409u, 19u)] - 174f), global1.b, func_2(u_input.b, Struct_1(global3[_wgslsmith_index_u32(global1.c.x, 19u)], 72579u, global1.c))), ~countOneBits(vec4<i32>(25397i, u_input.a.x, u_input.a.x, 2817i)), vec3<i32>(18290i, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x), ~0i)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(9424u, 19u)] - 1000f))), ~12294u, global1.c), u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(1446f, global1.c.x, vec3<u32>(27955u, 21022u, global1.c.x)), u_input.a.x, Struct_1(-132f, 32018u, global1.c))).x), 1u, global1.c << (~vec3<u32>(2622u, 37376u, global1.c.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * global1.a)), false)), global3[_wgslsmith_index_u32(4294967295u, 19u)])), _wgslsmith_f_op_f32(select(global1.a, global1.a, global0[_wgslsmith_index_u32(global1.b, 24u)]))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 521f, 1000f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-498f, -1000f, -631f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, var_0, var_0) + vec3<f32>(global1.a, 1628f, -780f)), vec3<f32>(_wgslsmith_f_op_f32(889f * -656f), global1.a, _wgslsmith_f_op_f32(308f * 396f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a))), -318f, -229f)));
    global4 = array<vec4<bool>, 18>();
    let var_2 = func_6(Struct_1(_wgslsmith_div_f32(1650f, 1000f), _wgslsmith_mult_u32(132288u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(63603u, global1.c.x, 1u), global1.b)), ~vec3<u32>(global1.c.x ^ global1.c.x, 1u, ~global1.c.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1281f), 24933u ^ global1.c.x, _wgslsmith_sub_vec3_u32(func_2(~vec4<i32>(u_input.b.x, u_input.a.x, 17187i, -15554i), func_5(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 19u)], global1.b, global1.c), u_input.b, vec3<i32>(627i, u_input.a.x, -1i))), vec3<u32>(8638u, global1.c.x, 0u))), ~vec3<i32>(i32(-1i) * -2147483647i, 0i, 0i) & (_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), u_input.b.yxx), vec3<i32>(9128i, u_input.a.x, 9094i)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.c.x, 0u, global1.c.x), ~global1.c, global1.c) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(var_1.x, global1.b, vec3<u32>(global1.c.x, 0u, 1u)), _wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.zx), func_5(Struct_1(global1.a, global1.b, global1.c), vec4<i32>(-16934i, u_input.b.x, -847i, -11215i), vec3<i32>(-47074i, u_input.b.x, u_input.a.x)))).x)), 4592u, ~vec3<u32>(~global1.c.x, global1.c.x & 40482u, 1u)));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_5(var_2, u_input.b, vec3<i32>(u_input.a.x, u_input.a.x ^ -1i, u_input.b.x)).a), global1.a));
    return func_5(var_2, -(vec4<i32>(-2147483647i, 1571i, u_input.a.x, 0i) >> (vec4<u32>(0u, _wgslsmith_mod_u32(1u, global1.c.x), var_2.b, global1.b) % vec4<u32>(32u))), firstTrailingBit(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 18>();
    var var_0 = global0[_wgslsmith_index_u32(global1.b, 24u)] || any(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17666u, global1.c.x), global1.c.yy) & _wgslsmith_mod_u32(0u ^ global1.b, ~25325u), 18u)]);
    var var_1 = global1.c.x;
    var var_2 = _wgslsmith_f_op_f32(-global1.a);
    let var_3 = Struct_1(225f, 50887u, global1.c);
    let var_4 = func_1();
    var var_5 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.a)), _wgslsmith_f_op_f32(func_5(var_4, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, 1i, 38159i, 9405i)), u_input.b.wyw).a + _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.x, var_4.b, global1.b), global1.c), 19u)])))), 19741u, firstTrailingBit(var_4.c));
    global3 = array<f32, 19>();
    var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~13860u), 66170u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(var_4, -13717i, var_3)).x))), _wgslsmith_f_op_f32(var_5.a * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(7813u, 19u)]))), reverseBits(select(vec2<i32>(_wgslsmith_add_i32(47084i, u_input.a.x), u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(13906i, 49254i), _wgslsmith_mod_vec2_i32(vec2<i32>(-58981i, 53549i), vec2<i32>(u_input.a.x, -1i))), any(!vec3<bool>(global0[_wgslsmith_index_u32(var_5.b, 24u)], false, true)))), vec4<u32>(var_3.b, 1u, var_5.b, ~6338u) | _wgslsmith_mult_vec4_u32(vec4<u32>(select(0u, 13319u, true), countOneBits(global1.c.x), ~global1.c.x, abs(4144u)), ~vec4<u32>(var_5.c.x, 1u, 103687u, 2613u) & vec4<u32>(var_3.b, 1u, 50365u, 27332u)));
}


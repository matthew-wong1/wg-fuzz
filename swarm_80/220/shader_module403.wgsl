struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true, vec2<u32>(56588u, 41592u), vec4<u32>(0u, 28009u, 0u, 1u), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), Struct_1(false, vec2<u32>(18529u, 0u), vec4<u32>(32166u, 0u, 4294967295u, 1u), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), Struct_1(false, vec2<u32>(1u, 4294967295u), vec4<u32>(4294967295u, 3561u, 36083u, 4294967295u), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), Struct_1(false, vec2<u32>(1u, 50584u), vec4<u32>(1u, 4294967295u, 0u, 12034u), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), Struct_1(false, vec2<u32>(1u, 1u), vec4<u32>(4294967295u, 32232u, 0u, 47769u), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), Struct_1(false, vec2<u32>(19884u, 0u), vec4<u32>(12900u, 22760u, 75515u, 4294967295u), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), Struct_1(false, vec2<u32>(4294967295u, 12934u), vec4<u32>(1u, 4294967295u, 295u, 1u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_1(true, vec2<u32>(0u, 47127u), vec4<u32>(0u, 1u, 78423u, 4294967295u), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), Struct_1(false, vec2<u32>(44854u, 49228u), vec4<u32>(0u, 35932u, 1u, 28364u), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), Struct_1(false, vec2<u32>(13406u, 4294967295u), vec4<u32>(55892u, 0u, 0u, 4294967295u), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), Struct_1(false, vec2<u32>(4294967295u, 12572u), vec4<u32>(1u, 47384u, 1u, 4294967295u), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), Struct_1(false, vec2<u32>(4294967295u, 13005u), vec4<u32>(77650u, 25143u, 1u, 1u), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), Struct_1(false, vec2<u32>(0u, 54467u), vec4<u32>(4294967295u, 4294967295u, 81029u, 16256u), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), Struct_1(true, vec2<u32>(69336u, 63159u), vec4<u32>(40555u, 4294967295u, 95904u, 4294967295u), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), Struct_1(false, vec2<u32>(0u, 1u), vec4<u32>(0u, 0u, 0u, 11922u), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), Struct_1(true, vec2<u32>(6987u, 0u), vec4<u32>(4294967295u, 72514u, 0u, 19426u), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), Struct_1(false, vec2<u32>(6725u, 45017u), vec4<u32>(26361u, 0u, 36891u, 0u), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), Struct_1(true, vec2<u32>(0u, 4294967295u), vec4<u32>(1u, 46177u, 0u, 7953u), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)));

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(109133u, 35190u, 26417u), vec3<u32>(0u, 14264u, 1u), vec3<u32>(19944u, 48543u, 0u), vec3<u32>(4294967295u, 47025u, 4294967295u), vec3<u32>(1u, 21767u, 30590u), vec3<u32>(6682u, 18677u, 4294967295u), vec3<u32>(0u, 0u, 0u));

var<private> global2: array<vec4<u32>, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = vec3<bool>(arg_0.a, !arg_0.d.x, true);
    var_0 = !vec3<bool>(true, !arg_0.d.x & any(vec2<bool>(true, var_0.x)), any(var_0.zz));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-129f, -456f)), -701f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-691f, -1000f)), !arg_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -290f)));
    var var_2 = arg_1 | ~arg_1;
    let var_3 = -704f;
    return arg_0.d;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> vec4<bool> {
    let var_0 = !(!select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)));
    var var_1 = ~(~(vec4<u32>(~u_input.d, 20769u, 0u, arg_2) << (global2[_wgslsmith_index_u32(4294967295u, 3u)] % vec4<u32>(32u))));
    var var_2 = i32(-1i) * -1i;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 376f) * vec2<f32>(arg_1, -1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(418f, arg_1) - vec2<f32>(arg_1, -1000f)), vec2<f32>(arg_1, arg_1), vec2<bool>(true, false))), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-453f, 1362f), vec2<f32>(arg_1, arg_1)))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)));
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, var_1.x), 3u)];
    return select(!(!select(vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x))), func_2(global0[_wgslsmith_index_u32(arg_2, 18u)], var_1.yy), !(!vec4<bool>(true, true, !var_0.x, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(any(arg_1.zyz), arg_0.c.yx, reverseBits(vec4<u32>(max(~u_input.d, _wgslsmith_div_u32(arg_0.b.x, arg_0.b.x)), ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(arg_0.c.x, 7u)], vec3<u32>(arg_0.b.x, arg_0.c.x, 1u)), ~u_input.d, ~14056u & arg_0.b.x)), arg_1, select(!select(vec4<bool>(false, true, arg_1.x, arg_0.d.x), arg_0.d, select(arg_1, vec4<bool>(arg_0.e.x, false, arg_1.x, arg_0.e.x), false)), select(vec4<bool>(true, true, true, true), arg_0.d, u_input.e.x == 1i), func_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-260f + -273f))), firstLeadingBit(1u))));
    let var_1 = Struct_1(arg_0.d.x, firstLeadingBit(arg_0.b), reverseBits(var_0.c), var_0.d, select(vec4<bool>(true, true, any(arg_0.e), true), func_3(-u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1117f), ~min(arg_0.c.x, 24118u)), arg_0.d));
    var var_2 = _wgslsmith_div_i32(1i, ~(~(i32(-1i) * -u_input.e.x)));
    let var_3 = Struct_1(false, arg_0.b, _wgslsmith_mult_vec4_u32(var_0.c, var_0.c), !func_2(Struct_1(true, arg_0.b, select(vec4<u32>(1u, 1u, 23387u, 0u), vec4<u32>(arg_0.b.x, 0u, var_1.b.x, var_1.c.x), true), vec4<bool>(false, var_0.e.x, var_1.e.x, false), !var_1.d), max(vec2<u32>(var_0.b.x, var_0.b.x), ~var_1.b)), var_1.d);
    var var_4 = var_1;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> bool {
    let var_0 = func_4(Struct_1(false, vec2<u32>(firstLeadingBit(4294967295u), 0u), global2[_wgslsmith_index_u32(u_input.b, 3u)], func_3(0i << (0u % 32u), _wgslsmith_f_op_f32(arg_2.x - 385f), u_input.b), vec4<bool>(arg_1.x, arg_0.a, true, true)), !(!func_4(Struct_1(arg_1.x, vec2<u32>(arg_0.b.x, 4294967295u), vec4<u32>(u_input.d, 4294967295u, u_input.b, arg_0.b.x), vec4<bool>(false, arg_0.a, true, arg_0.a), arg_0.e), vec4<bool>(true, false, arg_0.a, arg_1.x)).d)).e.x && arg_0.a;
    var var_1 = arg_1;
    return true;
}

fn func_1() -> bool {
    var var_0 = ~vec2<i32>(_wgslsmith_mult_i32(~(-12729i), _wgslsmith_dot_vec3_i32(u_input.c ^ vec3<i32>(1i, u_input.a.x, u_input.c.x), vec3<i32>(-813i, -55604i, -2147483647i) << (global1[_wgslsmith_index_u32(u_input.b, 7u)] % vec3<u32>(32u)))), _wgslsmith_mult_i32(~u_input.a.x ^ select(-63802i, -1i, false), _wgslsmith_sub_i32(abs(0i), u_input.a.x)));
    var_0 = abs(u_input.a.wx);
    var var_1 = Struct_1(true, ~firstTrailingBit(~vec2<u32>(u_input.d, 0u)) ^ ~(~vec2<u32>(0u, u_input.b) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u))), countOneBits(firstTrailingBit(~(~global2[_wgslsmith_index_u32(1u, 3u)]))), vec4<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), ((2147483647i ^ var_0.x) >> (_wgslsmith_mult_u32(4294967295u, u_input.d) % 32u)) < var_0.x, true | (true | any(vec4<bool>(false, false, false, false)))), select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), !vec4<bool>(any(vec3<bool>(false, true, false)), false, true, any(vec3<bool>(false, true, true))), any(vec4<bool>(true, true, true, true))));
    var var_2 = global0[_wgslsmith_index_u32(93546u, 18u)];
    global2 = array<vec4<u32>, 3>();
    return func_5(func_4(Struct_1((var_1.a | true) && (u_input.d < 4294967295u), var_1.c.xz, var_1.c, func_2(Struct_1(var_2.a, vec2<u32>(8050u, 1u), vec4<u32>(var_2.b.x, 7619u, var_1.b.x, 33825u), var_2.d, vec4<bool>(var_1.e.x, false, false, var_1.d.x)), var_1.b), !select(vec4<bool>(false, true, true, false), var_1.e, vec4<bool>(true, true, var_1.a, var_1.a))), func_3(var_0.x, 1f, _wgslsmith_mult_u32(4294967295u, var_2.c.x ^ 18405u))), var_2.e.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2374f, 1143f, -655f, 811f), vec4<f32>(-1216f, -1082f, -1291f, 998f), func_4(Struct_1(var_1.e.x, vec2<u32>(4294967295u, 33742u), var_2.c, vec4<bool>(var_2.d.x, false, var_1.a, var_1.e.x), var_1.e), vec4<bool>(var_1.d.x, true, var_1.d.x, var_2.e.x)).e.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(260f, -160f, 1000f, 1000f), vec4<f32>(-579f, -1576f, 116f, 395f))), vec4<f32>(202f, -1964f, 1284f, 2057f), !vec4<bool>(true, var_1.d.x, false, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 7>();
    let var_0 = vec4<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), vec2<bool>(u_input.d > u_input.b, true))), !(-_wgslsmith_mod_i32(u_input.c.x, -2147483647i) < 2147483647i), all(vec4<bool>(true, !func_1(), true, false)), true);
    let var_1 = global0[_wgslsmith_index_u32(~u_input.d, 18u)];
    let var_2 = var_0;
    var var_3 = select(vec2<u32>(63655u, ~0u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, countOneBits(~140547u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.b), var_1.b)), false);
    global1 = array<vec3<u32>, 7>();
    global1 = array<vec3<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(85629u, u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 564f), _wgslsmith_f_op_f32(f32(-1f) * -582f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1357f, -1000f)))))), select(_wgslsmith_add_vec4_i32(firstTrailingBit(max(u_input.e, u_input.e)), _wgslsmith_add_vec4_i32(-u_input.a, firstTrailingBit(u_input.e))), select(countOneBits(select(u_input.a, vec4<i32>(2147483647i, 1i, u_input.e.x, 1i), var_0.x)), u_input.a, var_1.d.x), ((var_3.x & 0u) < 1u) & !(var_1.b.x >= 58619u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(817f, 1017f, -148f)) * vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(-1f), 305f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(306f, 579f) * 1f)))));
}


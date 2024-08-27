struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: vec3<u32> = vec3<u32>(75988u, 26375u, 0u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = false;
    let var_1 = select(!vec2<bool>(true, !var_0), select(!(!(!vec2<bool>(var_0, var_0))), !select(vec2<bool>(true, var_0), select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), vec2<bool>(true, var_0)), !vec2<bool>(false, var_0)), var_0), true);
    global1 = ~u_input.b;
    global1 = ~abs(u_input.b);
    return -1i;
}

fn func_2() -> Struct_3 {
    let var_0 = !select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), false), select(false, true && select(true, false, false), true));
    var var_1 = var_0.yw;
    let var_2 = true;
    let var_3 = Struct_3(u_input.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f))), i32(-1i) * -u_input.d);
    var_1 = vec2<bool>(false, var_0.x);
    return Struct_3(-(~u_input.d), -900f, func_3(86980u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec3<f32>, 18>();
    var var_0 = arg_3.b;
    let var_1 = select(arg_1.yxy, arg_1.xxz, true);
    global1 = ~vec3<u32>(arg_2.x, 4294967295u, ~countOneBits(~4294967295u));
    global1 = ~max(vec3<u32>(~(~1663u), max(_wgslsmith_add_u32(4294967295u, arg_0.x), ~73846u), arg_2.x), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(34350u, 88334u, global1.x), u_input.b)));
    return Struct_1(arg_1, u_input.a.x, vec4<f32>(arg_3.b, 1387f, 1000f, _wgslsmith_f_op_f32(-arg_3.b)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> vec4<f32> {
    global0 = array<vec3<f32>, 18>();
    let var_0 = func_4(_wgslsmith_clamp_vec2_u32(firstLeadingBit(select(u_input.b.xx, vec2<u32>(u_input.c, 4294967295u), arg_1.b.a.wy)) << (u_input.b.yx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(32647u, ~u_input.b.x), _wgslsmith_sub_vec2_u32(u_input.b.yz, ~u_input.b.zz)), _wgslsmith_mod_vec2_u32((global1.yx & vec2<u32>(55361u, 32496u)) & u_input.b.yx, min(~vec2<u32>(4294967295u, 0u), global1.zz << (vec2<u32>(global1.x, 550u) % vec2<u32>(32u))))), arg_1.b.a, u_input.b, Struct_3(func_3(_wgslsmith_mult_u32(1u, ~global1.x)), -258f, 2147483647i));
    global1 = vec3<u32>(4316u << (~u_input.b.x % 32u), ~1u, 82092u);
    let var_1 = i32(-1i) * -18317i;
    let var_2 = select(~arg_2, max(arg_2, ~arg_2) ^ abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, arg_2.x, arg_0.b.b, u_input.e.x), vec4<i32>(var_1, var_0.b, -2147483647i, 2147483647i))), !arg_0.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -arg_2, _wgslsmith_sub_vec4_i32(abs(abs(arg_2)), abs(min(vec4<i32>(-1i, -12729i, 0i, arg_1.b.b), arg_2))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(max(arg_0.c, arg_1.b.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), arg_1.c) * arg_0.b.c));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(vec4<bool>(true, true, true, true), func_4(u_input.b.xz, vec4<bool>(true, false, false, true), abs(vec3<u32>(global1.x, u_input.c, 1u)), func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-520f - 1305f), 1f)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, true, false, false), func_2().a, vec4<f32>(-979f, -670f, -867f, 1869f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<i32>(_wgslsmith_div_i32(func_4(vec2<u32>(0u, 0u), vec4<bool>(true, true, true, false), vec3<u32>(0u, u_input.c, 8001u), Struct_3(2147483647i, -262f, u_input.a.x)).b, ~(-1i)), 0i & -u_input.d, _wgslsmith_mult_i32(u_input.a.x, 0i), -min(-41948i, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2168f + 485f) * _wgslsmith_f_op_f32(sign(744f)))))), vec4<f32>(func_2().b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(708f - 1f))), -1091f, 2614f));
    let var_1 = func_4(global1.zy, func_4(reverseBits(~_wgslsmith_clamp_vec2_u32(global1.yy, global1.yy, vec2<u32>(u_input.c, 0u))), select(vec4<bool>(true, true, true, true), func_4(_wgslsmith_mod_vec2_u32(global1.xy, vec2<u32>(4294967295u, 37484u)), vec4<bool>(true, true, true, true), u_input.b, Struct_3(u_input.e.x, 2519f, 17632i)).a, !any(vec3<bool>(true, false, false))), u_input.b, func_2()).a, reverseBits(_wgslsmith_sub_vec3_u32(~reverseBits(u_input.b), u_input.b)), func_2());
    var var_2 = ~(~firstTrailingBit(firstTrailingBit(vec4<u32>(23076u, global1.x, global1.x, 0u)))) | reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 52343u, _wgslsmith_add_u32(global1.x, 0u), global1.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(3864u, global1.x, 4294967295u, 1u), vec4<u32>(78611u, global1.x, global1.x, global1.x))));
    global1 = ~_wgslsmith_add_vec3_u32(var_2.wyw, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(48384u, 58598u, 11084u) >> (vec3<u32>(23228u, var_2.x, 4294967295u) % vec3<u32>(32u))), ~(~14518u), _wgslsmith_mult_u32(83577u, min(4294967295u, 13113u))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(1000f, var_1.c.x, var_0.x, 682f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(557f)), 831f, _wgslsmith_f_op_f32(1011f - var_0.x), -1000f))), _wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, 1415f, 1325f, var_1.c.x) * vec4<f32>(var_1.c.x, -307f, var_0.x, -1318f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(-115f, var_0.x, 768f, 2282f)) + _wgslsmith_f_op_vec4_f32(trunc(var_1.c)))))));
    return all(!vec2<bool>(var_1.b >= _wgslsmith_mult_i32(u_input.a.x, u_input.d), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 18>();
    global1 = u_input.b;
    let var_0 = Struct_2(select(vec4<bool>(true, !any(vec4<bool>(true, false, true, false)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)), true), vec4<bool>(!func_1(), true, !func_1(), func_4(max(global1.zy, u_input.b.xy), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), abs(u_input.b), Struct_3(u_input.e.x, 1050f, 49348i)).a.x), vec4<bool>(all(vec2<bool>(true, true)), false, true, true)), Struct_1(vec4<bool>(true, true, true, true), func_2().c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1794f, -424f, 1153f, 1412f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(151f, 690f, 977f, -1027f) * vec4<f32>(-611f, -1220f, -1286f, 2353f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-233f, 726f, -396f, 822f)))))), 173f);
    global1 = vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(global1.x, u_input.c), global1.x), max(abs(global1.x), u_input.b.x), max(((global1.x << (u_input.b.x % 32u)) | global1.x) ^ select(firstLeadingBit(1u), 1u, true), u_input.b.x >> (1u % 32u)));
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(68895u, (-u_input.a >> (~(vec2<u32>(global1.x, u_input.c) << (global1.xy % vec2<u32>(32u))) % vec2<u32>(32u))) << (vec2<u32>(62400u, 2406u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(max(global1.zx, _wgslsmith_add_vec2_u32(u_input.b.xy, global1.zz)), _wgslsmith_clamp_vec2_u32(u_input.b.yy, ~vec2<u32>(u_input.c, 34099u), vec2<u32>(~0u, ~u_input.b.x)), select(~global1.zx, ~_wgslsmith_div_vec2_u32(u_input.b.zx, global1.zy), var_0.c <= _wgslsmith_f_op_f32(-var_0.b.c.x))), vec4<f32>(-360f, func_4(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global1.x, 4294967295u)), ~vec2<u32>(0u, 58616u)), !(!vec4<bool>(true, true, var_0.b.a.x, false)), u_input.b, func_2()).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1038f))), -219f));
}


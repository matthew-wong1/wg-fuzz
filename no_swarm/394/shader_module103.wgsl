struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_2 = Struct_2(1i, vec2<f32>(387f, -354f), Struct_1(31788u), false, 1u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec3<u32> {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_0 = ~(~(~vec2<u32>(55898u >> (u_input.c.x % 32u), ~arg_0.a)));
    global0 = array<i32, 5>();
    var var_1 = -17377i;
    return ~firstLeadingBit(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(global1.e, 1u, var_0.x)), firstTrailingBit(u_input.c)));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(-1i, vec2<f32>(-603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_3.b.x, global1.b.x)))))), Struct_1(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(27136u, 77493u), vec2<u32>(global1.e, global1.e)), ~(~2006u))), arg_1, ~(~global1.e));
    let var_1 = select(vec2<bool>(false, arg_1), select(!select(!vec2<bool>(global1.d, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), arg_3.a >= -1i), !vec2<bool>(true, 1417u <= var_0.e), select(!select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, arg_3.d), vec2<bool>(true, arg_1)), select(!vec2<bool>(var_0.d, global1.d), vec2<bool>(true, true), false), var_0.b.x >= arg_3.b.x)), !(0i > _wgslsmith_add_i32(var_0.a, global1.a)));
    var var_2 = _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, firstLeadingBit(vec4<i32>(-25287i, -30283i, -2147483647i, global1.a))), abs(vec4<i32>(1i, global1.a, arg_3.a, global0[_wgslsmith_index_u32(var_0.c.a, 5u)])) ^ ~u_input.a)), -select(firstLeadingBit(~vec4<i32>(2147483647i, arg_3.a, -1i, global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), u_input.a, arg_1));
    var var_3 = Struct_3(vec3<f32>(global1.b.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global1.b.x, -1056f)))))), -abs(countOneBits(arg_0.zy)), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 12040u, 21978u) ^ func_3(arg_2, vec2<i32>(-56112i, global1.a), vec3<bool>(true, var_0.d, var_0.d))), vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.x * 122f), _wgslsmith_f_op_f32(sign(var_0.b.x)), arg_3.d)) * -773f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1457f)))), -895f)));
    let var_4 = _wgslsmith_clamp_i32(arg_3.a, 1i, -2147483647i) << (~var_0.e % 32u);
    return arg_3;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = arg_3.b;
    let var_1 = Struct_3(vec3<f32>(arg_3.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1620f + -375f))))), var_0.x), u_input.a.wx, _wgslsmith_div_vec3_u32(~u_input.c, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zy & vec2<u32>(4294967295u, global1.e), u_input.c.yx), 1u, 24545u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(216f))), 628f, _wgslsmith_f_op_f32(-arg_3.b.x)))));
    var var_2 = arg_3.c;
    var var_3 = var_1.a.x;
    let var_4 = ~6350i;
    return arg_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_div_vec3_i32(u_input.a.xww, u_input.a.xzx ^ arg_2.yzy) | ~(-_wgslsmith_mod_vec3_i32(u_input.a.wzy, vec3<i32>(u_input.b.x, 7768i, 57i))), global1.d, func_2(u_input.a.wyz, !all(!vec3<bool>(arg_1.d, arg_1.d, global1.d)), arg_1.c, func_2(max(u_input.a.wxy, abs(vec3<i32>(-2147483647i, arg_2.x, global0[_wgslsmith_index_u32(0u, 5u)]))), true, Struct_1(0u), func_2(max(arg_2.zyz, vec3<i32>(-10243i, -19023i, 0i)), !global1.d, arg_1.c, arg_1))).c, Struct_2(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, arg_1.a, arg_2.x), arg_2), vec4<i32>(-55837i, ~global0[_wgslsmith_index_u32(11373u, 5u)], -6428i, abs(-6811i))), global1.b, Struct_1(countOneBits(34712u)), arg_1.d, 22314u));
    var var_1 = min(~max(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), firstTrailingBit(vec3<u32>(arg_1.c.a, 4294967295u, 1u))), u_input.c & u_input.c) >> ((u_input.c & u_input.c) % vec3<u32>(32u));
    var var_2 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 5u)], -2147483647i);
    var_2 = -1i;
    global0 = array<i32, 5>();
    return Struct_2(u_input.b.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.b.x), vec2<f32>(-725f, _wgslsmith_f_op_f32(round(-1120f))), func_4(func_4(vec2<bool>(false, global1.d), arg_2, arg_1, arg_1), ~arg_2, arg_1, arg_1))))), Struct_1(48545u), global1.d, ~global1.c.a);
}

fn func_1() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global1.b.x), global1.b.x) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -263f, global1.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 579f, 2089f)))))), countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, -9135i), _wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(global0[_wgslsmith_index_u32(global1.e, 5u)], 1i))) >> (~countOneBits(u_input.c.zy) % vec2<u32>(32u))), ~(~(~(~u_input.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_div_f32(global1.b.x, -374f)), -216f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(241f, -359f, -682f) + vec3<f32>(global1.b.x, global1.b.x, global1.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global1.b.x) - vec3<f32>(173f, global1.b.x, global1.b.x)))) - vec3<f32>(1f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global1.b.x)))));
    let var_1 = var_0;
    let var_2 = func_5(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_f32(trunc(-925f)))), _wgslsmith_f_op_f32(var_1.a.x * global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1345f + global1.b.x) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a.x, 495f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_2(1i, var_0.a.zx, global1.c, any(func_4(!vec2<bool>(global1.d, true), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, 0i, 1i, var_1.b.x)), func_2(u_input.a.zxy, false, Struct_1(0u), Struct_2(23067i, global1.b, global1.c, true, var_1.c.x)), func_2(u_input.a.wyw, global1.d, global1.c, Struct_2(u_input.a.x, vec2<f32>(793f, -981f), Struct_1(1u), global1.d, var_0.c.x)))), _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(u_input.c.x, global1.c.a | 0u, _wgslsmith_mult_u32(var_1.c.x, global1.e)))), min(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, 4427i), vec2<i32>(var_0.b.x, 2147483647i)), min(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(-6646i, -1i), ~(-1i))), ~abs(countOneBits(vec4<i32>(-1i, var_1.b.x, 27240i, var_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(sign(global1.b.x))), -417f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1693f)))))));
    let var_3 = select(!select(select(!vec4<bool>(false, true, global1.d, global1.d), select(vec4<bool>(true, var_2.d, var_2.d, true), vec4<bool>(var_2.d, false, true, true), vec4<bool>(false, true, global1.d, var_2.d)), false), select(!vec4<bool>(global1.d, false, false, global1.d), select(vec4<bool>(global1.d, false, false, global1.d), vec4<bool>(var_2.d, global1.d, false, true), false), vec4<bool>(global1.d, var_2.d, false, true)), true), !(!vec4<bool>(true, false, 530f >= var_0.d.x, global1.d)), select(select(!select(vec4<bool>(global1.d, var_2.d, var_2.d, true), vec4<bool>(global1.d, global1.d, true, global1.d), global1.d), vec4<bool>(false, true, var_2.d, false), select(select(vec4<bool>(global1.d, global1.d, global1.d, false), vec4<bool>(false, false, var_2.d, false), var_2.d), vec4<bool>(var_2.d, var_2.d, var_2.d, var_2.d), vec4<bool>(global1.d, var_2.d, false, true))), vec4<bool>(false, _wgslsmith_f_op_f32(-var_2.b.x) != -1487f, any(vec4<bool>(global1.d, false, false, var_2.d)), !(!var_2.d)), all(!(!vec4<bool>(true, global1.d, false, false)))));
    let var_4 = func_2(reverseBits(-vec3<i32>(var_1.b.x, var_1.b.x, 2147483647i) | max(vec3<i32>(var_1.b.x, -5476i, var_1.b.x) & u_input.a.wyz, u_input.a.zwy)), var_0.d.x > var_2.b.x, Struct_1(51445u), func_2(firstTrailingBit(~(~vec3<i32>(1i, 1i, 2147483647i))), func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -928f, var_2.b.x, var_2.b.x) + vec4<f32>(-654f, var_1.a.x, var_0.d.x, -1000f)))), Struct_2(_wgslsmith_sub_i32(-38782i, u_input.b.x), _wgslsmith_f_op_vec2_f32(abs(var_2.b)), Struct_1(var_0.c.x), global1.d, 61774u), vec4<i32>(_wgslsmith_add_i32(242i, global0[_wgslsmith_index_u32(713u, 5u)]), -1i, _wgslsmith_add_i32(29632i, global1.a), func_2(u_input.a.wwz, global1.d, Struct_1(var_1.c.x), Struct_2(0i, vec2<f32>(-267f, -1835f), Struct_1(var_1.c.x), false, var_0.c.x)).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))).d, func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1313f, -699f, global1.b.x, 665f) + vec4<f32>(453f, var_2.b.x, -129f, -439f)) - vec4<f32>(global1.b.x, -1529f, 612f, global1.b.x)), var_2, ~select(vec4<i32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], var_0.b.x, 36418i), u_input.a, var_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1355f, 290f, 541f))))).c, Struct_2(-select(var_1.b.x, global1.a, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-579f, var_1.a.x) - var_1.a.yz) - _wgslsmith_f_op_vec2_f32(-var_0.a.xz)), func_5(vec4<f32>(-2132f, var_1.d.x, -258f, var_2.b.x), var_2, select(vec4<i32>(-1i, -33936i, global1.a, u_input.a.x), u_input.a, var_3), _wgslsmith_f_op_vec3_f32(floor(var_0.a))).c, _wgslsmith_dot_vec4_i32(vec4<i32>(79664i, -571i, 0i, 17821i), vec4<i32>(-54918i, 31795i, var_0.b.x, -2147483647i)) > -u_input.b.x, func_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d.x, 657f, 1889f, var_2.b.x))), Struct_2(var_1.b.x, var_0.d.yy, Struct_1(var_2.e), var_2.d, var_2.e), u_input.a, _wgslsmith_f_op_vec3_f32(var_1.a - var_0.d)).e))).c;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~(~13485i)), ~(-(~(var_1.b | u_input.a.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    global1 = Struct_2(_wgslsmith_sub_i32(func_1(), global1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.b.x - -680f), global1.b.x) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(447f, -121f)))))), global1.c, global1.d, 63496u);
    let var_0 = any(!select(vec4<bool>(true, -75241i <= global1.a, true, true), vec4<bool>(true, global1.d, 39668u <= global1.e, true), 114f > _wgslsmith_f_op_f32(max(-1588f, global1.b.x))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(global1.e), 5u)], global1.b, Struct_1(_wgslsmith_add_u32(global1.e, abs(_wgslsmith_div_u32(u_input.c.x, 1u)))), false, global1.c.a);
    var_1 = Struct_2(-1i | select(_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.a, global0[_wgslsmith_index_u32(1u, 5u)]), vec2<i32>(u_input.b.x, -4138i) >> (u_input.c.zz % vec2<u32>(32u))), -(~var_1.a), var_1.d), var_1.b, Struct_1(u_input.c.x), func_2(_wgslsmith_sub_vec3_i32(u_input.a.zxx, vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_1.c.a), 5u)], 2147483647i, -46857i)), global1.d, var_1.c, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -919f, -1378f, global1.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1593f, global1.b.x, 628f, global1.b.x))), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -206f) * vec4<f32>(global1.b.x, var_1.b.x, global1.b.x, global1.b.x)), func_2(u_input.a.wzw, var_0, var_1.c, Struct_2(global0[_wgslsmith_index_u32(39612u, 5u)], global1.b, Struct_1(var_1.c.a), var_1.d, var_1.e)), u_input.a >> (vec4<u32>(79052u, 18200u, 2287u, 0u) % vec4<u32>(32u)), vec3<f32>(-2572f, global1.b.x, 115f)), (vec4<i32>(0i, global0[_wgslsmith_index_u32(4482u, 5u)], global1.a, global0[_wgslsmith_index_u32(global1.e, 5u)]) << (vec4<u32>(96955u, global1.c.a, var_1.e, var_1.e) % vec4<u32>(32u))) | ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2189f, 405f, 980f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, var_1.b.x, global1.b.x) + vec3<f32>(-858f, -567f, global1.b.x))))).d, 12032u);
    var_1 = func_2(vec3<i32>(1i, _wgslsmith_mod_i32(min(_wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(var_1.a, u_input.a.x, var_1.a)), -2147483647i), _wgslsmith_add_i32(global1.a, 1i)), u_input.b.x), all(func_4(select(select(vec2<bool>(var_0, var_1.d), vec2<bool>(var_0, global1.d), false), vec2<bool>(global1.d, false), all(vec2<bool>(var_1.d, false))), select(vec4<i32>(global0[_wgslsmith_index_u32(1u, 5u)], u_input.a.x, u_input.b.x, global1.a), u_input.a, vec4<bool>(global1.d, global1.d, true, false)) ^ u_input.a, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(137f, 1579f, global1.b.x, var_1.b.x) * vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, global1.b.x)), Struct_2(global0[_wgslsmith_index_u32(global1.c.a, 5u)], vec2<f32>(var_1.b.x, 153f), var_1.c, var_1.d, var_1.c.a), ~u_input.a, vec3<f32>(-191f, 173f, -1247f)), func_2(vec3<i32>(-11164i, 7438i, -2147483647i), 1000f <= global1.b.x, func_2(vec3<i32>(-1i, var_1.a, var_1.a), global1.d, Struct_1(u_input.c.x), Struct_2(0i, vec2<f32>(var_1.b.x, 959f), Struct_1(u_input.c.x), true, global1.e)).c, Struct_2(global0[_wgslsmith_index_u32(global1.e, 5u)], vec2<f32>(global1.b.x, 1366f), Struct_1(34815u), var_0, 4294967295u)))), global1.c, func_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.a.zwy, u_input.a.wzx), abs(vec3<i32>(-1i, 1i, 2147483647i)) ^ vec3<i32>(-2147483647i, var_1.a, -1i), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], var_1.a), vec3<i32>(-73395i, 1i, 15618i)))), global1.a >= (~var_1.a ^ (global1.a | global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), var_1.c, Struct_2(-2147483647i, func_5(vec4<f32>(-769f, 958f, var_1.b.x, 325f), Struct_2(-21993i, vec2<f32>(895f, -236f), global1.c, true, 1u), ~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-859f, var_1.b.x, 229f))).b, Struct_1(~u_input.c.x), !global1.d, 0u)));
    let var_2 = select((_wgslsmith_mod_u32(min(global1.e, 4294967295u), ~global1.c.a) & 3391u) <= 1u, true, true || any(select(select(vec2<bool>(true, global1.d), vec2<bool>(var_1.d, global1.d), vec2<bool>(global1.d, global1.d)), vec2<bool>(var_0, var_1.d), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 527f, global1.b.x) - vec3<f32>(-828f, -437f, global1.b.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-989f, var_1.b.x, var_1.b.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(var_1.b.x * -535f), _wgslsmith_f_op_f32(trunc(var_1.b.x))))), u_input.a.yy >> (max(u_input.c.xx, vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)));
}


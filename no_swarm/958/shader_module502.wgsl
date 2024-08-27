struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<bool>(true, true, false);
    var var_1 = reverseBits(global1.b.x);
    let var_2 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(global1.b.x, 1u), 19668u, _wgslsmith_clamp_u32(u_input.c.x, u_input.d, _wgslsmith_div_u32(1u, u_input.c.x >> (45859u % 32u)))));
    global1 = Struct_2(~(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 59155i, u_input.a.x), global1.a) >> (_wgslsmith_mult_vec3_u32(~var_2, vec3<u32>(34223u, u_input.d, u_input.c.x)) % vec3<u32>(32u))), var_2.zx, -_wgslsmith_sub_i32(~global1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, 0i), u_input.a) | abs(2147483647i)));
    var var_3 = Struct_2(vec3<i32>(global1.c, -14826i, 1i), global1.b, ~23799i);
    return ~select(vec4<u32>(~select(50510u, 3729u, var_0.x), 4294967295u, 0u, min(_wgslsmith_dot_vec2_u32(var_3.b, vec2<u32>(var_2.x, 0u)), 82836u)), ~(~select(vec4<u32>(var_2.x, var_3.b.x, 1421u, 25735u), vec4<u32>(u_input.c.x, global1.b.x, var_3.b.x, 45177u), vec4<bool>(true, true, false, var_0.x))), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<u32>) -> vec4<i32> {
    global0 = global1.b.x;
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~countOneBits(arg_0.www), ~(arg_0.zxw >> (arg_0.yww % vec3<u32>(32u)))) >> (arg_2.wyy % vec3<u32>(32u)), select(firstTrailingBit(arg_0.xyw), vec3<u32>(~21548u, 72724u, u_input.c.x), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)))) >> ((~(vec3<u32>(global1.b.x, u_input.d, global1.b.x) >> (vec3<u32>(u_input.d, arg_2.x, 38296u) % vec3<u32>(32u))) & func_3().wzw) % vec3<u32>(32u)));
    let var_1 = Struct_3(Struct_2(vec3<i32>(_wgslsmith_mod_i32(-global1.c, ~256i), u_input.a.x, -(global1.a.x & global1.c)), _wgslsmith_mult_vec2_u32(~u_input.c, vec2<u32>(abs(arg_0.x), firstTrailingBit(arg_1))), -_wgslsmith_clamp_i32(0i, u_input.b, _wgslsmith_clamp_i32(u_input.b, -1i, -30318i))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1959f, 428f, -1449f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-588f, -336f, -956f), vec3<f32>(626f, -123f, 1348f)))))), any(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), all(vec3<bool>(true, true, true)))));
    let var_2 = var_1.c;
    global0 = var_0.x;
    return _wgslsmith_mult_vec4_i32(abs(~_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.a.a.x, var_1.a.c, u_input.a.x, var_1.a.a.x), vec4<i32>(global1.c, u_input.a.x, 1i, u_input.a.x) << (vec4<u32>(arg_0.x, var_0.x, 86967u, arg_0.x) % vec4<u32>(32u)))), ~vec4<i32>(select(var_1.a.a.x, -global1.a.x, true), -73196i, global1.a.x, ~firstTrailingBit(var_1.a.a.x)));
}

fn func_2() -> i32 {
    global0 = (firstLeadingBit(global1.b.x) & _wgslsmith_sub_u32(~(~u_input.c.x), ~1u)) << (8441u % 32u);
    let var_0 = global1.b.x;
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b, 1i, u_input.b, 0i), ~vec4<i32>(-2147483647i, -2147483647i, 3733i, global1.c) >> (vec4<u32>(~75152u, 1u, global1.b.x, u_input.d << (0u % 32u)) % vec4<u32>(32u)), func_4(func_3(), 4294967295u, ~(~vec4<u32>(4294967295u, 1u, 0u, 11026u)))), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-38657i, -9761i, 2785i, u_input.a.x), vec4<i32>(global1.a.x, 44013i, global1.c, -21967i) >> (vec4<u32>(24931u, 15714u, global1.b.x, 18865u) % vec4<u32>(32u))) >> (73101u % 32u), firstTrailingBit(i32(-1i) * -2147483647i), max(abs(6650i), abs(global1.a.x)), ~global1.a.x));
    let var_2 = _wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(63710i & _wgslsmith_dot_vec3_i32(vec3<i32>(-9739i, var_1.x, global1.c), u_input.a), -_wgslsmith_clamp_i32(2147483647i, var_1.x, 2147483647i), reverseBits(_wgslsmith_mult_i32(5672i, global1.c))) << (1u % 32u));
    var var_3 = Struct_3(Struct_2(reverseBits(vec3<i32>(_wgslsmith_sub_i32(var_2, var_1.x), -12872i, -2147483647i)), ~global1.b, (i32(-1i) * -global1.c) & countOneBits(1i >> (0u % 32u))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2518f, -1438f, -504f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-848f, 301f, -1118f), vec3<f32>(1000f, -1851f, -1000f))))))), !all(vec2<bool>(true, true)));
    return max(~(max(_wgslsmith_dot_vec2_i32(global1.a.yz, var_1.yy), 61022i) ^ abs(var_3.a.a.x)), u_input.b);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    global0 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, global1.b.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, arg_0.a.b.x, 4294967295u), vec3<u32>(u_input.d, global1.b.x, 16467u)), u_input.c.x) ^ abs(u_input.d), _wgslsmith_sub_u32(0u, ~(4294967295u >> (arg_0.a.b.x % 32u))));
    let var_0 = arg_0;
    global1 = arg_0.a;
    global1 = Struct_2(reverseBits(vec3<i32>(-arg_1, _wgslsmith_add_i32(~u_input.a.x, -1i), ~min(global1.c, arg_1))), vec2<u32>(4294967295u, u_input.d >> (~1u % 32u)), func_2());
    global0 = 4294967295u;
    return Struct_2(vec3<i32>(1i, -1i, arg_0.a.a.x), max(countOneBits(vec2<u32>(~7536u, 2362u & u_input.d)), ~vec2<u32>(9646u, var_0.a.b.x) & ~min(vec2<u32>(76883u, global1.b.x), u_input.c)), global1.c);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1092f))))) * -1216f);
    let var_1 = 7096u & ~(u_input.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(23361u, 0u, 1u, 1u) >> (vec4<u32>(1u, 0u, u_input.c.x, global1.b.x) % vec4<u32>(32u)), ~vec4<u32>(arg_3.b.x, 36509u, u_input.c.x, u_input.d)));
    var var_2 = ~(~53931u);
    global0 = global1.b.x;
    var var_3 = _wgslsmith_f_op_f32(-1135f + var_0);
    return func_1(Struct_3(func_1(Struct_3(Struct_2(vec3<i32>(-2147483647i, u_input.a.x, 0i), arg_3.b, -13935i), Struct_1(vec3<f32>(var_0, -2725f, -1000f)), arg_1), _wgslsmith_sub_i32(select(1407i, 36201i, arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_3.a.x, 0i, -52382i), vec4<i32>(arg_3.a.x, arg_2.x, u_input.b, -29087i))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(142f, var_0, var_0) * vec3<f32>(var_0, -194f, var_0)))), Struct_1(vec3<f32>(var_0, var_0, -1116f)), any(select(vec4<bool>(arg_1, true, true, false), vec4<bool>(true, true, true, true), select(arg_0, vec4<bool>(arg_1, false, arg_1, false), arg_0)))), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(func_4(vec4<u32>(global1.b.x, var_1, var_1, 306u), 10974u, vec4<u32>(1u, 4294967295u, global1.b.x, 1u)).xx, -vec2<i32>(u_input.a.x, arg_3.a.x)), vec2<i32>(global1.a.x, _wgslsmith_dot_vec3_i32(arg_3.a, u_input.a)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -706f, var_0))) + vec3<f32>(var_0, _wgslsmith_f_op_f32(step(var_0, 547f)), -580f))));
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(arg_1.b.a);
    let var_1 = firstLeadingBit(u_input.d);
    let var_2 = Struct_3(arg_1.a, arg_1.b, false);
    global0 = ~(~(global1.b.x << (39868u % 32u)));
    global0 = u_input.c.x ^ ~(var_1 & global1.b.x);
    return firstTrailingBit(firstTrailingBit(arg_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    global1 = Struct_2(func_6(-(global1.a.x ^ -24619i), Struct_3(func_5(vec4<bool>(true, true, false, true), all(vec4<bool>(false, false, false, true)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(global1.a.x, 70872i)), func_1(Struct_3(Struct_2(global1.a, u_input.c, u_input.b), Struct_1(vec3<f32>(-747f, -1000f, 625f)), true), u_input.b, Struct_1(vec3<f32>(125f, 608f, -439f)))), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-245f, -2100f, 1110f)))), select(true, true, true))), _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(4294967295u | u_input.d), ~_wgslsmith_mult_u32(u_input.c.x, global1.b.x)), ~u_input.c), u_input.a.x);
    var var_0 = Struct_3(func_1(Struct_3(func_5(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), true, min(global1.a.yy, vec2<i32>(-11783i, -17621i)), func_1(Struct_3(Struct_2(u_input.a, global1.b, 1i), Struct_1(vec3<f32>(1937f, -1000f, -1081f)), true), global1.a.x, Struct_1(vec3<f32>(-611f, 1231f, -460f)))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(368f, 177f, 148f)))), any(vec2<bool>(true, false))), global1.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(628f, 419f, 1611f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(275f, -2954f, -765f))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-273f, 3124f, -765f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, 207f, -938f) - vec3<f32>(2429f, -438f, -722f)))))), true);
    var var_1 = 1u;
    var_0 = Struct_3(func_1(Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, var_0.b.a.x, -1139f) - vec3<f32>(var_0.b.a.x, 173f, -1343f))), !var_0.c || (false | var_0.c)), ~49688i, Struct_1(_wgslsmith_f_op_vec3_f32(round(var_0.b.a)))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.b.a * var_0.b.a)), any(!vec4<bool>(var_0.c, !var_0.c, true | var_0.c, any(vec2<bool>(var_0.c, false)))));
    global1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec4<f32>(var_0.b.a.x, 1377f, var_0.b.a.x, var_0.b.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-348f, var_0.b.a.x, 340f, var_0.b.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a.x, -205f, false))), 646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), 1008f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f)), _wgslsmith_f_op_f32(min(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -513f))), max(reverseBits(~(vec4<u32>(1u, 4294967295u, global1.b.x, var_0.a.b.x) ^ vec4<u32>(76919u, global1.b.x, u_input.d, 104353u))), ~abs(~vec4<u32>(14586u, 4294967295u, global1.b.x, 1u))));
}


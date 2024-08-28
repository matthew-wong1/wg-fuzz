struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u), 12198u, -43028i, vec4<u32>(46855u, 4294967295u, 62158u, 1591u));

var<private> global1: Struct_3 = Struct_3(vec2<u32>(4294967295u, 32040u), Struct_2(0u, vec3<i32>(2147483647i, 1i, -1i), 1i), 42622u, Struct_1(vec2<u32>(1u, 75325u), 11617u, -24670i, vec4<u32>(70210u, 4294967295u, 24291u, 1u)), Struct_1(vec2<u32>(4294967295u, 0u), 17811u, -38726i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 37724u)));

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_4(global0.d << (global0.d % vec4<u32>(32u)), vec4<bool>(true, true, true, any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    var var_1 = global0.c;
    global2 = false;
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1488f)), -805f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(arg_0 * arg_0))));
    return -_wgslsmith_add_i32(-74442i, firstTrailingBit(u_input.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> vec2<u32> {
    global1 = Struct_3(global1.e.a, Struct_2(global0.a.x, -global1.b.b, _wgslsmith_div_i32(-global1.e.c, -func_3(-969f, Struct_2(33249u, vec3<i32>(-20237i, 42021i, 1i), u_input.a.x)))), _wgslsmith_sub_u32(global0.b, 0u), global1.d, global1.e);
    let var_0 = arg_2.a.wzw;
    let var_1 = vec4<i32>(global0.c | _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.yzx & global1.b.b), reverseBits(-vec3<i32>(u_input.a.x, u_input.a.x, 15055i))), u_input.a.x, firstLeadingBit(firstLeadingBit(1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, ~(-2147483647i)), select(abs(vec2<i32>(u_input.a.x, global0.c)), vec2<i32>(u_input.a.x, global0.c), vec2<bool>(true, true))));
    var var_2 = Struct_3(vec2<u32>(reverseBits(1630u), 70515u), global1.b, 3341u, global1.e, global1.d);
    global2 = !all(!vec3<bool>(true, true, arg_3));
    return min(global0.a, _wgslsmith_add_vec2_u32(var_0.yx, var_0.yx));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    var var_0 = any(vec4<bool>(arg_1.x, true, !(!arg_1.x & all(vec3<bool>(arg_1.x, true, arg_1.x))), arg_1.x));
    var var_1 = ~(~global0.d.yzy);
    global2 = true;
    global1 = arg_0;
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1393f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-786f, -1663f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(357f - -1000f))), 1f))));
}

fn func_1() -> i32 {
    global2 = false;
    global2 = true;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2337f, _wgslsmith_f_op_f32(func_4(Struct_3(func_2(vec3<u32>(0u, global1.b.a, global0.b), false, Struct_4(global1.e.d, vec4<bool>(false, false, true, true)), false), global1.b, 4294967295u, Struct_1(vec2<u32>(global1.c, 11028u), global0.a.x, 1i, global1.e.d), global1.d), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)))))));
    var var_1 = true;
    global1 = Struct_3(~global0.a >> (global0.d.wz % vec2<u32>(32u)), Struct_2(global0.d.x, vec3<i32>(~global0.c, global0.c | ~(-2147483647i), 1i), _wgslsmith_dot_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 48860i), vec2<i32>(-2147483647i, 0i), vec2<i32>(0i, 21454i)), -global1.b.b.xy), firstTrailingBit(global1.b.b.yy))), (~_wgslsmith_div_u32(0u, global0.b) ^ 38190u) ^ countOneBits(_wgslsmith_mod_u32(global0.a.x, 83464u)), Struct_1(global0.d.xy, global0.a.x, firstTrailingBit(func_3(313f, Struct_2(71573u, vec3<i32>(global1.e.c, u_input.a.x, global0.c), 2147483647i))), countOneBits(firstTrailingBit(global0.d))), Struct_1(~vec2<u32>(0u, ~global0.b), 44887u, ~(-1i), ~vec4<u32>(global1.b.a, 7249u, ~54559u, 0u)));
    return -2147483647i ^ u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(firstTrailingBit(vec2<u32>(4294967295u, ~(global0.b << (11902u % 32u)))), ~61391u >> (global1.a.x % 32u), func_1(), ~vec4<u32>(~0u, 0u, 59048u, global0.a.x) & global1.d.d);
    var var_0 = Struct_3(~(~(firstTrailingBit(global1.a) >> (vec2<u32>(global0.d.x, 4294967295u) % vec2<u32>(32u)))), global1.b, firstLeadingBit(~min(1u, global1.a.x)), Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.c, global1.b.a), global0.d.ww)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~global1.d.a.x, 4294967295u), _wgslsmith_div_vec3_u32(min(global0.d.wzy, vec3<u32>(17332u, global1.d.b, 17539u)), vec3<u32>(global1.c, 41473u, global0.a.x))), 13429i, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(6003u, global0.b, 4294967295u, 1u), global1.d.d))), Struct_1(~func_2(vec3<u32>(58451u, global1.e.a.x, global1.e.a.x), false, Struct_4(vec4<u32>(global0.d.x, global1.a.x, 0u, global1.e.d.x), vec4<bool>(false, false, false, false)), true) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, global1.b.a), ~vec2<u32>(global0.d.x, global0.a.x)) % vec2<u32>(32u)), (~1u << (global0.b % 32u)) << (global0.d.x % 32u), 0i, global1.d.d));
    let var_1 = Struct_3(vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.a, 33850u, 64930u), global1.d.d.yzw) | global0.a.x), 0u), Struct_2(func_2(global1.e.d.xww, !any(vec3<bool>(true, false, true)), Struct_4(~vec4<u32>(0u, 0u, 1127u, global0.d.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)), !any(vec2<bool>(true, true))).x, vec3<i32>(1i, max(global0.c, var_0.b.c), _wgslsmith_div_i32(reverseBits(-1i), 2147483647i)), ~(firstTrailingBit(global0.c) | min(-1i, global1.e.c))), ~global1.e.b, global1.d, Struct_1(reverseBits(select(_wgslsmith_mult_vec2_u32(global1.d.d.yx, var_0.a), firstTrailingBit(vec2<u32>(global0.d.x, global1.a.x)), vec2<bool>(true, true))), ~_wgslsmith_sub_u32(var_0.b.a, 0u) << (func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.e.b, 0u), vec3<u32>(832u, global1.d.a.x, 1u), vec3<u32>(global0.a.x, global0.a.x, 0u)), true, Struct_4(vec4<u32>(1u, var_0.e.b, global1.e.d.x, 45407u), vec4<bool>(false, true, true, true)), true).x % 32u), global1.b.b.x, ~(select(global0.d, global0.d, true) ^ vec4<u32>(global1.a.x, var_0.e.a.x, global1.c, 15198u))));
    global1 = var_1;
    var var_2 = _wgslsmith_mod_i32(var_1.b.c, -var_1.e.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 498f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-275f - -1011f), 209f)), -1069f) - vec4<f32>(499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1059f)) - _wgslsmith_f_op_f32(sign(-287f))), _wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(func_4(var_1, vec2<bool>(false, false))))), 59808u);
}


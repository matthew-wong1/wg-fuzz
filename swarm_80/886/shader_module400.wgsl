struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: Struct_3;

var<private> global3: vec3<i32> = vec3<i32>(-1i, 1i, 8066i);

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> vec3<i32> {
    var var_0 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, u_input.e), ~45765i);
    global0 = 7762i;
    let var_1 = global2.b.e.xy;
    let var_2 = Struct_1(false);
    var var_3 = _wgslsmith_sub_i32(0i, reverseBits(~(-2147483647i)));
    return -global2.b.c.www;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<u32>) -> bool {
    global3 = vec3<i32>(global2.b.c.x, func_2().x, func_2().x);
    global1 = true;
    let var_0 = Struct_2(-998f, Struct_1(true), vec4<i32>(~_wgslsmith_mod_i32(-19561i, global2.a), _wgslsmith_sub_i32(9283i, ~1i), global2.a, u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.b.d))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global2.c.d, vec3<f32>(arg_1.b.d.x, 1000f, global2.b.a), vec3<bool>(false, global4.a, global2.c.b.a))), _wgslsmith_f_op_vec3_f32(global2.b.d * global2.b.d))))), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.zw, arg_2.wy), _wgslsmith_add_u32(firstTrailingBit(4294967295u), arg_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(arg_2.x, arg_2.x), 1u, abs(arg_2.x)), arg_2)));
    let var_1 = global2.e;
    let var_2 = Struct_1(arg_1.c.b.a);
    return any(vec3<bool>(select(any(select(vec4<bool>(true, true, var_1.a, false), vec4<bool>(false, true, false, var_1.a), false)), true || all(vec3<bool>(false, true, true)), true), select(any(vec4<bool>(arg_0.x, true, global4.a, global2.d)) || any(vec4<bool>(arg_0.x, global4.a, var_0.b.a, true)), arg_0.x, arg_0.x), false));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = ~(~vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, countOneBits(0u)), global2.c.e.x, ~_wgslsmith_dot_vec2_u32(global2.c.e.xx, vec2<u32>(44206u, u_input.c)), ~1u));
    global3 = func_2();
    var var_1 = Struct_4(Struct_3(-51733i, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -284f), Struct_1(func_3(vec2<bool>(global4.a, true), Struct_3(2147483647i, global2.b, Struct_2(-640f, global2.b.b, global2.c.c, global2.b.d, var_0.wzw), false, global2.c.b), var_0)), _wgslsmith_clamp_vec4_i32(max(global2.c.c, global2.c.c), global2.c.c, -vec4<i32>(global3.x, -36298i, global2.b.c.x, 13562i)), global2.c.d, u_input.d), global2.b, arg_0.x > 7096u, global2.e), false, global2.c);
    var var_2 = !select(vec3<bool>(true, 1i > u_input.e, global2.c.b.a), select(vec3<bool>(true, global3.x != -2147483647i, global2.d & var_1.c.b.a), vec3<bool>(false, global2.e.a, any(vec4<bool>(var_1.c.b.a, false, false, var_1.a.b.b.a))), vec3<bool>(select(false, true, false), global3.x > var_1.c.c.x, true)), !select(vec3<bool>(global2.b.b.a, true, var_1.c.b.a), vec3<bool>(false, global2.d, global4.a), global2.c.b.a));
    var var_3 = Struct_3(~(-2147483647i), var_1.a.b, var_1.c, true | func_3(select(var_2.zy, !var_2.xy, vec2<bool>(true, true)), Struct_3(var_1.c.c.x, Struct_2(502f, global2.b.b, vec4<i32>(-10859i, 0i, -14580i, global3.x), var_1.a.b.d, var_1.c.e), Struct_2(292f, global2.e, var_1.a.c.c, vec3<f32>(var_1.c.a, var_1.c.d.x, -264f), u_input.d), global4.a, Struct_1(false)), vec4<u32>(~35464u, 33444u, global2.b.e.x, 101673u)), var_1.a.c.b);
    return _wgslsmith_add_i32(-4938i, firstTrailingBit(func_2().x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(u_input.a | u_input.d.x), _wgslsmith_add_u32(0u, global2.b.e.x), 46388u), select(~vec3<u32>(~u_input.b.x, ~4294967295u, global2.b.e.x), ~(~reverseBits(u_input.d)), vec3<bool>(global4.a, func_1(vec2<u32>(global2.b.e.x, u_input.d.x)) > ~u_input.e, !any(vec3<bool>(global2.c.b.a, global4.a, global4.a)))));
    var var_1 = -(~reverseBits(~firstTrailingBit(global2.b.c.x)));
    var var_2 = ~vec2<u32>(global2.b.e.x, min(firstTrailingBit(1u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(47341u, 22770u, 0u), global2.b.e.x, ~u_input.d.x)));
    global2 = Struct_3(global2.a, Struct_2(420f, Struct_1(!(global2.e.a | false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, ~global3.x, min(global3.x, u_input.e), ~global2.c.c.x), reverseBits(vec4<i32>(u_input.e, global2.b.c.x, global3.x, 34720i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, global3.x, 3205i, global2.b.c.x), abs(vec4<i32>(global3.x, global2.c.c.x, global3.x, global3.x)))), vec3<f32>(_wgslsmith_f_op_f32(-global2.c.a), global2.c.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.c.d.x)), 517f)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_0.x, var_2.x), reverseBits(vec3<u32>(var_0.x, var_2.x, 21282u))), var_0.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_2.x, 4294967295u, 65566u)), vec4<u32>(var_2.x, var_2.x, 4294967295u, 1u)))), global2.b, false, Struct_1(!(!global4.a)));
    let var_3 = global2.e;
    let var_4 = ~(_wgslsmith_clamp_i32(global2.c.c.x, select(global2.c.c.x, u_input.e, global2.c.b.a), global3.x) >> (global2.c.e.x % 32u));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(~max(-43129i, -2588i)), var_4), func_2().x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(global3.zx, global2.c.c.zz), global2.c.c.ww));
    var var_5 = global2.e;
    let x = u_input.a;
    s_output = StorageBuffer(min(-4459i, ~2147483647i), vec2<u32>(1u, var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.c.a + -1850f), -2835f) * global2.c.d.zz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a, global2.b.a)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, global2.c.e.x, u_input.d.x), ~global2.b.e), ~abs(u_input.d)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(8628u, 21641u, var_2.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, global2.c.e.x, 16979u, var_2.x), vec4<u32>(var_0.x, 1u, 53041u, var_2.x))), 0u, ~firstLeadingBit(_wgslsmith_mult_u32(42655u, var_2.x))), _wgslsmith_div_vec2_i32(-_wgslsmith_div_vec2_i32(max(global3.xx, vec2<i32>(u_input.e, -62850i)), vec2<i32>(var_4, -39010i)), vec2<i32>(67923i, ~global2.c.c.x)));
}


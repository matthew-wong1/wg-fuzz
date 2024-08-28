struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(28094u, Struct_1(0u, 5989i, -900f, vec2<f32>(1000f, 430f), vec4<bool>(false, false, true, false)), vec4<f32>(-353f, -992f, 1000f, -776f)), Struct_1(21994u, i32(-2147483648), -124f, vec2<f32>(830f, 259f), vec4<bool>(false, true, true, false)), vec4<f32>(-911f, 209f, 1276f, -358f), Struct_1(9811u, -1i, -2055f, vec2<f32>(1281f, -571f), vec4<bool>(true, false, true, true)));

var<private> global1: Struct_4;

var<private> global2: Struct_1 = Struct_1(0u, -11119i, 572f, vec2<f32>(969f, 1509f), vec4<bool>(false, false, false, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> i32 {
    var var_0 = global2.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.d.d.x * _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_div_f32(-636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.b.d.x) + global0.c.x)), -418f));
    var var_2 = Struct_4(Struct_3(global1.a.a, global1.a.b, global1.a.c, global1.a.b), global1.b, _wgslsmith_f_op_f32(round(-820f)));
    return var_2.b.x;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1820f), -1365f)));
    var var_2 = Struct_3(Struct_2(global2.a, Struct_1(0u, global1.b.x, _wgslsmith_f_op_f32(1000f - global2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, 793f)), global1.a.a.b.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.c - global0.a.c))), Struct_1(~(global1.a.b.a ^ u_input.c.x), global2.b, -1192f, global1.a.c.wx, !global2.e), _wgslsmith_f_op_vec4_f32(-global0.c), Struct_1(u_input.c.x, -1i, 405f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.a.a.b.d.x, global2.d.x), global0.b.d)), global1.a.b.d)), vec2<f32>(global0.a.c.x, 1415f), true)), vec4<bool>(true, true, true, !(!global0.b.e.x))));
    var var_3 = global1.a;
    let var_4 = Struct_4(global1.a, ~(-countOneBits(_wgslsmith_clamp_vec4_i32(global1.b, global1.b, global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x * var_3.d.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.d.d.x), 256f))));
    return Struct_4(global1.a, firstTrailingBit(global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.c.x - _wgslsmith_f_op_f32(global1.c - var_3.a.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1437f)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<u32>) -> Struct_4 {
    global1 = func_3(global2.e.x, abs(vec3<i32>(global1.b.x, func_2(), global1.a.b.b << (1u % 32u))) & (global1.b.ywy | vec3<i32>(_wgslsmith_add_i32(0i, 0i), global1.a.a.b.b >> (global1.a.a.b.a % 32u), _wgslsmith_add_i32(75294i, -82353i))));
    global1 = Struct_4(global1.a, abs(-global1.b), 349f);
    global2 = global1.a.a.b;
    var var_0 = ~reverseBits(arg_3.x);
    let var_1 = global1.a.b.d;
    return Struct_4(func_3(false, select(vec3<i32>(func_2(), -20248i, global0.d.b), vec3<i32>(abs(-39558i), -1i | global1.a.a.b.b, _wgslsmith_mod_i32(-18453i, u_input.b)), global1.a.b.e.zzy)).a, vec4<i32>(-2147483647i, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1474i, global1.b.x), 0i, func_2()), firstLeadingBit(-15349i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, global1.a.d.b), global1.b.zz) >> (1u % 32u), global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-119f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(~(~_wgslsmith_mult_u32(abs(0u), ~4294967295u)), 0i, -1029f, _wgslsmith_f_op_vec2_f32(select(global0.d.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, -2448f) + global0.c.yz), !global0.b.e.zy)), !global1.a.a.b.e);
    global1 = func_1(global0.d.e.x, ~global2.a, global1.a.b.e.xx, ~(~(min(vec4<u32>(global0.a.b.a, 1u, 4294967295u, 0u), vec4<u32>(1u, 0u, 31u, u_input.c.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(27070u, global0.a.a, 1u, global2.a), vec4<u32>(global0.a.a, 0u, 4294967295u, 1u)) % vec4<u32>(32u)))));
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(global2.d.x + global1.c);
    var var_2 = global0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.x - _wgslsmith_f_op_f32(f32(-1f) * -424f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, 1051f) * var_1))), global1.a.a.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-750f)), _wgslsmith_f_op_f32(ceil(global2.d.x)))))), global2.c);
}


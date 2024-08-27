struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-31306i, vec4<bool>(true, true, false, true), 63660u, vec2<bool>(false, true));

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, i32(-2147483648), -15179i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(30016i, -70099i, -13881i), vec3<i32>(-2463i, -35389i, 27834i), vec3<i32>(-1i, 1i, 33582i), vec3<i32>(-28785i, -1i, -3917i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(22709i, 32998i, 1i), vec3<i32>(i32(-2147483648), 13925i, i32(-2147483648)), vec3<i32>(-11616i, 1i, 64009i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-57766i, -27779i, 1i), vec3<i32>(9107i, 28931i, 28305i), vec3<i32>(0i, -49543i, 16317i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(-24811i, 1i, i32(-2147483648)), vec3<i32>(-33675i, 0i, -8203i), vec3<i32>(0i, -1599i, -1i), vec3<i32>(2147483647i, -62401i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -5038i), vec3<i32>(0i, 44909i, 0i), vec3<i32>(2147483647i, -50463i, -7757i), vec3<i32>(-41221i, -22828i, 0i));

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec3<i32>(16322i, 1i, -33149i), 45568i, vec3<bool>(false, true, true))), Struct_2(Struct_1(vec3<i32>(8844i, -7636i, -1i), -20277i, vec3<bool>(false, false, true))));

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(18286i, -8592i, -7587i), 43351i, vec3<bool>(false, false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(~2147483647i), -24154i, select(-1i, global4.b, arg_2.x), 1i), select(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(global4.a.x, u_input.c, global0.a, u_input.b)), vec4<i32>(countOneBits(u_input.a), _wgslsmith_div_i32(global4.b, 2147483647i), global4.b, abs(-25171i))), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global4.a.x, global4.b, 6153i, global0.a)), countOneBits(max(vec4<i32>(31151i, 0i, global4.b, 2147483647i), vec4<i32>(-20445i, 0i, u_input.a, -1i)))), all(vec3<bool>(arg_0.x, select(global4.c.x, arg_2.x, true), true))), vec4<i32>(-15143i, ~u_input.a, global0.a, ~(1i | u_input.b)));
    var_0 = vec4<i32>(-2147483647i, -42259i, -15703i, -10977i);
    global1 = array<vec3<i32>, 24>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(437f, 370f)), arg_1, _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(654f + 387f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_div_f32(arg_1, 362f), global0.c != 5100u)), 370f))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-171f + -1401f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, arg_1, false)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)), arg_1, 115f);
    return _wgslsmith_div_i32(-5025i, _wgslsmith_add_i32(countOneBits(-u_input.c), 48463i));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(~(-14335i), global0.b, 23202u << ((1u | (global0.c & 21235u)) % 32u), !global4.c.xz);
    global4 = Struct_1(global4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(select(vec3<bool>(true, global0.d.x, var_0.b.x), vec3<bool>(false, var_0.b.x, global4.c.x), false), -741f, vec4<bool>(var_0.d.x, false, global0.d.x, false)), _wgslsmith_div_i32(_wgslsmith_add_i32(global4.a.x, u_input.b), global4.b >> (var_0.c % 32u)), abs(var_0.a) & reverseBits(18214i), -2147483647i), vec4<i32>(abs(31778i), -2147483647i, u_input.b, i32(-1i) * -1i) ^ countOneBits(vec4<i32>(-24305i, u_input.b, global0.a, 1i) ^ vec4<i32>(-1i, 27142i, global4.a.x, -1i))), select(global4.c, var_0.b.wzx, select(select(global4.c, !global0.b.wyw, true), select(!vec3<bool>(true, var_0.b.x, false), select(global4.c, global0.b.zxz, false), global0.b.x), any(!vec3<bool>(false, global0.d.x, global0.b.x)))));
    global0 = Struct_3(59780i, !vec4<bool>(global0.b.x, var_0.b.x, global4.c.x, any(var_0.b) & true), 4294967295u, global0.d);
    global2 = array<Struct_2, 2>();
    global4 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(global4.b, global4.a.x), max(~(-2147483647i), -(~global0.a)), u_input.a), global4.a.x, vec3<bool>(true, !((global4.a.x <= -1i) || true), true));
    return var_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    return func_2();
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> f32 {
    global0 = func_4((~select(vec4<i32>(u_input.b, global0.a, -1i, -1i), vec4<i32>(u_input.c, arg_1, -1i, u_input.c), false) << (_wgslsmith_div_vec4_u32(vec4<u32>(35610u, global0.c, global0.c, 4294967295u), select(vec4<u32>(global0.c, 28303u, global0.c, 0u), vec4<u32>(global0.c, global0.c, global0.c, global0.c), global0.b)) % vec4<u32>(32u))) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c, 25272u, global0.c, global0.c), vec4<u32>(global0.c, 1u, global0.c, 0u)) >> (select(vec4<u32>(0u, 4294967295u, global0.c, global0.c), vec4<u32>(13834u, global0.c, 1u, 4294967295u), global0.b) % vec4<u32>(32u)), ~vec4<u32>(global0.c, 20104u, global0.c, global0.c), !(arg_0.x < 1000f)) % vec4<u32>(32u)), func_2());
    global3 = abs(~global0.a);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 * arg_0))))));
    global3 = global0.a;
    var var_1 = 81433u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec2<f32>(-221f, 1117f), global4.a.x, -3157f)), -640f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_add_u32(~global0.c, global0.c << (global0.c % 32u)), abs(1u ^ global0.c)) << (0u % 32u));
}


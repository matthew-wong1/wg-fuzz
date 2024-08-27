struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
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

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-21229i, -19268i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(696i, 26428i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(33455i, 6697i), vec2<i32>(58973i, -1i), vec2<i32>(i32(-2147483648), -18385i), vec2<i32>(-10332i, 2147483647i), vec2<i32>(31584i, -16882i), vec2<i32>(9622i, 34448i), vec2<i32>(28952i, 2147483647i), vec2<i32>(12987i, -45036i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(64557i, i32(-2147483648)), vec2<i32>(15012i, 21125i), vec2<i32>(2147483647i, 40858i), vec2<i32>(-1i, 9019i), vec2<i32>(-10951i, 25506i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 15200i), vec2<i32>(-1i, -39976i), vec2<i32>(-10168i, -1i), vec2<i32>(-1i, -30112i), vec2<i32>(1i, -8904i), vec2<i32>(i32(-2147483648), 5191i));

var<private> global1: Struct_2 = Struct_2(vec3<i32>(0i, -1i, 50399i), vec3<i32>(2147483647i, 0i, 1i), Struct_1(vec4<f32>(-880f, 1110f, -1273f, 235f), vec2<bool>(true, false)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = select(u_input.a.x, ~u_input.a.x, !global1.c.b.x);
    let var_1 = global1.c;
    global0 = array<vec2<i32>, 27>();
    global0 = array<vec2<i32>, 27>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 1223f);
    return 1596f;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    global0 = array<vec2<i32>, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.a + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.a.x, global1.c.a.x, 1411f, arg_1.a.x) + global1.c.a))))) - vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_1.a.x, 2041f, 661f));
    let var_1 = Struct_2(-abs(vec3<i32>(global1.b.x, 2147483647i, 1i)) & vec3<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global1.a.x, u_input.b, u_input.b, 0i), vec4<i32>(global1.b.x, 6552i, global1.b.x, global1.b.x)), vec4<i32>(-2147483647i, u_input.b, 8004i, 31382i)), countOneBits(countOneBits(-1i)), -1i), global1.b, Struct_1(global1.c.a, !(!select(vec2<bool>(global1.c.b.x, false), global1.c.b, arg_1.b.x))));
    let var_2 = Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, arg_0.x), _wgslsmith_sub_vec2_u32(max(vec2<u32>(0u, 0u), vec2<u32>(u_input.a.x, 43096u) << (arg_0.yz % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(83036u, arg_0.x), ~vec2<u32>(u_input.a.x, 83876u)))), _wgslsmith_div_vec2_f32(arg_1.a.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_1.c.a.x), vec2<f32>(var_0.x, arg_1.a.x), vec2<bool>(true, arg_1.b.x))))))), Struct_1(var_0, vec2<bool>(true, global1.c.b.x)), global1.c.b, vec2<u32>(~u_input.a.x, 26339u));
    global1 = var_1;
    return Struct_2(vec3<i32>(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global1.a.x, -28095i)), var_1.b.yy), u_input.b, _wgslsmith_div_i32(reverseBits(~0i), 18167i)), vec3<i32>(-1i, ~abs(_wgslsmith_mult_i32(var_1.b.x, global1.b.x)), global1.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(269f - arg_1.a.x), _wgslsmith_f_op_f32(func_3()), global1.c.a.x, var_0.x))), select(!arg_1.b, vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = func_2(~min(u_input.a, u_input.a), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a.x + global1.c.a.x)), _wgslsmith_f_op_f32(floor(global1.c.a.x)), _wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(abs(-231f))), vec2<bool>(true, any(!arg_0))));
    global0 = array<vec2<i32>, 27>();
    global0 = array<vec2<i32>, 27>();
    let var_2 = global1.c;
    return _wgslsmith_f_op_f32(max(1432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(347f * _wgslsmith_f_op_f32(select(var_1.c.a.x, _wgslsmith_f_op_f32(max(-415f, -1135f)), !arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(firstLeadingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(19496i, 19516i, -6088i), global1.a) << (~vec3<u32>(u_input.a.x, 44509u, u_input.a.x) % vec3<u32>(32u))), global1.b, global1.c);
    var var_0 = -867f;
    let var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(func_1(!select(select(vec4<bool>(true, true, global1.c.b.x, global1.c.b.x), vec4<bool>(global1.c.b.x, global1.c.b.x, global1.c.b.x, false), vec4<bool>(false, true, global1.c.b.x, global1.c.b.x)), vec4<bool>(true, true, true, true), !vec4<bool>(false, global1.c.b.x, global1.c.b.x, global1.c.b.x)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) * _wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(f32(-1f) * -155f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global1.c.a)), !global1.c.b);
    var var_3 = ~abs(vec3<u32>(33602u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x));
    var_3 = ~(~(~u_input.a.yww));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) ^ vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 69757u))));
}


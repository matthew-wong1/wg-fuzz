struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(-611f, -993f), vec3<u32>(0u, 49496u, 20967u), vec2<f32>(749f, -305f), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-746f, -1862f, -583f, -337f), vec2<bool>(false, true)));

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(0i, i32(-2147483648), -2161i, -1i), vec4<i32>(20299i, i32(-2147483648), i32(-2147483648), 19761i), vec4<i32>(-531i, 0i, -1i, 0i), vec4<i32>(0i, 879i, 1i, -1i), vec4<i32>(-53331i, -1355i, -16424i, 10876i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    global0 = Struct_4(global0.a, vec3<u32>(u_input.a, max(u_input.a, _wgslsmith_add_u32(1u, 0u)), global0.b.x), _wgslsmith_f_op_vec2_f32(-global0.d.b.zz), global0.d);
    global0 = Struct_4(vec2<f32>(181f, _wgslsmith_f_op_f32(-1469f + global0.a.x)), ~abs(~global0.b), _wgslsmith_f_op_vec2_f32(round(global0.a)), Struct_1(!vec3<bool>(global0.d.c.x, global0.d.a.x, any(vec4<bool>(global0.d.a.x, false, global0.d.c.x, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, 571f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 707f, global0.d.b.x), !(!global0.d.a.xx)));
    let var_0 = false;
    var var_1 = Struct_3(global0.d, global0.d.c.x);
    let var_2 = all(var_1.a.c);
    return vec3<u32>(global0.b.x, ~17407u, ~u_input.a);
}

fn func_2() -> bool {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f - -1096f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(509f)))), 2048f), func_3(), _wgslsmith_f_op_vec2_f32(-global0.a), Struct_1(!vec3<bool>(all(vec4<bool>(global0.d.a.x, global0.d.c.x, true, global0.d.c.x)), !global0.d.c.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, 231f, 293f, global0.a.x)))), select(vec2<bool>(true, true), global0.d.c, !global0.d.c)));
    let var_1 = Struct_3(Struct_1(vec3<bool>(var_0.d.a.x, true, true), vec4<f32>(174f, _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -791f), global0.c.x), select(select(vec2<bool>(false, true), select(global0.d.c, vec2<bool>(true, var_0.d.c.x), var_0.d.a.yx), var_0.d.a.x), !select(var_0.d.c, global0.d.a.zy, var_0.d.c.x), var_0.d.a.yy)), select(false, any(vec4<bool>(true, true, true, select(var_0.d.c.x, false, true))), all(select(vec2<bool>(true, true), !vec2<bool>(true, var_0.d.a.x), !vec2<bool>(false, var_0.d.a.x)))));
    var var_2 = _wgslsmith_sub_vec2_u32(global0.b.yx, vec2<u32>(~global0.b.x, 2877u));
    var var_3 = var_0;
    let var_4 = Struct_5(select(select(vec4<bool>(false, var_1.a.a.x, !var_1.a.a.x, false), select(!vec4<bool>(global0.d.a.x, var_3.d.c.x, var_1.b, true), select(vec4<bool>(false, global0.d.a.x, var_1.a.c.x, true), vec4<bool>(false, global0.d.c.x, var_3.d.a.x, var_3.d.a.x), global0.d.a.x), !vec4<bool>(false, var_0.d.a.x, true, var_3.d.a.x)), var_0.d.c.x), select(!(!vec4<bool>(false, true, false, var_0.d.a.x)), !vec4<bool>(false, true, var_1.a.c.x, false), global0.d.c.x), vec4<bool>(all(var_1.a.a), !var_1.b, true, true)), var_3.d, Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.b.x, var_0.c.x))))), vec3<u32>(0u, ~func_3().x, 95841u), var_0.a, var_1.a), var_0);
    return true;
}

fn func_1() -> f32 {
    let var_0 = global0.a.x;
    global1 = array<vec4<i32>, 5>();
    let var_1 = countOneBits(~_wgslsmith_clamp_u32(~51322u, global0.b.x, u_input.a)) >> (global0.b.x % 32u);
    var var_2 = !select(vec4<bool>(global0.d.a.x, all(global0.d.a.zx) & global0.d.a.x, true, u_input.b != (u_input.b << (global0.b.x % 32u))), select(vec4<bool>(global0.d.a.x, any(vec4<bool>(true, global0.d.c.x, false, global0.d.c.x)), all(vec4<bool>(false, global0.d.a.x, global0.d.a.x, false)), 1297f != global0.c.x), vec4<bool>(global0.d.c.x, true, func_2(), !global0.d.c.x), global0.d.a.x), !select(select(vec4<bool>(global0.d.a.x, global0.d.a.x, global0.d.a.x, global0.d.a.x), vec4<bool>(false, false, global0.d.c.x, global0.d.c.x), global0.d.c.x), select(vec4<bool>(true, global0.d.c.x, global0.d.a.x, true), vec4<bool>(true, global0.d.a.x, global0.d.c.x, false), vec4<bool>(global0.d.a.x, global0.d.a.x, true, global0.d.a.x)), select(vec4<bool>(false, false, global0.d.a.x, false), vec4<bool>(global0.d.a.x, global0.d.a.x, global0.d.a.x, false), true)));
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(var_1, 5u)], vec4<i32>(u_input.b, u_input.b, 1i, 0i)))) & -28851i, ~firstLeadingBit(-2147483647i));
    return 789f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * -431f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-473f, global0.a.x)), 595f))), ~vec3<u32>(13854u >> (1u % 32u), ~global0.b.x, ~u_input.a) << (~abs(vec3<u32>(78282u, 0u, global0.b.x)) % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.b.x, -158f), vec2<f32>(793f, _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_div_vec2_f32(global0.d.b.yz, vec2<f32>(global0.d.b.x, 921f))), Struct_1(global0.d.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.d.b), vec4<f32>(_wgslsmith_f_op_f32(abs(-186f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global0.a.x), global0.d.b.x), false)), global0.d.a.xx));
    var var_0 = global0.d;
    var var_1 = -406f;
    var var_2 = Struct_3(global0.d, var_0.a.x);
    var var_3 = !(!(!(!(!vec4<bool>(global0.d.c.x, var_0.c.x, global0.d.c.x, var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}


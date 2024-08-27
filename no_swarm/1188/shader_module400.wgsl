struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(global1.e, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global1.a) - _wgslsmith_f_op_f32(-546f - global1.a)), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(round(global1.a)))), 6482i, vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(global1.c.zxz), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global1.b, 47639i), global1.c.yyz)), _wgslsmith_mod_i32(-1301i | u_input.c, _wgslsmith_mult_i32(global1.c.x, -1i)), -global1.b, -2147483647i), ~firstLeadingBit(global1.d), !select(select(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), global1.e, global1.e), select(global1.e, vec4<bool>(true, global1.e.x, global1.e.x, true), true), global1.e.x)), select(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(select(false, global1.e.x, global1.e.x), global1.a > 1280f, global1.e.x), all(global1.e.wx)), global1.e.yxz, select(global1.e.zxy, select(global1.e.ywz, vec3<bool>(true, true, global1.e.x), false | global1.e.x), select(!vec3<bool>(false, global1.e.x, true), vec3<bool>(true, true, true), global1.e.x))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-global1.a));
    var var_1 = vec4<bool>(true | any(!vec2<bool>(var_0.b.e.x, true)), all(vec4<bool>(53113u >= var_0.b.d.x, true, all(vec4<bool>(var_0.a.x, false, var_0.b.e.x, true)), true)) == (_wgslsmith_f_op_f32(sign(-1240f)) < global1.a), any(select(select(vec2<bool>(global1.e.x, var_0.b.e.x), global1.e.xz, var_0.b.e.xz), select(vec2<bool>(var_0.c.x, global1.e.x), global1.e.wx, var_0.d.x), vec2<bool>(false, 312f < var_0.b.a))), !var_0.a.x);
    var var_2 = u_input.b;
    let var_3 = select(select(!vec3<bool>(false, all(global1.e.xw), false), var_0.c, !vec3<bool>(var_0.a.x, true, 52119u < u_input.e)), vec3<bool>(true, true, true), !select(vec3<bool>(false && var_1.x, select(var_1.x, false, false), any(vec3<bool>(true, var_1.x, false))), var_1.zyx, !select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, global1.e.x))));
    var var_4 = 1f;
    return global1.d.x;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(ceil(484f));
    let var_0 = true;
    let var_1 = vec4<bool>(any(vec3<bool>(false, true, true)), global1.e.x, true, global1.e.x);
    let var_2 = Struct_2(global1.a);
    let var_3 = global1.e.x || (~(~u_input.b.x) < func_3());
    return Struct_3(select(global1.e, !(!select(vec4<bool>(false, false, true, var_0), global1.e, global1.e.x)), var_1), Struct_1(global1.a, ~min(u_input.c & -24296i, 8292i), vec4<i32>(~(-8319i), _wgslsmith_add_i32(global1.b, -29897i), 22340i, 21579i), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 25432u) >> (vec2<u32>(global1.d.x, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(global1.d.x, u_input.e)), ~u_input.b.x, 40075u, _wgslsmith_mod_u32(~u_input.b.x, 4294967295u)), var_1), global1.e.xxz, vec2<bool>(global1.e.x, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.a, global1.a))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    let var_1 = Struct_3(global1.e, var_0.b, !vec3<bool>(false, global1.e.x, global1.e.x), !vec2<bool>(global1.d.x == _wgslsmith_clamp_u32(48404u, 0u, 4294967295u), any(select(vec2<bool>(false, false), vec2<bool>(var_0.d.x, false), global1.e.ww))), _wgslsmith_f_op_f32(-var_0.e));
    global1 = var_0.b;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1862f))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.e), global1.a));
    return Struct_3(!select(select(vec4<bool>(global1.e.x, true, true, global1.e.x), var_1.b.e, false), var_1.b.e, select(select(var_1.b.e, var_0.b.e, var_0.b.e), select(var_0.b.e, global1.e, global1.e), select(vec4<bool>(true, var_1.c.x, true, global1.e.x), global1.e, var_1.b.e))), Struct_1(746f, ~_wgslsmith_sub_i32(var_0.b.c.x, ~(-2147483647i)), ~var_0.b.c, ~func_2().b.d, !var_1.a), select(!vec3<bool>(all(vec3<bool>(var_1.d.x, false, false)), var_1.b.b <= -1i, select(true, false, var_1.b.e.x)), var_1.b.e.xzw, true & var_0.a.x), vec2<bool>(any(var_0.c) && (_wgslsmith_f_op_f32(-var_2.a) != _wgslsmith_f_op_f32(142f + var_0.e)), all(var_0.b.e.wz)), -862f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))));
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.d.x, global1.c.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, var_0.e, -1000f, 526f) - vec4<f32>(-971f, var_0.b.a, global1.a, global1.a)))))));
}


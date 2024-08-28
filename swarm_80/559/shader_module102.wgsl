struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f, -1081f))), Struct_1(true && all(vec3<bool>(true, true, true)), 2147483647i, all(vec2<bool>(true, true)), vec4<bool>(!(42944u == u_input.b), true, true, true), vec2<bool>(any(vec2<bool>(true, false)) && true, true)), _wgslsmith_div_f32(-2882f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-512f, _wgslsmith_div_f32(-376f, -254f)))))), Struct_1(true && any(vec3<bool>(true, true, true)), _wgslsmith_div_i32(-42242i, u_input.a), true, vec4<bool>(select(true, any(vec4<bool>(true, false, false, false)), true), true, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-440f * 391f) == _wgslsmith_f_op_f32(round(660f))), vec2<bool>(true, true)), -vec4<i32>(71087i, _wgslsmith_dot_vec3_i32(vec3<i32>(45849i, global0.x, global0.x), vec3<i32>(global0.x, 1i, global0.x)), u_input.a, u_input.e) | reverseBits(~vec4<i32>(-19952i, 19404i, -59866i, -3203i)));
    global0 = var_0.e;
    var var_1 = var_0.b.d.zx;
    let var_2 = Struct_3(!select(!var_0.b.d.xyw, select(var_0.d.d.zzw, select(vec3<bool>(true, var_1.x, var_0.b.e.x), var_0.d.d.xxx, var_1.x), var_1.x || var_1.x), select(!vec3<bool>(var_0.d.e.x, var_1.x, true), !vec3<bool>(var_0.b.d.x, false, true), false)));
    var var_3 = var_0.d;
    return var_2.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - _wgslsmith_f_op_f32(min(1519f, 137f)))), _wgslsmith_f_op_f32(1000f + 1000f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1105f, _wgslsmith_f_op_f32(f32(-1f) * -1748f)) - -1330f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1961f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-965f + -509f))));
    var var_2 = global0.xx;
    var var_3 = Struct_3(vec3<bool>(all(func_3()), (0u & u_input.d) < u_input.c.x, all(vec2<bool>(true, false))));
    let var_4 = u_input.c;
    return -2147483647i;
}

fn func_1() -> Struct_1 {
    global0 = ~vec4<i32>(global0.x, i32(-1i) * -reverseBits(global0.x), ~_wgslsmith_sub_i32(u_input.e << (u_input.b % 32u), ~global0.x), select(_wgslsmith_mult_i32(-1i, -27508i << (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-32944i, global0.x, u_input.e, 2147483647i), vec4<i32>(25875i, u_input.a, u_input.e, 25218i)) | u_input.e, true));
    let var_0 = -758f;
    global0 = -(~(-vec4<i32>(min(global0.x, 29941i), global0.x ^ -1i, i32(-1i) * -15685i, u_input.a)));
    global0 = select(vec4<i32>(func_2() << (~1u % 32u), -25112i, _wgslsmith_mod_i32(20906i >> (u_input.b % 32u), reverseBits(u_input.a)), _wgslsmith_dot_vec3_i32(countOneBits(global0.xyy), countOneBits(global0.xzw))) ^ vec4<i32>(func_2(), u_input.a, u_input.e, u_input.a), ~abs(_wgslsmith_mod_vec4_i32(max(vec4<i32>(6623i, 20595i, u_input.e, global0.x), vec4<i32>(42422i, global0.x, 10010i, u_input.e)), -vec4<i32>(-26561i, -2147483647i, 14292i, -1i))), select(vec4<bool>(true, false, any(vec3<bool>(true, true, true)), !(u_input.a == u_input.e)), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.c.x < u_input.b, true, true, all(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true))));
    global0 = ~vec4<i32>(2147483647i, u_input.e, -2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-13163i, u_input.a, 50600i), vec3<i32>(23083i, u_input.e, 29131i))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b) << (min(u_input.c.x, 31175u) % 32u), ~u_input.c.x, _wgslsmith_div_u32(3872u << (u_input.b % 32u), 104356u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.d, abs(u_input.d))), min(vec4<u32>(~u_input.d, u_input.c.x, ~23613u, select(4294967295u, 74884u, true)), ~(~vec4<u32>(u_input.d, u_input.b, u_input.c.x, 1u)))) % vec4<u32>(32u));
    return Struct_1(func_3().x, 14276i, false, vec4<bool>(func_3().x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 + 311f))) > 1006f, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0) > _wgslsmith_f_op_f32(-2345f + -950f)), vec2<bool>(true, true));
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = vec4<i32>(countOneBits(func_2()), 61820i, 2764i, ~_wgslsmith_sub_i32(-35542i, select(-u_input.e, _wgslsmith_clamp_i32(4799i, -34469i, -46527i), any(arg_0.e))));
    global0 = ~(-_wgslsmith_sub_vec4_i32(-select(vec4<i32>(global0.x, 29331i, global0.x, global0.x), vec4<i32>(-65074i, arg_0.b, arg_0.b, 0i), false), -vec4<i32>(u_input.e, global0.x, 11607i, -1i)));
    let var_0 = vec2<i32>(global0.x, -(~1i));
    var var_1 = _wgslsmith_f_op_f32(1565f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1184f, 212f))) + 779f)));
    var var_2 = u_input.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = func_1();
    let var_2 = Struct_3(select(vec3<bool>(var_1.d.x, var_1.e.x, true), select(vec3<bool>(var_0, all(var_1.d.yxy), var_0), var_1.d.wwx, -1i <= reverseBits(global0.x)), all(!(!var_1.d.xwz))));
    var_1 = Struct_1(false, ~(-1i), all(vec2<bool>(true, var_1.e.x)), select(vec4<bool>(true, var_1.c, var_2.a.x, true), !vec4<bool>(func_3().x, var_1.d.x, false, true), true), select(var_1.d.yy, var_2.a.zy, any(select(var_1.d, vec4<bool>(var_1.c, true, var_2.a.x, var_2.a.x), select(vec4<bool>(false, true, var_2.a.x, var_1.d.x), var_1.d, var_1.d)))));
    let var_3 = any(var_1.d.xxx);
    var var_4 = var_1.b;
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-912f);
}


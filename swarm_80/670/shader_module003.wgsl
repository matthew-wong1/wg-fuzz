struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
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

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(select(arg_1.a >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.x, 1u), vec3<u32>(22919u, global0.x, 35394u), vec3<u32>(2399u, arg_0, 1u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(-4511i, 1i, u_input.a), -2147483647i, ~u_input.a), all(arg_1.c)), true, vec4<bool>(arg_1.b, false, all(!arg_1.c.wx), !(!arg_1.b)), ~(i32(-1i) * -66102i), _wgslsmith_f_op_f32(-arg_1.e)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(trunc(828f)), _wgslsmith_f_op_f32(arg_1.e * -366f), -166f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.e, 656f, arg_1.e, arg_1.e))))))), vec2<i32>(_wgslsmith_mult_i32(-u_input.a, 2147483647i), -(_wgslsmith_sub_i32(arg_1.d, 1i) >> (25477u % 32u))), Struct_1(arg_1.a, false, select(!select(arg_1.c, vec4<bool>(false, arg_1.c.x, arg_1.c.x, false), vec4<bool>(arg_1.c.x, arg_1.b, true, arg_1.c.x)), vec4<bool>(arg_1.b, false, false, false), arg_1.c), 1i, _wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, ~73633u), 68396u), u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(30971u ^ global0.x, ~arg_0, _wgslsmith_dot_vec3_u32(u_input.b.xxz, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), countOneBits(arg_0 >> (4294967295u % 32u)))));
    global0 = u_input.b.ww;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(var_0.b));
    global0 = abs(abs(var_0.e.yx));
    let var_2 = var_0.d.e;
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(func_3(_wgslsmith_mod_u32(global0.x | 27632u, 1u << (u_input.c.x % 32u)), Struct_1(arg_2.a, true, select(vec4<bool>(true, var_0.c.x, var_0.c.x, true), var_0.c, vec4<bool>(true, arg_2.b, var_0.b, arg_2.c.x)), arg_2.a.x >> (1u % 32u), -625f)), abs(vec2<u32>(26114u, 10332u))), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_mult_u32(global0.x, countOneBits(76013u)), global0.x)));
    global0 = ~(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 1u), _wgslsmith_mod_u32(global0.x, 24879u)) & reverseBits(~vec2<u32>(24828u, global0.x))) >> (~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(13509u, 4294967295u), ~vec2<u32>(u_input.c.x, 0u)), firstLeadingBit(~u_input.c)) % vec2<u32>(32u));
    var var_1 = u_input.b.xzx;
    let var_2 = false;
    return 1f;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> bool {
    let var_0 = 42883u;
    let var_1 = _wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -879f))))));
    global0 = ~vec2<u32>(~var_0, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, ~u_input.c.x), select(u_input.b.x, _wgslsmith_mod_u32(4294967295u, global0.x), any(vec3<bool>(arg_0, arg_1.x, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1630f)) + _wgslsmith_f_op_f32(func_2(vec4<f32>(-283f, -832f, var_1, -944f), u_input.a, Struct_1(vec3<i32>(-2147483647i, -7468i, u_input.a), arg_0, arg_1, u_input.a, var_1)))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), 638f)))) - _wgslsmith_f_op_f32(f32(-1f) * -379f));
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = abs(u_input.b);
    var var_1 = select(arg_2.c, select(select(select(select(arg_2.c, vec4<bool>(arg_2.c.x, arg_2.b, false, true), arg_2.c), arg_2.c, true), select(arg_2.c, arg_2.c, any(vec2<bool>(true, arg_2.c.x))), !(!arg_2.c)), !(!(!vec4<bool>(arg_2.b, arg_2.b, arg_2.c.x, arg_2.c.x))), !any(arg_2.c.zx)), false);
    var var_2 = true;
    let var_3 = Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(788f, -860f, arg_2.e, 499f))))), -(abs(vec2<i32>(arg_2.a.x, 0i) >> (u_input.b.wz % vec2<u32>(32u))) << (var_0.ww % vec2<u32>(32u))), Struct_1(-arg_2.a, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), var_1.wx, var_1.x), !vec2<bool>(true, arg_2.c.x))), vec4<bool>((-46026i != arg_2.a.x) && true, false, true, all(!vec4<bool>(arg_2.c.x, var_1.x, arg_2.b, true))), -(0i & select(3007i, 0i, true)), _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -882f)))))), u_input.b.wzy);
    var var_4 = var_3.e;
    return ~arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -175f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1821f, -850f, true))))));
    global0 = u_input.c;
    var var_1 = vec4<f32>(182f, 246f, 217f, -1364f);
    var var_2 = func_4(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * 338f), _wgslsmith_f_op_f32(391f + 566f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(518f - var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -532f, var_1.x)))), Struct_1(abs(vec3<i32>(13042i, 2147483647i, u_input.a) << (vec3<u32>(global0.x, 0u, 4294967295u) % vec3<u32>(32u))) | -vec3<i32>(19520i, -2147483647i, -14021i), func_1(true, select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, u_input.a < 2147483647i, true, true), vec4<bool>(any(vec3<bool>(false, true, true)), -2147483647i == u_input.a, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), u_input.a, var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1000f))) * _wgslsmith_f_op_vec2_f32(var_1.zy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, 1468f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(var_1.yz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) * vec2<f32>(var_0, var_1.x)))));
    var_2 = -(firstLeadingBit(max(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 57353i, -2147483647i), vec3<i32>(62021i, u_input.a, u_input.a)), -vec3<i32>(41575i, -4970i, -36392i))) | vec3<i32>(~9730i, u_input.a, u_input.a));
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x | 4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(67093u, 1u, u_input.b.x), vec3<u32>(0u, global0.x, global0.x)), _wgslsmith_sub_u32(~global0.x, u_input.c.x << (0u % 32u)))), u_input.b.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(min(367f, _wgslsmith_f_op_f32(var_0 - var_0)))) * _wgslsmith_f_op_f32(ceil(var_1.x))));
}


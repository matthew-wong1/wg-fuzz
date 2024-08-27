struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_4) -> vec4<u32> {
    global0 = select(select(!vec3<bool>(true, !global0.x, !arg_3.c.b.a), select(select(!vec3<bool>(false, arg_3.a, false), !vec3<bool>(arg_0.b.a, arg_3.a, global0.x), vec3<bool>(false, true, false)), select(!vec3<bool>(arg_3.a, false, false), select(vec3<bool>(true, false, arg_3.c.b.a), vec3<bool>(false, arg_0.b.a, false), vec3<bool>(true, arg_0.b.a, true)), all(vec3<bool>(arg_3.c.b.a, true, global0.x))), !vec3<bool>(true, true, arg_0.b.a)), select(!vec3<bool>(global0.x, true, true), !(!vec3<bool>(true, global0.x, false)), vec3<bool>(global0.x, all(vec4<bool>(true, arg_3.a, true, false)), any(global0.zz)))), vec3<bool>(true, false | !(!arg_3.a), false), vec3<bool>(all(!(!vec4<bool>(false, global0.x, global0.x, arg_3.a))), true, true));
    global0 = select(!(!select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, arg_0.b.a, false), vec3<bool>(true, true, global0.x))), !select(select(!vec3<bool>(arg_0.b.a, global0.x, false), !vec3<bool>(arg_0.b.a, true, false), select(vec3<bool>(arg_3.a, global0.x, arg_0.b.a), vec3<bool>(true, true, false), true)), select(vec3<bool>(false, true, arg_0.b.a), vec3<bool>(true, arg_3.c.b.a, true), true), true), false);
    let var_0 = vec2<bool>(true, true);
    let var_1 = arg_3.c.b;
    global0 = !select(vec3<bool>(arg_3.a, var_1.a, all(vec3<bool>(global0.x, global0.x, false))), !(!vec3<bool>(false, var_1.a, true)), !vec3<bool>(2147483647i != arg_3.b.x, true, arg_3.c.b.a));
    return arg_3.c.b.b;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = !(!global0.xz);
    global0 = vec3<bool>(false, true, true);
    let var_1 = !vec3<bool>(true, false, _wgslsmith_dot_vec4_u32(arg_0.b.b, func_3(arg_0, Struct_1(u_input.c.x, vec3<f32>(794f, arg_0.a.x, 614f), vec2<i32>(u_input.b, u_input.c.x)), vec4<u32>(arg_0.b.b.x, 1u, 1860u, arg_0.b.b.x), Struct_4(true, u_input.c.zx, Struct_3(vec2<f32>(1196f, -2793f), Struct_2(arg_0.b.a, vec4<u32>(0u, 76472u, 1u, 4294967295u)))))) <= 20476u);
    let var_2 = vec2<u32>(~(countOneBits(arg_0.b.b.x) >> (abs(arg_0.b.b.x) % 32u)) << (arg_0.b.b.x % 32u), ~(~48628u));
    global0 = !(!(!select(vec3<bool>(false, global0.x, global0.x), !var_1, !var_0.x)));
    return Struct_1(1i, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1108f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1229f, -1175f))))), arg_0.a.x), u_input.a.yy);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_vec4_u32(arg_1, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 18574u, arg_0.x, arg_1.x), ~arg_1), ~max(arg_1, vec4<u32>(4294967295u, 0u, arg_1.x, arg_1.x) << (vec4<u32>(u_input.d, arg_0.x, arg_0.x, 17295u) % vec4<u32>(32u)))));
    var var_1 = select(!(!(!vec3<bool>(true, global0.x, false))), !vec3<bool>(global0.x, true, any(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, false), global0.x))), !vec3<bool>(true, !(!global0.x), !any(vec4<bool>(global0.x, global0.x, global0.x, true))));
    var var_2 = 5261i;
    let var_3 = Struct_1(abs(~(-1i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))), arg_2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + arg_2.b.x)))), select(_wgslsmith_sub_vec2_i32(max(-u_input.a.yx, arg_2.c), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_2.c.x, arg_2.c.x), vec3<i32>(8415i, 82913i, u_input.a.x)))), vec2<i32>(_wgslsmith_mult_i32(~(-2147483647i), select(u_input.b, 0i, true)), -(~2147483647i)), -arg_3 == _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -54039i), ~arg_2.c.x)));
    let var_4 = _wgslsmith_add_vec2_i32(min(select(u_input.c.wy, reverseBits(arg_2.c), !var_1.x), -var_3.c), min(_wgslsmith_clamp_vec2_i32(arg_2.c, u_input.c.yy, arg_2.c) & -var_3.c, u_input.c.xw)) & (arg_2.c ^ vec2<i32>(u_input.c.x, -43786i));
    return vec3<f32>(-164f, _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1193f, 821f)), _wgslsmith_div_f32(var_3.b.x, 166f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * arg_2.b.x)), var_3.b.x));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, -1388f))))));
    var var_1 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -935f, var_0.x), vec3<f32>(416f, 168f, -282f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, -849f, var_0.x))) + _wgslsmith_f_op_vec3_f32(func_4(max(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d)), vec4<u32>(51613u, u_input.d, u_input.d, 4294967295u), func_2(Struct_3(vec2<f32>(-102f, var_0.x), Struct_2(true, vec4<u32>(70151u, u_input.d, u_input.d, u_input.d)))), abs(u_input.b))))), u_input.c.wx);
    var_1 = func_2(Struct_3(var_1.b.xx, Struct_2(true, ~(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)))));
    var var_2 = any(select(!vec4<bool>(global0.x, true, true, var_1.a != -1i), select(!select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, false), false), vec4<bool>(global0.x, true, !global0.x, true), select(!vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, false, global0.x, false), -133f <= var_1.b.x)), !vec4<bool>(true, false, global0.x, true)));
    let var_3 = Struct_1(~_wgslsmith_dot_vec2_i32(func_2(Struct_3(vec2<f32>(var_0.x, 1000f), Struct_2(false, vec4<u32>(u_input.d, 1u, 0u, 0u)))).c, vec2<i32>(~arg_0.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, 808f, var_0.x)))))), ~max(~vec2<i32>(1i, var_1.c.x), _wgslsmith_clamp_vec2_i32(u_input.c.xx, arg_0.wx, vec2<i32>(-22190i, 32018i))) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.b.zy + vec2<f32>(-1249f, var_0.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b.x, 589f)))), vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-var_3.b.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(var_1.b.xz)), _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_3.b.x, -221f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.b.yy, var_3.b.zy)) + vec2<f32>(var_3.b.x, 1514f)))), Struct_2(var_3.a >= (i32(-1i) * -28871i), abs(~(~vec4<u32>(24889u, u_input.d, 1u, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(!global0.x, !global0.x, all(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, true, global0.x, true), vec4<bool>(true, global0.x, true, global0.x))) != (all(vec3<bool>(global0.x, true, false)) == true));
    var var_0 = func_1(~u_input.a);
    var var_1 = _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(_wgslsmith_mod_u32(11349u, u_input.d), ~var_0.b.b.x, var_0.b.b.x, var_0.b.b.x)), vec4<u32>(u_input.d, 44372u << (u_input.d % 32u), var_0.b.b.x, _wgslsmith_sub_u32(u_input.d << (~u_input.d % 32u), ~var_0.b.b.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(897f))) * _wgslsmith_f_op_f32(trunc(-1931f)))));
    var var_3 = Struct_4(any(select(vec3<bool>(var_0.b.a && global0.x, select(false, global0.x, global0.x), var_0.b.a), !select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.b.a, global0.x), global0.x), true)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.b, u_input.a.x), reverseBits(u_input.a.yx & u_input.a.xz)), vec2<i32>(u_input.a.x, ~(~u_input.c.x))), func_1(max(u_input.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, -1i, u_input.b), vec4<i32>(u_input.b, -1i, -2147483647i, u_input.b), select(vec4<i32>(17445i, 28473i, u_input.a.x, -2147483647i), u_input.a, var_0.b.a)))));
    let var_4 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.c.b.b.x, 4294967295u), select(vec2<u32>(u_input.d, 4294967295u), var_1.xz, vec2<bool>(global0.x, true))) << (~var_1.yx % vec2<u32>(32u)), ~select(vec2<u32>(53323u, u_input.d) & vec2<u32>(var_1.x, 80609u), vec2<u32>(var_1.x, var_0.b.b.x), vec2<bool>(true, true)));
    var_3 = Struct_4(all(select(vec3<bool>(var_3.a, var_3.a, global0.x && global0.x), vec3<bool>(var_3.c.a.x <= 530f, var_3.a, true), !all(global0.xz))), var_3.b, Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, var_0.a.x))))), func_1(u_input.c).b));
    var var_5 = !(!any(vec2<bool>(true, true)));
    let var_6 = Struct_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(var_0.b.b.x, 0u), var_0.b.b, Struct_1(35880i, vec3<f32>(var_3.c.a.x, var_3.c.a.x, -1000f), var_3.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.x, 32889i, 2147483647i, -23892i), u_input.c))).x))), Struct_2(true, max(~var_3.c.b.b >> (~vec4<u32>(18246u, var_4, 4294967295u, 22791u) % vec4<u32>(32u)), ~(var_0.b.b >> (var_3.c.b.b % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(2258f);
}


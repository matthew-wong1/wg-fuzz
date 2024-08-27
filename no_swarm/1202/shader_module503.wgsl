struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(1631f, vec2<bool>(true, true), Struct_2(vec4<u32>(53965u, 3710u, 23444u, 4294967295u), vec2<bool>(true, true), Struct_1(vec4<bool>(true, false, false, false), 279f, 1i), Struct_1(vec4<bool>(false, true, true, false), 840f, 19154i), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, false, true, false), -1834f, -27083i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_4(global2.c, ~4294967295u, 79015u);
    global0 = var_0.a.d.a;
    global0 = vec4<bool>(select(!(!any(arg_2)), !(4294967295u < abs(var_0.a.a.x)), arg_2.x), true, false, !global2.d.a.x);
    var var_1 = _wgslsmith_div_u32(var_0.b, firstTrailingBit(72916u));
    var var_2 = firstTrailingBit(_wgslsmith_mult_i32(-13693i, _wgslsmith_add_i32(2147483647i, -2147483647i) | global2.d.c));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(select(var_0.a.d.c & _wgslsmith_sub_i32(var_0.a.c.c, -5067i), u_input.c.x, all(!var_0.a.e)), -_wgslsmith_clamp_i32(global2.c.c.c >> (4294967295u % 32u), -37284i, -var_0.a.d.c), ~var_0.a.d.c), ~(-vec3<i32>(~var_0.a.c.c, _wgslsmith_div_i32(u_input.c.x, u_input.b), _wgslsmith_div_i32(1i, u_input.c.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec2<i32> {
    global2 = Struct_3(global2.d.b, vec2<bool>(all(vec3<bool>(all(vec4<bool>(global0.x, global0.x, true, global2.c.d.a.x)), global2.c.d.c < -32188i, any(vec4<bool>(global0.x, arg_1.x, false, false)))), !(!all(vec4<bool>(false, true, false, true)))), global2.c, Struct_1(vec4<bool>(all(arg_1), false, any(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global2.c.c.a.x, false, arg_1.x, arg_1.x), true)), select(false, false, 1u > arg_0)), -377f, _wgslsmith_sub_i32(-u_input.c.x, func_3(436f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(334f, -1445f))), vec3<bool>(true, global2.b.x, global0.x)))));
    global1 = false;
    let var_0 = ~_wgslsmith_div_u32(20235u, _wgslsmith_dot_vec3_u32(~global2.c.a.yyx, ~vec3<u32>(u_input.a.x, 1u, u_input.a.x)));
    global0 = select(!global2.d.a, !vec4<bool>(false, all(global0.xxx), global0.x, false), arg_0 > _wgslsmith_dot_vec2_u32(~vec2<u32>(29434u, 41870u), ~(~u_input.a.zx)));
    global2 = Struct_3(global2.c.d.b, global2.b, Struct_2(abs(vec4<u32>(28205u, ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, global2.c.a.wzw), 40398u)), !global2.d.a.ww, Struct_1(select(global2.c.d.a, !vec4<bool>(true, true, global2.d.a.x, global0.x), all(global2.d.a.www)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2097f, -879f) + 720f), ~31997i), Struct_1(!global2.d.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 2147483647i), !vec2<bool>(0u >= arg_0, false)), global2.c.c);
    return -firstLeadingBit(u_input.c.ww);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_5(!(!arg_3.c.a));
    var_0 = Struct_5(select(global2.c.c.a, global2.c.d.a, vec4<bool>(true, global0.x, var_0.a.x, !(!arg_2))));
    var_0 = Struct_5(arg_3.c.a);
    var var_1 = vec2<f32>(774f, _wgslsmith_f_op_f32(-arg_3.d.b));
    let var_2 = _wgslsmith_div_vec2_i32(func_2(44333u, global2.b), -firstLeadingBit(vec2<i32>(22422i, -72142i))) & _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(u_input.c.x, 2147483647i), u_input.c.yz, vec2<bool>(false, false)), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_3.c.c), u_input.c.ww));
    return Struct_1(global2.c.d.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f * arg_3.c.b)), global2.a)))), (_wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.d.c, -1i, var_2.x, var_2.x), u_input.c, false), ~u_input.c) & -(~global2.c.c.c)) ^ ~1633i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.d.a.x, 4294967295u, !any(!vec4<bool>(false, global0.x, true, global2.c.b.x)) || true, global2.c);
    let var_1 = u_input.a.x;
    global1 = !(!(!(_wgslsmith_f_op_f32(floor(724f)) != _wgslsmith_f_op_f32(trunc(global2.d.b)))));
    var var_2 = global2.c;
    var_2 = Struct_2(global2.c.a, vec2<bool>(28685i > _wgslsmith_mod_i32(-40921i, ~var_0.c), var_2.e.x), global2.d, var_2.c, vec2<bool>(!(true | (false || var_0.a.x)), !(!all(var_2.d.a.wz))));
    let var_3 = select(global0.zwz, select(!select(vec3<bool>(true, true, true), var_2.d.a.wwz, vec3<bool>(var_0.a.x, false, var_0.a.x)), select(vec3<bool>(global2.c.e.x, select(var_2.d.a.x, true, false), false), vec3<bool>(global0.x & true, var_2.d.a.x, var_0.a.x), select(select(vec3<bool>(false, false, true), vec3<bool>(global0.x, true, global0.x), global2.c.d.a.zxw), func_1(global0.x, 1u, global0.x, Struct_2(vec4<u32>(18002u, 48536u, u_input.a.x, 1u), var_2.b, var_2.c, Struct_1(var_2.d.a, global2.a, 0i), global2.b)).a.xyx, select(var_0.a.zxz, vec3<bool>(true, global2.c.e.x, false), global2.c.d.a.xzx))), !(!global0.wwy)), select(global0.x, true, false));
    let var_4 = ~(~106391u);
    let var_5 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.b), _wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_f_op_f32(step(var_0.b, -1415f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(413f, -1192f, 1626f), vec3<f32>(-1027f, -1000f, 111f))))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(24862u, global2.c.a.x, global2.c.a.x, 4294967295u)), u_input.a.x), max(_wgslsmith_mult_u32(0u, countOneBits(105964u)), var_1), ~select(var_4, var_2.a.x, true) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, 4294967295u), var_2.a.wx) & 4294967295u), 15190u), -655f, 571f);
}


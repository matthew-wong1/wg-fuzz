struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 0u;

var<private> global2: Struct_4;

var<private> global3: f32 = 606f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<u32> {
    let var_0 = 32658u;
    global0 = select(vec4<bool>(!global0.x, global2.d.c.x, any(vec2<bool>(any(vec3<bool>(true, global2.d.a.a, global0.x)), any(global2.d.c.zx))), true), global2.d.c, !(!(!select(global2.d.c, vec4<bool>(true, true, false, true), vec4<bool>(global2.d.e.a, false, global2.d.c.x, global0.x)))));
    var var_1 = vec4<u32>(countOneBits(select(u_input.a, 46176u, _wgslsmith_f_op_f32(global2.e * -195f) == _wgslsmith_f_op_f32(arg_1 + global2.c.x))), 1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.b.a, 1u, 0u, u_input.a), vec4<u32>(1u, 4294967295u, 1u, var_0)), var_0) ^ u_input.a, ~_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(var_0, u_input.a))), u_input.a);
    let var_2 = ~global2.b;
    var var_3 = Struct_1(var_1.x);
    return select(vec3<u32>(max(_wgslsmith_mult_u32(0u, countOneBits(13305u)), var_0), global2.b.x, 20952u), ~vec3<u32>(_wgslsmith_add_u32(~16205u, max(41886u, u_input.a)), var_0, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(196u, global2.d.b.a, var_0), var_3.a >> (3129u % 32u))), !global0.yxw);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_5(global2.d.b, global2.d);
    var var_1 = 4294967295u;
    global2 = Struct_4(global2.a, func_3(var_0.b.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-826f - -1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-772f, -1000f)) - -967f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(478f, -1341f)), 322f), 778f), -162f, _wgslsmith_f_op_f32(f32(-1f) * -855f)), var_0.b, _wgslsmith_f_op_f32(-var_0.b.d.x));
    let var_2 = Struct_2(var_0.b.c.x);
    var_1 = 1u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.a.a, var_0.b.b.a), vec4<u32>(u_input.a, global2.b.x, 0u, 24050u), vec4<u32>(global2.b.x, global2.d.b.a, 4294967295u, var_0.b.b.a))), countOneBits(~vec4<u32>(0u, var_0.b.b.a, u_input.a, var_0.b.b.a))), _wgslsmith_mod_u32(4294967295u, 4294967295u >> (0u % 32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.d.x, 344f, -446f, -1778f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.d.d)) - var_0.b.d))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.b.d.x, 142f, -1107f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(302f - 950f), -262f, -1913f, _wgslsmith_f_op_f32(-var_0.b.d.x))), var_0.b.c)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, ~u_input.a, firstLeadingBit(46555u) >> (~_wgslsmith_add_u32(u_input.a, 53580u) % 32u), global2.d.b.a), vec4<u32>(14119u, global2.d.b.a, 1u, _wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_mod_u32(u_input.a, u_input.a))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(7212u) << (firstLeadingBit(11711u) % 32u), 1u, ~u_input.a) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, global2.d.b.a, 13508u), _wgslsmith_mult_vec3_u32(var_0.zzx, vec3<u32>(u_input.a, 1u, u_input.a))), global2.b.x, ~3859u), var_0.yzz);
    global0 = select(select(!vec4<bool>(false, 1000f < global2.c.x, arg_2.a, false), select(global2.d.c, select(global2.d.c, select(global2.d.c, global2.d.c, vec4<bool>(global0.x, false, arg_2.a, false)), global2.d.c), true), !(!(global2.b.x <= 41032u))), !select(select(!global2.d.c, !global2.d.c, !global0.x), global2.d.c, global2.d.c.x), (~(u_input.a | 63348u) | ~(~var_1.x)) < 4294967295u);
    global0 = global2.d.c;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(any(!global2.d.c.zyw), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(483f, global2.c.x, global2.c.x, global2.d.d.x))), _wgslsmith_div_vec4_f32(global2.d.d, vec4<f32>(global2.c.x, global2.e, global2.d.d.x, -1265f)), true)), select(vec4<i32>(arg_1, arg_0, global2.a, global2.a), vec4<i32>(23295i, global2.a, -54757i, -42840i), vec4<bool>(false, false, arg_2.a, true)) | countOneBits(vec4<i32>(0i, arg_1, 0i, 69805i)), select(vec3<bool>(arg_2.a, arg_2.a, false), select(vec3<bool>(global0.x, false, false), global0.wyz, global2.d.c.ywz), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.e + -939f), global2.e, -2148f, global2.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(ceil(970f)), _wgslsmith_f_op_f32(select(global2.e, -791f, true))))));
    return vec3<i32>(~global2.a, -1i, -u_input.b) | -vec3<i32>(arg_0, -2719i, global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i, u_input.b, abs(1i));
    var_0 = _wgslsmith_mod_vec3_i32(func_1(-(~_wgslsmith_mult_i32(var_0.x, global2.a)), 3423i, Struct_2(true)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~reverseBits(vec3<i32>(-39675i, var_0.x, 2147483647i)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(var_0.x, var_0.x, 70353i), vec3<i32>(u_input.b, 2147483647i, global2.a)), firstLeadingBit(vec3<i32>(-36622i, var_0.x, 2674i))), vec3<i32>(max(global2.a, u_input.b), -41224i, -var_0.x)), -(~(vec3<i32>(-68610i, var_0.x, u_input.b) & vec3<i32>(32824i, var_0.x, u_input.b))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, 575i), vec3<i32>(global2.a, u_input.b, 1i), vec3<i32>(-53669i, -2147483647i, var_0.x)) << (min(global2.b, vec3<u32>(16829u, 4294967295u, 0u)) % vec3<u32>(32u)), vec3<i32>(14327i, -27284i, -var_0.x))));
    var var_1 = Struct_1(_wgslsmith_add_u32(~global2.d.b.a, _wgslsmith_clamp_u32(~u_input.a >> (global2.d.b.a % 32u), 1u, _wgslsmith_clamp_u32(firstLeadingBit(48738u), _wgslsmith_add_u32(u_input.a, 65519u), countOneBits(1u)))));
    let var_2 = Struct_3(global2.d.e, global2.d.b, global2.d.c, global2.d.d, global2.d.a);
    let var_3 = Struct_1(_wgslsmith_mod_u32(~var_1.a, ~(~var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4056u, 4294967295u), vec2<u32>(1u, 4294967295u))), ~u_input.a), global2.d.d.x, var_2.d);
}


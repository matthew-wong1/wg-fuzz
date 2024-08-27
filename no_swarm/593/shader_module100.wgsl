struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<f32>(106f, 623f, -1010f), Struct_2(Struct_1(0u, false, false, vec2<f32>(-602f, -551f)), false, Struct_1(64007u, true, true, vec2<f32>(-1049f, -966f)), 58327u));

var<private> global1: Struct_2 = Struct_2(Struct_1(43870u, false, false, vec2<f32>(-881f, -211f)), true, Struct_1(54333u, false, false, vec2<f32>(-602f, -986f)), 0u);

var<private> global2: vec3<f32>;

var<private> global3: vec3<i32>;

var<private> global4: f32 = 996f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = !(!select(select(select(vec3<bool>(false, global1.b, arg_0), vec3<bool>(global0.b.b, global0.b.c.b, global1.b), vec3<bool>(global1.b, arg_0, arg_0)), !vec3<bool>(global1.c.c, arg_0, arg_0), !vec3<bool>(false, global1.a.c, true)), !select(vec3<bool>(false, global1.b, false), vec3<bool>(false, global1.c.c, arg_0), vec3<bool>(global0.b.a.c, arg_0, false)), !(0i < u_input.a.x)));
    global4 = -554f;
    var var_1 = Struct_2(Struct_1(global1.d, false, select(any(vec4<bool>(arg_0, false, false, global1.c.b)) && false, false, all(select(vec3<bool>(var_0.x, false, false), vec3<bool>(arg_0, global0.b.a.b, global1.a.b), arg_0))), global2.yz), !global0.b.c.b, Struct_1(global1.a.a, global0.b.b, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(global0.a.zx)))))), global0.b.d);
    let var_2 = reverseBits(select(vec3<i32>(i32(-1i) * -1i, 2147483647i, -50958i) ^ ((vec3<i32>(global3.x, u_input.a.x, -1i) >> (u_input.d % vec3<u32>(32u))) & (vec3<i32>(global3.x, u_input.a.x, u_input.a.x) | vec3<i32>(-2147483647i, 29014i, u_input.a.x))), u_input.a.yyx, vec3<bool>(any(!vec3<bool>(true, true, var_0.x)), any(vec4<bool>(var_0.x, true, true, global0.b.a.b)), all(select(vec3<bool>(true, global1.b, global0.b.b), vec3<bool>(global0.b.b, false, false), global0.b.a.b)))));
    var var_3 = vec4<f32>(global0.b.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(172f, -332f))) + _wgslsmith_f_op_f32(f32(-1f) * -1125f))), _wgslsmith_f_op_f32(f32(-1f) * -1134f), -347f);
    return abs(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(39488u), 1u, ~13584u, ~0u), vec4<u32>(20906u, var_1.d, ~4294967295u, select(~4294967295u, 4294967295u, global1.a.b))));
}

fn func_2() -> vec2<u32> {
    let var_0 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, ~global0.b.d, 4294967295u, u_input.b.x), ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 4294967295u, 36175u));
    var var_1 = global0.b.a;
    var var_2 = var_1.d;
    var var_3 = false;
    var var_4 = Struct_3(true);
    return countOneBits(min(vec2<u32>(_wgslsmith_mult_u32(36587u, var_1.a), 16907u) >> (vec2<u32>(func_3(var_4.a), ~var_1.a) % vec2<u32>(32u)), vec2<u32>(19468u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.c.a, u_input.c, global1.a.a, global1.a.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 87525u, var_0.x, 19636u), vec4<u32>(6190u, 0u, 0u, global0.b.c.a), var_0)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    var var_0 = !vec2<bool>(global0.b.c.b, global1.b);
    let var_1 = Struct_5(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.d.x, 1412f, 924f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.a.d.x, 305f, 1000f), vec3<f32>(-720f, global0.a.x, global0.b.c.d.x), vec3<bool>(global1.c.b, true, global0.b.b))), global0.a.x >= -806f)), select(vec3<bool>(var_0.x, true, true), !vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, var_0.x))))), global0.b);
    var var_2 = ~(var_1.b.d & _wgslsmith_add_u32(var_1.b.d, 1u));
    global4 = -839f;
    var var_3 = select(vec3<bool>(false, var_0.x, all(vec4<bool>(true, global0.b.c.b, true, true || var_1.b.a.b))), select(!(!vec3<bool>(global1.a.c, false, global0.b.c.c)), select(vec3<bool>(select(var_1.b.b, true, var_1.b.b), true, global1.b), !vec3<bool>(global0.b.c.c, false, false), !(!vec3<bool>(true, var_0.x, false))), all(select(vec3<bool>(global0.b.b, true, global0.b.b), vec3<bool>(true, global0.b.c.b, global0.b.a.b), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, global0.b.b, false), false)))), all(select(vec3<bool>(true, any(vec4<bool>(true, var_1.b.a.c, false, var_0.x)), arg_0.x >= global3.x), !select(vec3<bool>(true, var_0.x, var_1.b.b), vec3<bool>(global0.b.a.b, global0.b.a.c, var_0.x), true), vec3<bool>(!global1.a.b, true, false))));
    return ~1i;
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    global1 = global0.b;
    global3 = _wgslsmith_clamp_vec3_i32(u_input.a.yww, max(-u_input.a.ywy | u_input.a.wyy, vec3<i32>(-81418i, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, 0i), u_input.a.x)), u_input.a.wxw) ^ vec3<i32>(-1i & (global3.x >> (global0.b.a.a % 32u)), abs(10458i), func_4(vec4<i32>(-1i, ~10081i, 35357i, 0i), func_2() & _wgslsmith_mult_vec2_u32(u_input.d.yy, vec2<u32>(global0.b.d, 112862u)), abs(u_input.a.x)));
    global0 = Struct_5(global0.a, global0.b);
    global1 = global0.b;
    var var_0 = -1i;
    return arg_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 724f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1559f, global2.x)), _wgslsmith_f_op_f32(floor(global1.c.d.x)))) * 1f));
    var var_0 = -select(global3.xz, select(-u_input.a.wx, ~(vec2<i32>(u_input.a.x, global3.x) << (vec2<u32>(global0.b.d, u_input.b.x) % vec2<u32>(32u))), vec2<bool>(global1.c.b, 10393u > global0.b.a.a)), select(func_1(!vec3<bool>(false, true, global1.c.c)), vec2<bool>(any(vec3<bool>(global1.b, false, false)), global0.b.c.c), select(true, 61825u <= u_input.b.x, func_1(vec3<bool>(global0.b.c.b, false, global0.b.a.b)).x)));
    global4 = 394f;
    global0 = Struct_5(global0.a, global0.b);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, firstLeadingBit(~vec3<u32>(23552u, 50916u, global0.b.d))), 1u, 20461u);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.c.a, -1i);
}


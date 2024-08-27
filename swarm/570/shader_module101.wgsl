struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(13115u);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    global1 = ~arg_1.a;
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-553f, 137f, -1988f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-344f, 267f, -393f) - vec3<f32>(-1221f, 293f, -643f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, -1000f, -1399f))))))));
    let var_1 = Struct_2(!(_wgslsmith_mod_i32(-global2.x, i32(-1i) * -12824i) >= -1i));
    var var_2 = select(vec2<bool>(var_1.a, all(select(select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(true, false, var_1.a), false), vec3<bool>(var_1.a, true, true), vec3<bool>(var_1.a, false, false)))), vec2<bool>(var_1.a, !any(vec4<bool>(var_1.a, var_1.a, false, true))), !select(vec2<bool>(true, true), vec2<bool>(!var_1.a, var_1.a), select(!vec2<bool>(false, var_1.a), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, true), true), var_1.a)));
    var var_3 = false;
    return -693f;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(func_3(0u, Struct_1(global0.a))), _wgslsmith_f_op_f32(297f * -522f), _wgslsmith_div_f32(-474f, -718f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1726f, -2985f, -352f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(213f, 963f, -1141f) + vec3<f32>(-1000f, 216f, 618f)))))));
    var var_1 = var_0;
    global0 = Struct_1(7777u);
    global0 = Struct_1(~u_input.c.x);
    var var_2 = _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b >> (vec4<u32>(abs(u_input.c.x) & _wgslsmith_sub_u32(1u, 1u), 1u, 59455u, _wgslsmith_clamp_u32(global0.a, global0.a, 0u)) % vec4<u32>(32u)), -(~u_input.b));
    return Struct_4(Struct_2(true), Struct_2(all(!select(vec2<bool>(true, true), vec2<bool>(arg_1, true), vec2<bool>(true, false)))), Struct_2(all(vec4<bool>(global0.a < 29379u, false | arg_1, false, all(vec2<bool>(var_1.a.a, true))))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = !(!(!vec3<bool>(any(vec4<bool>(arg_1.c.a, arg_1.c.a, false, true)), true, global2.x != global2.x)));
    return vec2<i32>(11027i, ~u_input.b.x);
}

fn func_1() -> Struct_2 {
    global2 = func_4(~1u, func_2(Struct_2(select(any(vec2<bool>(true, true)), select(false, false, true), any(vec3<bool>(true, false, true)))), (all(vec3<bool>(true, false, true)) || false) & true), Struct_1(abs(u_input.c.x | 15986u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1623f, -310f, false)))), _wgslsmith_div_f32(1307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-667f)) - _wgslsmith_div_f32(1000f, 685f))))));
    let var_1 = func_2(func_2(func_2(func_2(func_2(Struct_2(true), true).a, all(vec3<bool>(true, false, false))).c, any(vec3<bool>(false, false, true)) || true).a, true && (var_0 != var_0)).c, all(!vec2<bool>(any(vec4<bool>(true, false, true, false)), -1278f > var_0)));
    var var_2 = select(select(!vec3<bool>(var_1.a.a || var_1.c.a, !var_1.c.a, all(vec4<bool>(false, var_1.a.a, true, var_1.c.a))), !select(!vec3<bool>(var_1.b.a, false, false), vec3<bool>(true, true, true), !vec3<bool>(true, var_1.b.a, var_1.b.a)), vec3<bool>(var_1.a.a, !(!var_1.c.a), true)), vec3<bool>(false && select(true, var_1.b.a, var_1.a.a), any(vec4<bool>(false, all(vec2<bool>(var_1.a.a, var_1.a.a)), all(vec3<bool>(true, var_1.b.a, false)), var_1.c.a)), var_1.b.a), select(vec3<bool>((var_1.c.a | var_1.b.a) | var_1.c.a, true, !var_1.c.a), !vec3<bool>(false, !var_1.b.a, var_1.a.a), !all(!vec4<bool>(var_1.a.a, false, var_1.c.a, var_1.a.a))));
    let var_3 = true;
    return Struct_2(-1284f != var_0);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2) -> Struct_4 {
    global2 = u_input.b.zx & min(func_4(46728u, Struct_4(Struct_2(arg_1.a), func_1(), Struct_2(true)), Struct_1(select(44477u, 0u, true))), vec2<i32>(_wgslsmith_clamp_i32(-global2.x, -2147483647i >> (global0.a % 32u), -2147483647i), ~0i));
    let var_0 = func_2(arg_0.b.a, func_1().a);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.a))), Struct_4(Struct_2(u_input.a >= (-37111i << (global0.a % 32u))), func_2(var_0.c, true & var_0.c.a).c, Struct_2(!(!arg_0.b.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_0.c, vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.a), arg_0.c.x, _wgslsmith_f_op_f32(ceil(arg_0.a)))))));
    var var_2 = Struct_1(global0.a | u_input.c.x);
    var var_3 = Struct_1(26271u);
    return func_2(arg_1, any(!select(vec3<bool>(true, arg_1.a, true), vec3<bool>(true, true, var_0.a.a), vec3<bool>(false, false, true))) || var_1.b.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(383f))), Struct_4(Struct_2(true), Struct_2(false), Struct_2(true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, 753f, -664f, 317f) * vec4<f32>(-288f, 1079f, -680f, -683f))))), func_1());
    global1 = 51759u;
    var var_1 = u_input.d;
    let var_2 = vec4<i32>(global2.x, reverseBits(2147483647i), select(reverseBits(global2.x) & (i32(-1i) * -1i), _wgslsmith_div_i32(global2.x, 14352i) >> (74044u % 32u), var_0.a.a) | u_input.a, func_4(global0.a, var_0, Struct_1(select(4294967295u << (u_input.c.x % 32u), ~4294967295u, true))).x);
    let var_3 = select(!(!select(vec3<bool>(var_0.a.a, var_0.b.a, true), !vec3<bool>(true, var_0.c.a, var_0.b.a), any(vec4<bool>(true, false, var_0.c.a, true)))), vec3<bool>(any(vec3<bool>(var_0.a.a, var_0.b.a, true)), true, true), false);
    var_1 = 20358i;
    var var_4 = var_0.b;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1132f, -942f, _wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(-212f + -1859f)), -1458f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, -310f, -1000f, 396f)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yxz, vec2<i32>(-17551i, global2.x), -2279f, countOneBits(38620u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1u, Struct_1(global0.a))))));
}


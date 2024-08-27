struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32> = vec2<u32>(16242u, 88950u);

var<private> global2: Struct_2;

var<private> global3: Struct_3;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    return Struct_1(global2.d, 691f);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = select(select(!vec3<bool>(global3.a, global4.x == arg_1.x, !global3.a), !select(vec3<bool>(false, global3.a, global3.a), vec3<bool>(global3.a, global3.a, global3.a), true), select(!vec3<bool>(false, global3.a, true), vec3<bool>(global3.a, any(vec2<bool>(global3.a, false)), true), vec3<bool>(global3.e.a <= -843f, false, true))), vec3<bool>(true, global3.c.x >= global4.x, global3.a), !vec3<bool>(global3.a, true, false));
    let var_1 = Struct_2(func_1(), global2.b, global2.c, 679f, func_1());
    var var_2 = ~max(~2703i, u_input.a);
    let var_3 = reverseBits(global4.x);
    global1 = ~(~(~(~u_input.b.xx) ^ u_input.b.yx));
    return max(u_input.d, _wgslsmith_mod_u32(4294967295u, u_input.b.x));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> bool {
    global0 = Struct_2(global2.e, -(~(min(vec4<i32>(18393i, u_input.c, global2.b.x, u_input.a), vec4<i32>(arg_1, -1i, -1i, u_input.a)) ^ select(vec4<i32>(6919i, global2.b.x, 13668i, global0.b.x), vec4<i32>(-2147483647i, u_input.c, global2.b.x, 1i), vec4<bool>(false, true, true, false)))), global2.c, 593f, global3.b);
    let var_0 = abs(vec4<u32>(arg_0, func_3(_wgslsmith_f_op_f32(f32(-1f) * -472f), vec4<u32>(29655u, ~1u, global1.x & 35064u, abs(global4.x))), reverseBits(global1.x), _wgslsmith_mod_u32(abs(global4.x), ~global1.x ^ arg_3.x)));
    let var_1 = arg_2;
    let var_2 = ~(~_wgslsmith_dot_vec4_u32(arg_3, reverseBits(vec4<u32>(50635u, u_input.b.x, 2967u, 2773u))));
    let var_3 = Struct_3(true, func_1(), ~vec2<u32>(0u, u_input.d), global0.c.yxw, Struct_1(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_f_op_f32(-global0.d)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(!(_wgslsmith_div_u32(4294967295u, global4.x) <= 32822u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a * global0.e.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.a + -1000f))), 1000f), global3.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, 373f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.e.a), _wgslsmith_div_f32(1136f, -144f)))), func_1());
    global2 = Struct_2(func_1(), global0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.a) * _wgslsmith_f_op_f32(-global3.e.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.c.x, global3.b.b)))), global3.d.x, -1000f))), _wgslsmith_f_op_f32(266f * _wgslsmith_f_op_f32(-var_0.b.a)), func_1());
    let var_1 = !(!vec4<bool>(!func_2(1u, 1i, vec3<bool>(var_0.a, false, global3.a), vec4<u32>(var_0.c.x, 9712u, var_0.c.x, global3.c.x)), !global3.a, any(select(vec2<bool>(global3.a, true), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    global1 = vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(18929u, global1.x, global1.x, 4294967295u) >> (vec4<u32>(0u, 4294967295u, 4294967295u, 3155u) % vec4<u32>(32u)), ~vec4<u32>(0u, global3.c.x, global4.x, 59370u)), ~vec4<u32>(var_0.c.x, u_input.b.x, var_0.c.x, global1.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, global1.x, global4.x, u_input.b.x), vec4<u32>(124379u, var_0.c.x, 86314u, 55903u), vec4<u32>(u_input.b.x, 3928u, 3329u, global4.x)) % vec4<u32>(32u))), global3.c.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(29883u) | ~u_input.b.x, u_input.b.x), max(vec2<u32>(1u, global1.x), var_0.c | (vec2<u32>(16526u, var_0.c.x) ^ vec2<u32>(global1.x, 72682u)))) % vec2<u32>(32u));
    global4 = min(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d, 92094u), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(40840u, 0u)), vec2<u32>(global3.c.x, 1u) ^ u_input.b.xy, global3.c)), vec2<u32>(84934u, abs(var_0.c.x) << (1u % 32u)), u_input.b.zx), firstLeadingBit(min(firstTrailingBit(select(vec2<u32>(83293u, global3.c.x), var_0.c, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_mod_vec2_u32(var_0.c, global3.c)))));
    let var_2 = var_0;
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.d.x, var_2.d.x), _wgslsmith_f_op_vec2_f32(-global0.c.yx)), _wgslsmith_div_vec2_f32(global0.c.zw, global3.d.xy)))), vec4<i32>(global2.b.x, u_input.c, global2.b.x ^ global2.b.x, 38626i), vec4<i32>(_wgslsmith_div_i32(-(1i >> (u_input.b.x % 32u)), _wgslsmith_div_i32(countOneBits(-1i), ~46696i)), global0.b.x, global0.b.x, select(_wgslsmith_add_i32(~(-40773i), 1087i), _wgslsmith_add_i32(_wgslsmith_mult_i32(30414i, global2.b.x), min(u_input.a, global2.b.x)), !any(var_1.zw))), ~(~reverseBits(min(vec4<u32>(global3.c.x, var_3, 0u, var_3), vec4<u32>(1u, 24235u, global1.x, 9571u)))));
}


struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(1u, 1u, 0u), 2625i), Struct_1(vec3<u32>(948u, 1u, 4294967295u), 1i), Struct_1(vec3<u32>(4294967295u, 57031u, 99446u), 0i), Struct_1(vec3<u32>(58708u, 109201u, 0u), 2147483647i), Struct_1(vec3<u32>(4294967295u, 3973u, 4294967295u), -6556i), Struct_1(vec3<u32>(34363u, 1u, 0u), i32(-2147483648)), Struct_1(vec3<u32>(8757u, 1u, 21114u), -1i), Struct_1(vec3<u32>(1u, 0u, 4294967295u), -1i), Struct_1(vec3<u32>(30926u, 32034u, 33862u), 45468i), Struct_1(vec3<u32>(1u, 4294967295u, 21724u), 0i), Struct_1(vec3<u32>(0u, 9453u, 1u), 40385i), Struct_1(vec3<u32>(4294967295u, 40654u, 1u), 40379i));

var<private> global2: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = 27468u;
    let var_1 = ~_wgslsmith_add_u32(arg_2, arg_2);
    let var_2 = max(1u, ~(~1u)) & ~arg_3.x;
    var var_3 = vec3<i32>(_wgslsmith_add_i32(~1i << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, 91475u), arg_3.yy), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(0u, 27316u))) % 32u), arg_0.x << (((1u ^ arg_2) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 0u, 38648u, 64735u), vec4<u32>(7717u, 0u, u_input.a.x, u_input.a.x))) % 32u)), u_input.b.x, -48644i);
    global2 = select(!global0.xy, select(select(!global0.zx, select(vec2<bool>(true, false), global0.xz, false), arg_1), !global0.xy, select(select(vec2<bool>(true, true), global0.zx, select(global0.zy, vec2<bool>(true, false), global0.zy)), !(!global0.xz), arg_1)), !(!global2.x));
    return select(!vec3<bool>(arg_1, true, any(!global0.xz)), vec3<bool>(all(select(!vec2<bool>(true, arg_1), select(vec2<bool>(false, global0.x), vec2<bool>(global2.x, true), global0.yy), global0.zx)), true, true & global0.x), vec3<bool>(any(select(!vec4<bool>(true, global2.x, arg_1, false), select(vec4<bool>(true, false, false, false), vec4<bool>(global0.x, arg_1, global2.x, global0.x), false), u_input.c.x == var_3.x)), global2.x, arg_1));
}

fn func_2() -> vec3<bool> {
    let var_0 = 2147483647i & u_input.c.x;
    global0 = !(!vec3<bool>(global0.x, true, !(!global0.x)));
    return !select(func_3(vec3<i32>(1i, -var_0, var_0), u_input.a.x >= max(u_input.a.x, 51196u), 4294967295u, _wgslsmith_mult_vec3_u32(min(vec3<u32>(8411u, u_input.a.x, 30805u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), !select(vec3<bool>(global0.x, false, global2.x), !vec3<bool>(global2.x, true, global0.x), !global0.x), vec3<bool>(false, true, !select(true, global0.x, true)));
}

fn func_1() -> Struct_3 {
    global0 = !(!func_2());
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) + _wgslsmith_div_f32(885f, _wgslsmith_f_op_f32(f32(-1f) * -576f)));
    global0 = vec3<bool>(false, true, !global0.x);
    global2 = vec2<bool>(all(vec2<bool>(all(vec4<bool>(global0.x, true, global0.x, global2.x)), true)), true);
    global2 = global0.yy;
    return Struct_3(true, !select(vec4<bool>(true, true, any(global0.yz), true), !vec4<bool>(global2.x, global0.x, false, global0.x), true), _wgslsmith_f_op_f32(exp2(var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.xz;
    let var_0 = func_1();
    global0 = !(!var_0.b.yyx);
    global1 = array<Struct_1, 12>();
    global2 = vec2<bool>(global0.x & func_3(select(u_input.c, u_input.c, vec3<bool>(false, global2.x, false)) | -u_input.c, !(4294967295u >= u_input.a.x), 0u, vec3<u32>(1u, ~74237u, u_input.a.x | 0u)).x, !all(!(!vec3<bool>(global2.x, var_0.b.x, global0.x))));
    let var_1 = all(!vec2<bool>(global0.x, false));
    var var_2 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.c << (vec3<u32>(0u, max(75959u, 19576u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u)) % vec3<u32>(32u))), abs(~max(vec3<i32>(u_input.b.x, -2147483647i, -29149i), ~u_input.c)), ~u_input.c);
    let var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1813f, var_0.c, var_0.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 1053f, var_0.c))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(314f, var_0.c, var_0.c)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 1469f, -118f) * vec3<f32>(-351f, var_0.c, 521f)), var_0.b.yxw)))))), ~(~4294967295u));
}


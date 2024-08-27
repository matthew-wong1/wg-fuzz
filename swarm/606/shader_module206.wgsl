struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 29>;

var<private> global2: u32 = 79683u;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 29>();
    global3 = !select(vec2<bool>(true, !(-233f >= global0.a.e.x)), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, global0.a.a.c), vec2<bool>(global0.c.c, global0.a.d.b)), !all(vec2<bool>(global0.c.b, false))), !all(vec4<bool>(global3.x, global3.x, false, global0.c.c)));
    var var_0 = !vec4<bool>(true, global3.x, global0.a.a.d == _wgslsmith_mod_i32(reverseBits(u_input.a.x), ~(-33248i)), !(global0.a.a.e == _wgslsmith_f_op_f32(2354f * global0.a.d.e)));
    return 152f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    return 4648u;
}

fn func_2() -> i32 {
    global2 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1315f, global0.a.b.x, global0.c.e) + _wgslsmith_f_op_vec4_f32(global0.a.e * global0.a.e)))), vec4<f32>(global0.d.a, -2424f, global0.b.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))))), Struct_1(_wgslsmith_mod_vec3_u32(global0.c.a, global0.a.a.a) | vec3<u32>(~0u, global0.a.c.a.x | 17015u, reverseBits(global0.e)), all(vec2<bool>(all(vec3<bool>(global0.a.d.c, global3.x, global3.x)), global3.x)), !global3.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a.d, u_input.a.x), ~vec2<i32>(0i, -58782i)), 1i), _wgslsmith_f_op_f32(select(global0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-511f))), !(!global0.c.b)))), global0.a.d.a.x);
    let var_0 = !select(vec2<bool>(!(global3.x & true), !(global0.a.a.c | global3.x)), !(!vec2<bool>(global3.x, global0.c.c)), global3.x);
    var var_1 = true;
    let var_2 = u_input.a.x;
    let var_3 = vec4<i32>(-var_2, global0.a.d.d, _wgslsmith_sub_i32(global0.c.d, u_input.a.x), var_2);
    return -2147483647i;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = -1i;
    var var_1 = arg_1;
    var var_2 = Struct_2(arg_1, global0.a.b, Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.a.x, arg_1.a.x, var_1.a.x), global0.c.a), !(!global0.a.d.b) && false, global0.c.c, arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))), Struct_1(min(~vec3<u32>(var_1.a.x, arg_1.a.x, 4294967295u) | abs(vec3<u32>(var_1.a.x, 85715u, 1u)), var_1.a), min(abs(global0.a.a.a.x), _wgslsmith_mult_u32(arg_1.a.x, 0u)) > (1u ^ firstTrailingBit(arg_1.a.x)), var_1.b, 22004i, var_1.e), _wgslsmith_f_op_vec4_f32(global0.a.e + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1034f, arg_1.e, global0.c.e, global0.b.a))), _wgslsmith_f_op_vec4_f32(ceil(global0.a.e))))));
    let var_3 = 137f;
    global3 = !(!vec2<bool>(_wgslsmith_clamp_i32(78848i, var_2.d.d, -2147483647i) > 1i, arg_1.c));
    return Struct_4(global0.a, global0.b, arg_1, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, var_2.a.e) + -780f))), 57465u);
}

fn func_1() -> i32 {
    global0 = func_5(14230i, Struct_1(vec3<u32>(~_wgslsmith_add_u32(global0.e, 0u), ~13929u | _wgslsmith_add_u32(18933u, global0.e), _wgslsmith_mult_u32(4294967295u, global0.c.a.x)), true, any(vec3<bool>(global0.a.d.c, true, global0.c.b)), firstTrailingBit(func_2()) << (global0.a.c.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-240f, global0.d.a))))));
    var var_0 = _wgslsmith_div_i32(~global0.c.d, -1i);
    global0 = func_5(-2147483647i, Struct_1(vec3<u32>(~global0.c.a.x, 1u, firstLeadingBit(global0.c.a.x)), !all(vec4<bool>(global3.x, global3.x, false, false)), !(global3.x && (global0.e == global0.e)), 2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d.a + global0.a.b.x)))))));
    let var_1 = global0.a.e;
    global4 = -1000f;
    return func_5(-_wgslsmith_div_i32(-1i, global0.a.d.d), global0.c).a.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(1300i, u_input.a.x)), func_1() << (~global0.e % 32u), 1i), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.e.x)));
    var var_2 = func_5(u_input.a.x, global0.a.c);
    let var_3 = select(vec2<bool>(select(var_2.c.b, global0.c.c, all(select(vec4<bool>(global0.a.d.c, var_2.c.c, true, global0.a.c.b), vec4<bool>(global0.c.c, var_2.a.c.b, global0.c.b, global3.x), vec4<bool>(true, true, global3.x, var_2.a.d.b)))), !any(select(vec3<bool>(var_2.a.d.c, false, false), vec3<bool>(var_2.c.c, global0.a.c.c, false), global0.a.a.b))), select(!vec2<bool>(266f >= var_2.d.a, true), !vec2<bool>(var_2.c.c, global3.x), !global3.x), select(vec2<bool>(select(false | global0.c.b, any(vec4<bool>(true, false, global3.x, false)), false), false), select(select(!vec2<bool>(global0.c.b, global3.x), !vec2<bool>(global0.c.b, false), select(vec2<bool>(false, global0.a.a.c), vec2<bool>(global3.x, false), vec2<bool>(var_2.c.c, var_2.c.c))), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), global0.c.c & false)), !vec2<bool>(false, var_2.c.b)));
    let var_4 = true;
    var var_5 = 11868i;
    let var_6 = func_5(~(~(-1i)), global0.c).a;
    var var_7 = global0.a.c.a;
    let var_8 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(global0.a.d.a.x >> (4294967295u % 32u), ~1u, global0.a.a.a.x)), var_1, var_6.d.a.xy, var_8.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.e.x, _wgslsmith_f_op_f32(-var_1))))));
}


struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = vec2<bool>(_wgslsmith_add_i32(min(select(0i, 11879i, global1.d), 0i), -1i) != (_wgslsmith_sub_i32(_wgslsmith_add_i32(22386i, -82397i), global1.a.a.x) & _wgslsmith_mod_i32(~global1.b.a.x, ~1i)), global0.x);
    var var_1 = global2.a.d.d;
    var var_2 = reverseBits(~max(vec4<i32>(1i, -global2.b.a.x, global1.a.a.x << (4294967295u % 32u), _wgslsmith_clamp_i32(global2.a.a.x, -36475i, global1.a.a.x)), vec4<i32>(-1i) * -vec4<i32>(global2.a.a.x, global1.a.a.x, global1.b.a.x, global2.b.a.x)));
    return select(select(!(!vec4<bool>(global1.d, global2.a.d.b, false, var_0.x)), vec4<bool>(false, all(vec4<bool>(true, var_0.x, global2.a.c.b, false)) && false, all(vec2<bool>(false, global0.x)) || global2.d, global2.b.b.b), vec4<bool>(false, true, global0.x, false)), select(select(vec4<bool>(global0.x, true, select(true, global2.a.c.b, global1.d), var_2.x > 1i), select(vec4<bool>(global0.x, true, global2.a.c.b, false), select(vec4<bool>(global1.a.c.b, var_0.x, global0.x, global2.b.d.b), vec4<bool>(false, var_0.x, false, false), vec4<bool>(global1.a.b.b, false, global2.d, true)), all(var_0)), global0.x), vec4<bool>(!any(vec4<bool>(true, global2.b.d.b, global1.b.d.b, global2.b.b.b)), global0.x, all(select(var_0, var_0, true)), !select(false, false, var_0.x)), all(!(!vec4<bool>(true, false, false, global0.x)))), all(!global0.ww));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e - -1853f) * _wgslsmith_f_op_f32(-global1.b.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.e))), global1.b.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.e + global2.b.c.a))));
    let var_1 = all(vec2<bool>(all(select(func_3(global2.b.b.d.x), !vec4<bool>(global2.d, false, global2.d, global2.d), all(vec3<bool>(false, global0.x, false)))), !(global2.b.a.x < global1.b.a.x)));
    var var_2 = global1.b;
    let var_3 = vec4<u32>(~(~(~(~global1.c))), u_input.a, ~(~(1u & _wgslsmith_div_u32(var_2.c.d.x, var_2.b.d.x))), 1u);
    let var_4 = -151f;
    return _wgslsmith_f_op_f32(-var_4);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = global1.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    global2 = Struct_3(global2.a, Struct_2(_wgslsmith_clamp_vec2_i32(-vec2<i32>(global2.a.a.x, global2.b.a.x), ~_wgslsmith_mult_vec2_i32(global2.a.a, vec2<i32>(-1i, -2147483647i)), global2.b.a), global2.a.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_add_u32(u_input.a, 42750u) > ~global1.b.c.c, (9873u ^ u_input.a) >> (_wgslsmith_mult_u32(u_input.a, global2.a.c.c) % 32u), global1.b.b.d), global1.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(352f, -859f, false)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.d.a))))), abs(~global2.c), global1.a.b.b);
    global0 = select(select(select(!(!vec4<bool>(false, global0.x, global2.b.c.b, true)), !vec4<bool>(true, global2.d, false, false), true), select(vec4<bool>(true, global1.b.b.b, true, any(vec4<bool>(global0.x, global1.b.b.b, global0.x, global1.b.d.b))), func_3(~1u), global0.x), global2.a.c.b == any(!global0.ww)), vec4<bool>(global2.b.b.b && false, !any(global0.xwx), _wgslsmith_div_i32(reverseBits(global2.b.a.x), -2678i) <= abs(abs(-16536i)), all(!(!vec3<bool>(false, true, global1.a.c.b)))), !(!select(!vec4<bool>(true, global0.x, global2.d, true), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, true, global1.d, false), vec4<bool>(false, true, global1.b.c.b, global0.x)), select(vec4<bool>(global1.d, false, global2.d, global0.x), vec4<bool>(global0.x, global2.a.b.b, true, global1.b.b.b), vec4<bool>(true, global0.x, true, false)))));
    global2 = Struct_3(global2.a, global2.a, 4294967295u, -1i != global2.a.a.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1490f);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    global1 = Struct_3(Struct_2(arg_1.a, arg_1.c, global1.b.d, global1.a.c, arg_1.e), Struct_2(_wgslsmith_div_vec2_i32(~global2.a.a, -vec2<i32>(global1.b.a.x, 2147483647i)), global1.a.d, arg_1.c, global2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b.c.a, _wgslsmith_f_op_f32(f32(-1f) * -996f))))), ~(~u_input.a), global0.x);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -302f);
    global0 = select(!(!func_3(1u)), !func_3(arg_1.c.c), true);
    global2 = Struct_3(global2.a, Struct_2(vec2<i32>(~0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.a.x, global2.b.a.x, -15215i, 29408i), vec4<i32>(2147483647i, arg_1.a.x, 73088i, 35517i))), arg_1.c, arg_1.d, Struct_1(_wgslsmith_f_op_f32(floor(1302f)), global2.d, ~53408u, select(global2.a.b.d, global1.b.c.d, arg_1.c.b)), global2.b.d.a), 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a.b.a - 1721f))))) >= global2.a.d.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e, global1.b.b.a, global1.a.b.a, -523f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(474f, arg_1.c.a, -2336f, 531f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a, 294f, 163f, global1.a.e) * vec4<f32>(490f, arg_1.d.a, arg_1.d.a, 840f))))), vec4<f32>(global2.a.b.a, -610f, 461f, _wgslsmith_f_op_f32(-global2.b.c.a))));
    return Struct_4(~vec4<u32>(countOneBits(arg_1.b.d.x), 87919u, 86627u, _wgslsmith_add_u32(arg_1.d.c, 0u)), Struct_3(global1.a, Struct_2(vec2<i32>(2147483647i, reverseBits(arg_1.a.x)), Struct_1(_wgslsmith_f_op_f32(var_1.x * -389f), false, global1.c << (global2.b.b.d.x % 32u), arg_1.d.d), global2.a.c, Struct_1(_wgslsmith_f_op_f32(1000f * arg_1.e), true, 0u, _wgslsmith_mult_vec3_u32(global2.b.b.d, global2.b.d.d)), _wgslsmith_f_op_f32(global2.a.c.a + _wgslsmith_f_op_f32(-arg_1.b.a))), _wgslsmith_sub_u32(~0u, ~(~1u)), true), Struct_3(Struct_2(arg_1.a, arg_1.b, arg_1.b, arg_1.b, 405f), arg_1, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 0u)), countOneBits(arg_1.b.d)), 30462u), global1.a.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_i32(countOneBits(0i), global2.b.a.x), Struct_2(_wgslsmith_div_vec2_i32(global1.a.a, ~global1.a.a), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<f32>(351f, global1.b.d.a, -1000f, -974f))))), global1.b.b.b, _wgslsmith_sub_u32(1u, ~u_input.a), select(_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.c.d.x, 0u, global2.c), vec3<u32>(46696u, u_input.a, u_input.a)), vec3<u32>(1u, 59437u, 4294967295u), false)), global1.a.c, global2.b.b, _wgslsmith_f_op_f32(-445f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-558f)) * 1064f))), -global1.b.a.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -393f);
    var_0 = func_4(13330i, func_4(global1.a.a.x, global2.a, global2.b.a.x).b.a, var_0.b.b.a.x);
    var var_2 = ~vec4<u32>(57842u, _wgslsmith_mod_u32(u_input.a, ~global2.a.d.d.x), 0u, _wgslsmith_mult_u32(0u, global1.a.d.d.x));
    let var_3 = global1.b.a.x;
    let var_4 = global1.b.d.b;
    let var_5 = var_0.b.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(var_0.b.a.a | (vec2<i32>(16116i, 7577i) & global1.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.b.a, global1.a.b.a, var_0.b.a.c.a), vec3<f32>(global2.a.b.a, -1511f, -228f), global2.d))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.e, 743f, 722f) + vec3<f32>(-179f, -2185f, 143f))))))), global2.a.c.d);
}


struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(47261u, -1i, Struct_3(vec2<u32>(1u, 1u), false, Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false), vec4<bool>(true, false, true, true)), false), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<bool>(false, true, true, true))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_div_u32(41914u, 114398u ^ (arg_0.x ^ 69166u)), arg_0.x), global0.b, global0.c);
    var_0 = Struct_4(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 6734u), vec3<u32>(global0.a, 21484u, 1u)), 1u)), countOneBits(u_input.c.x), var_0.c);
    var var_1 = select(select(global0.c.e.c, vec4<bool>(true, var_0.c.d.a.a.x, false, abs(u_input.b.x) < 1u), true), !(!var_0.c.e.c), -118f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(505f))))));
    let var_2 = ~vec4<i32>(_wgslsmith_add_i32(0i, firstLeadingBit(_wgslsmith_mult_i32(var_0.b, 2147483647i))), max(2147483647i, 2318i), ~(-10796i), global0.b);
    global0 = Struct_4(~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, 48763u), ~arg_0.x) ^ ~(u_input.d >> (~25464u % 32u)), ~var_0.b, Struct_3(vec2<u32>(var_0.a, _wgslsmith_add_u32(61484u, arg_0.x)), !var_1.x, global0.c.d, global0.c.c, Struct_1(!vec3<bool>(var_0.c.d.b, global0.c.c.a.a.x, global0.c.c.a.b.x), !select(var_1.wx, vec2<bool>(true, false), vec2<bool>(var_1.x, false)), select(vec4<bool>(global0.c.d.a.b.x, false, false, global0.c.e.a.x), var_0.c.c.a.c, vec4<bool>(var_1.x, var_1.x, true, false)))));
    return abs(var_0.c.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = !(global0.c.a.x < _wgslsmith_div_u32(func_3(~vec2<u32>(u_input.d, 0u)), u_input.b.x));
    let var_1 = abs(~(firstTrailingBit(~global0.c.a) & firstLeadingBit(global0.c.a)));
    let var_2 = global0.c;
    let var_3 = Struct_3(~(~reverseBits(_wgslsmith_mult_vec2_u32(var_2.a, global0.c.a))), var_0, global0.c.d, global0.c.c, global0.c.d.a);
    let var_4 = abs(_wgslsmith_mult_vec3_u32(~(~u_input.b) << (vec3<u32>(_wgslsmith_add_u32(30036u, var_2.a.x), ~u_input.b.x, 1u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(var_2.a.x, 57462u), firstLeadingBit(_wgslsmith_add_u32(var_1.x, 79121u)), _wgslsmith_add_u32(~global0.a, var_3.a.x & 48834u))));
    return var_2.d.a;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = false;
    global0 = Struct_4(global0.a, 21052i, Struct_3(select(_wgslsmith_sub_vec2_u32(~u_input.b.zz, ~vec2<u32>(4294967295u, 1u)), ~(~u_input.b.xy), true), true, Struct_2(func_2(), _wgslsmith_f_op_f32(max(744f, -119f)) < _wgslsmith_f_op_f32(floor(900f))), global0.c.d, func_2()));
    var var_1 = u_input.b.x;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(26187u, _wgslsmith_add_u32(1u, ~u_input.d) >> (1u % 32u)), global0.c.a);
    return ~firstLeadingBit(9967i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global0.c.a.x, -9661i | -u_input.a.x, global0.c);
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -358f)));
    var_1 = abs(~global0.c.a.x & var_0.c.a.x);
    global0 = var_0;
    var var_3 = 1i < (-11204i ^ _wgslsmith_mod_i32(u_input.e.x, func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(25493i, -42805i, -93258i, u_input.e.x), vec4<i32>(var_0.b, global0.b, 2147483647i, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(global0.b, -2147483647i) | var_0.b, _wgslsmith_div_i32(31376i, firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b, global0.b, var_0.b, var_0.b), max(vec4<i32>(var_0.b, -34589i, var_0.b, global0.b), vec4<i32>(u_input.a.x, global0.b, 14451i, u_input.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-var_2), 222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))));
}


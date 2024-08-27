struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 30>;

var<private> global3: Struct_1 = Struct_1(4294967295u, 28248u, 13837u, vec4<bool>(true, false, true, true));

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_div_u32(~global3.a, 54730u), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 109404u, 38490u, global3.b), ~(~vec4<u32>(u_input.e.x, u_input.e.x, 49293u, global3.a))), ~(~1782u)), global3.b, select(!(!vec4<bool>(true, global1.d.x, false, global3.d.x)), global3.d, select(global3.d, global1.d, global3.d.x)));
    global0 = array<Struct_1, 14>();
    var var_0 = Struct_1(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global3.b, _wgslsmith_add_u32(~18656u, reverseBits(global3.a)), _wgslsmith_mult_u32(global3.a, global1.b), firstLeadingBit(_wgslsmith_sub_u32(global3.b, 18630u))), vec4<u32>(countOneBits(u_input.e.x) ^ abs(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, u_input.e.x), firstLeadingBit(vec2<u32>(global3.b, 2483u))), ~(~19613u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(16548u, global1.b, global3.c, global3.a), u_input.e))), ~22737u, global1.d);
    let var_1 = Struct_1(_wgslsmith_mod_u32(~1u, ~global1.c), 40643u, global3.c, !vec4<bool>(global1.d.x, !global3.d.x, true, global3.d.x));
    let var_2 = -1124f;
    global3 = Struct_1(~1u, 1u, 2623u, global3.d);
    let var_3 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.a.x ^ _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, -54196i, u_input.a.x, -56063i)), -17164i), u_input.b, 1i), _wgslsmith_mult_vec4_u32(u_input.e, ~u_input.e), 1929f, _wgslsmith_f_op_f32(1197f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 * var_2)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-797f - var_2), _wgslsmith_f_op_f32(min(1000f, 285f))) - var_2) - _wgslsmith_f_op_f32(f32(-1f) * -1391f)));
}


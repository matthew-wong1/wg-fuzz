struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 19>;

var<private> global3: array<bool, 4> = array<bool, 4>(false, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = vec3<i32>(u_input.e.x, -46463i, ~2147483647i);
    var var_1 = firstTrailingBit(abs(reverseBits(select(global0.b, global0.b, global0.c.a.x))) << (vec2<u32>(~abs(global0.c.c.x), (global0.c.c.x & 29898u) | (0u << (1u % 32u))) % vec2<u32>(32u)));
    var_1 = countOneBits(vec2<i32>(global0.b.x, 2147483647i));
    global3 = array<bool, 4>();
    var var_2 = global0.c.c.x;
    return global0.c.a.x;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = !vec2<bool>(func_3(), !(!(!global0.c.a.x)));
    let var_1 = var_0.x;
    let var_2 = global0.b.x;
    global3 = array<bool, 4>();
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 19u)]) + global0.a), global0.b, Struct_1(!(!vec4<bool>(false, false, var_0.x, var_1)), u_input.e.x, vec4<u32>(arg_0.x, global0.c.c.x, ~countOneBits(u_input.c), u_input.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.d)))))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 40995u, arg_0.x), global0.c.c.zxx), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 34207u, 64693u), arg_0)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.d, 0u), vec3<u32>(arg_0.x, u_input.d, 87868u)), select(vec3<u32>(0u, 19864u, arg_0.x), vec3<u32>(0u, 1u, global0.c.c.x), global0.c.a.x))), ~_wgslsmith_mult_u32(~arg_0.x, ~u_input.c), 0u), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, ~global0.c.c.x, countOneBits(u_input.d)), vec3<u32>(u_input.d, u_input.c, abs(0u)))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = vec4<u32>(0u ^ arg_2.a.c.x, _wgslsmith_mult_u32(~(~4294967295u), u_input.d | func_2(vec3<u32>(global0.c.c.x, arg_2.a.c.x, arg_1))), ~(~61787u), max(arg_1, arg_1)) << (firstTrailingBit(vec4<u32>(~(~0u), ~countOneBits(16985u), u_input.c, arg_1)) % vec4<u32>(32u));
    var_0 = vec4<u32>(~46557u, ~(~0u >> (_wgslsmith_sub_u32(28088u, global0.c.c.x) % 32u)), _wgslsmith_dot_vec4_u32(~(~(arg_2.a.c ^ global0.c.c)), ~_wgslsmith_add_vec4_u32(arg_2.a.c, arg_2.a.c) << ((vec4<u32>(54326u, 111335u, 4294967295u, u_input.c) << (global0.c.c % vec4<u32>(32u))) % vec4<u32>(32u))), 1u);
    global1 = false;
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 19u)]), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(40583i, u_input.a), 77346i), vec2<i32>(2147483647i, -1i))), Struct_1(global0.c.a, -u_input.b.x, min(~vec4<u32>(1u, 1338u, u_input.c, 32375u), ~firstLeadingBit(arg_2.a.c)), arg_2.a.d));
    let var_1 = Struct_2(global0.c);
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.c.x, var_0.x), arg_2.a.c.wx), _wgslsmith_mult_u32(0u, var_1.a.c.x) ^ _wgslsmith_mult_u32(1u, var_0.x), u_input.c, _wgslsmith_div_u32(~0u, ~global0.c.c.x)), global0.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + -1221f) * global0.a.x), firstLeadingBit(abs(u_input.d)), Struct_2(Struct_1(global0.c.a, global0.b.x, global0.c.c, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -422f))), -292f, 19287u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1091f, _wgslsmith_f_op_f32(global0.a.x + 456f), -374f, _wgslsmith_div_f32(global0.a.x, -451f)))))));
}


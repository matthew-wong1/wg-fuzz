struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec3<i32>(-31254i, i32(-2147483648), 25715i), vec3<u32>(15765u, 1u, 0u), vec2<bool>(true, true));

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: vec4<f32>;

var<private> global4: array<vec2<i32>, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_1(~(~_wgslsmith_dot_vec3_i32(u_input.c, global0.b)), ~firstTrailingBit(global0.b), firstLeadingBit(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, global1.x, arg_1.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.x, 20427u, 4294967295u), vec4<u32>(4294967295u, u_input.d.x, 4294967295u, 49740u))), 57049u)), !vec2<bool>(arg_1.d.x, any(vec3<bool>(arg_0.d.x, arg_1.d.x, true))));
    var var_1 = vec3<f32>(global3.x, 2413f, global3.x);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -265f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1334f * -1079f), _wgslsmith_f_op_f32(arg_3.x - 312f)));
    var var_2 = var_1.x;
    var var_3 = Struct_1(var_0.a, firstLeadingBit(arg_0.b), ~vec3<u32>(var_0.c.x ^ arg_1.c.x, 1u, _wgslsmith_add_u32(49404u, _wgslsmith_mod_u32(u_input.d.x, arg_2.c.x))), var_0.d);
    return !select(-282f == global3.x, true, any(!select(vec4<bool>(true, arg_1.d.x, true, global0.d.x), vec4<bool>(arg_2.d.x, true, false, false), var_0.d.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    let var_0 = 0u;
    global2 = array<Struct_1, 31>();
    global3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 2374f, global3.x, -1639f))))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(896f, arg_0.x)) + -1116f) - -545f));
    let var_2 = Struct_1(u_input.c.x, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, select(~vec3<i32>(global0.a, global0.b.x, global0.a), ~vec3<i32>(-2147483647i, -12035i, global0.b.x), vec3<bool>(true, true, true))), select(vec3<i32>(select(u_input.c.x, u_input.c.x, true), 1i, u_input.c.x), -global0.b >> (~vec3<u32>(u_input.d.x, global0.c.x, global1.x) % vec3<u32>(32u)), vec3<bool>(global0.d.x || true, true, func_3(Struct_1(4540i, vec3<i32>(global0.b.x, u_input.c.x, global0.b.x), vec3<u32>(u_input.d.x, global0.c.x, 66974u), global0.d), global2[_wgslsmith_index_u32(global1.x, 31u)], Struct_1(global0.a, global0.b, u_input.a, global0.d), vec4<f32>(global3.x, global3.x, var_1, -585f))))), firstLeadingBit(~(~(~u_input.a))), global0.d);
    return _wgslsmith_dot_vec3_i32(u_input.c, var_2.b) & var_2.a;
}

fn func_1() -> vec2<i32> {
    let var_0 = 2147483647i;
    return _wgslsmith_add_vec2_i32(vec2<i32>(abs(abs(min(var_0, 53131i))), _wgslsmith_mod_i32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, global3.x)), global0.d.x), global0.a)), vec2<i32>(u_input.c.x, -13847i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = func_1() ^ _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(16851i, 20861i), ~u_input.c.zy) & (vec2<i32>(1i, u_input.c.x) << (u_input.b % vec2<u32>(32u))), global0.b.zz);
    var var_2 = _wgslsmith_div_f32(876f, -424f);
    global2 = array<Struct_1, 31>();
    var var_3 = 4294967295u;
    var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, 1u, abs(var_0)), vec3<u32>(select(4294967295u, ~var_0, false), global1.x, _wgslsmith_mod_u32(87785u, var_0) << (_wgslsmith_div_u32(u_input.a.x, var_0) % 32u))) << (60512u % 32u);
    global2 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, var_1.x, ~(~u_input.c.x), _wgslsmith_mod_i32(firstTrailingBit(-39510i), _wgslsmith_mult_i32(-32799i, 24039i))));
}


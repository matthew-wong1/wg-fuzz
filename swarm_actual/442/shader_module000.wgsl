struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: Struct_5;

var<private> global3: Struct_3;

var<private> global4: array<f32, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec2<i32> {
    var var_0 = u_input.c;
    return vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), ~u_input.a), vec2<i32>(u_input.c, max(u_input.a.x, 28774i)))) | _wgslsmith_sub_vec2_i32(-u_input.a, abs(vec2<i32>(countOneBits(-2147483647i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = Struct_2(arg_1.e.a, u_input.a.x, 0i, arg_1.e.d, ((_wgslsmith_mult_i32(u_input.a.x, 21116i) & -3335i) | (firstLeadingBit(arg_1.e.a.x) | 0i)) >> ((1165u << (~arg_1.b % 32u)) % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1722f)), global4[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(arg_1.b, global3.b.x))), 17u)], 1062f);
    let var_2 = Struct_5(arg_0.c ^ ~abs(vec4<u32>(u_input.b.x, arg_1.b, global3.b.x, global3.b.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(global3.a, global3.a))), -136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-229f, 733f)) - -1868f)))));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(min(u_input.c, ~arg_1.e.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(-38136i, u_input.a.x), u_input.a)), 0i, 11540i, u_input.c), -vec4<i32>(36840i, -1i, var_0.b, ~firstLeadingBit(1i)));
    global0 = array<vec2<bool>, 27>();
    return var_3;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>) -> i32 {
    global2 = Struct_5(max(abs(vec4<u32>(u_input.b.x, global2.a.x, global3.b.x, global2.a.x) ^ ~vec4<u32>(21413u, 4294967295u, 5133u, 86753u)), global2.a), global2.b);
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 24u)];
    let var_1 = ~global3.b.zx;
    var var_2 = -2147483647i;
    let var_3 = min(-abs(reverseBits(~vec3<i32>(u_input.a.x, -1i, 1i))), vec3<i32>(arg_1.x, -1i, abs(~countOneBits(arg_1.x))));
    return min(func_3(Struct_1(-1592f, 4294967295u, vec4<u32>(var_1.x, 24048u, global3.b.x, 1u)), Struct_4(358f, _wgslsmith_sub_u32(global3.b.x, global2.a.x), vec4<bool>(false, true, arg_0, arg_0), vec3<bool>(true, false, arg_0), Struct_2(vec4<i32>(-20349i, arg_1.x, 39803i, 2088i), -2147483647i, var_3.x, global0[_wgslsmith_index_u32(100680u, 27u)], arg_1.x)), arg_2.x, arg_0), u_input.a.x) << (firstTrailingBit(u_input.b.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 17>();
    let var_0 = Struct_2(vec4<i32>(u_input.c, func_2(all(vec2<bool>(true, true)), ~func_1(vec4<bool>(false, true, true, false), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 17u)], 0u, global2.a), vec3<bool>(false, true, false), vec3<u32>(1u, 0u, 4294967295u)), global2.b), -38071i, 1i), countOneBits(u_input.a.x), -2147483647i, !(!vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), any(vec4<bool>(false, false, true, false)))), ~u_input.c);
    var var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1303f, global2.b.x, global2.b.x, 1055f) + vec4<f32>(-2011f, global2.b.x, global2.b.x, global2.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(select(419f, 194f, var_0.d.x)), -396f, -2143f, global2.b.x)), vec4<f32>(global4[_wgslsmith_index_u32(global3.b.x, 17u)], _wgslsmith_f_op_f32(-global3.a), 722f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.b.x, global3.b.x), 17u)]))), global3.b.x >> (51292u % 32u));
}


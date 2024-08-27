struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(269f, -133f, 438f, 1551f);

var<private> global1: array<vec3<bool>, 17>;

var<private> global2: bool;

var<private> global3: array<i32, 8>;

var<private> global4: Struct_4 = Struct_4(vec2<bool>(true, false), Struct_3(true), Struct_2(1u), vec3<u32>(4294967295u, 9098u, 37503u), Struct_1(vec3<u32>(0u, 12806u, 4134u), 41080u, vec3<u32>(24353u, 2899u, 20392u), vec2<f32>(-630f, 511f)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec2<bool>(all(vec4<bool>(true, true, global4.b.a, true)), global4.b.a | false);
    let var_1 = Struct_1(u_input.d, 4294967295u, u_input.d, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.e.d) - vec2<f32>(_wgslsmith_f_op_f32(-global4.e.d.x), _wgslsmith_div_f32(global4.e.d.x, global0.x))))));
    return u_input.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_3 {
    var var_0 = 340f;
    global4 = Struct_4(global4.a, Struct_3(true), global4.c, arg_1.e.c, arg_2);
    var var_1 = global1[_wgslsmith_index_u32(arg_0.a.x, 17u)];
    global2 = true;
    var var_2 = _wgslsmith_sub_u32(u_input.d.x, ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_2.b, arg_2.b, global4.d.x), firstTrailingBit(vec4<u32>(u_input.d.x, 4294967295u, arg_1.e.a.x, global4.e.a.x))) >> (_wgslsmith_clamp_u32(max(14431u, 67877u), _wgslsmith_clamp_u32(1u, 37435u, arg_2.b), ~1u) % 32u)));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.e.d.x))), _wgslsmith_f_op_f32(sign(1f))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.e.d.x)), _wgslsmith_f_op_f32(global4.e.d.x * arg_0.d.x))), arg_1.e.d.x)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_5 {
    var var_0 = func_3(Struct_1(~vec3<u32>(_wgslsmith_clamp_u32(8555u, u_input.c, 13824u), ~global4.e.a.x, global4.c.a), ~(~func_2(0u)), ~u_input.d, _wgslsmith_f_op_vec2_f32(global0.zy * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), _wgslsmith_f_op_f32(f32(-1f) * -683f)))), Struct_4(vec2<bool>(true, false), Struct_3(all(global1[_wgslsmith_index_u32(abs(global4.d.x), 17u)])), global4.c, select(u_input.d << (vec3<u32>(u_input.c, u_input.c, global4.e.a.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 22925u, 1u), vec3<u32>(2012u, global4.d.x, 32429u)), select(vec3<bool>(false, global4.a.x, false), vec3<bool>(true, true, true), false)) >> (firstTrailingBit(vec3<u32>(785u, 62207u, 29975u)) % vec3<u32>(32u)), Struct_1(global4.d, 60287u, _wgslsmith_mult_vec3_u32(~vec3<u32>(global4.e.a.x, 0u, global4.c.a), global4.e.a), vec2<f32>(-1344f, -1199f))), Struct_1(~firstLeadingBit(global4.e.c), global4.c.a & ~_wgslsmith_mult_u32(global4.e.c.x, u_input.d.x), vec3<u32>(~_wgslsmith_mod_u32(global4.d.x, global4.c.a), 1u, 4294967295u), global4.e.d));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global4.e.d.x)), global0.x, -615f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global4.e.d.x, -652f), _wgslsmith_f_op_f32(-global4.e.d.x))))));
    global3 = array<i32, 8>();
    var_0 = global4.b;
    var var_1 = Struct_3(global4.a.x);
    return Struct_5(1u, true, arg_0, ~vec3<u32>(~global4.c.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global4.d.x, 7845u, u_input.d.x, 13060u), vec4<u32>(u_input.c, global4.e.b, 68128u, global4.d.x)), vec4<u32>(50779u, u_input.d.x, 12989u, u_input.c) & vec4<u32>(77138u, u_input.d.x, 95522u, u_input.d.x)), firstLeadingBit(4294967295u) ^ countOneBits(u_input.c)), Struct_3(~global3[_wgslsmith_index_u32(4294967295u, 8u)] == (global3[_wgslsmith_index_u32(31389u, 8u)] << (4294967295u % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec4<i32>) -> StorageBuffer {
    global4 = Struct_4(!global4.a, Struct_3(!all(!vec4<bool>(true, arg_1.b, arg_1.b, global4.b.a))), global4.c, arg_1.d, Struct_1(vec3<u32>(abs(11808u), firstLeadingBit(firstLeadingBit(arg_2.c.x)), global4.d.x), 1u, vec3<u32>(59454u & arg_1.a, ~8012u, 22087u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.ww, global4.e.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, 294f) + global4.e.d)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.d), global0.wz)))));
    var var_0 = 20899u;
    global3 = array<i32, 8>();
    var var_1 = global4.a;
    global1 = array<vec3<bool>, 17>();
    return StorageBuffer(1u, 29144i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global4.c, func_1(~(~vec2<i32>(2147483647i, u_input.a))), global4.e, ~_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(abs(u_input.a), func_1(vec2<i32>(-2147483647i, 23467i)).c.x, abs(u_input.a), _wgslsmith_add_i32(u_input.a, -3560i))));
}


struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, 14128i), false, 0u, vec2<bool>(true, true));

var<private> global1: f32;

var<private> global2: f32 = 1000f;

var<private> global3: Struct_3;

var<private> global4: array<vec3<bool>, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = global3.a;
    global1 = global3.c.x;
    global3 = Struct_3(Struct_2(var_0.a, Struct_1(-vec2<i32>(-1i, global3.a.a.a.x), true, ~25749u, select(global0.d, vec2<bool>(true, var_0.a.d.x), var_0.b.d.x))), vec2<u32>(~50851u, global0.c), global3.c);
    global0 = global3.a.b;
    let var_1 = -_wgslsmith_sub_i32(~0i >> ((~u_input.a & ~global3.a.b.c) % 32u), ~641i << (firstTrailingBit(global0.c) % 32u));
    return select(vec4<bool>(any(select(vec3<bool>(global0.b, false, global3.a.b.d.x), select(global4[_wgslsmith_index_u32(global0.c, 10u)], global4[_wgslsmith_index_u32(1u, 10u)], vec3<bool>(global3.a.b.d.x, global0.d.x, global0.b)), any(global3.a.a.d))), !var_0.b.b, true, true), select(!select(vec4<bool>(true, var_0.a.d.x, false, var_0.a.d.x), select(vec4<bool>(var_0.a.d.x, false, true, global3.a.a.b), vec4<bool>(true, true, false, global3.a.b.b), global3.a.a.d.x), true), vec4<bool>(!any(vec3<bool>(true, false, global0.b)), all(select(vec4<bool>(global3.a.a.d.x, global0.b, global0.b, var_0.a.d.x), vec4<bool>(var_0.a.d.x, false, false, true), vec4<bool>(true, true, var_0.b.b, true))), any(vec2<bool>(true, global0.b)), select(var_0.a.b, !global0.d.x, global3.a.b.d.x | global3.a.a.d.x)), all(global4[_wgslsmith_index_u32(0u, 10u)])), vec4<bool>(var_0.a.b, any(select(!vec4<bool>(true, true, true, var_0.b.d.x), select(vec4<bool>(var_0.b.d.x, var_0.b.b, true, false), vec4<bool>(false, global0.b, true, false), global0.b), !vec4<bool>(var_0.a.d.x, global0.b, global3.a.b.d.x, global3.a.a.d.x))), true, any(!select(vec3<bool>(global3.a.b.b, true, global0.b), global4[_wgslsmith_index_u32(var_0.a.c, 10u)], global4[_wgslsmith_index_u32(1u, 10u)]))));
}

fn func_2() -> Struct_1 {
    global4 = array<vec3<bool>, 10>();
    return Struct_1(vec2<i32>(51207i, max(1i, firstLeadingBit(u_input.c))), global0.d.x, ~u_input.b, !vec2<bool>(any(func_3()), any(vec2<bool>(global3.a.a.d.x, true))));
}

fn func_1() -> u32 {
    let var_0 = func_2();
    global0 = global3.a.a;
    global4 = array<vec3<bool>, 10>();
    var var_1 = -505f;
    var var_2 = -vec2<i32>(8868i, _wgslsmith_div_i32(1i, global0.a.x) << (104213u % 32u)) << (global3.b % vec2<u32>(32u));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(min(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(global0.c, 0u, u_input.b)), ~vec3<u32>(1u, 130913u, 4294967295u)), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.a.b.c, var_0.c, 4294967295u), vec4<u32>(28068u, 4294967295u, 0u, 0u)) ^ 12273u, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(1u), abs(u_input.b)), global3.b)), ~firstTrailingBit(vec3<u32>(62905u, ~u_input.a, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~vec4<u32>(_wgslsmith_add_u32(global3.b.x, global3.b.x) >> (select(u_input.b, 55994u, global0.b) % 32u), max(~global0.c, u_input.b >> (global3.a.b.c % 32u)), ~u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(~7363u, ~_wgslsmith_add_u32(global3.a.b.c, global3.a.a.c), func_1(), global3.a.a.c), ~vec4<u32>(0u, 0u & global3.a.a.c, global0.c, 0u ^ global3.b.x)), func_3());
    global4 = array<vec3<bool>, 10>();
    var var_1 = global3.c.zy;
    let var_2 = true;
    var var_3 = global3.a;
    global4 = array<vec3<bool>, 10>();
    var var_4 = -(~vec4<i32>(64211i, ~1i, 0i, -2147483647i));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1945f, global3.c.x)) - global3.c.x))), global3.c.x);
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(-var_3.a.a.x), _wgslsmith_div_i32(countOneBits(u_input.c), -55388i & global0.a.x), u_input.c, ~0i) << (vec4<u32>(71394u, ~18357u, 885u, 6603u) % vec4<u32>(32u)), -_wgslsmith_clamp_i32(reverseBits(~(-1i)), (1i << (var_3.b.c % 32u)) << (select(4294967295u, 1u, var_2) % 32u), ~(~global3.a.b.a.x)), ~var_5.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global3.c * vec3<f32>(1058f, -1105f, global3.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, 297f, global3.c.x)))));
}


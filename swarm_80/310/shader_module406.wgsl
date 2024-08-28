struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, true, true, true, false, false, true, true, true, false, false, true, false, true, true, true, false, false, true, true);

var<private> global2: array<i32, 9>;

var<private> global3: array<i32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(~select(vec2<i32>(global2[_wgslsmith_index_u32(global0.b.x, 9u)], 1i), vec2<i32>(24292i, -33980i), global0.c), global3[_wgslsmith_index_u32(u_input.a, 23u)], 704f), global0.a.b, _wgslsmith_div_f32(global0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(~global0.b), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u | global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 19165u, u_input.a), vec4<u32>(0u, 30285u, u_input.a, u_input.a)), 0u << (0u % 32u), 826u), abs(vec4<u32>(global0.b.x, u_input.a, global0.b.x, global0.b.x)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, 4294967295u, 4294967295u, u_input.a), vec4<u32>(global0.b.x, u_input.a, global0.b.x, 15560u), vec4<u32>(u_input.a, 96265u, 4294967295u, global0.b.x))), 21u)], global0.d);
    global3 = array<i32, 23>();
    var var_1 = global0.a;
    global3 = array<i32, 23>();
    var var_2 = Struct_2(var_1.b, var_1.a, _wgslsmith_f_op_f32(-var_0.a.b.c));
    return _wgslsmith_f_op_f32(round(193f));
}

fn func_1() -> StorageBuffer {
    global3 = array<i32, 23>();
    let var_0 = Struct_2(global0.a.a, Struct_1(_wgslsmith_div_vec2_i32(~(~global0.a.a.a), abs(global0.a.b.a) << (global0.b % vec2<u32>(32u))), _wgslsmith_clamp_i32(~global0.a.b.a.x, global3[_wgslsmith_index_u32(u_input.a, 23u)], -global2[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.c)));
    var var_1 = 0u;
    global0 = Struct_3(var_0, ~max(~(~vec2<u32>(2980u, 47995u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 42032u) >> (vec2<u32>(0u, global0.b.x) % vec2<u32>(32u)), global0.b)), all(vec3<bool>(!(-15484i > global0.a.a.a.x), any(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, 54709u)), 21u)])), -83481i);
    let var_2 = Struct_3(global0.a, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.x ^ 4294967295u, u_input.a) << (~global0.b % vec2<u32>(32u)), global0.b), global0.c, 3545i << ((_wgslsmith_dot_vec2_u32(~global0.b, max(global0.b, global0.b)) | u_input.a) % 32u));
    return StorageBuffer(-(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, 38433i), vec3<i32>(-1i, global0.d, global0.a.b.b)), vec3<i32>(0i, var_2.d, global2[_wgslsmith_index_u32(var_2.b.x, 9u)])) >> (var_2.b.x % 32u)), select(-min(var_0.a.b, _wgslsmith_sub_i32(-2147483647i, global0.d)), global3[_wgslsmith_index_u32(countOneBits(global0.b.x), 23u)], global1[_wgslsmith_index_u32(global0.b.x << (~7201u % 32u), 21u)]), -1000f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(58613u | ~var_2.b.x, ~(~0u)), 0u), 9u)], _wgslsmith_sub_i32(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 9u)], var_0.a.a.x), var_0.a.a)), 53656i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -187f;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    global1 = array<bool, 21>();
    let var_2 = Struct_3(global0.a, global0.b & abs(~_wgslsmith_sub_vec2_u32(global0.b, global0.b)), all(!select(!vec2<bool>(global1[_wgslsmith_index_u32(19925u, 21u)], true), vec2<bool>(global0.c, true), !vec2<bool>(global0.c, false))), -(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42200u, global0.b.x, u_input.a) & vec3<u32>(u_input.a, global0.b.x, 4294967295u), vec3<u32>(4294967295u, 94525u, 1u)), 23u)] | global0.a.b.a.x));
    let var_3 = 261f;
    global2 = array<i32, 9>();
    let var_4 = global0.a.b;
    let x = u_input.a;
    s_output = func_1();
}


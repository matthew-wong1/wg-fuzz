struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: u32;

var<private> global2: i32 = 1i;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-692f, -949f), true), Struct_1(vec2<f32>(2231f, -385f), true), Struct_1(vec2<f32>(-2016f, -1000f), true));

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    return u_input.a.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec4<u32> {
    var var_0 = 0u;
    var var_1 = true;
    global2 = ~41032i;
    var var_2 = select(~min(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(4294967295u, u_input.a.x, 71221u, u_input.a.x)), vec4<u32>(~1u, ~1u, (0u ^ u_input.a.x) ^ 1u, _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x)), select(!select(vec4<bool>(true, arg_0.x, true, global4.b), vec4<bool>(global4.b, false, true, arg_0.x), global4.b), !select(vec4<bool>(false, false, global4.b, arg_0.x), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(global4.b, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(global4.b, global4.b, false, true), vec4<bool>(global4.b, true, arg_0.x, arg_0.x)))) >> ((~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 17677u, u_input.a.x)) >> (select(vec4<u32>(u_input.a.x, 99212u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 30312u, 9399u), vec4<bool>(true, arg_0.x, arg_0.x, global4.b)) % vec4<u32>(32u))) << (~abs(vec4<u32>(0u, 21858u, u_input.a.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = ~select(28840u, var_2.x, !arg_0.x);
    return select(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(28368u, var_2.x, 4294967295u, 15517u), vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u)), ~vec4<u32>(37966u, 2162u, u_input.a.x, var_2.x), false) >> ((vec4<u32>(u_input.a.x, ~4294967295u, 0u, ~var_2.x) << (vec4<u32>(var_2.x, 0u, _wgslsmith_mult_u32(u_input.a.x, 777u), u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~(~(~var_2.x)), ~(~5367u) << (~u_input.a.x % 32u), _wgslsmith_clamp_u32(var_2.x, ~u_input.a.x << (var_2.x % 32u), 0u), 0u), global4.b);
}

fn func_2() -> vec4<u32> {
    global3 = array<Struct_1, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.a.x), global4.a.x), global4.a)), global4.b);
    let var_1 = vec3<bool>(any(vec3<bool>(true, false, true)), false, true);
    var var_2 = u_input.c.x;
    let var_3 = true;
    return ~(~func_3(var_1, -1920f));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = 1u;
    global3 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(func_2().x, 24u)])), 801f)) - 940f);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-670f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 24u)] - global4.a.x)) * _wgslsmith_f_op_vec2_f32(global4.a + global4.a)), vec2<f32>(-1314f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), var_1)))), !any(!select(vec3<bool>(global4.b, false, global4.b), vec3<bool>(global4.b, true, false), true)));
    global2 = arg_0.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1592f, _wgslsmith_f_op_f32(-global4.a.x)) - global4.a), _wgslsmith_f_op_vec2_f32(-global4.a))), global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = global4.b;
    global4 = func_4(vec3<i32>(-1i) * -u_input.b.yyw, _wgslsmith_div_vec4_u32(vec4<u32>(20870u, 1u >> ((u_input.a.x & 1u) % 32u), 4294967295u, func_1(vec4<i32>(u_input.b.x, var_0, -57106i, u_input.b.x)) ^ 48224u), select(func_2(), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), select(select(vec4<bool>(global4.b, global4.b, true, global4.b), vec4<bool>(global4.b, global4.b, true, true), true), !vec4<bool>(global4.b, false, false, true), global0[_wgslsmith_index_u32(4294967295u, 24u)] <= -512f))));
    var var_2 = vec3<i32>(~_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -23018i, 2147483647i), u_input.b.wxy), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, -2147483647i, -2147483647i) << (vec4<u32>(35725u, 0u, 1u, u_input.a.x) % vec4<u32>(32u)), u_input.b | u_input.b)), var_0, u_input.b.x);
    var var_3 = 1f;
    var_2 = abs(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.xwy, u_input.c.xyx)), _wgslsmith_mod_i32((u_input.b.x & 2032i) >> (0u % 32u), _wgslsmith_mult_i32(0i, -1i >> (0u % 32u))), _wgslsmith_dot_vec4_i32(~u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 15686i, 1i, var_2.x), u_input.b))));
    var var_4 = -1000f;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global4.a, global4.a)))), global4.a, select(!(!vec2<bool>(global4.b, false)), !vec2<bool>(false, global4.b), all(select(vec2<bool>(global4.b, true), vec2<bool>(global4.b, true), global4.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), vec3<u32>(~u_input.a.x, 12303u << (u_input.a.x % 32u), ~4294967295u)) & countOneBits(u_input.a), 1172f, -362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f * var_5.x)) * var_5.x) - global4.a.x), ~abs(u_input.a.x) >> (~_wgslsmith_mod_u32(11604u & u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u)) % 32u));
}


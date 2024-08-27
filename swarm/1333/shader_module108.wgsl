struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<i32, 10>;

var<private> global2: f32 = -154f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = u_input.c.x >> (~4294967295u % 32u);
    global0 = array<f32, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.d, 20u)] + 1406f), _wgslsmith_f_op_f32(-arg_0.b)))))));
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.c.xz & reverseBits(vec2<u32>(arg_1, 17191u)), min(vec2<u32>(u_input.c.x, var_0), ~arg_0.c.xz)), 0u);
    var var_3 = -525f;
    return vec4<bool>((_wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(1u, 10u)], -29263i, true), u_input.b) <= ~(-26172i)) && any(select(vec2<bool>(false, true), vec2<bool>(true, false), arg_1 >= var_0)), !select(true | select(true, true, false), !select(false, false, true), ~arg_2.d >= var_0), true, ((0i > global1[_wgslsmith_index_u32(u_input.c.x, 10u)]) && true) != any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), -2252f)))), _wgslsmith_f_op_f32(905f * _wgslsmith_f_op_f32(arg_1.a - -912f)));
    let var_1 = !vec3<bool>(false, any(vec3<bool>(true, true, true)), true);
    var var_2 = !vec4<bool>(var_1.x, !any(var_1), true, arg_0.x >= ~(arg_1.d | arg_1.d));
    var_2 = func_3(Struct_1(_wgslsmith_f_op_f32(ceil(var_0.x)), -1087f, ~_wgslsmith_mod_vec3_u32(arg_1.c, _wgslsmith_sub_vec3_u32(arg_1.c, arg_0)), 0u, reverseBits(vec4<i32>(0i, u_input.a, 51951i, arg_1.e.x))), ~arg_1.d, arg_1);
    var var_3 = vec4<u32>(u_input.c.x, arg_0.x, 0u, 24692u);
    return abs(vec3<u32>(_wgslsmith_add_u32(u_input.c.x & _wgslsmith_add_u32(u_input.c.x, var_3.x), ~u_input.c.x), _wgslsmith_mult_u32(~20125u, arg_0.x), 0u));
}

fn func_1() -> Struct_1 {
    return Struct_1(global0[_wgslsmith_index_u32(abs(4294967295u), 20u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, u_input.c.x) | u_input.c.x, 20u)]), func_2(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), u_input.c)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-920f - 605f), _wgslsmith_f_op_f32(step(446f, global0[_wgslsmith_index_u32(u_input.c.x, 20u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f + global0[_wgslsmith_index_u32(4294967295u, 20u)]) - -1106f), _wgslsmith_sub_vec3_u32(u_input.c & vec3<u32>(16442u, u_input.c.x, 0u), ~u_input.c), ~u_input.c.x, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(-43111i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.a)), 0i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)] >> (u_input.c.x % 32u), 2147483647i))), reverseBits(~(0u | ~u_input.c.x)), vec4<i32>(-1i) * -vec4<i32>(firstTrailingBit(-79461i), i32(-1i) * -23518i, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(vec2<bool>(any(vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true)))), false);
    let var_1 = func_1();
    let var_2 = -1094f;
    var var_3 = _wgslsmith_mod_u32(~u_input.c.x, 61772u);
    let var_4 = Struct_2(func_1(), ~min(var_1.c, ~abs(vec3<u32>(38372u, 4294967295u, u_input.c.x))), Struct_1(-1608f, var_1.a, min(_wgslsmith_mult_vec3_u32(u_input.c, select(var_1.c, vec3<u32>(var_1.c.x, 26209u, 62288u), vec3<bool>(true, var_0.x, var_0.x))), ~(~vec3<u32>(29385u, 16583u, 1u))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, var_1.d), ~u_input.c.x), abs(1u)), vec4<i32>(var_1.e.x, -9309i, ~(~0i), global1[_wgslsmith_index_u32(1u, 10u)] << (u_input.c.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1375f, _wgslsmith_f_op_f32(f32(-1f) * -533f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-736f, 169f)) + vec2<f32>(-1723f, -1000f)))), vec4<i32>(var_1.e.x & select(max(16838i, 0i), -2428i, !var_0.x), global1[_wgslsmith_index_u32(1u, 10u)], u_input.b, var_4.a.e.x), 2147483647i, var_4.c.e);
}


struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 4294967295u, 27245u), vec3<u32>(28710u, 4294967295u, 1u), vec3<u32>(3301u, 2092u, 0u), vec3<u32>(4294967295u, 4294967295u, 7965u), vec3<u32>(10474u, 4294967295u, 1u), vec3<u32>(24896u, 17315u, 81875u), vec3<u32>(62732u, 58989u, 0u), vec3<u32>(18930u, 29179u, 3546u), vec3<u32>(1u, 1718u, 4294967295u), vec3<u32>(23246u, 4294967295u, 42801u), vec3<u32>(53135u, 0u, 0u), vec3<u32>(0u, 1u, 17159u), vec3<u32>(4294967295u, 39523u, 1u), vec3<u32>(731u, 9616u, 14777u), vec3<u32>(4294967295u, 1u, 80651u), vec3<u32>(1u, 1u, 0u), vec3<u32>(92146u, 9945u, 49894u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(114671u, 4294967295u, 1u));

var<private> global2: array<bool, 17>;

var<private> global3: array<bool, 30>;

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1773f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(arg_1.b.x + global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -659f)), -215f))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b.x, -139f))), _wgslsmith_div_f32(arg_1.b.x, -837f), all(arg_3.zx) & true)), -880f, _wgslsmith_f_op_f32(-global0.b.x), 367f));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(var_1.x + -323f), _wgslsmith_f_op_f32(-817f * arg_1.b.x)), _wgslsmith_f_op_vec3_f32(var_1.wzy - vec3<f32>(-703f, var_1.x, -1491f))) + arg_1.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.wwz, global0.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 1000f, var_1.x) + vec3<f32>(-1113f, var_1.x, 896f)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    global4 = array<Struct_2, 20>();
    let var_0 = ~vec3<u32>(firstLeadingBit(~u_input.a), 4294967295u, _wgslsmith_mod_u32(~arg_1.a.a.x, ~5662u));
    let var_1 = global0.a;
    global1 = array<vec3<u32>, 20>();
    let var_2 = Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), Struct_2(global0.a, vec3<f32>(arg_1.b.x, global0.b.x, arg_1.b.x)), global0.a, vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.a.x, 30u)], arg_0, true))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-886f, 927f, -1054f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), global0.b.x, _wgslsmith_div_f32(1271f, -196f)))));
    return var_1.a.x;
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global1 = array<vec3<u32>, 20>();
    let var_0 = global4[_wgslsmith_index_u32(global0.a.a.x, 20u)];
    var var_1 = select(abs(vec3<i32>(49905i, _wgslsmith_mod_i32(-15263i, u_input.c), u_input.c)), max(~(vec3<i32>(u_input.c, u_input.c, u_input.c) | vec3<i32>(3855i, 14714i, u_input.c)), select(vec3<i32>(2147483647i, -2147483647i, 1i), ~vec3<i32>(6655i, 27496i, u_input.c), true)), true) << (global1[_wgslsmith_index_u32(~(36209u & _wgslsmith_mod_u32(func_2(true, global4[_wgslsmith_index_u32(u_input.b.x, 20u)]), firstTrailingBit(4294967295u))), 20u)] % vec3<u32>(32u));
    var var_2 = abs(u_input.c);
    var_2 = var_1.x;
    return 0u;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> bool {
    global1 = array<vec3<u32>, 20>();
    var var_0 = ~vec4<u32>(~(min(arg_3, 12715u) << (arg_3 % 32u)), _wgslsmith_add_u32(select(~arg_3, arg_2.a.a.x, !global2[_wgslsmith_index_u32(101745u, 17u)]), arg_1), 8971u, arg_0.a.a.x);
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(arg_0.a.a.x), u_input.b.x), vec2<u32>(0u, ~arg_3)), abs(vec2<u32>(_wgslsmith_mult_u32(0u, 23210u), ~arg_0.a.a.x))));
    global0 = global4[_wgslsmith_index_u32(arg_1, 20u)];
    global3 = array<bool, 30>();
    return !any(vec4<bool>(abs(1u) <= var_0.x, any(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(0u, 30u)], true)), !global2[_wgslsmith_index_u32(abs(12670u), 17u)], global3[_wgslsmith_index_u32(0u, 30u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 17>();
    let var_0 = 4294967295u;
    var var_1 = 1i;
    global2 = array<bool, 17>();
    var var_2 = any(!vec4<bool>(func_4(global4[_wgslsmith_index_u32(func_1(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(23151u, 17u)])), 20u)], global0.a.a.x, global4[_wgslsmith_index_u32(max(1u, u_input.b.x), 20u)], countOneBits(global0.a.a.x)), global2[_wgslsmith_index_u32((var_0 << (0u % 32u)) ^ global0.a.a.x, 17u)], true, any(select(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 17u)], true, global2[_wgslsmith_index_u32(global0.a.a.x, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], true, global3[_wgslsmith_index_u32(var_0, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(18484u, 30u)], true)))));
    global0 = global4[_wgslsmith_index_u32(min(~global0.a.a.x >> (global0.a.a.x % 32u), _wgslsmith_clamp_u32(~3272u, 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(14143u, 0u, var_0), vec3<u32>(u_input.a, u_input.a, var_0)))), 20u)];
    var_2 = !((i32(-1i) * -2337i) > -(u_input.c | 1i)) && global2[_wgslsmith_index_u32(countOneBits(1u), 17u)];
    var_2 = any(!vec2<bool>(global2[_wgslsmith_index_u32(var_0 & _wgslsmith_mod_u32(42772u, var_0), 17u)], !(global3[_wgslsmith_index_u32(1u, 30u)] || global2[_wgslsmith_index_u32(var_0, 17u)])));
    let var_3 = Struct_1(vec2<u32>(var_0, func_2(-u_input.c != abs(1i), global4[_wgslsmith_index_u32(38145u, 20u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(_wgslsmith_mod_i32(u_input.c, -61844i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a.x, var_0, 0u), global1[_wgslsmith_index_u32(global0.a.a.x, 20u)]) % 32u)), 34747i, ~(-1i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -1251f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.x, 575f), vec2<f32>(1000f, -168f))))))));
}


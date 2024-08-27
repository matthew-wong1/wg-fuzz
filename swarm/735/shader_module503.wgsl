struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<f32, 15>;

var<private> global2: array<f32, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    global2 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(floor(arg_2.d)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d), arg_2.d))));
    return !select(vec3<bool>(select(true, global0.x || arg_2.b.x, false), all(arg_2.b.xzy), reverseBits(u_input.c.x) >= _wgslsmith_mult_u32(u_input.c.x, u_input.a.x)), arg_2.b.xxw, global0.x);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(30899u) >> (_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zy) % 32u), 29u)] * _wgslsmith_f_op_f32(max(225f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 9907u), 15u)]))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-686f))));
    global0 = !vec3<bool>(global0.x, global0.x, false);
    global2 = array<f32, 29>();
    global0 = !(!(!select(func_3(582f, 2147483647i, Struct_1(false, vec4<bool>(global0.x, global0.x, global0.x, global0.x), 3872i, -863f, 2147483647i)), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x))));
    let var_1 = select(vec3<u32>(u_input.c.x, min(min(5132u, u_input.c.x), 1u), u_input.a.x), ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.c.x, 22470u), u_input.a), false) << (vec3<u32>(0u, ~u_input.a.x, ~51253u >> ((~u_input.b | ~u_input.c.x) % 32u)) % vec3<u32>(32u));
    return Struct_3(Struct_2(~(-min(u_input.d, u_input.d)), ~u_input.b, true, Struct_1(global0.x, vec4<bool>(var_1.x >= var_1.x, u_input.d < u_input.d, global0.x, 98667u == var_1.x), -abs(u_input.d), 914f, -1i)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(28028u & firstLeadingBit(u_input.c.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_0, arg_0), vec4<u32>(arg_0, 0u, 0u, arg_0)) >> (0u % 32u))), 29u)]);
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 169i), -firstLeadingBit(min(vec2<i32>(0i, u_input.d) & vec2<i32>(-5625i, var_0.a.a), -vec2<i32>(-26328i, u_input.d))));
    var var_2 = all(var_0.a.d.b);
    var var_3 = ~0u;
    global2 = array<f32, 29>();
    return max(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -187f)) + _wgslsmith_f_op_f32(-var_0.a.d.d)) - _wgslsmith_f_op_f32(var_0.a.d.d + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 15u)])))).a.a, func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(4294967295u) | max(var_0.a.b, arg_0), 15u)])).a.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 29>();
    var var_0 = Struct_1(abs(_wgslsmith_sub_i32(40167i, _wgslsmith_clamp_i32(17522i, u_input.d, -18171i))) < (u_input.d & ((u_input.d | 1i) >> (u_input.a.x % 32u))), select(!(!(!vec4<bool>(false, false, global0.x, global0.x))), vec4<bool>(!(global0.x || false), false, u_input.a.x < 1u, select(true, global0.x, false) | all(global0.xz)), any(select(select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x)))), 2147483647i | u_input.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(7187u, 29u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 29u)], -608f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-739f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(8817u, 29u)])) * global2[_wgslsmith_index_u32(7707u ^ u_input.b, 29u)])))), func_1(u_input.b));
    let var_1 = global0.x || (var_0.a | false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.d, var_0.d), (vec3<i32>(_wgslsmith_clamp_i32(var_0.e, -2147483647i, var_0.c), _wgslsmith_div_i32(0i, u_input.d), 2147483647i) ^ vec3<i32>(1i, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, u_input.d), vec2<i32>(var_0.e, u_input.d)))) & vec3<i32>(-1i, _wgslsmith_mod_i32(abs(1i), ~var_0.e), u_input.d), ~5764u);
}


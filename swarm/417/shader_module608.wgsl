struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-1000f, -192f, 262f, -1220f, -948f, 735f, 1424f, -415f, 990f, -1196f, 1000f, -990f, 2511f, 222f, -231f, 1140f, -2657f, -176f, -1139f, -1000f);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    global1 = arg_1;
    var var_1 = arg_1;
    global1 = arg_1;
    global0 = array<f32, 20>();
    return -vec3<i32>(46596i, u_input.a, -u_input.a);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_1(select(vec4<bool>(all(arg_1.xz), !all(vec4<bool>(arg_1.x, false, global1.b.x, true)), all(select(vec3<bool>(global1.a.x, true, arg_1.x), vec3<bool>(global1.c.x, true, false), arg_1.x)), !global1.b.x), select(!(!arg_1), arg_1, true), select(vec4<bool>(any(vec3<bool>(true, global1.c.x, true)), false, true, true), vec4<bool>(!global1.a.x, true, true, true), vec4<bool>(true, false, true, false))), vec4<bool>(u_input.b != (4294967295u >> (max(u_input.b, 5454u) % 32u)), true, true, arg_1.x), !(!vec4<bool>(-1i == u_input.a, true, true, true)));
    global1 = var_0;
    let var_1 = Struct_1(global1.c, vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(32912u, 20u)] * global0[_wgslsmith_index_u32(u_input.b, 20u)])) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(634f, arg_0.x))), -3261i >= func_2(false, Struct_1(var_0.a, var_0.c, vec4<bool>(true, arg_1.x, true, var_0.c.x))).x, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 20u)]))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 20u)]))), select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, 35519i)) < _wgslsmith_add_i32(u_input.a, u_input.a), all(!vec4<bool>(var_0.a.x, true, var_0.b.x, false)), any(select(var_0.b, vec4<bool>(false, var_0.a.x, global1.c.x, true), var_0.b)), true), select(vec4<bool>(any(vec4<bool>(true, arg_1.x, false, global1.b.x)), all(vec3<bool>(false, true, global1.a.x)), var_0.c.x, global1.c.x && var_0.a.x), !global1.b, select(select(arg_1, var_0.a, false), select(vec4<bool>(true, global1.a.x, arg_1.x, var_0.b.x), vec4<bool>(arg_1.x, false, var_0.b.x, true), vec4<bool>(arg_1.x, var_0.b.x, true, arg_1.x)), all(vec3<bool>(false, var_0.b.x, global1.b.x)))), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(arg_1.ww) || !var_0.a.x, any(arg_1.xxx))));
    global0 = array<f32, 20>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-425f + 262f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(3117f)), _wgslsmith_f_op_f32(select(-1246f, global0[_wgslsmith_index_u32(u_input.b, 20u)], var_1.c.x))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(~(~27425u)), 20u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(round(355f))))), arg_0.x);
    return _wgslsmith_sub_u32(~firstLeadingBit(u_input.b), 0u);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(2147483647i, u_input.a, 2147483647i), vec3<i32>(u_input.a, 4420i, arg_0)), _wgslsmith_add_vec3_i32(vec3<i32>(56835i, 9638i, arg_0), vec3<i32>(u_input.a, 1i, arg_0))), _wgslsmith_mod_vec3_i32(vec3<i32>(28911i, arg_0, arg_0), max(vec3<i32>(arg_0, arg_0, 2147483647i), vec3<i32>(arg_0, 2147483647i, arg_0)))), vec3<i32>(_wgslsmith_div_i32(arg_0, u_input.a), firstTrailingBit(-u_input.a), arg_0)), func_2(true, Struct_1(vec4<bool>(true, global1.b.x | global1.b.x, true, global1.c.x), global1.c, !vec4<bool>(global1.b.x, global1.b.x, global1.a.x, global1.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(20338u, 20u)], 879f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(11477u, 20u)] * global0[_wgslsmith_index_u32(1u, 20u)]), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -544f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(29285u, 20u)], -1274f, -262f, global0[_wgslsmith_index_u32(49378u, 20u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)]))), vec4<f32>(-190f, 230f, -851f, global0[_wgslsmith_index_u32(48754u, 20u)]))))))));
    let var_2 = Struct_1(global1.c, vec4<bool>(global1.a.x, global1.c.x, all(!select(global1.b.wy, global1.a.yy, false)), global1.a.x == global1.a.x), global1.a);
    var var_3 = Struct_1(vec4<bool>(var_2.c.x, !(!(79964u <= u_input.b)), true, false), global1.b, select(!(!(!var_2.c)), global1.b, select(var_2.b.x, !var_2.a.x, u_input.b >= u_input.b)));
    let var_4 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(38064u, func_3(vec4<f32>(var_1.x, 313f, global0[_wgslsmith_index_u32(u_input.b, 20u)], var_1.x), global1.c), u_input.b, 4294967295u), ~(vec4<u32>(0u, 3483u, 1u, u_input.b) << (abs(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))));
    return !(!(!global1.b.x));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: f32) -> StorageBuffer {
    return StorageBuffer(u_input.b, -vec2<i32>(1424i, u_input.a), select(vec4<i32>(_wgslsmith_mod_i32(u_input.a, 50911i), -14875i, _wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -32655i) & vec3<i32>(-1i, u_input.a, u_input.a), func_2(true, Struct_1(vec4<bool>(true, arg_2, global1.c.x, global1.b.x), vec4<bool>(global1.a.x, true, true, global1.a.x), global1.c)))), countOneBits(~(vec4<i32>(u_input.a, 34993i, u_input.a, -2147483647i) >> (vec4<u32>(39485u, 4294967295u, 1u, 44008u) % vec4<u32>(32u)))), !vec4<bool>(true, -2147483647i >= u_input.a, false, any(global1.b.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(0u)), 20u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(54222u, u_input.b, u_input.b, u_input.b)), 20u)]))));
    var var_1 = ~(-vec3<i32>(u_input.a, ~u_input.a, u_input.a | 16876i) & abs(abs(_wgslsmith_add_vec3_i32(vec3<i32>(1066i, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)))));
    let x = u_input.a;
    s_output = func_4(countOneBits(u_input.b), u_input.b, any(vec3<bool>(func_1(max(-1i, var_1.x)), !any(vec2<bool>(global1.b.x, global1.b.x)), all(vec3<bool>(false, true, global1.c.x)))), -2034f);
}


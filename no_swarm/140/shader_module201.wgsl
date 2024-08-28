struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: array<bool, 28> = array<bool, 28>(false, false, true, true, true, false, true, true, false, true, true, false, false, true, false, true, false, true, false, false, false, false, false, true, false, true, true, false);

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> vec2<bool> {
    global2 = array<bool, 28>();
    global3 = Struct_2(_wgslsmith_f_op_f32(step(840f, global3.a)), vec2<bool>(arg_2, any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(85203u, 9u)], global2[_wgslsmith_index_u32(u_input.d, 28u)]), vec4<bool>(global3.d.d.x, arg_2, arg_2, true), vec4<bool>(true, global3.d.d.x, false, global0[_wgslsmith_index_u32(4294967295u, 9u)])), !vec4<bool>(true, arg_2, true, global0[_wgslsmith_index_u32(59531u, 9u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], false, true, true), vec4<bool>(false, false, arg_2, global2[_wgslsmith_index_u32(4294967295u, 28u)]), false)))), 28768i, Struct_1(20042u, countOneBits(firstTrailingBit(~arg_0.x)), 2147483647i, !select(vec3<bool>(false, false, arg_2), select(global3.d.d, vec3<bool>(arg_2, false, global0[_wgslsmith_index_u32(0u, 9u)]), false), !vec3<bool>(global3.b.x, true, true))));
    global1 = array<vec4<f32>, 8>();
    global2 = array<bool, 28>();
    global0 = array<bool, 9>();
    return global3.d.d.zy;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1280f, _wgslsmith_f_op_f32(ceil(-485f))), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f + -148f))), func_3(-_wgslsmith_add_vec3_i32(vec3<i32>(-35741i, u_input.e.x, -1i), vec3<i32>(u_input.e.x, global3.d.b, u_input.c.x)), 0i, all(!(!global3.d.d))), firstTrailingBit(reverseBits(-1i)), global3.d);
    let var_0 = select(select(select(!select(vec4<bool>(global3.d.d.x, false, false, global2[_wgslsmith_index_u32(u_input.d, 28u)]), vec4<bool>(false, global3.d.d.x, true, true), global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec4<bool>(global3.d.a < 8621u, global3.b.x, false, true), global2[_wgslsmith_index_u32(4294967295u, 28u)]), select(select(vec4<bool>(global3.d.d.x, true, false, true), !vec4<bool>(global3.d.d.x, true, true, global2[_wgslsmith_index_u32(9347u, 28u)]), vec4<bool>(true, global3.b.x, true, true)), vec4<bool>(global0[_wgslsmith_index_u32(global3.d.a, 9u)], global3.d.d.x, !global0[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(global3.d.a, 28u)]), !any(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))), vec4<bool>(!select(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], false, global2[_wgslsmith_index_u32(4294967295u, 28u)]), true, true | global2[_wgslsmith_index_u32(1u, 28u)], !select(global2[_wgslsmith_index_u32(u_input.d, 28u)], true, global3.b.x))), vec4<bool>(global0[_wgslsmith_index_u32(abs(6341u), 9u)], global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d, 1u), 28u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(select(!select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(101174u, 9u)]), vec4<bool>(true, global3.b.x, false, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(global3.d.a, 28u)], true)), vec4<bool>(global3.d.d.x | global2[_wgslsmith_index_u32(u_input.d, 28u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(109553u, 29119u, global3.d.a), 9u)], global3.b.x, false), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 28u)], global0[_wgslsmith_index_u32(64458u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(false, global3.d.d.x, false, global0[_wgslsmith_index_u32(global3.d.a, 9u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 9u)], global3.d.d.x, false)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global3.d.a, 9u)], global2[_wgslsmith_index_u32(0u, 28u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], false, global0[_wgslsmith_index_u32(u_input.a, 9u)]), global2[_wgslsmith_index_u32(u_input.d, 28u)]), !vec4<bool>(global0[_wgslsmith_index_u32(16129u, 9u)], global3.b.x, global3.d.d.x, true))), select(!vec4<bool>(global0[_wgslsmith_index_u32(12203u, 9u)], false, true, true), !(!vec4<bool>(global0[_wgslsmith_index_u32(61420u, 9u)], false, true, global3.b.x)), false != select(true, global3.d.d.x, global0[_wgslsmith_index_u32(u_input.a, 9u)])), !select(global0[_wgslsmith_index_u32(u_input.d, 9u)] && global3.d.d.x, func_3(u_input.e.zyy, 37900i, false).x, global3.b.x)));
    var var_1 = u_input.b;
    var var_2 = !select(var_0.wyy, !select(select(global3.d.d, global3.d.d, vec3<bool>(false, false, var_0.x)), var_0.zyx, global3.d.d), true);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, 838f)) - -196f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + -114f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1285f, -973f, 137f)))))));
    return all(!select(vec4<bool>(select(true, true, false), global0[_wgslsmith_index_u32(33429u << (global3.d.a % 32u), 9u)], true, all(var_0)), var_0, false));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.a))), global3.b, global3.d.b, Struct_1(1u, min(_wgslsmith_clamp_i32(~(-40147i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.c.x, u_input.c.x, 47807i), vec4<i32>(2147483647i, global3.c, -2147483647i, -2147483647i)), _wgslsmith_dot_vec2_i32(u_input.c.xw, vec2<i32>(global3.c, global3.c))), abs(global3.c)), -32871i, vec3<bool>(!func_2(vec2<f32>(global3.a, global3.a)), all(func_3(u_input.e.wzx, global3.c, global2[_wgslsmith_index_u32(global3.d.a, 28u)])), true)));
    let var_1 = Struct_2(global3.a, !var_0.b, _wgslsmith_add_i32(-1023i, 17403i), global3.d);
    var var_2 = -vec4<i32>(~global3.c, 1i, -19943i, 0i);
    var var_3 = 1f;
    var var_4 = min(vec4<u32>(var_1.d.a, 37520u, ~u_input.d, countOneBits(0u)), ~vec4<u32>(1u, u_input.b.x, _wgslsmith_mod_u32(global3.d.a, 30692u << (global3.d.a % 32u)), var_1.d.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-738f))))) + 130f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(_wgslsmith_f_op_f32(func_1()), global3.d.d.zy, -2147483647i, Struct_1(~_wgslsmith_dot_vec2_u32(u_input.b ^ vec2<u32>(41166u, u_input.b.x), ~vec2<u32>(6938u, 112414u)), u_input.e.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -29048i), vec2<i32>(-1i, u_input.e.x)), u_input.e.zx) >> (~0u % 32u), select(!global3.d.d, global3.d.d, select(global3.d.d, vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)], true), !global0[_wgslsmith_index_u32(u_input.d, 9u)]))));
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    global2 = array<bool, 28>();
    let var_0 = vec3<u32>(0u, 19022u | min(1u, _wgslsmith_div_u32(u_input.d, ~4294967295u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(-global3.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-461f, global3.a, global3.a), vec3<f32>(global3.a, global3.a, -256f)), vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(global3.d.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]), var_0.x > 37983u, true & global2[_wgslsmith_index_u32(0u, 28u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, global3.a, _wgslsmith_f_op_f32(global3.a - 305f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-682f, global3.a, -1353f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1840f, 715f, global3.a)))), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(57849u, 9u)], global0[_wgslsmith_index_u32(58071u, 9u)]), !vec3<bool>(global3.b.x, global0[_wgslsmith_index_u32(10579u, 9u)], true), true))))), var_0, u_input.c >> (_wgslsmith_mod_vec4_u32(select(min(vec4<u32>(global3.d.a, 0u, 0u, u_input.d), vec4<u32>(1u, var_0.x, u_input.b.x, global3.d.a)), ~vec4<u32>(u_input.d, 23826u, 1u, 30254u), select(vec4<bool>(true, global0[_wgslsmith_index_u32(global3.d.a, 9u)], global3.d.d.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(global3.d.a, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(835u, 28u)]), global0[_wgslsmith_index_u32(var_0.x, 9u)])), _wgslsmith_add_vec4_u32(~vec4<u32>(global3.d.a, global3.d.a, var_0.x, 0u), ~vec4<u32>(41764u, u_input.b.x, 59612u, global3.d.a))) % vec4<u32>(32u)));
}


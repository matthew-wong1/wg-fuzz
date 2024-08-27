struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 31357u, 30462u, 1u), vec4<u32>(0u, 0u, 4294967295u, 23679u), vec4<u32>(24824u, 1u, 46355u, 0u), vec4<u32>(12757u, 5285u, 4294967295u, 4294967295u), vec4<u32>(19757u, 30837u, 43508u, 62510u), vec4<u32>(1235u, 0u, 1u, 0u));

var<private> global1: array<Struct_3, 2>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-704i, 4816i, 2147483647i), true, 1i, vec2<bool>(true, false));

var<private> global3: bool;

var<private> global4: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32) -> bool {
    global3 = !all(global4.a);
    let var_0 = 26763i;
    global2 = Struct_1(-(~(~global2.a)) ^ (min(vec3<i32>(u_input.c.x, 0i, u_input.c.x) >> (u_input.b.yxz % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, global2.c, var_0), global2.a)) & vec3<i32>(_wgslsmith_mult_i32(global2.c, -1i), 0i, 6955i)), false, max(~_wgslsmith_mod_i32(-6753i, global2.a.x), 1i) | -2147483647i, vec2<bool>(!(!global2.b), true && (all(vec2<bool>(false, global4.a.x)) & all(vec2<bool>(true, global2.d.x)))));
    let var_1 = Struct_1(vec3<i32>(-1i, 0i >> (_wgslsmith_clamp_u32(arg_0, 38745u, 1462u) % 32u), u_input.c.x) & global2.a, global2.b, var_0, !global4.a.yz);
    global4 = global1[_wgslsmith_index_u32(arg_0, 2u)];
    return global4.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_1(global2.a, false, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(-36994i, arg_2.x)), -global2.c), global2.a.zy), vec2<bool>(!(!(global4.a.x & true)), global4.a.x));
    var var_1 = Struct_1(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-4777i), _wgslsmith_sub_i32(2147483647i, global2.a.x), 1i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, global2.c, -26507i), var_0.a) >> (~arg_0.wyx % vec3<u32>(32u))), (_wgslsmith_mod_i32(arg_2.x, -31399i) << ((arg_1 ^ 26970u) % 32u)) ^ (global2.c & select(var_0.c, -1i, global4.a.x))), func_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, arg_0.x) | _wgslsmith_clamp_u32(arg_0.x, arg_1, 1u), arg_0.x)), -(-max(u_input.c.x, 1i) ^ -2781i), vec2<bool>(true & (_wgslsmith_f_op_f32(floor(168f)) != _wgslsmith_f_op_f32(f32(-1f) * -1040f)), !select(func_2(1u), true, global4.a.x || var_0.d.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, _wgslsmith_f_op_f32(round(-810f)), -630f));
    let var_3 = 2085f;
    global3 = false;
    return Struct_3(vec3<bool>(true, !global4.a.x, false));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    global1 = array<Struct_3, 2>();
    global0 = array<vec4<u32>, 6>();
    let var_0 = arg_2;
    var var_1 = all(select(select(select(!vec4<bool>(global2.b, global4.a.x, global2.d.x, true), !vec4<bool>(arg_2.d.x, arg_2.d.x, global2.b, global4.a.x), !vec4<bool>(true, false, global4.a.x, global4.a.x)), !vec4<bool>(global4.a.x, var_0.d.x, global4.a.x, false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(global4.a.x, global4.a.x, global2.b, true), vec4<bool>(var_0.d.x, true, arg_2.d.x, arg_1.d.x)), vec4<bool>(arg_1.d.x, arg_2.d.x, arg_2.b, false), !vec4<bool>(false, true, arg_1.b, true))), select(select(vec4<bool>(true, true, arg_2.b, global4.a.x), select(vec4<bool>(global4.a.x, false, arg_1.d.x, false), vec4<bool>(false, global4.a.x, false, true), vec4<bool>(global4.a.x, false, false, global4.a.x)), select(vec4<bool>(global4.a.x, false, false, false), vec4<bool>(false, true, false, arg_2.b), vec4<bool>(global4.a.x, false, arg_1.b, true))), !vec4<bool>(var_0.d.x, false, global2.d.x, arg_1.b), select(select(vec4<bool>(arg_2.b, global2.d.x, arg_2.b, true), vec4<bool>(global2.d.x, false, global4.a.x, global4.a.x), vec4<bool>(true, global2.d.x, var_0.d.x, global4.a.x)), !vec4<bool>(true, global4.a.x, false, false), false)), !vec4<bool>(true, arg_2.b, arg_1.d.x, false)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-917f, arg_0.x, func_1(u_input.b, min(_wgslsmith_dot_vec3_u32(u_input.b.xyx, u_input.b.xwz), arg_3.x), arg_1.a.zx).a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-586f, 189f, var_0.d.x)) + _wgslsmith_f_op_f32(f32(-1f) * -2293f)))), arg_0.x), func_1(u_input.b, ~arg_3.x, firstLeadingBit(vec2<i32>(-global2.c, _wgslsmith_add_i32(-14809i, arg_1.c)))).a.x));
    return _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(~u_input.b, ~(~global0[_wgslsmith_index_u32(u_input.a, 6u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x >= (global2.c | ~countOneBits(22840i));
    global1 = array<Struct_3, 2>();
    let var_1 = Struct_3(vec3<bool>(global4.a.x, global2.b, !(!global4.a.x | true)));
    let var_2 = ~_wgslsmith_dot_vec2_i32(abs(select(global2.a.zz >> (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(0i, -1507i)), !vec2<bool>(global4.a.x, false))), firstLeadingBit(u_input.c));
    var var_3 = func_1(u_input.b, firstLeadingBit(u_input.b.x), firstTrailingBit(vec2<i32>(~1i, _wgslsmith_add_i32(var_2, -3002i))));
    var var_4 = func_1(~vec4<u32>(11310u & _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(0u, u_input.b.x)), reverseBits(~u_input.b.x), 92541u, firstLeadingBit(u_input.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 6u)], vec4<u32>(1u, reverseBits(u_input.b.x), 4294967295u, select(0u, 65568u, global4.a.x))), ~vec4<u32>(~4294967295u, u_input.d, 4294967295u & u_input.b.x, ~4294967295u)), abs(global2.a.yy) << (vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 0u), u_input.a), func_3(vec3<f32>(-1876f, -183f, 1129f), Struct_1(global2.a, false, global2.c, var_3.a.xy), Struct_1(vec3<i32>(global2.c, -3250i, -2548i), var_1.a.x, 1i, var_1.a.yx), u_input.b.xw) ^ ~22740u) % vec2<u32>(32u))).a.zz;
    let var_5 = var_0;
    let var_6 = Struct_3(vec3<bool>(all(!vec4<bool>(true, false, var_3.a.x, global2.d.x)), select(true, func_1(vec4<u32>(1u, u_input.a, u_input.a, 4953u), ~u_input.a, -vec2<i32>(-1i, u_input.c.x)).a.x, var_2 >= 1i), global4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(vec3<u32>(4294967295u, u_input.b.x, 0u), u_input.b.zww, vec3<bool>(true, true, var_1.a.x)) & u_input.b.wwz)));
}


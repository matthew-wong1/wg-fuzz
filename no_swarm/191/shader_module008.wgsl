struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(90270u, 0u, 4294967295u), vec3<u32>(1u, 48878u, 1837u), vec3<u32>(4294967295u, 11822u, 102647u), vec3<u32>(5279u, 1u, 1u), vec3<u32>(697u, 0u, 4294967295u), vec3<u32>(1u, 35523u, 56258u), vec3<u32>(65001u, 1u, 0u), vec3<u32>(1u, 23596u, 1u), vec3<u32>(19255u, 0u, 53108u), vec3<u32>(1u, 4167u, 21461u), vec3<u32>(19018u, 4294967295u, 4294967295u), vec3<u32>(0u, 43104u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u));

var<private> global2: array<bool, 20> = array<bool, 20>(true, true, false, false, true, false, true, true, false, false, false, true, true, true, true, false, true, true, true, false);

var<private> global3: Struct_2 = Struct_2(Struct_1(81403u, 1u, 4294967295u), vec4<i32>(47556i, -50217i, 0i, -1i), vec4<bool>(false, true, false, true), Struct_1(4294967295u, 0u, 0u), Struct_1(77165u, 4294967295u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = abs(~(~abs(_wgslsmith_add_vec4_u32(arg_3, arg_3))));
    var var_1 = Struct_2(global3.d, reverseBits(_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(global3.b, vec4<i32>(2147483647i, -1246i, 0i, 23373i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i, -1i, 5974i, arg_2.x), global3.b, arg_1.x), vec4<i32>(0i, 0i, 0i, arg_2.x)))), global3.c, global3.e, Struct_1(select(u_input.a, 1245u, global2[_wgslsmith_index_u32(u_input.a, 20u)]), var_0.x, 36327u));
    var var_2 = -19033i;
    var var_3 = global2[_wgslsmith_index_u32(var_0.x, 20u)];
    var_2 = 4092i;
    return ~28889u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_1, 20>();
    let var_0 = Struct_1(4294967295u, _wgslsmith_div_u32(arg_0.c, global3.d.c), _wgslsmith_add_u32(~(~abs(arg_0.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, firstTrailingBit(u_input.a), global3.d.c, select(44309u, 1u, true)), ~(~vec4<u32>(global3.d.b, global3.a.c, 0u, global3.a.a)))));
    var var_1 = _wgslsmith_mult_i32(-68638i, global3.b.x << (1u % 32u));
    var var_2 = Struct_2(Struct_1(~1u, firstTrailingBit(~countOneBits(32529u)), ~firstLeadingBit(var_0.c)), max(-(_wgslsmith_mod_vec4_i32(global3.b, global3.b) | select(global3.b, global3.b, global2[_wgslsmith_index_u32(59607u, 20u)])), -(~vec4<i32>(global3.b.x, -2147483647i, global3.b.x, -2147483647i))), !(!global3.c), global3.e, Struct_1(var_0.c, u_input.a, u_input.a));
    let var_3 = Struct_1(u_input.a, ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1287f, 540f))), vec2<bool>(!global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(39163u, 20u)] || false), -vec2<i32>(45502i, global3.b.x), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.a.b, u_input.a, arg_0.b), vec4<u32>(var_2.e.c, global3.d.b, var_2.e.b, var_2.d.b)), select(vec4<u32>(var_0.b, var_0.c, global3.e.c, arg_0.c), vec4<u32>(12788u, arg_0.c, arg_0.c, global3.e.a), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a, 20u)], global2[_wgslsmith_index_u32(31322u, 20u)], global3.c.x, false)), global3.c)), _wgslsmith_div_u32(~(_wgslsmith_sub_u32(global3.d.b, 38785u) & 64724u), _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c ^ u_input.a, 77730u), 13u)], abs(select(global1[_wgslsmith_index_u32(var_2.e.b, 13u)], global1[_wgslsmith_index_u32(global3.a.c, 13u)], vec3<bool>(global3.c.x, global3.c.x, global2[_wgslsmith_index_u32(17075u, 20u)]))))));
    return u_input.a;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    global3 = arg_1;
    let var_1 = vec4<u32>(func_2(Struct_1(u_input.a, 32878u, ~arg_2.c)), arg_2.c, ~(~firstTrailingBit(arg_1.d.b)), func_2(Struct_1(reverseBits(1u), ~(~61521u), 4294967295u)));
    let var_2 = Struct_1(18564u, func_2(arg_2), ~(~4294967295u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-321f, 1f, 491f, _wgslsmith_f_op_f32(sign(540f))));
    return 84323u;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    global3 = arg_2;
    var var_0 = ~vec3<u32>(max(~1u, global3.a.c) | 1u, ~arg_2.e.b, 1u);
    return Struct_2(Struct_1(~(~(29334u ^ arg_2.e.c)), arg_2.a.b, 31054u), -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, 2147483647i), -global3.b.x, _wgslsmith_mult_i32(arg_0.x, arg_2.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_2.b.x, arg_0.x), global3.b.yyz)), vec4<i32>(firstTrailingBit(arg_2.b.x), 29846i, arg_2.b.x, 0i)), !global3.c, Struct_1(reverseBits(_wgslsmith_mod_u32(~arg_2.e.a, 41760u)), ~countOneBits(4294967295u), ~global3.d.b | 1u), Struct_1(global3.a.c ^ firstTrailingBit(26977u), ~41588u, countOneBits(arg_2.e.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(global3.b | -(vec4<i32>(2147483647i, global3.b.x, global3.b.x, global3.b.x) & (global3.b ^ vec4<i32>(48504i, global3.b.x, global3.b.x, global3.b.x))), select(vec2<bool>(global2[_wgslsmith_index_u32(33194u, 20u)], ~global3.b.x >= _wgslsmith_dot_vec3_i32(global3.b.yyy, global3.b.wyz)), !select(global3.c.ww, select(global3.c.yz, global3.c.zw, global3.c.x), u_input.a > 0u), true), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 20u)], firstTrailingBit(reverseBits(select(global3.b, vec4<i32>(16936i, global3.b.x, global3.b.x, 1i), vec4<bool>(false, global3.c.x, false, true)))), select(select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(global3.e.a, 20u)], global2[_wgslsmith_index_u32(global3.d.b, 20u)]), vec4<bool>(false, false, global3.c.x, global3.c.x), vec4<bool>(false, global3.c.x, false, global2[_wgslsmith_index_u32(u_input.a, 20u)])), !(!global3.c), select(!vec4<bool>(false, false, global3.c.x, false), vec4<bool>(global2[_wgslsmith_index_u32(global3.e.c, 20u)], false, false, true), !vec4<bool>(global3.c.x, false, true, true))), Struct_1(u_input.a, 1u, func_1(i32(-1i) * -2147483647i, Struct_2(global3.d, vec4<i32>(global3.b.x, global3.b.x, global3.b.x, -31389i), vec4<bool>(global3.c.x, true, global3.c.x, global2[_wgslsmith_index_u32(61768u, 20u)]), global0[_wgslsmith_index_u32(global3.a.c, 20u)], Struct_1(23406u, 68117u, 9616u)), Struct_1(1u, 26615u, 8417u))), Struct_1(~(~u_input.a), ~4294967295u, 25797u | func_1(2147483647i, Struct_2(Struct_1(u_input.a, 1u, 76351u), global3.b, global3.c, global3.a, global0[_wgslsmith_index_u32(0u, 20u)]), global3.a))));
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(674f, 1261f, global3.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2419f))) * -1608f), _wgslsmith_f_op_f32(max(-471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1366f, -321f) * -770f)))));
}


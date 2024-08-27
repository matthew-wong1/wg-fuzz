struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-216f, -804f, 138f, 1070f);

var<private> global1: Struct_3 = Struct_3(vec3<u32>(6059u, 5139u, 1u), 0u, vec3<u32>(0u, 66921u, 89257u));

var<private> global2: array<vec3<f32>, 9>;

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(36693u, vec4<f32>(-1257f, -462f, -1574f, -302f)), Struct_4(12776u, vec4<f32>(-1441f, 417f, -1561f, 418f)), Struct_4(4294967295u, vec4<f32>(-1727f, -1657f, -1000f, -1592f)), Struct_4(6985u, vec4<f32>(-967f, 263f, 312f, 1071f)), Struct_4(4294967295u, vec4<f32>(-1566f, 1466f, -1774f, 128f)), Struct_4(67895u, vec4<f32>(1368f, -2336f, -418f, 2149f)), Struct_4(0u, vec4<f32>(-162f, -1000f, -544f, -167f)), Struct_4(0u, vec4<f32>(795f, -806f, -592f, -992f)), Struct_4(4294967295u, vec4<f32>(-551f, 1642f, 1910f, -688f)), Struct_4(69118u, vec4<f32>(220f, -885f, -285f, -1188f)), Struct_4(14257u, vec4<f32>(-310f, -302f, 825f, 738f)), Struct_4(65639u, vec4<f32>(278f, -858f, -350f, -126f)), Struct_4(4294967295u, vec4<f32>(-777f, -493f, -103f, 923f)), Struct_4(1u, vec4<f32>(-1356f, 251f, -1638f, -570f)), Struct_4(1u, vec4<f32>(1172f, -1199f, -1243f, -803f)), Struct_4(0u, vec4<f32>(-1722f, 696f, 163f, 981f)), Struct_4(31617u, vec4<f32>(-157f, -128f, 1000f, 953f)), Struct_4(0u, vec4<f32>(939f, -1000f, 175f, 1174f)), Struct_4(2336u, vec4<f32>(709f, 334f, -1571f, 796f)), Struct_4(0u, vec4<f32>(-296f, 328f, 1651f, 250f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    var var_0 = abs(global1.b);
    global0 = array<f32, 4>();
    let var_1 = Struct_1(!vec3<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false));
    global3 = array<Struct_4, 20>();
    return 1f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.c.x, 4u)])));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = Struct_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x ^ global1.a.x, _wgslsmith_sub_u32(74486u, 41609u), ~1140u), select(firstLeadingBit(global1.a), global1.c, vec3<bool>(true, true, true))), global1.c, vec3<u32>(8872u, global1.c.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global1.c.x, 0u), 35077u, global1.a.x))), 2174u, ~reverseBits(_wgslsmith_mod_vec3_u32(global1.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, global1.b), vec3<u32>(global1.a.x, 41072u, global1.a.x), global1.c))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.yw);
    let var_1 = select(func_3(), false, !(28097i < ~countOneBits(u_input.a)));
    var var_2 = !var_1;
    global1 = Struct_3(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(abs(global1.a), firstTrailingBit(vec3<u32>(global1.a.x, 21915u, global1.c.x)), ~global1.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.c, global1.c, vec3<u32>(global1.c.x, 27261u, 4294967295u)), vec3<u32>(global1.b, 4294967295u, 4294967295u), vec3<u32>(global1.a.x, 105417u, global1.c.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), global1.c) % vec3<u32>(32u)), abs(vec3<u32>(global1.a.x, 0u, _wgslsmith_clamp_u32(global1.c.x, 4294967295u, global1.a.x)))), ~(~_wgslsmith_div_u32(_wgslsmith_div_u32(global1.c.x, 4107u), ~30266u)), global1.c);
    return Struct_1(!vec3<bool>(var_1, any(vec2<bool>(var_1, arg_0.x)) != func_3(), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(53190u, 4u)] * var_0.x) < _wgslsmith_f_op_f32(arg_1.x - -338f)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    let var_0 = ~global1.c.x;
    var var_1 = func_2(vec2<bool>(select(true, true & (u_input.b > u_input.a), true), false), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.c.x), global1.c.xy), 4u)], -1352f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 4u)], -756f) - -436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(167f, arg_2, arg_1)))))), !vec3<bool>(u_input.b <= u_input.a, arg_3.x, false));
    let var_2 = -445f;
    let var_3 = Struct_3(firstLeadingBit(vec3<u32>(firstLeadingBit(var_0), _wgslsmith_dot_vec2_u32(global1.a.xz, ~vec2<u32>(0u, 9219u)), 4294967295u)), firstTrailingBit(var_0) >> (4294967295u % 32u), _wgslsmith_add_vec3_u32(vec3<u32>(~var_0, firstTrailingBit(abs(43740u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, global1.a.x, global1.b), global1.a)), min(~(vec3<u32>(var_0, 0u, global1.b) | vec3<u32>(1u, 1u, global1.c.x)), firstLeadingBit(abs(vec3<u32>(global1.a.x, var_0, global1.a.x))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-668f, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1327f, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0, 4u)])))))), (_wgslsmith_f_op_f32(-665f - _wgslsmith_f_op_f32(ceil(arg_2))) >= _wgslsmith_f_op_f32(-var_2)) && arg_1));
    return _wgslsmith_sub_i32(abs(-2147483647i) ^ u_input.b, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_mult_i32(min(u_input.c.x, u_input.b), u_input.a) & firstLeadingBit(~u_input.b), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -13927i, 0i, u_input.a), vec4<i32>(u_input.c.x, 15601i, u_input.a, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(996f + 633f)), select(select(vec2<bool>(true, u_input.a <= u_input.c.x), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true)), !all(vec3<bool>(true, false, true)))), abs(0u), Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, true, true))))));
    let var_1 = global2[_wgslsmith_index_u32(~max(1u, ~max(~global1.a.x, ~8764u)), 9u)];
    let var_2 = var_0.d.a.x;
    var var_3 = false;
    var var_4 = vec3<bool>(var_0.b.x, var_0.b.x, !var_0.d.a.x);
    let var_5 = -628f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.b.x, !all(vec4<bool>(true, true, var_0.d.a.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)), vec2<bool>(true, var_4.x)) & _wgslsmith_dot_vec2_i32(-(u_input.c & u_input.c), -u_input.c), abs(~max(-vec4<i32>(u_input.a, u_input.a, u_input.b, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 33344i, 33166i, 18096i), vec4<i32>(u_input.a, u_input.b, u_input.a, 2147483647i)))), firstTrailingBit(32972u), ~(-29823i));
}


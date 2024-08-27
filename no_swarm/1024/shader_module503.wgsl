struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-725f, 485f, -1470f, -1382f, 191f, 1404f, -1474f, -581f, 1789f, -1159f, -1176f, 828f, -2736f, -176f, -685f, 2132f, -198f, -476f, -1373f, -845f, 1417f, -931f, 499f, 1000f, 630f, 1605f, -1435f, -433f, 1000f, -633f, 651f);

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<Struct_3, 27>;

var<private> global3: array<u32, 14> = array<u32, 14>(1u, 45313u, 25822u, 1u, 17264u, 4294967295u, 20609u, 38752u, 13752u, 49188u, 1u, 1u, 66347u, 29242u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    return abs(vec2<u32>(8302u, (4294967295u | (4294967295u & u_input.a)) >> ((1u ^ global3[_wgslsmith_index_u32(47203u, 14u)]) % 32u)));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(0u, 27u)];
    global2 = array<Struct_3, 27>();
    let var_1 = abs(~(~_wgslsmith_dot_vec2_u32(func_3(), ~var_0.c.zw)));
    let var_2 = Struct_1(var_0.c ^ firstTrailingBit(~vec4<u32>(var_1, global3[_wgslsmith_index_u32(0u, 14u)], 4459u, 0u) >> (~var_0.b.a.a % vec4<u32>(32u))));
    let var_3 = -408f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    global1 = array<vec4<f32>, 19>();
    global2 = array<Struct_3, 27>();
    global3 = array<u32, 14>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~(min(arg_1, arg_1) & _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(1u, 21355u, 0u, 4294967295u))), vec4<u32>(954u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], arg_1.x, u_input.a, u_input.a), ~arg_1), 70589u, _wgslsmith_dot_vec4_u32(~arg_1, ~arg_1))));
    return Struct_2(Struct_1(~var_0.a), firstLeadingBit(u_input.c), countOneBits(~(~u_input.b.x) & (u_input.c | 0i)));
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    global0 = array<f32, 31>();
    var var_0 = Struct_1(~(arg_0.a.a | _wgslsmith_clamp_vec4_u32(arg_0.a.a, arg_0.a.a >> (vec4<u32>(global3[_wgslsmith_index_u32(45829u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)], u_input.a, arg_0.a.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u))));
    global2 = array<Struct_3, 27>();
    var var_1 = Struct_3(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-25i, 5804i), u_input.b.wy ^ u_input.b.zy), 1i), func_4(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.a.x, 31u)]), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_0.a.x, 31u)])))), -1000f, 479f), ~var_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(744f, 1f), global0[_wgslsmith_index_u32(firstTrailingBit(49525u), 31u)])), countOneBits(vec4<u32>(~_wgslsmith_add_u32(var_0.a.x, 1u), _wgslsmith_mod_u32(4294967295u ^ var_0.a.x, max(4294967295u, arg_0.a.a.x)), arg_0.a.a.x & _wgslsmith_dot_vec4_u32(arg_0.a.a, arg_0.a.a), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(69527u ^ global3[_wgslsmith_index_u32(arg_0.a.a.x, 14u)], 14u)], arg_0.a.a.x))), ~var_0.a.wwy);
    var var_2 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(arg_0.a.a.x, 31u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43654u, 14u)], 31u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 31u)], -1469f, 552f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(38953u, 31u)], -2113f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a.a.x, 14u)], 31u)]), vec3<f32>(-1185f, global0[_wgslsmith_index_u32(var_1.b.a.a.x, 31u)], global0[_wgslsmith_index_u32(64338u, 31u)]), false))))), vec3<f32>(-311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.x, 31u)] * 539f)), 811f)), _wgslsmith_mod_vec4_u32(var_1.b.a.a & vec4<u32>(reverseBits(1u), ~0u, 30532u, ~36405u), abs(~var_0.a ^ arg_0.a.a)), global0[_wgslsmith_index_u32(var_1.d.x, 31u)]).a;
    return select(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), vec3<bool>(u_input.b.x == 1i, true, true)), -1017f <= global0[_wgslsmith_index_u32(u_input.a, 31u)]), !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, any(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, true))), true), select(!vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, false)), false), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, any(vec3<bool>(false, false, false)))), vec3<bool>(false, true, select(true, true, true))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], abs(max(~(10274u & u_input.a), _wgslsmith_dot_vec2_u32(~arg_0.b.a.a.wy, vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(arg_0.c.x, 14u)]))))), 31u)];
    let var_1 = u_input.b;
    let var_2 = func_5(func_4(vec3<f32>(-1311f, _wgslsmith_f_op_f32(func_2(vec3<f32>(-718f, global0[_wgslsmith_index_u32(u_input.a, 31u)], 120f))), global0[_wgslsmith_index_u32(~(4294967295u >> (u_input.a % 32u)), 31u)]), arg_0.b.a.a | vec4<u32>(abs(global3[_wgslsmith_index_u32(1815u, 14u)]), _wgslsmith_clamp_u32(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 14u)], arg_0.c.x), 4294967295u, firstLeadingBit(10027u)), -635f));
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(405f, global0[_wgslsmith_index_u32(28819u, 31u)], -1075f), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], 1018f, 485f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1835f, global0[_wgslsmith_index_u32(arg_0.d.x, 31u)], 661f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-268f)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(10442u, 31u)], 114f)), _wgslsmith_div_f32(-738f, global0[_wgslsmith_index_u32(76348u, 31u)])))), abs(~vec4<u32>(25491u, arg_0.c.x, ~65034u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)])), -1878f);
    let var_4 = _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(~(~(~global3[_wgslsmith_index_u32(~77151u, 14u)])), 19u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(min(var_3.a.a.x, 49890u), 19u)])), vec4<f32>(-1536f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-586f, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(34495u, 31u)]) + vec3<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(71282u, 14u)], 31u)], global0[_wgslsmith_index_u32(var_3.a.a.x, 31u)], global0[_wgslsmith_index_u32(arg_0.c.x, 31u)])))), 2080f, global0[_wgslsmith_index_u32(~(1u >> (var_3.a.a.x % 32u)), 31u)]))));
    return -1499f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 31u)] > global0[_wgslsmith_index_u32(21421u, 31u)])), all(vec3<bool>(true, true, true)), (u_input.a >> (global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42119u, 14u)], 14u)], 14u)] % 32u)) > ~_wgslsmith_add_u32(9373u, global3[_wgslsmith_index_u32(u_input.a, 14u)])), true);
    var var_2 = ~(~(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(61290u, 14u)]), vec2<u32>(0u, global3[_wgslsmith_index_u32(38235u, 14u)])), vec2<u32>(1u, 25605u), select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(~var_2.x, 27u)]))));
    let var_4 = vec4<bool>(~(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 4294967295u) | 4294967295u) == 1u, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 14u)]) >= global3[_wgslsmith_index_u32(reverseBits(~0u), 14u)], all(select(func_5(Struct_2(Struct_1(vec4<u32>(29705u, 55558u, 1u, 4294967295u)), u_input.b.x, u_input.b.x)), var_1.xxz, var_1.x)), select(false, var_1.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1236f, 838f, -1283f) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 952f, 1819f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(45317u, 31u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(99172u, 14u)], 31u)], -538f) + vec3<f32>(1038f, global0[_wgslsmith_index_u32(u_input.a, 31u)], var_3))), vec3<f32>(-2365f, _wgslsmith_f_op_f32(1344f * var_3), _wgslsmith_f_op_f32(var_3 * -263f)))));
}


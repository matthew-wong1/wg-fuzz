struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 59315u, 16104u), vec3<u32>(0u, 97162u, 0u), vec3<u32>(38416u, 9440u, 1u), vec3<u32>(54120u, 1u, 47635u), vec3<u32>(60156u, 4294967295u, 13683u), vec3<u32>(39821u, 0u, 1u), vec3<u32>(0u, 35151u, 41466u), vec3<u32>(4294967295u, 6784u, 9352u), vec3<u32>(52124u, 33594u, 48317u), vec3<u32>(8174u, 1u, 1u), vec3<u32>(1u, 50043u, 39905u), vec3<u32>(1u, 56876u, 69835u), vec3<u32>(1u, 1819u, 4294967295u), vec3<u32>(33553u, 21649u, 4294967295u), vec3<u32>(65168u, 30521u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(48532u, 1u, 95506u), vec3<u32>(0u, 63008u, 4294967295u), vec3<u32>(25017u, 0u, 107453u), vec3<u32>(40991u, 4294967295u, 0u), vec3<u32>(241u, 23344u, 13948u), vec3<u32>(4294967295u, 26799u, 0u), vec3<u32>(15896u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(39414u, 38524u), 44991u, -366f);

var<private> global3: array<f32, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(firstLeadingBit(select(global2.a, _wgslsmith_clamp_vec2_u32(global2.a, vec2<u32>(u_input.a, arg_0.a.x), vec2<u32>(15419u, 1u)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), ~(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1u))), ~(~arg_0.a)), u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2072f, 402f))), _wgslsmith_f_op_f32(1000f + global3[_wgslsmith_index_u32(select(11780u, 59540u, all(vec3<bool>(true, true, false))), 12u)]), select(select(arg_0.c > 1820f, true, all(vec3<bool>(false, true, true))), true, true))));
    global0 = array<u32, 18>();
    global2 = arg_0;
    var var_1 = !select(vec4<bool>(14073u == arg_0.b, true, _wgslsmith_f_op_f32(sign(468f)) <= _wgslsmith_f_op_f32(global2.c * var_0.c), !any(vec2<bool>(true, false))), !vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), u_input.a >= 8315u), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))));
    let var_2 = -1505f;
    return global2.c;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_add_u32(u_input.a >> (reverseBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(29538u, 0u), 1u)) % 32u), ~(~_wgslsmith_add_u32(37956u, 1u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mult_vec2_u32(global2.a, ~vec2<u32>(51988u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)])), global2.b, -201f))), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 12u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.c * -1359f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-300f, global2.c, false)), global3[_wgslsmith_index_u32(~global2.b, 12u)])))));
    let var_2 = Struct_1(vec2<u32>(var_0, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)]), abs(_wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(global2.b), var_0), u_input.a)), -388f);
    global0 = array<u32, 18>();
    let var_3 = false;
    return min(select(4294967295u << (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 24u)], vec3<u32>(var_2.b, 25573u, global0[_wgslsmith_index_u32(1u, 18u)])) | 11584u, 18u)] % 32u), ~_wgslsmith_add_u32(abs(33819u), ~global2.b), true), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(21754u, var_2.b, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 18u)]), ~max(~68671u, _wgslsmith_sub_u32(var_2.b, u_input.a))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global2 = Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, 60954u), global2.a), ~(func_2() << ((global2.a.x << (21807u % 32u)) % 32u)) << (_wgslsmith_mult_u32(60326u << (global2.a.x % 32u), countOneBits(global0[_wgslsmith_index_u32(arg_1.b, 18u)]) ^ ~9430u) % 32u), _wgslsmith_f_op_f32(round(arg_1.c)));
    global2 = Struct_1(max(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global2.b, 24u)], vec3<u32>(u_input.a, 22734u, global2.a.x)) | ~81309u, 18u)]), arg_1.a), 4294967295u, arg_1.c);
    var var_0 = vec4<u32>(~firstLeadingBit(0u), ~(~75968u) << (func_2() % 32u), u_input.a, abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(max(arg_1.a.x, global0[_wgslsmith_index_u32(arg_1.b, 18u)]), 62639u), 0u)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 24>();
    var var_0 = _wgslsmith_f_op_f32(-1667f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c, -337f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.c))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(578f + global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.x, 18u)], 18u)], 12u)]), global3[_wgslsmith_index_u32(func_1(vec4<bool>(true, false, true, false), Struct_1(global2.a, u_input.a, global2.c)), 12u)], true)))));
    let var_1 = ~u_input.b.x;
    var var_2 = var_1;
    let var_3 = Struct_2(Struct_1(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(70279u, 4294967295u), global2.a), ~global2.a), ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) + 439f) + _wgslsmith_div_f32(1363f, -1661f))), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_3.a.a, vec2<u32>(6492u, global0[_wgslsmith_index_u32(35560u, 18u)])), var_3.a.a), select(global2.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3626u, global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.a, 1u), vec4<u32>(var_3.a.a.x, global2.a.x, 0u, global0[_wgslsmith_index_u32(global2.b, 18u)])), ~4294967295u), vec2<bool>(!var_3.b, false)), select(!vec2<bool>(false, var_3.b), select(!vec2<bool>(var_3.b, var_3.b), vec2<bool>(false, var_3.b), false), vec2<bool>(select(var_3.b, var_3.b, true), !var_3.b))), vec3<u32>(~u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global2.a.x, ~105421u), 18u)] | var_3.a.a.x, 55886u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.c + 279f), _wgslsmith_f_op_f32(805f - global2.c), _wgslsmith_f_op_f32(floor(var_3.a.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.c, global3[_wgslsmith_index_u32(0u, 12u)], -1026f)))));
}


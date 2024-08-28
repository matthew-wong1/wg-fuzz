struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(349f, -744f, -1665f, -2422f, 665f, -1000f, -244f);

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 1u, 0u, 1u, 61086u, 63411u, 28705u, 1u, 0u, 1070u, 3287u, 60760u, 38403u, 2735u, 47840u, 32058u, 1u, 103049u, 0u, 4294967295u, 27640u, 0u, 1u, 4294967295u, 97653u, 1u, 1u, 35208u, 38599u, 0u, 1u, 16449u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = true;
    global1 = array<u32, 32>();
    let var_1 = vec2<u32>(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(arg_2, 32u)], 13978u), select(vec2<u32>(40604u, arg_3), vec2<u32>(arg_2, 53558u), false)), firstLeadingBit(arg_1.a.a.c.x))), countOneBits(~_wgslsmith_clamp_u32(~47u, ~86429u, arg_3 ^ global1[_wgslsmith_index_u32(1u, 32u)])));
    var_0 = arg_1.a.c.x;
    return global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(~(~(arg_1.a.a.c.x | 21649u)), 32u)]), 32u)];
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec3<i32>) -> vec3<bool> {
    return !select(vec3<bool>(all(!vec4<bool>(false, true, false, arg_1.d)), !all(vec2<bool>(true, false)), arg_1.d), select(vec3<bool>(any(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.d)), arg_1.d, true), vec3<bool>(!arg_1.d, arg_1.a.x, all(vec3<bool>(arg_1.d, arg_1.a.x, false))), select(!arg_1.a.x, arg_1.a.x & arg_1.d, true)), !select(vec3<bool>(false, arg_1.a.x, true), !vec3<bool>(arg_1.a.x, arg_1.d, true), true));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    global1 = array<u32, 32>();
    let var_0 = firstLeadingBit(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(48210u, 32u)], _wgslsmith_add_u32(~u_input.b >> (firstLeadingBit(4294967295u) % 32u), ~(~global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), 11229u));
    global1 = array<u32, 32>();
    var var_1 = Struct_1(abs(6752i), global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(arg_2.x, 76425u)) & _wgslsmith_add_u32(~arg_2.x, ~(~0u)), 7u)], ~vec2<u32>(11177u, u_input.b), global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, reverseBits(u_input.b))), 7u)]);
    let var_2 = vec2<u32>(~3054u, var_1.c.x);
    return _wgslsmith_sub_u32(~(~global1[_wgslsmith_index_u32(u_input.b, 32u)]), 1u);
}

fn func_2(arg_0: f32, arg_1: bool) -> vec4<f32> {
    global1 = array<u32, 32>();
    let var_0 = arg_1;
    let var_1 = ~func_5(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~2147483647i, -1138i, 1i), _wgslsmith_sub_i32(36735i, -1i)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)])), Struct_4(!vec2<bool>(arg_1, false), -295f, func_3(0i, Struct_5(Struct_3(Struct_1(50178i, -260f, vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 32u)]), arg_0), Struct_2(vec3<f32>(114f, -375f, 2957f), arg_1, vec2<i32>(21802i, 2147483647i), Struct_1(25621i, 1030f, vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 54031u), global0[_wgslsmith_index_u32(4294967295u, 7u)])), vec3<bool>(true, true, var_0), var_0, vec3<i32>(51209i, 23139i, -10243i))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 49945u), true), vec3<i32>(1i, 1i, 1i)), reverseBits(~vec3<u32>(global1[_wgslsmith_index_u32(95278u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], 0u) >> (u_input.a % vec3<u32>(32u))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.b), 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_1, 7u)], arg_0))))), var_0, vec2<i32>(1i, 1i) >> (u_input.a.zy % vec2<u32>(32u)), Struct_1(reverseBits(-_wgslsmith_sub_i32(-1i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.b, 7u)])))), vec2<u32>(var_1, global1[_wgslsmith_index_u32(abs(u_input.b), 32u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f))));
    var var_3 = var_2.d;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1704f)), _wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14637u, 7u)] + 374f), _wgslsmith_f_op_f32(round(-511f)))))));
}

fn func_6(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = -1i;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_1.yxy, arg_1.zyx, func_4(2008f, Struct_4(vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.b, false), max(vec3<i32>(-79181i, 0i, 2147483647i), vec3<i32>(-54681i, -1i, -2147483647i))).x)), vec3<f32>(_wgslsmith_f_op_f32(-472f + _wgslsmith_f_op_vec4_f32(func_2(global0[_wgslsmith_index_u32(0u, 7u)], true)).x), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~1u, 7u)])), global0[_wgslsmith_index_u32(20670u, 7u)]))), (-1i < _wgslsmith_mod_i32(14459i, _wgslsmith_dot_vec3_i32(vec3<i32>(63322i, 2147483647i, 22685i), vec3<i32>(21931i, 1i, 1i)))) | all(func_4(arg_2.x, Struct_4(vec2<bool>(false, true), 1175f, u_input.a.x, false), vec3<i32>(-36188i, 5957i, 45800i)).yx), ~(-vec2<i32>(firstTrailingBit(1i), 0i)), Struct_1(_wgslsmith_clamp_i32(1i, 0i, 0i | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 49021i), vec2<i32>(30364i, 2147483647i))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u << (min(1u, arg_0) % 32u), 7u)] - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, global0[_wgslsmith_index_u32(arg_0, 7u)]), _wgslsmith_f_op_f32(select(arg_2.x, arg_1.x, false)))), ~vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x, 4294967295u), arg_0), arg_2.x));
    let var_2 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(select(0u, ~12254u, all(vec2<bool>(var_1.b, var_1.b))), ~_wgslsmith_add_u32(var_1.d.c.x, arg_0), global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), ~firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(4294967295u, arg_0, 1u))) >> (vec3<u32>(4294967295u, 0u, arg_0) % vec3<u32>(32u)));
    var_0 = -1i;
    var_0 = 2147483647i;
    return var_1.d.a;
}

fn func_1() -> Struct_2 {
    var var_0 = 35286i;
    let var_1 = all(vec2<bool>(false, true));
    global1 = array<u32, 32>();
    var_0 = countOneBits(func_6(min(~(~global1[_wgslsmith_index_u32(1u, 32u)]), ~(~u_input.b)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(15574u, 7u)]), false | var_1)), vec2<f32>(global0[_wgslsmith_index_u32(abs(1u), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)))));
    var var_2 = select(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a | u_input.a), 32u)] ^ _wgslsmith_div_u32(4294967295u, firstLeadingBit(4294967295u ^ u_input.a.x)), global1[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_div_u32(_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 32u)] ^ u_input.a.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 46817u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65092u, 32u)], 32u)], 32u)]), vec4<u32>(global1[_wgslsmith_index_u32(6744u, 32u)], u_input.b, u_input.a.x, u_input.b)), 32u)]) != 43773u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6961u, 32u)], 32u)], 7u)], global0[_wgslsmith_index_u32(54293u, 7u)], 763f))) * vec3<f32>(-2631f, global0[_wgslsmith_index_u32(7951u, 7u)], global0[_wgslsmith_index_u32(28753u, 7u)]))))), select(true, true, true), countOneBits(vec2<i32>(~(-113i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 34507i, 18358i, 8157i), vec4<i32>(0i, 0i, 26611i, -2147483647i)))), Struct_1(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17213u, 7u)] * 903f)))), u_input.a.xy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 7u)]))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(2660u, 32u)], 63119u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], 35776u, u_input.a.x)), 7u)] * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1.d;
    global1 = array<u32, 32>();
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(-2509i, (firstLeadingBit(49387i) | (arg_1.c.x & 1i)) & 94733i), firstTrailingBit(1i));
    var var_2 = ~u_input.a;
    var var_3 = Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.d + _wgslsmith_f_op_f32(-1325f * 1591f))))), vec2<u32>(97273u, ~61924u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f) * _wgslsmith_f_op_f32(f32(-1f) * -297f)))));
    return _wgslsmith_f_op_f32(floor(402f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(Struct_2(vec3<f32>(1472f, -1024f, -1338f), false, vec2<i32>(-23057i, -36600i), Struct_1(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 7u)], u_input.a.yz, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24379u, 32u)], 7u)])), func_1())) - _wgslsmith_f_op_f32(round(1000f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-124f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~44941u, 32u)], 7u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_1().d.c.x, 7u)] * _wgslsmith_f_op_f32(-112f * global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))))));
    let var_1 = -18953i;
    global1 = array<u32, 32>();
    let var_2 = func_1();
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(53637u);
}


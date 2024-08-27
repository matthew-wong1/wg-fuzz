struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(9407i, 1i);

var<private> global1: array<vec2<bool>, 10>;

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(1i, -2520i, 58109i, 2147483647i), vec4<i32>(1i, -33695i, -5393i, 51576i), vec4<i32>(-43132i, 9232i, 115179i, 9704i), vec4<i32>(-45783i, 62828i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -1i, 17936i, 6215i), vec4<i32>(22632i, 2912i, -37040i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 54195i), vec4<i32>(-25478i, 1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 36584i, 9782i), vec4<i32>(i32(-2147483648), -11064i, -47411i, 28752i), vec4<i32>(1i, 17975i, 37638i, 0i), vec4<i32>(i32(-2147483648), 5986i, 68876i, 49123i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -8597i), vec4<i32>(21991i, 19847i, 1i, 27002i), vec4<i32>(-24561i, -44855i, -31315i, -29613i), vec4<i32>(2147483647i, -15979i, 2147483647i, -6426i), vec4<i32>(0i, i32(-2147483648), -1i, 0i), vec4<i32>(-12360i, 32757i, 1i, 0i), vec4<i32>(2147483647i, -557i, 32575i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 20106i, -1i), vec4<i32>(3808i, 0i, -29492i, 29379i), vec4<i32>(-1i, -33229i, 21018i, 2147483647i), vec4<i32>(66081i, 49997i, 21382i, -1i), vec4<i32>(0i, i32(-2147483648), -10776i, 66747i), vec4<i32>(-10551i, -22437i, 23478i, 0i), vec4<i32>(-16408i, i32(-2147483648), -5723i, -39089i));

var<private> global3: array<bool, 10> = array<bool, 10>(true, true, false, false, false, true, false, false, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    global1 = array<vec2<bool>, 10>();
    global0 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), abs(~vec2<i32>(7105i, global0.x)), _wgslsmith_mult_vec2_i32(abs(-vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(_wgslsmith_add_i32(global0.x, 0i), _wgslsmith_sub_i32(-27166i, global0.x))));
    global3 = array<bool, 10>();
    global1 = array<vec2<bool>, 10>();
    let var_0 = _wgslsmith_clamp_vec3_i32(max(vec3<i32>(abs(1i), ~6047i, -50878i), vec3<i32>(-1i) * -vec3<i32>(11420i, -15459i, -19527i)), _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i, u_input.b, -2121i) << (vec3<u32>(u_input.a, arg_1.c.x, 1u) % vec3<u32>(32u))), ~(vec3<i32>(global0.x, global0.x, -24389i) >> (arg_1.c.xzx % vec3<u32>(32u)))), -(abs(vec3<i32>(-31199i, u_input.b, global0.x)) | -vec3<i32>(global0.x, 85664i, u_input.b))) ^ ~countOneBits(firstTrailingBit(abs(vec3<i32>(global0.x, global0.x, u_input.b))));
    return abs(1u) << (reverseBits(u_input.a) % 32u);
}

fn func_2() -> i32 {
    return reverseBits(-select(-2147483647i, u_input.b, func_3(vec3<bool>(false, global3[_wgslsmith_index_u32(76450u, 10u)], false), Struct_1(-430f, u_input.a, vec4<u32>(u_input.a, u_input.a, 0u, 23977u)), vec3<u32>(1u, 0u, 34591u)) > u_input.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    global1 = array<vec2<bool>, 10>();
    global0 = -((~vec2<i32>(u_input.b, 20425i) | (-vec2<i32>(2147483647i, u_input.b) | countOneBits(vec2<i32>(1i, u_input.b)))) >> (arg_1.c.yz % vec2<u32>(32u)));
    global1 = array<vec2<bool>, 10>();
    let var_0 = Struct_2(~countOneBits(4294967295u) << (arg_1.c.x % 32u), func_2(), arg_1);
    var var_1 = !select(_wgslsmith_f_op_f32(f32(-1f) * -221f) > _wgslsmith_f_op_f32(-arg_1.a), true, any(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(2271u, 10u)], true), vec3<bool>(false, false, true), false))) & !((_wgslsmith_mod_i32(-20550i, var_0.b) & 76024i) < max(1i & global0.x, ~2147483647i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 26>();
    global0 = -reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 24893i) >> (vec2<u32>(91515u, 0u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.x, global0.x), vec3<i32>(-20849i, -1i, global0.x)), abs(u_input.b))));
    global0 = vec2<i32>(~global0.x, _wgslsmith_clamp_i32(~firstTrailingBit(global0.x), -(~(u_input.b ^ u_input.b)), global0.x));
    let var_0 = u_input.a;
    global3 = array<bool, 10>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), -139f));
    var var_2 = Struct_3(func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 1u), ~vec2<u32>(27163u, 1u)), firstTrailingBit(vec2<u32>(var_0, 4294967295u))), Struct_1(909f, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 68515u, u_input.a, 1u)), reverseBits(vec4<u32>(u_input.a, 10176u, u_input.a, 87978u))), ~min(vec4<u32>(4294967295u, 13806u, u_input.a, 4294967295u), vec4<u32>(12293u, 0u, 1u, var_0))), global1[_wgslsmith_index_u32(var_0, 10u)]), Struct_1(1614f, 301u, vec4<u32>(~(~20870u), var_0, ~(~58482u), var_0)), func_1(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(8382u, u_input.a))), func_1(~vec2<u32>(36429u, 4294967295u), func_1(vec2<u32>(4294967295u, 32072u), Struct_1(-138f, 1u, vec4<u32>(var_0, var_0, var_0, 95007u)), vec2<bool>(false, false)).c, global1[_wgslsmith_index_u32(var_0, 10u)]).c, select(!select(global1[_wgslsmith_index_u32(var_0, 10u)], global1[_wgslsmith_index_u32(var_0, 10u)], true), select(select(global1[_wgslsmith_index_u32(104086u, 10u)], global1[_wgslsmith_index_u32(41277u, 10u)], global3[_wgslsmith_index_u32(u_input.a, 10u)]), select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_0, 10u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(71117u, 10u)]), false), !vec2<bool>(global3[_wgslsmith_index_u32(var_0, 10u)], global3[_wgslsmith_index_u32(23392u, 10u)])), global1[_wgslsmith_index_u32(~1u, 10u)])), vec2<f32>(var_1, var_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -33252i, -13179i), vec3<i32>(-1i, -14534i, var_2.a.b)) | -43341i) | -2147483647i, ~select(1i, select(global0.x, 0i, false), true), true), abs(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-35610i, 0i, 12308i), vec3<i32>(u_input.b, -36391i, 2906i)), firstLeadingBit(0i), global0.x)), select(vec4<i32>(_wgslsmith_clamp_i32(-29927i, -28318i, -9313i), 14538i, -1i, ~abs(-44765i)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-9534i, -1i, 17733i, global0.x) & vec4<i32>(u_input.b, global0.x, -34582i, u_input.b)), abs(global2[_wgslsmith_index_u32(var_0, 26u)])), true));
}


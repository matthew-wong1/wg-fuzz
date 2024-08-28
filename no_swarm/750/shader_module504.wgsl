struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(25091u, 34968u, 36577u, 4294967295u), vec4<u32>(0u, 1u, 4461u, 0u), vec4<u32>(106194u, 44980u, 1u, 0u), vec4<u32>(5033u, 4294967295u, 3384u, 40407u), vec4<u32>(78188u, 37451u, 11679u, 2395u), vec4<u32>(46902u, 0u, 0u, 24823u), vec4<u32>(0u, 34264u, 1u, 0u), vec4<u32>(22542u, 4294967295u, 1u, 0u), vec4<u32>(29958u, 0u, 0u, 1u), vec4<u32>(61923u, 48012u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 14760u, 0u), vec4<u32>(367u, 1u, 1u, 68829u), vec4<u32>(64997u, 1u, 4294967295u, 39448u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(35172u, 1u, 72224u, 0u));

var<private> global2: array<f32, 29> = array<f32, 29>(-1802f, -1000f, -304f, -758f, -279f, -1053f, 1000f, -817f, -337f, -726f, 632f, -1224f, 184f, 484f, -1172f, -556f, 218f, 126f, 1128f, 1820f, -554f, -644f, 844f, 1422f, 1109f, -319f, -515f, 925f, -1000f);

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    var var_0 = abs(~firstLeadingBit(select(vec3<i32>(-2147483647i, -2147483647i, u_input.b), arg_1.xyx, true)));
    global2 = array<f32, 29>();
    let var_1 = false;
    var var_2 = Struct_3(var_1, arg_1.ywy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(433f - -163f), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global3.b, 29u)]))))), global3.b, vec3<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(abs(23587u), 29u)], 957f)), global2[_wgslsmith_index_u32(~max(global0.x, 32488u), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(52980u, 29u)], global3.d)))), -245f));
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(-(~(~arg_1.zxz)), var_2.b), countOneBits(~abs(-var_2.b)));
    return _wgslsmith_mod_u32(11301u, ~(~4294967295u));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = !select(vec2<bool>(true, -278f <= global3.a), global4[_wgslsmith_index_u32(~(~(~83574u)), 28u)], global4[_wgslsmith_index_u32(~1u, 28u)]);
    global0 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.c, _wgslsmith_clamp_u32(global3.b, global3.b, global3.b) << (1u % 32u)), 31657u);
    var var_1 = true;
    global2 = array<f32, 29>();
    global3 = Struct_1(global2[_wgslsmith_index_u32(7221u, 29u)], _wgslsmith_div_u32(_wgslsmith_div_u32(~global0.x, func_3(-2147483647i, _wgslsmith_mod_vec4_i32(arg_0, arg_0))), global0.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-785f, 397f, global3.c.x)), _wgslsmith_f_op_vec3_f32(global3.c + vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 29u)], 301f, -680f)))), vec3<f32>(1000f, _wgslsmith_div_f32(939f, global3.a), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(86007u, 29u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-609f, _wgslsmith_f_op_f32(1104f - -1000f)))));
    return Struct_2(select(~_wgslsmith_mod_vec3_i32(arg_0.wzy, ~arg_0.xww), vec3<i32>(~(i32(-1i) * -26671i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_0.x, 1i, arg_0.x, u_input.b)), abs(u_input.b)), _wgslsmith_mod_i32(u_input.b | arg_0.x, arg_0.x)), var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1354f), 1u, _wgslsmith_f_op_vec3_f32(global3.c + _wgslsmith_f_op_vec3_f32(ceil(global3.c))), global3.c.x);
    global0 = abs(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(var_0.b, global0.x)), ~abs(vec2<u32>(0u, u_input.a))) & select(vec2<u32>(~u_input.c, 16466u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, 47282u) | vec2<u32>(30595u, global3.b), reverseBits(vec2<u32>(var_0.b, global3.b))), arg_1.x));
    var var_1 = arg_0.a.x & max(_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-1i, 0i | u_input.b)), min(~(~(-1i)), -36599i));
    var var_2 = func_2(~select(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, -17784i, u_input.b, arg_0.a.x)), min(vec4<i32>(0i, arg_0.a.x, arg_0.a.x, u_input.b), vec4<i32>(arg_0.a.x, u_input.b, arg_0.a.x, arg_0.a.x))), -(~vec4<i32>(-2147483647i, 1i, -9581i, -27226i)), arg_1.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.d, 372f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + var_0.d), ~countOneBits(reverseBits(abs(global3.b))), vec3<f32>(_wgslsmith_f_op_f32(sign(global3.d)), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1536f + _wgslsmith_f_op_f32(1193f + global3.a)) * 135f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(func_3(var_2.a.x, vec4<i32>(-19034i, u_input.b, 2147483647i, -1i))), 29u)]), _wgslsmith_f_op_f32(180f * -1740f)));
    return var_3.a;
}

fn func_5(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = vec3<f32>(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global3.d, global3.c.x)), _wgslsmith_f_op_f32(max(arg_0.x, global3.d))))), -927f);
    var var_1 = -32442i;
    global3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1132f, _wgslsmith_f_op_f32(f32(-1f) * -859f), any(vec3<bool>(false, true, true)))))))), global0.x, vec3<f32>(-224f, _wgslsmith_f_op_f32(-global3.a), 1875f), 737f);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f), _wgslsmith_f_op_f32(select(349f, -258f, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x + 537f))))) < var_0.x, -_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 0i))), vec3<i32>(u_input.b << (global0.x % 32u), u_input.b, u_input.b ^ 33839i)), Struct_1(global2[_wgslsmith_index_u32(min(4294967295u, 1u) | min(~u_input.a, ~global0.x), 29u)], ~countOneBits(~0u), _wgslsmith_f_op_vec3_f32(-global3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1000f)));
    var var_3 = global4[_wgslsmith_index_u32(min(var_2.c.b, var_2.c.b) >> (global3.b % 32u), 28u)];
    return func_2(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, u_input.b), countOneBits(vec4<i32>(var_2.b.x, u_input.b, u_input.b, u_input.b))));
}

fn func_1() -> Struct_2 {
    return func_5(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1355f)), _wgslsmith_f_op_f32(func_4(func_2(-vec4<i32>(u_input.b, 48866i, 0i, u_input.b)), vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 15>();
    global4 = array<vec2<bool>, 28>();
    global0 = vec2<u32>(58160u, global0.x ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.x, 35495u) ^ global3.b, ~_wgslsmith_add_u32(u_input.a, u_input.a)));
    var var_0 = u_input.b;
    let var_1 = func_1();
    var_0 = firstTrailingBit(_wgslsmith_mod_i32(u_input.b, var_1.a.x ^ 0i));
    let var_2 = var_1.a.zy;
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.zx, 1071f, _wgslsmith_div_vec4_f32(vec4<f32>(global3.a, -425f, _wgslsmith_div_f32(-1072f, _wgslsmith_f_op_f32(-global3.c.x)), 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global2[_wgslsmith_index_u32(global3.b, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(7043u, 29u)]) + vec4<f32>(global3.d, global2[_wgslsmith_index_u32(4294967295u, 29u)], 1120f, global3.c.x)))))));
}


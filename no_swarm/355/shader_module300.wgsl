struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: Struct_5 = Struct_5(vec3<f32>(-2094f, 1100f, -1072f), Struct_3(Struct_2(13419u, Struct_1(-23717i, vec3<u32>(1u, 61646u, 0u), 4294967295u, vec2<f32>(-304f, 481f)), true, 2147483647i, Struct_1(i32(-2147483648), vec3<u32>(103045u, 1u, 1u), 9438u, vec2<f32>(239f, -1000f))), 1i, 957f, Struct_2(107594u, Struct_1(876i, vec3<u32>(94321u, 49159u, 0u), 4294967295u, vec2<f32>(-805f, -1055f)), false, 1i, Struct_1(2147483647i, vec3<u32>(0u, 44553u, 13392u), 20276u, vec2<f32>(284f, -1024f))), Struct_2(57255u, Struct_1(0i, vec3<u32>(0u, 34964u, 66371u), 4294967295u, vec2<f32>(769f, -1054f)), false, 61078i, Struct_1(-70673i, vec3<u32>(45768u, 79187u, 0u), 0u, vec2<f32>(324f, -2464f)))), Struct_3(Struct_2(4294967295u, Struct_1(36717i, vec3<u32>(28407u, 4294967295u, 4294967295u), 4294967295u, vec2<f32>(745f, 1048f)), true, -39003i, Struct_1(-88619i, vec3<u32>(19446u, 16506u, 49816u), 0u, vec2<f32>(1718f, -753f))), 69229i, -621f, Struct_2(59970u, Struct_1(5405i, vec3<u32>(0u, 8221u, 13087u), 3883u, vec2<f32>(518f, 1000f)), true, -27665i, Struct_1(2147483647i, vec3<u32>(43791u, 0u, 1u), 1u, vec2<f32>(-449f, -2258f))), Struct_2(34687u, Struct_1(0i, vec3<u32>(8554u, 0u, 39857u), 2043u, vec2<f32>(-750f, -461f)), true, 39964i, Struct_1(i32(-2147483648), vec3<u32>(56879u, 60634u, 25415u), 36121u, vec2<f32>(-1493f, 385f)))), vec4<f32>(-923f, -321f, -842f, -1216f), Struct_4(27154u, Struct_3(Struct_2(12452u, Struct_1(8220i, vec3<u32>(1u, 1u, 4294967295u), 40128u, vec2<f32>(-485f, -1000f)), false, -1i, Struct_1(21769i, vec3<u32>(4294967295u, 37627u, 0u), 41407u, vec2<f32>(-1000f, 2177f))), 0i, -1576f, Struct_2(0u, Struct_1(-1i, vec3<u32>(4294967295u, 1u, 47430u), 19814u, vec2<f32>(1563f, -1000f)), true, 1i, Struct_1(-53931i, vec3<u32>(4294967295u, 3459u, 0u), 60043u, vec2<f32>(-1661f, 121f))), Struct_2(4294967295u, Struct_1(32957i, vec3<u32>(4294967295u, 75072u, 21134u), 1u, vec2<f32>(-612f, -934f)), false, -30606i, Struct_1(-1i, vec3<u32>(1u, 4294967295u, 13975u), 4294967295u, vec2<f32>(-1379f, -1076f)))), true, Struct_2(4294967295u, Struct_1(-4603i, vec3<u32>(41597u, 50356u, 60748u), 9732u, vec2<f32>(-557f, 1589f)), true, 38078i, Struct_1(1i, vec3<u32>(7479u, 1u, 22377u), 0u, vec2<f32>(1525f, -1000f)))));

var<private> global2: array<i32, 11> = array<i32, 11>(12300i, -57926i, i32(-2147483648), 0i, -48437i, -3880i, -39154i, 1i, i32(-2147483648), 0i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = 1u >> ((_wgslsmith_add_u32(u_input.a, firstTrailingBit(1u)) & reverseBits(24664u)) % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-715f)) * _wgslsmith_f_op_f32(1980f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f * 343f) + _wgslsmith_f_op_f32(-global1.b.a.e.d.x)) - _wgslsmith_div_f32(arg_0.x, -1005f))));
    var var_2 = min(~2690u, arg_1.x);
    global0 = array<i32, 16>();
    return global2[_wgslsmith_index_u32(1u, 11u)];
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32) -> vec4<i32> {
    let var_0 = global1.e.d;
    global1 = Struct_5(global1.d.wzw, Struct_3(global1.e.b.a, func_3(global1.d, vec2<u32>(29268u, 0u)) | max(_wgslsmith_mod_i32(var_0.d, 1i), global0[_wgslsmith_index_u32(~global1.c.e.b.b.x, 16u)]), _wgslsmith_f_op_f32(ceil(global1.d.x)), global1.b.a, Struct_2(1u >> (var_0.b.c % 32u), global1.e.d.b, all(select(vec2<bool>(global1.b.d.c, true), vec2<bool>(true, global1.c.d.c), vec2<bool>(true, false))), _wgslsmith_add_i32(-1i, 0i), global1.b.e.e)), Struct_3(Struct_2(11706u, Struct_1(27841i, _wgslsmith_mod_vec3_u32(var_0.b.b, vec3<u32>(22246u, global1.e.b.e.b.c, global1.e.d.a)), ~87424u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-910f, 983f), global1.e.d.e.d))), var_0.c, -18624i, var_0.b), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(arg_0.yw, u_input.b)), arg_0.wy), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.d.x), _wgslsmith_f_op_f32(-819f * var_0.e.d.x)) * 815f), Struct_2(1u, global1.c.d.e, true, var_0.b.a, Struct_1(select(-28741i, 0i, var_0.c), global1.e.d.b.b, u_input.a ^ global1.e.a, vec2<f32>(arg_1.x, global1.b.c))), global1.c.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, arg_1.x, -1263f, var_0.b.d.x) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 845f, -1079f, 488f), global1.d))))), Struct_4(u_input.a, Struct_3(Struct_2(var_0.b.c, global1.c.d.b, true, 30433i, var_0.e), -(-1i << (1u % 32u)), arg_1.x, Struct_2(0u << (u_input.a % 32u), Struct_1(-4105i, var_0.e.b, arg_2, var_0.b.d), all(vec2<bool>(var_0.c, true)), -1i, var_0.e), Struct_2(_wgslsmith_sub_u32(global1.b.d.e.b.x, 0u), var_0.e, any(vec4<bool>(false, true, var_0.c, false)), 1i, var_0.b)), var_0.c, global1.e.d));
    var var_1 = global1.e.d.c;
    let var_2 = firstLeadingBit(~global0[_wgslsmith_index_u32(abs(arg_2), 16u)]);
    global2 = array<i32, 11>();
    return vec4<i32>(_wgslsmith_div_i32(arg_0.x, 2147483647i), -18821i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, abs(global1.e.b.d.d)), global2[_wgslsmith_index_u32(54407u, 11u)]), 0i);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(abs(global0[_wgslsmith_index_u32(min(abs(arg_2.b.x) << (reverseBits(12966u) % 32u), _wgslsmith_div_u32(20714u, ~u_input.a)), 16u)]), _wgslsmith_clamp_vec3_u32(arg_2.b, vec3<u32>(_wgslsmith_mod_u32(global1.c.d.e.c, global1.c.d.a), 57152u, 4294967295u), ~(vec3<u32>(1u, 30179u, 50362u) ^ vec3<u32>(0u, u_input.a, arg_2.b.x))) | ~(reverseBits(vec3<u32>(global1.c.d.e.b.x, 1u, global1.b.a.a)) ^ ~global1.e.d.e.b), firstLeadingBit(0u), arg_2.d);
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(global1.a - global1.d.yzz), global1.b, global1.b, global1.d, global1.e);
    global0 = array<i32, 16>();
    var var_2 = min(countOneBits(vec4<u32>(var_1.b.d.a, ~max(4294967295u, 4294967295u), ~(~var_0.b.x), ~var_1.c.d.b.c)), max(_wgslsmith_mod_vec4_u32((vec4<u32>(44359u, 31504u, arg_2.b.x, 27724u) << (vec4<u32>(arg_2.c, u_input.a, arg_2.c, u_input.a) % vec4<u32>(32u))) & (vec4<u32>(47544u, 48579u, 8614u, 4294967295u) & vec4<u32>(8743u, 0u, 4294967295u, var_1.c.a.a)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(28341u, 0u, arg_2.b.x, arg_2.c), vec4<u32>(var_0.c, global1.e.b.e.e.c, u_input.a, 1u)))), ~abs(vec4<u32>(global1.b.a.a, var_1.c.a.a, u_input.a, 4294967295u))));
    global0 = array<i32, 16>();
    return global1.e.b;
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = global1.e.d;
    var var_1 = var_0.b;
    let var_2 = global1.d;
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.yww)), func_4(1362f, ~func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(28366i, global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(var_1.c, 11u)], global0[_wgslsmith_index_u32(var_1.c, 16u)]), vec4<i32>(21114i, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global1.e.d.b.b.x, 16u)], 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, -1571f)), 1u), var_0.e), global1.c, global1.d, global1.e);
    global2 = array<i32, 11>();
    return _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(abs(min(1i, -36075i)), _wgslsmith_mult_i32(arg_0, _wgslsmith_sub_i32(25318i, -28762i >> (var_1.b.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(i32(-1i) * -global2[_wgslsmith_index_u32(abs(u_input.a), 11u)]);
    global0 = array<i32, 16>();
    var var_1 = vec2<bool>(true, true);
    global0 = array<i32, 16>();
    var var_2 = firstLeadingBit(max(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(global1.e.b.a.d, global1.e.b.e.b.a, 1i), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], 51819i))), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 16u)], u_input.b.x), vec3<i32>(u_input.b.x, -7769i, 8352i))));
    let var_3 = global1.c.a.b;
    var_1 = select(vec2<bool>(true, any(vec4<bool>(true, select(true, false, var_1.x), all(vec4<bool>(false, false, false, global1.c.d.c)), all(vec2<bool>(var_1.x, false))))), vec2<bool>(func_4(587f, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 16u)] << (16317u % 32u), 1i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(30803u, var_3.c), 16u)], -u_input.b.x), Struct_1(var_3.a, var_3.b, u_input.a, _wgslsmith_f_op_vec2_f32(round(var_3.d)))).d.c, !all(select(vec4<bool>(true, global1.e.d.c, var_1.x, global1.c.d.c), vec4<bool>(var_1.x, var_1.x, var_1.x, global1.b.e.c), vec4<bool>(var_1.x, false, var_1.x, false)))), vec2<bool>(true, true));
    global0 = array<i32, 16>();
    var var_4 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - func_4(var_3.d.x, vec4<i32>(55700i, global1.c.e.d, u_input.b.x, 1i), global1.e.d.e).c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_div_f32(878f, -981f))), func_4(1306f, ~vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(47573u, 11u)], global0[_wgslsmith_index_u32(var_3.c, 16u)], 35094i), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 11u)], global1.b.e.b.b, _wgslsmith_dot_vec3_u32(vec3<u32>(32804u, global1.c.d.a, 1u), vec3<u32>(15618u, 1u, 4294967295u)), vec2<f32>(global1.c.a.b.d.x, global1.d.x))).e.e.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.d.x)) + _wgslsmith_f_op_f32(f32(-1f) * -803f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)))));
}


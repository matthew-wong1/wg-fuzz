struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global2: array<bool, 25>;

var<private> global3: array<vec3<bool>, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-var_0.b) < arg_0.b, true);
    global2 = array<bool, 25>();
    global3 = array<vec3<bool>, 32>();
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, min(~(-2147483647i), var_0.a.x), max(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(1i, var_0.a.x))), _wgslsmith_dot_vec2_i32(reverseBits(select(u_input.a.zz, vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, global2[_wgslsmith_index_u32(74447u, 25u)]))), abs(vec2<i32>(u_input.b.x, arg_0.a.x))), abs(firstLeadingBit(select(60263i, u_input.b.x, true)))), -376f);
    return vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(~4294967295u, 37352u), min(91310u, _wgslsmith_mod_u32(4294967295u, 41032u))), 25u)] && true, var_1.x && any(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~31477u), 32u)]), select(any(!vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(26565u, 25u)], global2[_wgslsmith_index_u32(24777u, 25u)])), true, global2[_wgslsmith_index_u32(1u, 25u)]));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec2<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -238f))))), arg_0.x);
    var var_1 = !func_3(Struct_1(~vec3<i32>(-2147483647i, 1i, -28942i), 329f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, 239f)));
    var_1 = !global1[_wgslsmith_index_u32(34557u, 24u)];
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u & _wgslsmith_dot_vec3_u32(vec3<u32>(30997u, 69244u, 24815u), vec3<u32>(4294967295u, 0u, 0u))) >> (~abs(firstLeadingBit(12394u)) % 32u), 25u)], vec2<bool>(var_1.x, any(select(select(var_1.yy, var_1.yz, var_1.x), !var_1.xz, var_1.yz))), arg_0);
    return !var_1.xx;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_vec3_i32(max(~vec3<i32>(-50295i, 0i, -1i), max(vec3<i32>(-1i, u_input.b.x, u_input.b.x), u_input.b.xxz)) | _wgslsmith_mult_vec3_i32(~u_input.a, ~vec3<i32>(u_input.a.x, u_input.b.x, 15056i)), u_input.a | u_input.a, u_input.b.xxz ^ vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.b.x)), 1000f);
}

fn func_1() -> Struct_2 {
    global3 = array<vec3<bool>, 32>();
    var var_0 = func_4(Struct_2(true, func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1040f, -1000f, -2058f, 1000f) + vec4<f32>(594f, -380f, 495f, -928f)))), -u_input.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(979f, -395f, 1592f, 942f), vec4<f32>(333f, 1244f, -234f, -733f))), vec4<f32>(1000f, 2724f, 1385f, 820f)), vec4<f32>(_wgslsmith_f_op_f32(-149f * 467f), -882f, 1191f, _wgslsmith_div_f32(-445f, 1323f))))));
    let var_1 = ~(~min(select(reverseBits(vec2<u32>(26153u, 0u)), vec2<u32>(1u, 1u), !global2[_wgslsmith_index_u32(0u, 25u)]), ~(~vec2<u32>(0u, 49549u))));
    global2 = array<bool, 25>();
    var var_2 = Struct_2(~(~0u) != max(~var_1.x, var_1.x << (var_1.x % 32u)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 430f, var_0.b, var_0.b), vec4<f32>(var_0.b, -241f, -1000f, -334f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-905f, -1198f, var_0.b, 1454f))))), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, 718f, var_0.b, -911f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b) * vec4<f32>(var_0.b, var_0.b, -340f, var_0.b))) - vec4<f32>(_wgslsmith_div_f32(-657f, var_0.b), _wgslsmith_f_op_f32(868f + var_0.b), _wgslsmith_f_op_f32(800f + var_0.b), _wgslsmith_f_op_f32(-var_0.b)))));
    return Struct_2(true, vec2<bool>(all(vec4<bool>(var_2.a | false, false && var_2.b.x, true, func_3(Struct_1(var_0.a, var_0.b)).x)), var_2.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(floor(-490f)), -1400f, 1737f))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    global2 = array<bool, 25>();
    global1 = array<vec3<bool>, 24>();
    var var_0 = arg_1.c.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-343f)), -1590f)), arg_1.c.x);
    global3 = array<vec3<bool>, 32>();
    let var_1 = (vec2<u32>(~_wgslsmith_add_u32(7957u, 70257u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(12580u, 40911u, 12613u, 7396u), vec4<u32>(0u, 92047u, 0u, 57470u), arg_3), vec4<u32>(1u, 0u, 0u, 0u))) >> ((vec2<u32>(1u, 1u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(30028u, 0u), firstTrailingBit(vec2<u32>(14090u, 20444u)))) % vec2<u32>(32u))) & select(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(57233u, 1u), ~4294967295u), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(~79738u, ~0u), vec2<u32>(1u, 1u)), global2[_wgslsmith_index_u32(firstLeadingBit(select(4294967295u, 30622u, arg_1.a) | firstLeadingBit(4294967295u)), 25u)]);
    return _wgslsmith_add_i32(arg_2, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_2, abs(-26889i)), -7842i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(~(-1i), u_input.a.x), func_5(select(vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.b.x, -7485i, 22046i), vec4<bool>(global2[_wgslsmith_index_u32(40076u, 25u)], global2[_wgslsmith_index_u32(54518u, 25u)], global2[_wgslsmith_index_u32(38130u, 25u)], false)), func_1(), _wgslsmith_sub_i32(-1i, 0i), select(vec4<bool>(global2[_wgslsmith_index_u32(44444u, 25u)], true, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 25u)], false, global2[_wgslsmith_index_u32(1u, 25u)]), global2[_wgslsmith_index_u32(61944u, 25u)])), -15747i), vec3<f32>(1f, 1f, 1f), reverseBits(~4294967295u));
}


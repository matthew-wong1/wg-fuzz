struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 2> = array<f32, 2>(1237f, -367f);

var<private> global2: array<f32, 9>;

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(1i, -140f, vec3<bool>(false, false, false)), Struct_3(0i, -658f, vec3<bool>(true, false, false)), Struct_3(-1i, -675f, vec3<bool>(true, true, true)), Struct_3(-1i, -544f, vec3<bool>(true, false, false)), Struct_3(-23026i, 828f, vec3<bool>(true, false, true)), Struct_3(0i, 1174f, vec3<bool>(true, true, true)), Struct_3(-53387i, 488f, vec3<bool>(true, false, true)), Struct_3(0i, 1026f, vec3<bool>(true, true, true)), Struct_3(-1i, 1000f, vec3<bool>(false, true, true)), Struct_3(i32(-2147483648), 1329f, vec3<bool>(true, false, true)), Struct_3(9106i, 1835f, vec3<bool>(true, true, true)), Struct_3(21452i, -266f, vec3<bool>(false, false, false)), Struct_3(0i, -1686f, vec3<bool>(true, true, false)), Struct_3(0i, 406f, vec3<bool>(true, false, false)), Struct_3(55395i, -827f, vec3<bool>(true, true, true)), Struct_3(0i, 1267f, vec3<bool>(true, false, false)), Struct_3(1i, -847f, vec3<bool>(false, true, false)), Struct_3(1i, -2003f, vec3<bool>(true, true, false)), Struct_3(-3318i, -987f, vec3<bool>(true, false, true)), Struct_3(65562i, -818f, vec3<bool>(true, false, true)));

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.b, 20u)];
    global3 = array<Struct_3, 20>();
    var var_1 = _wgslsmith_mod_i32(~1i, countOneBits(-26949i));
    global3 = array<Struct_3, 20>();
    global0 = global4.x;
    return ~(reverseBits(vec3<i32>(-35203i, u_input.a, 32994i)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(15017u, u_input.b, 55061u), vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))) >> (max(~vec3<u32>(1u, abs(u_input.b), _wgslsmith_mod_u32(u_input.b, 22700u)), _wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(0u, 55306u, 103447u) >> (vec3<u32>(1u, u_input.b, 29896u) % vec3<u32>(32u)), true), ~reverseBits(vec3<u32>(32812u, 1u, 1259u)))) % vec3<u32>(32u));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~abs(abs(u_input.b)), u_input.b, u_input.b, 63241u), select(~vec4<u32>(4294967295u, u_input.b, u_input.b, 0u) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 33233u, 4294967295u), vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, 13522u, u_input.b, u_input.b)) | select(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), true)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 36186u, 4294967295u), vec4<u32>(8161u, 102801u, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), min(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b), ~40724u << (firstTrailingBit(4294967295u) % 32u), 38058u), true));
    var var_1 = Struct_1(u_input.a);
    global2 = array<f32, 9>();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(270f, -872f, global2[_wgslsmith_index_u32(u_input.b, 9u)], 249f))))))));
    var var_3 = select(!(!(!(!vec3<bool>(arg_0, global4.x, true)))), !(!vec3<bool>(global4.x && arg_0, !global4.x, false)), !select(vec3<bool>(false, !arg_0, any(vec4<bool>(true, arg_0, false, true))), !vec3<bool>(arg_0, global4.x, false), vec3<bool>(!global4.x, true, 28813i < var_1.a)));
    return _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(2147483647i, -select(var_1.a, u_input.a, true), 1i)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(abs(select(vec3<i32>(u_input.a, u_input.a, -22326i), vec3<i32>(u_input.a, var_1.a, -2147483647i), vec3<bool>(true, false, false))), vec3<i32>(_wgslsmith_div_i32(var_1.a, -1i), _wgslsmith_add_i32(7587i, 1i), -1i)), vec3<i32>(61925i, 2147483647i, u_input.a >> (~u_input.b % 32u))), vec3<i32>(-10563i, ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_1.a, -29377i, var_1.a)), vec3<i32>(var_1.a, 1i, u_input.a)), var_1.a));
}

fn func_1() -> Struct_1 {
    global2 = array<f32, 9>();
    global2 = array<f32, 9>();
    let var_0 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b, 9u)], -847f);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~1u, 2u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f), global1[_wgslsmith_index_u32(57987u, 2u)]), _wgslsmith_f_op_f32(round(806f)))))));
    let var_2 = _wgslsmith_div_vec3_i32(-abs(_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 68149i, -10143i)), func_2(global4.x))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 85186i, -4781i), vec3<i32>(u_input.a, u_input.a, 0i)) ^ func_3(global4.x, var_1.xxz)) & vec3<i32>(abs(i32(-1i) * -29128i), -u_input.a, firstTrailingBit(i32(-1i) * -42196i)));
    return Struct_1(-(min(var_2.x, -56436i) << (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 2u)] * _wgslsmith_f_op_f32(721f + 1015f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(f32(-1f) * -570f), global4.x)), -262f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-812f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), var_0)));
    var_1 = 1596f;
    global1 = array<f32, 2>();
    var var_3 = Struct_3(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 2u)], -595f))), -1171f)) + global1[_wgslsmith_index_u32(~(u_input.b | 73989u), 2u)]), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, global4.x, false), all(vec4<bool>(global4.x, false, global4.x, global4.x)))));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -654f)), _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(firstLeadingBit(u_input.b), ~u_input.b)), ~u_input.b | _wgslsmith_sub_u32(_wgslsmith_mult_u32(29548u, u_input.b), abs(u_input.b))), min(_wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a, u_input.a, u_input.a, -1i), vec4<i32>(var_3.a, -35968i, -2147483647i, u_input.a)), vec4<i32>(~(-12709i), 1i, -30926i, _wgslsmith_mod_i32(-51364i, var_3.a))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(1i, 57584i, var_4.a, -2147483647i))), vec4<i32>(-2147483647i, u_input.a, var_3.a, -u_input.a), vec4<i32>(_wgslsmith_mod_i32(2147483647i, var_4.a), u_input.a >> (u_input.b % 32u), 0i, 2147483647i))));
}


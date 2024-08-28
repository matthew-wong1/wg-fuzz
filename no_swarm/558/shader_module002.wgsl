struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(1000f, -201f, 1202f), 1326u, vec4<i32>(2147483647i, 1i, -8328i, 0i), vec3<f32>(992f, -1741f, 155f), 559f);

var<private> global2: i32 = i32(-2147483648);

var<private> global3: vec4<i32> = vec4<i32>(1i, -11562i, 0i, i32(-2147483648));

var<private> global4: array<bool, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> u32 {
    global3 = vec4<i32>(arg_3.c.x, -(-1i ^ (max(arg_3.c.x, 1i) << (abs(76644u) % 32u))), countOneBits(arg_3.c.x), -15871i);
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-209f, 343f, false)) - global0.x))), 1499f) * global1.d.zy);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1129f, -1504f, -353f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, global1.a.x, global0.x, arg_1.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2575f, -108f, -1145f, -467f) - vec4<f32>(-204f, -1000f, global1.e, arg_1.a))) * vec4<f32>(global0.x, arg_1.a, arg_1.a, _wgslsmith_f_op_f32(345f * arg_3.d.x))), !select(!vec4<bool>(true, global4[_wgslsmith_index_u32(31185u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(global1.b, 19u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(arg_2, 19u)], global4[_wgslsmith_index_u32(global1.b, 19u)], global4[_wgslsmith_index_u32(global1.b, 19u)], false), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(50160u, 19u)], global4[_wgslsmith_index_u32(arg_3.b, 19u)], false), global4[_wgslsmith_index_u32(15529u, 19u)]), !vec4<bool>(global4[_wgslsmith_index_u32(36046u, 19u)], true, false, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), 1619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1097f, 164f))), global1.a.x)));
    let var_1 = Struct_5(arg_2 >= 67445u);
    global2 = global3.x;
    return ~firstLeadingBit(_wgslsmith_add_u32(~78003u, firstTrailingBit(global1.b)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> vec4<i32> {
    let var_0 = vec2<bool>(true, global4[_wgslsmith_index_u32(min(4443u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, u_input.a), ~vec2<u32>(global1.b, 0u)), countOneBits(70701u))), 19u)]);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), _wgslsmith_f_op_f32(233f - 788f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 228f)) * global1.a.zz), var_0))));
    let var_1 = Struct_2(Struct_1(vec3<u32>(global1.b, ~(~global1.b), min(global1.b, 59099u)), firstTrailingBit(vec3<u32>(u_input.a, 1u, func_3(global3.xw, Struct_4(-1443f), 0u, Struct_3(global1.d, u_input.a, global1.c, vec3<f32>(global0.x, -723f, -276f), 2184f)))), _wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1130f, arg_0.x, 639f))), 0u, true), vec4<u32>(global1.b, global1.b, (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, 40878u)) & 4294967295u) ^ countOneBits(_wgslsmith_mod_u32(global1.b, 0u)), select(1u, 24839u, any(vec2<bool>(var_0.x, true)))), vec3<bool>(var_0.x, 16802u >= (2006u >> (~u_input.a % 32u)), select(var_0.x, all(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], var_0.x)), all(select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 19u)], false, false, true), vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, global4[_wgslsmith_index_u32(126428u, 19u)], global4[_wgslsmith_index_u32(u_input.a, 19u)], true))))));
    var var_2 = Struct_1(vec3<u32>((u_input.a ^ 60050u) & var_1.b.x, select(var_1.b.x, 4294967295u, !(!var_0.x)), 6232u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x ^ var_1.a.b.x, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 1u), countOneBits(1u))), countOneBits(vec3<u32>(global1.b, global1.b, u_input.a) ^ select(var_1.a.b, var_1.b.wzy, var_1.c))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-206f, _wgslsmith_f_op_f32(arg_0.x - 410f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(310f)))))), _wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) * _wgslsmith_div_f32(950f, global1.e)))), firstTrailingBit(reverseBits(u_input.a) | abs(38720u)) & 20591u, true);
    var var_3 = !global4[_wgslsmith_index_u32(var_1.b.x, 19u)];
    return vec4<i32>(1i, ~_wgslsmith_mod_i32(reverseBits(global1.c.x), global1.c.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(global1.c.xxy), global3.yyx), -27851i), ~global3.x);
}

fn func_4(arg_0: i32) -> Struct_5 {
    var var_0 = global1.d.x;
    var var_1 = any(!vec2<bool>(global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(~global1.b, 19u)])) || true;
    var var_2 = 1i;
    var var_3 = i32(-1i) * -reverseBits(_wgslsmith_sub_i32(-1i, -41376i));
    let var_4 = _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -337f) + _wgslsmith_f_op_f32(f32(-1f) * -929f)))))));
    return Struct_5(~global3.x <= arg_0);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(29005i, global3.x) ^ global1.c.x;
    var var_1 = func_4(_wgslsmith_dot_vec4_i32(global1.c, _wgslsmith_sub_vec4_i32(min(func_2(vec4<f32>(962f, 611f, global1.d.x, -1659f), arg_1, var_0), vec4<i32>(global3.x, -2416i, -7934i, global3.x)), abs(-vec4<i32>(1i, global3.x, global3.x, global1.c.x)))));
    var var_2 = func_4(var_0);
    global1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(arg_1)), global1.e), global1.b, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0, global3.x), vec3<i32>(356i, -76515i, -4078i)), global1.c.x) | -global1.c.x, _wgslsmith_dot_vec3_i32(func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 1761f, -417f, arg_1))), 203f, abs(1i)).yzx, vec3<i32>(0i, -var_0, abs(0i))), global3.x, ~(~firstLeadingBit(var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(295f + global0.x) - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -844f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.e))))) - _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(global0.x * -1170f)))));
    global3 = select(select(vec4<i32>(~_wgslsmith_clamp_i32(2147483647i, 1i, global1.c.x), 0i, global3.x, _wgslsmith_mult_i32(~var_0, reverseBits(var_0))), global1.c, !select(select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(false, var_2.a, true, true), vec4<bool>(var_2.a, true, var_2.a, var_1.a)), vec4<bool>(false, true, var_1.a, var_1.a), select(vec4<bool>(var_2.a, var_1.a, true, var_1.a), vec4<bool>(var_2.a, arg_0, true, false), vec4<bool>(var_2.a, true, false, arg_0)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(21764i, global1.c.x, 1i, -2147483647i) ^ select(vec4<i32>(-9249i, global3.x, global1.c.x, global3.x), vec4<i32>(18846i, global1.c.x, global3.x, global3.x), vec4<bool>(false, arg_0, false, false)), ~global1.c), !(!vec4<bool>(true, !var_1.a, false, !arg_0)));
    return Struct_1(~vec3<u32>(~4294967295u, global1.b, abs(~42809u)), arg_2 << (~(vec3<u32>(arg_2.x, 9013u, 0u) << (~vec3<u32>(u_input.a, 4294967295u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, global1.d.x, global1.e), vec3<f32>(arg_1, -732f, -603f))))), 1u, arg_2.x >= 51112u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1166f, global1.e))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(879f, global1.a.x) + global1.d.zx)))));
    let var_1 = func_1(global4[_wgslsmith_index_u32(~select(~9878u, 1u, global4[_wgslsmith_index_u32(~(~u_input.a), 19u)]), 19u)], -1000f, vec3<u32>(4294967295u, _wgslsmith_add_u32(global1.b, 23875u) << (103210u % 32u), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 0u, u_input.a), vec3<u32>(25477u, global1.b, 4294967295u)))) >> ((vec3<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, 4932u), ~0u) << ((firstTrailingBit(vec3<u32>(global1.b, 60685u, global1.b)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = vec3<bool>(true, true, true);
    global4 = array<bool, 19>();
    let var_3 = all(vec3<bool>(var_1.e, true, _wgslsmith_mod_i32(_wgslsmith_mod_i32(21641i, global1.c.x), 1i) > (i32(-1i) * -1i)));
    var var_4 = vec2<u32>((global1.b << (~0u % 32u)) | func_3(vec2<i32>(global3.x, global3.x) >> (var_1.b.yx % vec2<u32>(32u)), Struct_4(_wgslsmith_f_op_f32(212f + -1261f)), ~74360u, Struct_3(vec3<f32>(-2130f, var_1.c.x, -1375f), ~0u, ~vec4<i32>(-1i, global1.c.x, global3.x, global1.c.x), _wgslsmith_f_op_vec3_f32(trunc(global1.d)), _wgslsmith_f_op_f32(global0.x - -616f))), 16084u);
    global3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~global3.x, -select(-1i, 1i, var_1.e), -global3.x), global1.c, vec4<i32>(2147483647i, 0i, _wgslsmith_mult_i32(global3.x, _wgslsmith_mult_i32(-12390i, global3.x)), i32(-1i) * -23774i));
    var var_5 = _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(59995u), ~(5099u << (global1.b % 32u))) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u) ^ var_1.b.yy, var_1.a.zy), ~vec2<u32>(54841u, 51438u)) % vec2<u32>(32u)), var_1.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, global3.x, global3.x, global3.x));
}


struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(2296f, 1122f, 576f, -2704f, 1249f, 870f, 1000f, -1917f, 930f, 1011f, 272f, 249f, -230f, -551f);

var<private> global1: array<Struct_1, 2>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 29>;

var<private> global4: array<vec2<u32>, 10>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 14u)] <= 844f)), vec2<bool>(true, select(select(true, true, true), any(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, false, false, true)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true))), vec2<bool>(!(!any(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(floor(-1057f)) == global0[_wgslsmith_index_u32(u_input.c, 14u)]), true);
    return !select(!vec3<bool>(any(vec3<bool>(true, false, true)), true, true), select(!vec3<bool>(false, var_0.x, false), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), false), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false)), true), !all(vec4<bool>(false, true, var_0.x, false))), all(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, var_0.x)), vec3<bool>(true, false, var_0.x), any(vec2<bool>(true, true)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_5) -> Struct_2 {
    global3 = array<Struct_2, 29>();
    global3 = array<Struct_2, 29>();
    var var_0 = u_input.c;
    var var_1 = global3[_wgslsmith_index_u32(0u, 29u)];
    let var_2 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.a.a, arg_1.a.c.x), vec3<bool>(true, false, arg_1.a.c.x)), arg_1.a.c.x), select(vec3<bool>(true, (global0[_wgslsmith_index_u32(52369u, 14u)] > global0[_wgslsmith_index_u32(u_input.c, 14u)]) | false, any(!vec3<bool>(arg_1.a.c.x, true, true))), !select(func_3(), !vec3<bool>(arg_1.a.c.x, false, false), !vec3<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x)), vec3<bool>(true, true, true)), !(!vec3<bool>(arg_1.a.c.x | true, arg_1.a.c.x, true)));
    return global3[_wgslsmith_index_u32(arg_1.a.a, 29u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = ~62283u;
    let var_1 = Struct_2(Struct_1((_wgslsmith_mod_u32(0u, u_input.c) ^ firstTrailingBit(28767u)) != _wgslsmith_mult_u32(var_0, 1u)), Struct_1(true & func_2(vec4<i32>(-48412i, -2147483647i, u_input.b, arg_1.x), Struct_5(Struct_3(1u, vec3<i32>(0i, 1i, -11376i), vec2<bool>(arg_0.b.a, false)), arg_1.x, global4[_wgslsmith_index_u32(1u, 10u)], vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]))).b.a));
    var var_2 = Struct_3(0u, ~((vec3<i32>(arg_1.x, 2147483647i, u_input.a.x) ^ vec3<i32>(arg_1.x, arg_1.x, -5244i)) ^ ~vec3<i32>(u_input.b, 1i, u_input.b)) | (~select(vec3<i32>(u_input.a.x, arg_1.x, 0i), vec3<i32>(0i, -9005i, 1i), vec3<bool>(arg_0.b.a, var_1.b.a, var_1.b.a)) << (vec3<u32>(~19568u, ~var_0, 4294967295u) % vec3<u32>(32u))), func_3().zy);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -3232f);
    let var_3 = Struct_5(Struct_3(var_0, vec3<i32>(43592i >> (0u % 32u), -4036i, _wgslsmith_sub_i32(~arg_1.x, max(var_2.b.x, var_2.b.x))), !vec2<bool>(var_2.c.x, !var_2.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-39998i, i32(-1i) * -arg_1.x, firstTrailingBit(-28685i), abs(35899i) & (arg_1.x >> (65430u % 32u))), abs(-vec4<i32>(var_2.b.x, var_2.b.x, arg_1.x, arg_1.x)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(58546u, var_0, var_0, u_input.c), ~vec4<u32>(4294967295u, 0u, 39842u, u_input.c), ~vec4<u32>(u_input.c, 0u, var_2.a, var_0)) % vec4<u32>(32u))), ~vec2<u32>(_wgslsmith_mod_u32(7361u, 1u), reverseBits(max(u_input.c, 69705u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(37811u, 14u)], global0[_wgslsmith_index_u32(23936u, 14u)]) - -1112f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], var_2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-340f + 1000f) * -193f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-605f, global0[_wgslsmith_index_u32(var_2.a, 14u)], global0[_wgslsmith_index_u32(7250u, 14u)]))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(30402u, 14u)], -1449f, 1308f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)], 1391f) + vec3<f32>(global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)], 362f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 14u)], global0[_wgslsmith_index_u32(53544u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_2.a, 14u)], 117f, global0[_wgslsmith_index_u32(u_input.c, 14u)])))))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_4 {
    let var_0 = func_4(func_2(~vec4<i32>(u_input.a.x, firstTrailingBit(17799i), -u_input.b, -arg_1), Struct_5(Struct_3(firstTrailingBit(arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(1551i, -1i, u_input.b), vec3<i32>(-1i, 17039i, arg_1)), vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -23979i, arg_1), select(vec3<i32>(1i, -11595i, 0i), vec3<i32>(4325i, arg_1, arg_1), vec3<bool>(true, true, true))), ~(~vec2<u32>(arg_0, 23925u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], -470f), vec3<f32>(-637f, global0[_wgslsmith_index_u32(5371u, 14u)], 924f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(270f, global0[_wgslsmith_index_u32(u_input.c, 14u)], -1338f) * vec3<f32>(global0[_wgslsmith_index_u32(61429u, 14u)], -1083f, -204f)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))))), firstLeadingBit(vec2<i32>(-17664i, u_input.a.x)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(945f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 14u)] + _wgslsmith_div_f32(-645f, global0[_wgslsmith_index_u32(u_input.c, 14u)]))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(131f - 1000f), -1240f) * _wgslsmith_f_op_f32(select(-1673f, 846f, true || var_0.b.a)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(759f)), -492f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 14u)]))))));
    var var_1 = all(select(!func_3().xy, func_3().yx, !(1u <= _wgslsmith_sub_u32(arg_0, u_input.c))));
    global3 = array<Struct_2, 29>();
    global3 = array<Struct_2, 29>();
    return Struct_4(4294967295u, 440f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(4294967295u << (_wgslsmith_mod_u32(95014u, u_input.c & 53797u) % 32u)), _wgslsmith_sub_u32(u_input.c, u_input.c | (u_input.c >> (0u % 32u))) >> (u_input.c % 32u)), 2u)];
    let var_1 = func_1(u_input.c, ~53997i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-850f - -615f))), -762f, var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 14u)] * -900f)))));
    var var_3 = func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(36931i, u_input.b, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, -44605i))), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -1i, u_input.a.x), countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.b)), countOneBits(vec4<i32>(u_input.b, -1i, -1i, -12872i))))), Struct_5(Struct_3(select(8024u, min(var_1.a, 41900u), false), -(~vec3<i32>(u_input.a.x, u_input.b, 25250i)), !func_3().xx), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<i32>(-20451i, -8042i, u_input.b))), global4[_wgslsmith_index_u32(u_input.c | ~0u, 10u)] & vec2<u32>(var_1.a, abs(69457u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(155f, 1012f, 2384f), vec3<f32>(var_1.b, 222f, -1199f))))));
    var var_4 = _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(~(~41492u), 10u)], vec2<u32>(_wgslsmith_add_u32(u_input.c, abs(1u)), countOneBits(countOneBits(countOneBits(11294u)))));
    global3 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, countOneBits(u_input.b), ~u_input.b, _wgslsmith_sub_i32(2147483647i, u_input.b)), ~(-vec4<i32>(-55589i, -1401i, 2147483647i, 0i)))), _wgslsmith_sub_u32(select(4294967295u ^ u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(50042u, 100425u, var_1.a, 45185u), vec4<u32>(5204u, 1u, 34590u, 39843u)) << (~0u % 32u), var_0.a), _wgslsmith_mult_u32(u_input.c, 26481u)), ~(-(0i >> (u_input.c % 32u))), select(_wgslsmith_sub_vec2_u32(global4[_wgslsmith_index_u32(max(abs(58136u), func_1(21519u, 16981i).a), 10u)], vec2<u32>(~var_1.a, 0u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4113u), ~vec2<u32>(u_input.c, var_1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, 1u), global4[_wgslsmith_index_u32(4294967295u, 10u)], vec2<u32>(0u, u_input.c))), select(select(!vec2<bool>(false, var_0.a), select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(var_3.a.a, false)), any(vec3<bool>(var_3.a.a, var_3.a.a, false))), select(vec2<bool>(false, true), func_3().zz, var_0.a), all(vec4<bool>(var_0.a, true, var_3.b.a, false)))));
}


struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> bool {
    var var_0 = arg_1.a.xx;
    let var_1 = arg_2.a.d.b;
    var_0 = vec2<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(-arg_1.c) < -2762f, true)), arg_1.a.x);
    global0 = array<u32, 3>();
    let var_2 = min(arg_3, firstLeadingBit(firstTrailingBit(firstTrailingBit(min(18265u, arg_3)))));
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_0.a.d.a.xxz;
    let var_1 = Struct_3(!arg_1, true || !any(vec2<bool>(true, false)), select(select(var_0.xz, var_0.xx, false), select(!var_0.yz, arg_0.a.d.a.zz, vec2<bool>(any(arg_0.a.d.a.wzw), any(arg_0.a.d.a))), vec2<bool>(!(arg_0.a.d.c >= 846f), any(arg_0.a.d.a.zwx) & var_0.x)));
    let var_2 = vec3<f32>(-1133f, arg_0.a.d.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.c * arg_0.a.d.c)), arg_0.a.d.c)));
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    return arg_0.a.b;
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec4<bool>(func_4(Struct_4(Struct_2(-1i, true, u_input.d, Struct_1(vec4<bool>(false, false, false, true), u_input.d, -629f, vec2<f32>(-866f, -1752f)))), vec4<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, false, true, false))), all(vec3<bool>(true, true, true)), select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 0u, global0[_wgslsmith_index_u32(12308u, 3u)]), _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(61620u, 20290u, 12262u), vec3<u32>(2431u, 14863u, 77126u)), func_3(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 42102u), Struct_1(vec4<bool>(true, true, false, true), u_input.d, -490f, vec2<f32>(797f, -1000f)), Struct_4(Struct_2(2147483647i, true, u_input.d, Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(u_input.a, u_input.d.x, 8820u), 131f, vec2<f32>(289f, 1204f)))), 1608u))), false, true, true), select(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 3u)], 1u)), select(vec3<u32>(31382u, global0[_wgslsmith_index_u32(1u, 3u)], 22294u), _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(global0[_wgslsmith_index_u32(173883u, 3u)], 85433u, 0u)), vec3<bool>(false, true, true))), u_input.d, vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1271f + -881f)) * _wgslsmith_div_f32(-1216f, 1090f)), -1507f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1218f))))), _wgslsmith_f_op_f32(1240f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f + -463f) + _wgslsmith_f_op_f32(min(-1127f, 611f))))));
    var_0 = Struct_1(select(select(!(!var_0.a), var_0.a, true), var_0.a, vec4<bool>(all(var_0.a), true, var_0.a.x, all(!vec4<bool>(var_0.a.x, false, false, true)))), var_0.b, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-443f, var_0.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -412f) + vec2<f32>(var_0.d.x, -993f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 336f) * var_0.d))));
    global0 = array<u32, 3>();
    let var_1 = var_0.b.x;
    var_0 = Struct_1(select(!vec4<bool>(var_0.b.x != 4294967295u, func_3(var_0.b.xx, Struct_1(var_0.a, vec3<u32>(4294967295u, 67781u, 8143u), 1000f, var_0.d), Struct_4(Struct_2(u_input.c.x, var_0.a.x, u_input.d, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d))), 1u), true, true), var_0.a, var_0.a.x), ~(min(select(vec3<u32>(var_0.b.x, 1u, var_0.b.x), u_input.d, false), vec3<u32>(u_input.a, u_input.a, u_input.d.x) & vec3<u32>(89611u, 6489u, u_input.d.x)) & u_input.d), var_0.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.d)) - var_0.d));
    return ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a, 1u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 1u), 3u)], 1u)), 3u)] <= _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(0u, 3u)], 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> vec4<i32> {
    var var_0 = Struct_1(select(arg_0.d.a, select(!vec4<bool>(arg_0.d.a.x, arg_0.b, arg_0.d.a.x, arg_0.d.a.x), arg_0.d.a, select(vec4<bool>(arg_1.x, true, true, true), !vec4<bool>(arg_1.x, arg_1.x, true, true), arg_1)), func_2()), vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], min(~52994u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 4294967295u), ~1u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(1u, arg_0.c.x, arg_0.d.b.x, 7854u)), abs(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62560u, 3u)], 3u)], 3u)], 4294967295u, 1u, u_input.a))))), 874f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-1156f))) * _wgslsmith_f_op_vec2_f32(min(arg_0.d.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-914f, arg_2))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.d))))));
    var var_1 = countOneBits(~max(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_0.b, arg_0.c), u_input.d), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u), min(u_input.d, vec3<u32>(arg_0.d.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], 1u)))));
    global0 = array<u32, 3>();
    var_1 = var_0.b;
    var var_2 = ~firstTrailingBit(var_0.b.zy);
    return (vec4<i32>(u_input.c.x, u_input.e.x, _wgslsmith_sub_i32(17032i, 2147483647i) & _wgslsmith_mult_i32(arg_0.a, arg_0.a), reverseBits(-2147483647i)) << (abs(countOneBits(select(vec4<u32>(u_input.d.x, 14404u, 28383u, 0u), vec4<u32>(17171u, var_1.x, arg_0.d.b.x, 11557u), vec4<bool>(false, var_0.a.x, var_0.a.x, false)))) % vec4<u32>(32u))) & ~(-(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 12689i, arg_0.a), vec4<i32>(u_input.c.x, u_input.c.x, 32450i, 31263i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a, 8525i, -2147483647i, arg_0.a), vec4<i32>(0i, u_input.e.x, 2147483647i, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-u_input.e.x), -11730i, u_input.e.x, u_input.e.x), min(func_1(Struct_2(-1i, true, u_input.d, Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(21808u, 0u, global0[_wgslsmith_index_u32(31706u, 3u)]), -829f, vec2<f32>(319f, 874f))), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), -1581f), -vec4<i32>(u_input.c.x, 33347i, u_input.e.x, u_input.e.x))));
    global0 = array<u32, 3>();
    var_0 = vec4<i32>(_wgslsmith_sub_i32(-57086i, _wgslsmith_mod_i32(2147483647i, u_input.e.x)), u_input.c.x, 2147483647i, -var_0.x);
    var_0 = vec4<i32>(-7971i, 0i, _wgslsmith_clamp_i32(-reverseBits(var_0.x) << (15940u % 32u), abs(~_wgslsmith_add_i32(var_0.x, -4861i)), reverseBits(24812i)), ~u_input.e.x);
    let var_1 = Struct_1(vec4<bool>(!(!func_4(Struct_4(Struct_2(u_input.e.x, false, vec3<u32>(90847u, 1221u, u_input.a), Struct_1(vec4<bool>(false, false, false, true), vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 1318u, 50532u), -138f, vec2<f32>(138f, 1867f)))), vec4<bool>(false, false, true, true), true, u_input.d)), func_3(vec2<u32>(~u_input.a, ~u_input.a), Struct_1(vec4<bool>(true, true, true, true), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 1u, 7639u), 692f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, 530f))), Struct_4(Struct_2(-4243i, true, u_input.d, Struct_1(vec4<bool>(false, true, false, false), u_input.d, -937f, vec2<f32>(797f, -1350f)))), ~(~global0[_wgslsmith_index_u32(u_input.a, 3u)])), !(4294967295u >= u_input.a) | select(u_input.a > 1u, true, true), false), _wgslsmith_sub_vec3_u32(vec3<u32>(~(u_input.d.x & 113176u), _wgslsmith_dot_vec3_u32(min(u_input.d, vec3<u32>(29412u, 130544u, u_input.d.x)), _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(26497u, 3u)]))), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], u_input.b)), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1491f, -623f) * 491f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f * -462f)), -728f));
    let var_2 = -1000f;
    let var_3 = vec4<u32>(abs(var_1.b.x), abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~countOneBits(var_1.b.x), 10372u), 3u)]), max(4294967295u | (var_1.b.x | 4294967295u), _wgslsmith_mod_u32(4294967295u, ~62199u)) >> (~(var_1.b.x & u_input.a) % 32u), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.x, u_input.e.x, -_wgslsmith_div_i32(~var_0.x, var_0.x >> (u_input.a % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2, -457f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -699f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(exp2(var_1.c))))), 37734u, ~(~_wgslsmith_mult_u32(4294967295u, var_1.b.x)), -(max(firstTrailingBit(u_input.c.yy), vec2<i32>(-2147483647i, u_input.c.x)) & vec2<i32>(_wgslsmith_div_i32(var_0.x, -56170i), u_input.e.x)));
}


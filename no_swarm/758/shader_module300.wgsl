struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: bool;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_1;

var<private> global4: array<u32, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(36260u, 7u)], 7u)] ^ 1u), ~vec2<u32>(min(u_input.a, _wgslsmith_div_u32(1u, u_input.a)), ~(u_input.a | global4[_wgslsmith_index_u32(u_input.a, 7u)])));
    var var_1 = -select(_wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, ~(-35559i)), abs(select(-42330i, -38215i, any(vec3<bool>(arg_0.x, true, true)))), !global0.x);
    var var_2 = -3486i;
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(1399f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f - -629f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-863f, -2932f)))))));
    let var_4 = Struct_1(vec4<bool>(!(42456i <= _wgslsmith_dot_vec3_i32(vec3<i32>(13364i, -42235i, 0i), vec3<i32>(-53162i, -2147483647i, -24132i))), !(!arg_0.x), any(select(select(global3.a.yy, global0.xx, vec2<bool>(true, true)), vec2<bool>(false, true), !arg_0.zx)), !global0.x));
    return abs(~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~1u, 7u)], 7u)] & (global4[_wgslsmith_index_u32(1u, 7u)] & 4294967295u)));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(global3.a);
    global3 = var_0;
    var var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, global4[_wgslsmith_index_u32(u_input.a, 7u)], 4294967295u), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 7u)], 55687u, u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 7u)], 7u)])), ~vec4<u32>(1u, 51272u, u_input.a, u_input.a)), vec4<u32>(1u, ~u_input.a, 4294967295u | u_input.a, global4[_wgslsmith_index_u32(u_input.a, 7u)])) & vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 7u)], global4[_wgslsmith_index_u32(u_input.a, 7u)], 1u), reverseBits(max(vec3<u32>(10500u, global4[_wgslsmith_index_u32(4294967295u, 7u)], 25293u), vec3<u32>(48372u, 4294967295u, global4[_wgslsmith_index_u32(4294967295u, 7u)])))), ~select(func_3(vec4<bool>(true, global0.x, global0.x, true)), ~global4[_wgslsmith_index_u32(22403u, 7u)], false), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 1u), ~36786u);
    global1 = !(!any(global3.a));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32((i32(-1i) * -27862i) & -arg_1, _wgslsmith_mult_i32(~1i, firstLeadingBit(30233i))), _wgslsmith_sub_i32(18615i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0, arg_0), max(arg_0, 12513i), abs(arg_0)))) >= -2147483647i;
    return Struct_1(vec4<bool>(!global2.x, 10222i > (arg_0 | arg_0), var_0.a.x, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    var var_0 = func_2(-_wgslsmith_sub_i32(1i << (u_input.a % 32u), -33108i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-2147483647i, 46056i, 24877i)) | -1216i, firstTrailingBit(~(-26536i))));
    var var_1 = max(_wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, _wgslsmith_mod_i32(~(-25360i), 2147483647i), -23403i, 61104i), firstLeadingBit(vec4<i32>(24248i, -2147483647i, -36594i, 41840i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, global4[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a, 22430u), vec4<u32>(arg_0.x, global4[_wgslsmith_index_u32(u_input.a, 7u)], global4[_wgslsmith_index_u32(arg_0.x, 7u)], u_input.a)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-34384i, -33635i, 1567i) << (vec3<u32>(global4[_wgslsmith_index_u32(arg_0.x, 7u)], global4[_wgslsmith_index_u32(18973u, 7u)], u_input.a) % vec3<u32>(32u)), abs(vec3<i32>(-2147483647i, 1230i, 1i))), 40653i, -_wgslsmith_add_i32(-10377i, 1i), abs(-1i))), ~vec4<i32>(1i, 1i << (global4[_wgslsmith_index_u32(max(569u, 4294967295u), 7u)] % 32u), -11666i << (0u % 32u), _wgslsmith_mod_i32(-1i, i32(-1i) * -1i)));
    global1 = true;
    global0 = !(!vec3<bool>(arg_1, !(var_0.a.x == true), all(vec3<bool>(true, true, false))));
    var_1 = vec4<i32>(reverseBits(var_1.x), var_1.x, var_1.x, 28136i);
    return ~(global4[_wgslsmith_index_u32(u_input.a, 7u)] & firstLeadingBit(22587u | arg_0.x)) >> (firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global4[_wgslsmith_index_u32(arg_0.x, 7u)], 40623u, 8371u), vec4<u32>(u_input.a, 4294967295u, 35935u, arg_0.x)), _wgslsmith_clamp_u32(1u >> (u_input.a % 32u), 25436u << (arg_0.x % 32u), ~u_input.a))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 7>();
    global2 = select(!vec2<bool>(func_1(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 7u)], 4294967295u, u_input.a), true) > abs(4294967295u), any(select(global3.a.yw, vec2<bool>(true, global3.a.x), vec2<bool>(false, true)))), vec2<bool>(true, select(true, false, !all(vec4<bool>(global2.x, global3.a.x, global3.a.x, global2.x)))), false);
    global4 = array<u32, 7>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-710f)), 908f))));
    let var_1 = func_2(~firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(-21521i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-22338i, -2147483647i), vec2<i32>(0i, -2147483647i), vec2<i32>(28700i, 2147483647i)))), i32(-1i) * -(countOneBits(1i) ^ select(-15263i, 21679i, global2.x)));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-803f, _wgslsmith_f_op_f32(max(1797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -362f)))))), _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(30658i, 1i), vec2<i32>(2147483647i, -1i))), vec2<i32>(1i, 1i)), vec3<u32>(~firstTrailingBit(22967u), 15980u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(8782u, 64158u, 26334u, global4[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 7u)], 7u)], 22406u, global4[_wgslsmith_index_u32(1u, 7u)], 36265u), vec4<bool>(false, var_2.a.x, global2.x, var_1.a.x)), ~vec4<u32>(u_input.a, 0u, 14409u, 1u))) >> (~vec3<u32>(38310u, countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 7u)], 7u)]), ~1u) % vec3<u32>(32u)));
}


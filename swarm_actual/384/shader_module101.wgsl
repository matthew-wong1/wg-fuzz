struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 10> = array<u32, 10>(29773u, 0u, 0u, 52299u, 1u, 0u, 0u, 1u, 10024u, 15245u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = vec4<bool>(true & !any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), false, true, any(vec2<bool>(true, false)));
    global1 = array<u32, 10>();
    let var_1 = abs(firstTrailingBit(-select(vec4<i32>(-4802i, u_input.a, u_input.a, -1i), vec4<i32>(0i, u_input.a, 0i, 0i), true)) | vec4<i32>(-2147483647i, -u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -3629i, u_input.a), vec4<i32>(u_input.a, u_input.a, 19169i, u_input.a)), _wgslsmith_mod_i32(firstLeadingBit(u_input.a), 1i)));
    let var_2 = Struct_3(vec4<bool>(var_0.x, false, !(true != all(vec4<bool>(var_0.x, true, var_0.x, true))), all(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x)))), Struct_1(!(!var_0.yx), abs(var_1.xwx << (countOneBits(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 1u)) % vec3<u32>(32u))), -3607i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(540f, 980f, 112f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1076f, -139f, -861f)))), vec2<u32>(1u, 29195u) ^ (abs(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 10u)])) | ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6429u, 10u)], 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)]))));
    var var_3 = var_1.wx;
    return true;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(vec2<bool>(any(vec4<bool>(true, true, false, false)), func_3() & false), vec3<i32>(10144i, (1i >> (_wgslsmith_sub_u32(89994u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)]) % 32u)) ^ firstTrailingBit(-17869i), u_input.a), u_input.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(397f)), -878f, _wgslsmith_f_op_f32(1205f * -1404f)))))), vec2<u32>(~4294967295u, 4294967295u) ^ (~(~vec2<u32>(global1[_wgslsmith_index_u32(26666u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])) ^ ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])));
    global1 = array<u32, 10>();
    let var_1 = Struct_1(var_0.a, vec3<i32>(-1i, select(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.b.xx), _wgslsmith_mult_vec2_i32(var_0.b.zx, vec2<i32>(2147483647i, 1i))), _wgslsmith_sub_i32(var_0.c, var_0.c), var_0.a.x), -33488i), ~abs(-var_0.c) >> (min(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e.x, 10u)], 10u)], 0u) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(576f))))), select(vec2<u32>(14340u, global1[_wgslsmith_index_u32(37705u, 10u)]), _wgslsmith_mod_vec2_u32(var_0.e | _wgslsmith_clamp_vec2_u32(var_0.e, vec2<u32>(var_0.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e.x, 10u)], 10u)], 10u)]), var_0.e), abs(vec2<u32>(var_0.e.x, var_0.e.x))), false));
    var var_2 = Struct_2(vec2<bool>(1525f == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d.x - var_1.d.x))), var_1.a.x), !var_0.a);
    global1 = array<u32, 10>();
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, -14141i), vec4<i32>(var_0.c, u_input.a, 0i, u_input.a))) >> ((abs(vec4<u32>(var_0.e.x, 67955u, 0u, var_0.e.x)) << (vec4<u32>(4294967295u, 1u, var_1.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_1.c, 17678i, 0i), vec4<i32>(u_input.a, 29994i, -2147483647i, u_input.a)), select(vec4<i32>(5086i, -9003i, var_1.b.x, 383i), vec4<i32>(1i, u_input.a, var_0.c, var_1.c), var_2.a.x)) | abs(vec4<i32>(-13154i, u_input.a, var_0.c, 31983i))), vec4<i32>(u_input.a, var_1.c, ~_wgslsmith_div_i32(var_1.c, ~(-43526i)), ~(~(i32(-1i) * -30019i))), ~(vec4<i32>(-var_0.b.x, ~var_0.b.x, select(u_input.a, -1i, false), ~14181i) & _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.c, 1i, 1i), vec4<i32>(-2147483647i, var_1.b.x, var_0.b.x, 26170i)), -vec4<i32>(var_0.b.x, 59652i, var_1.b.x, 2147483647i))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    global1 = array<u32, 10>();
    global1 = array<u32, 10>();
    let var_0 = true;
    let var_1 = firstLeadingBit(func_2());
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.x, 0i), ~vec2<i32>(~2147483647i, 0i));
    return !(!vec4<bool>(all(vec4<bool>(var_0, false, true, arg_1.a.x)), var_0, false, !(arg_1.a.x & false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 237f;
    var var_1 = vec4<u32>(0u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(58451u ^ global1[_wgslsmith_index_u32(57000u, 10u)], ~global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 4294967295u), 10u)], ~129389u), vec4<u32>(12125u, global1[_wgslsmith_index_u32(66317u, 10u)] << (32258u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 10u)], 38229u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3473u, 10u)], 10u)], 10u)]), vec3<u32>(1u, 15719u, global1[_wgslsmith_index_u32(49446u, 10u)])), ~66458u))), 0u, global1[_wgslsmith_index_u32(39444u, 10u)]);
    global1 = array<u32, 10>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(373f - 1704f)));
    let var_3 = ((global1[_wgslsmith_index_u32(~0u, 10u)] < ~max(global1[_wgslsmith_index_u32(65041u, 10u)], global1[_wgslsmith_index_u32(var_1.x, 10u)])) | true) | any(!select(vec4<bool>(false, true, true, true), func_1(Struct_2(vec2<bool>(false, false), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, u_input.a, 2147483647i), 0i, vec3<f32>(var_0, var_0, var_0), vec2<u32>(0u, 0u)), u_input.a), vec4<bool>(true, true, true, true)));
    global1 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1088f, -480f, var_2, var_0) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, -292f, var_2, -1065f) - vec4<f32>(-656f, var_2, -1319f, var_2)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, -626f, var_2), vec4<f32>(-814f, 295f, -626f, var_2))))), vec4<f32>(var_0, -431f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(631f - -1566f))), var_0))));
}


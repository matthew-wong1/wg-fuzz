struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: vec2<u32> = vec2<u32>(14306u, 81845u);

var<private> global2: array<bool, 19> = array<bool, 19>(true, true, false, false, false, false, true, false, false, true, false, true, false, true, false, false, true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(~global1.x, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(302f, -619f, -663f, -127f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1623f, 1469f, -1124f, -1104f) * vec4<f32>(443f, -1000f, -323f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1176f, -677f, -873f, 1534f))), 247f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(923f * -286f)), -1680f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1309f, 799f, -417f, 192f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1198f, -567f) * _wgslsmith_div_f32(-185f, 785f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-820f + 307f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2003f, -499f, 704f, -484f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, 392f, 140f, -160f)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(51606u, 19u)], global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(false, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], false, global2[_wgslsmith_index_u32(global1.x, 19u)]))))), vec2<i32>(u_input.a.x, u_input.a.x)));
    global0 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~(~select(vec3<u32>(4294967295u, var_0.a, 35381u), vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<bool>(global2[_wgslsmith_index_u32(37513u, 19u)], global2[_wgslsmith_index_u32(7460u, 19u)], true))), _wgslsmith_mod_vec3_u32((vec3<u32>(4294967295u, var_0.a, 49774u) & vec3<u32>(4294967295u, global1.x, global1.x)) ^ vec3<u32>(var_0.a, 4294967295u, var_0.a), ~select(vec3<u32>(global1.x, 0u, 1u), vec3<u32>(106886u, 4294967295u, 99702u), false))), vec3<u32>(21568u & _wgslsmith_clamp_u32(firstTrailingBit(global1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, global1.x), vec2<u32>(var_0.a, var_0.a)), ~var_0.a), reverseBits(var_0.a & 4294967295u) & firstLeadingBit(max(4294967295u, global1.x)), _wgslsmith_mult_u32(firstTrailingBit(var_0.a), select(10351u, ~var_0.a, true))));
    global0 = array<Struct_2, 20>();
    let var_2 = vec3<bool>(true, true, firstLeadingBit(u_input.b.x) > 27335i);
    return var_0.b.d;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_2(~max(_wgslsmith_mod_u32(arg_0, abs(global1.x)), 4294967295u), Struct_1(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2)), -1262f, arg_2), arg_2, vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f - arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -798f, -578f, arg_2)), vec4<f32>(2028f, 2038f, arg_2, arg_2))), vec2<i32>(_wgslsmith_add_i32(0i, 1i) << (global1.x % 32u), ~reverseBits(arg_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2248f * _wgslsmith_f_op_vec4_f32(func_3()).x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -841f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2099f - -228f)), 533f, _wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2))))), select(firstTrailingBit(u_input.a), -u_input.a << ((vec2<u32>(global1.x, global1.x) ^ vec2<u32>(29837u, arg_0)) % vec2<u32>(32u)), select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(44611u, 19u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(arg_0, 19u)]), vec2<bool>(global2[_wgslsmith_index_u32(19067u, 19u)], false)), !vec2<bool>(true, global2[_wgslsmith_index_u32(19297u, 19u)])))));
    global0 = array<Struct_2, 20>();
    var var_1 = Struct_3(0u, var_0.b, Struct_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(global1.x << (var_0.a % 32u), 0u), arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a.x, arg_2, var_0.b.d.x, var_0.b.d.x), vec4<f32>(-340f, -694f, -175f, arg_2)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.c.a.x)))), var_0.b.c, _wgslsmith_f_op_vec4_f32(round(var_0.c.d)), var_0.b.e), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.c.a.x)), _wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(644f * arg_2)), _wgslsmith_div_f32(var_0.c.b, 151f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1107f, var_0.b.a.x)))), _wgslsmith_div_vec4_f32(var_0.c.a, vec4<f32>(arg_2, -589f, 1028f, 1543f)), u_input.b << (vec2<u32>(0u, global1.x) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~84353u, _wgslsmith_mult_u32(4294967295u | arg_0, global1.x))), 20u)]);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(var_1.c.c.b, 1000f), false)), -1284f, countOneBits(~1u) != ~global1.x));
    var_1 = Struct_3(var_1.d.a, var_1.b, Struct_2(_wgslsmith_mult_u32(~var_0.a, 1u) >> (73223u % 32u), var_1.d.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.d - vec4<f32>(arg_2, 309f, var_1.b.a.x, -397f))), var_1.d.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.x, var_1.c.c.d.x)) * _wgslsmith_f_op_vec2_f32(var_0.c.c + var_0.b.a.ww)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -852f, -294f, -546f)), vec2<i32>(27362i, var_1.d.c.e.x))), Struct_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, var_0.a), 47365u), var_0.c, var_0.c));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.b.d.yw)));
}

fn func_1() -> i32 {
    let var_0 = ~abs(~vec4<u32>(4294967295u, 0u, global1.x, 4294967295u)) & ((firstTrailingBit(vec4<u32>(global1.x, 4294967295u, 0u, 61994u)) | (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 0u, global1.x, global1.x), vec4<u32>(12818u, 4381u, 13588u, 4294967295u)) << ((vec4<u32>(global1.x, 1u, global1.x, global1.x) << (vec4<u32>(global1.x, global1.x, 91207u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u)))) & ~(~countOneBits(vec4<u32>(32883u, 7499u, 58736u, 4294967295u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, -329f, _wgslsmith_f_op_f32(f32(-1f) * -3325f), 774f))), 433f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(~var_0.x, ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), u_input.c), 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(405f, 1098f), -1129f, _wgslsmith_f_op_f32(round(-1919f)), 1486f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1178f, -803f, -1305f, -343f) + vec4<f32>(-282f, -1000f, 1012f, 1410f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(295f, -300f, 1225f, 558f)))))), vec2<i32>(-u_input.c.x, 1i));
    global2 = array<bool, 19>();
    global2 = array<bool, 19>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.c.x)))), var_1.c.x, var_1.c.x)), var_1.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(265f, -1000f)) * var_1.b)), var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(691f + var_1.c.x) - _wgslsmith_f_op_f32(-911f * 1421f)), -841f), -884f), ~_wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(var_1.e.x), u_input.c.x), var_1.e));
    return 12325i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -min(-_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), 2147483647i) ^ ~(u_input.b.x ^ select(abs(u_input.c.x), func_1(), any(vec4<bool>(true, global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], false))));
    let var_1 = true;
    global2 = array<bool, 19>();
    global0 = array<Struct_2, 20>();
    var var_2 = !(!(!vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, 4294967295u), vec3<u32>(4294967295u, global1.x, 46420u)), 19u)], var_1)));
    var var_3 = _wgslsmith_mult_vec3_u32(max(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(7381u, 0u, global1.x), vec3<u32>(global1.x, global1.x, global1.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, 22566u), vec3<u32>(1u, global1.x, global1.x), vec3<u32>(32073u, global1.x, global1.x)) | (vec3<u32>(global1.x, 88944u, 70158u) ^ vec3<u32>(global1.x, 1u, global1.x))), vec3<u32>(1u, global1.x, global1.x)), vec3<u32>(11175u, ~(~(0u & global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, global1.x, 4294967295u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(62545u, 8012u, 76279u, 4294967295u)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(71163u, 20551u, global1.x, global1.x)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-607f, 1000f))), -304f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-773f)), _wgslsmith_f_op_f32(max(-2220f, _wgslsmith_f_op_f32(floor(261f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(sign(197f))));
    var_3 = ~max(select(reverseBits(vec3<u32>(1u, 1u, 1u)), firstTrailingBit(min(vec3<u32>(0u, 14047u, global1.x), vec3<u32>(var_3.x, 4294967295u, global1.x))), vec3<bool>(true & global2[_wgslsmith_index_u32(var_3.x, 19u)], !var_1, !var_2.x)), vec3<u32>(_wgslsmith_mult_u32(~9749u, ~global1.x), firstLeadingBit(27682u), _wgslsmith_add_u32(56528u, ~global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4, var_4, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_3.x, u_input.c, var_4)).x), _wgslsmith_f_op_vec4_f32(func_3()).x), -1000f), 548f, ~(var_3.x | 5118u), _wgslsmith_f_op_vec2_f32(func_2(~reverseBits(1u), u_input.c, -468f)));
}


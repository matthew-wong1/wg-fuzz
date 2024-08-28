struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, false, true, false, false, false, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true, false, false);

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, false, false, false, false, true, false, true, false, true, true, true, true, true, false, true, true, false, false, true, false, true, true, true, false, true, true);

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 21>;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = 39411i;
    var var_1 = 87301u;
    let var_2 = ~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(arg_0), -12407i), vec2<i32>(-1i, -22090i) & _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, u_input.a), global2.wz)));
    var var_3 = 26978u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(338f, -1021f))), _wgslsmith_f_op_f32(1446f * _wgslsmith_f_op_f32(281f - arg_1.a)))) + -1063f));
    return vec3<bool>(true, !any(!select(vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 28u)], false, false), false)), !all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], false), false)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global3 = array<u32, 21>();
    global3 = array<u32, 21>();
    let var_0 = true;
    let var_1 = 6060u;
    global1 = array<bool, 28>();
    return any(func_3(~(-select(-3327i, 24494i, false)), Struct_2(196f, vec2<f32>(_wgslsmith_f_op_f32(367f * -1922f), _wgslsmith_f_op_f32(step(1000f, 725f))), global2.wzy, global2.x, 2250f)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    global2 = min(select(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(0i, 0i, arg_0, 41530i)), vec4<i32>(-2147483647i, -23160i, arg_0, 15371i), vec4<i32>(arg_3.c.x, u_input.a, 1i, u_input.a)), ~min(vec4<i32>(arg_0, arg_0, arg_3.c.x, -26372i), vec4<i32>(0i, 0i, global2.x, u_input.a)), false), abs(vec4<i32>(~arg_0, _wgslsmith_sub_i32(31606i, arg_3.d), u_input.a, u_input.a))) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 0u, global3[_wgslsmith_index_u32(4294967295u, 21u)]), max(vec4<u32>(u_input.b, 3878u, global3[_wgslsmith_index_u32(4294967295u, 21u)], 14923u), vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], 16119u, global3[_wgslsmith_index_u32(u_input.b, 21u)]))), abs(min(vec4<u32>(global3[_wgslsmith_index_u32(1u, 21u)], u_input.b, u_input.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)]), vec4<u32>(u_input.e.x, u_input.d.x, global3[_wgslsmith_index_u32(u_input.e.x, 21u)], 4294967295u)))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(34433u, 4958u, 0u, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.e.x, 21u)], 15210u, global3[_wgslsmith_index_u32(u_input.c, 21u)]), vec4<u32>(u_input.c, 4002u, u_input.b, 1u))))) % vec4<u32>(32u));
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2, vec2<f32>(arg_3.b.x, _wgslsmith_f_op_f32(min(arg_3.e, -535f))))), -(-arg_3.c | vec3<i32>(0i, _wgslsmith_clamp_i32(-2147483647i, 0i, 0i), 42256i)), _wgslsmith_sub_i32(arg_0, _wgslsmith_sub_i32(_wgslsmith_mult_i32(countOneBits(23456i), ~arg_3.d), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1732f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-573f))))));
    let var_1 = Struct_2(1088f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2226f - arg_3.e) + -1541f)), arg_2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-23332i, arg_3.d), arg_3.d, abs(0i)), vec3<i32>(arg_3.c.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0, -56506i, arg_3.d, -28102i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.c.x, 2147483647i, var_0.c.x, arg_0), vec4<i32>(u_input.a, arg_3.d, -57298i, -4327i), vec4<i32>(0i, var_0.d, -34336i, -48032i))), -173i)), min(_wgslsmith_sub_i32(firstLeadingBit(8731i) << (max(global3[_wgslsmith_index_u32(48089u, 21u)], 1u) % 32u), _wgslsmith_add_i32(u_input.a >> (64215u % 32u), u_input.a)), ~arg_3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, -655f)))))));
    var var_2 = !vec4<bool>(!(!(21345u < global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48415u, 21u)], 21u)])), arg_1, func_2(Struct_1(~0u)), global0[_wgslsmith_index_u32(~(1u & reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3505u, 21u)], 21u)])), 26u)]);
    global0 = array<bool, 26>();
    return global4[_wgslsmith_index_u32(0u, 14u)];
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_0));
    let var_1 = vec3<f32>(426f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.x))), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1380f))))));
    global0 = array<bool, 26>();
    var var_2 = func_4(~5102i, !(func_2(arg_2) && any(vec4<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43375u, 21u)], 28u)], true, global0[_wgslsmith_index_u32(8077u, 26u)]))), var_1.zy, Struct_2(_wgslsmith_f_op_f32(ceil(arg_1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(167f, 1854f))))), arg_1.c, ~45968i, -1404f));
    var var_3 = func_4(-select(arg_1.d, ~2147483647i, _wgslsmith_f_op_f32(min(681f, -101f)) <= _wgslsmith_div_f32(arg_0, arg_1.e)), global1[_wgslsmith_index_u32(~(~(~18984u)) >> (_wgslsmith_mult_u32(countOneBits(var_2.a) | ~arg_2.a, ~_wgslsmith_sub_u32(arg_2.a, 13556u)) % 32u), 28u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.xy, var_1.zx)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0)))))), Struct_2(_wgslsmith_f_op_f32(-1405f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), 332f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(arg_1.b.x, 651f))))), _wgslsmith_mod_vec3_i32(~global2.yzx, global2.wwy), -2147483647i, 577f));
    return min(vec3<u32>(u_input.d.x, _wgslsmith_div_u32(~var_2.a | ~0u, ~1u ^ ~u_input.e.x), max(u_input.d.x, 1u)), ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, var_2.a, 0u), ~vec3<u32>(arg_2.a, arg_2.a, var_3.a)), u_input.e, u_input.e));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = vec2<u32>(~0u, 54373u);
    let var_1 = -firstLeadingBit(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, arg_1.x, arg_1.x), global2.zwx));
    global3 = array<u32, 21>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -1205f))))))) + vec2<f32>(-938f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) + 717f), arg_3))));
    let var_3 = _wgslsmith_mod_vec4_i32(~(~abs(abs(vec4<i32>(global2.x, 7434i, var_1.x, -2147483647i)))), vec4<i32>(var_1.x, var_1.x, firstLeadingBit(~(-26707i)) << (global3[_wgslsmith_index_u32(21362u, 21u)] % 32u), u_input.a));
    return 22372i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(2684f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2326f, _wgslsmith_f_op_f32(ceil(-755f)))), -(~(-vec3<i32>(u_input.a, u_input.a, global2.x))), func_5(~func_1(_wgslsmith_f_op_f32(f32(-1f) * -452f), Struct_2(1000f, vec2<f32>(-491f, 768f), global2.wyz, 0i, 1239f), global4[_wgslsmith_index_u32(1u, 14u)], ~global3[_wgslsmith_index_u32(50424u, 21u)]), global2.xxx, global3[_wgslsmith_index_u32(~max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 122436u) >> (1u % 32u), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-391f, 678f)))), _wgslsmith_f_op_f32(ceil(718f)));
    var var_1 = vec3<i32>(abs(~_wgslsmith_sub_i32(-50842i, max(0i, 30163i))), ~var_0.d, -18006i);
    let var_2 = var_0.e;
    let var_3 = ~u_input.e;
    global0 = array<bool, 26>();
    let var_4 = var_3 | (_wgslsmith_add_vec3_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1018f), Struct_2(var_2, var_0.b, global2.zwy, global2.x, var_2), Struct_1(4294967295u), ~var_3.x), vec3<u32>(u_input.c >> (0u % 32u), ~41388u, _wgslsmith_mod_u32(0u, u_input.e.x))) << (firstLeadingBit(firstLeadingBit(u_input.e)) % vec3<u32>(32u)));
    var var_5 = vec4<bool>(any(!(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(15236u, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], false), global0[_wgslsmith_index_u32(21706u, 26u)]))), true, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, ~u_input.a, func_5(vec3<u32>(20284u, 4294967295u, var_3.x), global2.zxw, var_4.x, var_0.a)), 17986i) >= 2147483647i, select(false, global1[_wgslsmith_index_u32(select(var_3.x, 35517u, _wgslsmith_dot_vec2_i32(var_0.c.yy, global2.wy) <= 1i), 28u)], !select(true, true, false)));
    var var_6 = 1u;
    let var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, var_2, var_0.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_0.a, var_2)), vec3<f32>(var_2, 987f, var_0.b.x), true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.e, 1173f, var_0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1392f, -1888f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(416f, 1368f, 929f) * vec3<f32>(509f, -531f, -1003f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c), 26u)]))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, 645f, var_2))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 884f, var_0.e))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1608f, -1351f, 587f)), vec3<bool>(var_5.x, true, 1168f >= var_0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, -632f, var_2, _wgslsmith_f_op_f32(f32(-1f) * -184f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_7.x, var_7.x, -769f, -623f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, -127f, var_2, -1000f)))))), ~max(~vec4<i32>(1i, -2147483647i, var_0.c.x, 2147483647i), vec4<i32>(6358i, 18885i, u_input.a, var_1.x) ^ vec4<i32>(global2.x, -33094i, -2147483647i, 2147483647i)));
}


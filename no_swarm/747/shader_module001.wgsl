struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<f32, 20> = array<f32, 20>(1000f, -133f, -486f, 477f, 569f, 334f, -2041f, -674f, -1606f, -899f, 1048f, 715f, -211f, 673f, 325f, -1000f, 1000f, -1570f, -840f, 489f);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<u32>, 18>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = true;
    var_0 = -1482f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) * 142f) - global1[_wgslsmith_index_u32(~1u, 20u)]);
    let var_1 = Struct_2(vec3<u32>(u_input.b.x | 4294967295u, firstLeadingBit(abs(u_input.b.x)), 19064u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-799f, -2142f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(28722u, 20u)])) + _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 1u)] + vec3<f32>(global1[_wgslsmith_index_u32(0u, 20u)], 1000f, -339f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], -210f, global1[_wgslsmith_index_u32(6791u, 20u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(144f, -1080f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_div_f32(788f, global1[_wgslsmith_index_u32(u_input.b.x, 20u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 521f, -916f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], 837f, -1000f, 289f), global2.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2590f, 1019f, -376f, -755f)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(27041u, 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(trunc(-1548f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 20u)])))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, global3.x, 1i, -1i), vec4<i32>(global3.x, -64713i, global3.x, -9814i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(33415i, 0i, 37660i, -3776i), vec4<i32>(0i, global3.x, global3.x, global3.x)), firstLeadingBit(vec4<i32>(-19255i, global3.x, 1i, 27428i)))) & global3.x, firstLeadingBit(-(~global3.x)), 5466i, firstLeadingBit(~global3.x));
    var var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(622f, -1715f)), -779f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(0u, 20u)], var_1.b.x))) * vec2<f32>(var_1.c.x, var_3.c.x)))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1341f, global1[_wgslsmith_index_u32(43491u, 20u)]) * vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1193f, 366f) - vec2<f32>(969f, global1[_wgslsmith_index_u32(0u, 20u)]))) - vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 25054u, arg_0.x), vec3<u32>(37716u, 1u, 15538u)), 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(11280u, 20u)], 458f))))), vec2<bool>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-179f, -1033f) + _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(6035u, 20u)])))))));
    var var_1 = arg_1;
    global2 = vec2<bool>(var_1.a, !any(vec2<bool>(true, true)));
    global2 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_sub_vec4_u32(u_input.b, ~(~vec4<u32>(firstTrailingBit(u_input.a), abs(23755u), reverseBits(arg_0.x), 57970u)));
    return ~reverseBits(vec2<i32>(countOneBits(global3.x), i32(-1i) * -2147483647i) | _wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.d.x, -7275i), vec2<i32>(global3.x, arg_1.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = vec4<u32>(arg_2.c, arg_0.a.x, 5762u, 8660u);
    let var_1 = global3.x;
    let var_2 = _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~select(4294967295u | u_input.a, ~1u, false), 20u)], 254f)));
    let var_3 = arg_0;
    var var_4 = 1u;
    return arg_2.b;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = !(!global2.x);
    global2 = vec2<bool>(global2.x, func_4(arg_1, ~(-22860i), Struct_1(true, any(vec4<bool>(true, false, global2.x, true)), ~(~1u), ~(-vec3<i32>(global3.x, 0i, global3.x))), vec3<i32>(min(-global3.x, global3.x), max(2147483647i, global3.x) >> (firstTrailingBit(4294967295u) % 32u), _wgslsmith_dot_vec2_i32(func_2(vec3<u32>(u_input.a, arg_1.a.x, 27754u), Struct_1(true, false, arg_1.a.x, vec3<i32>(global3.x, -79791i, global3.x))), func_2(u_input.c, Struct_1(false, true, arg_2, vec3<i32>(global3.x, global3.x, global3.x)))))));
    var var_1 = Struct_1(global3.x == abs(-1i), !global2.x, u_input.b.x, abs(select(~vec3<i32>(-5899i, -24634i, global3.x) & -vec3<i32>(global3.x, global3.x, -2147483647i), vec3<i32>(-25865i, global3.x, global3.x) >> (reverseBits(u_input.c) % vec3<u32>(32u)), global2.x)));
    var var_2 = ~var_1.d.x;
    var var_3 = _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(var_1.c & ~1u, ~countOneBits(var_1.c) | 26917u, 1u, min(0u, select(_wgslsmith_mult_u32(var_1.c, 12319u), 1u, false))));
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> bool {
    global3 = ~select(select(_wgslsmith_mult_vec3_i32(vec3<i32>(46058i, global3.x, 0i), vec3<i32>(global3.x, global3.x, arg_1.d.x)), arg_0.d, !arg_0.a), arg_0.d, all(select(vec3<bool>(false, global2.x, true), vec3<bool>(arg_0.b, false, false), vec3<bool>(arg_1.a, arg_1.b, false)))) | arg_1.d;
    var var_0 = arg_0;
    global2 = vec2<bool>(true, true);
    let var_1 = select(vec2<bool>(false, !(arg_1.c >= var_0.c)), vec2<bool>(~abs(4294967295u) != _wgslsmith_dot_vec3_u32(u_input.b.wxy, ~u_input.b.yzx), all(select(vec4<bool>(false, false, global2.x, arg_0.a), select(vec4<bool>(global2.x, false, arg_2, true), vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(var_0.b, var_0.b, arg_1.a, arg_0.a)), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(true, true, false, true))))), arg_3);
    var var_2 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1661f;
    global4 = array<vec2<u32>, 18>();
    let var_1 = u_input.a;
    var var_2 = Struct_1(!func_5(Struct_1(-614f <= global1[_wgslsmith_index_u32(42670u, 20u)], global1[_wgslsmith_index_u32(var_1, 20u)] >= var_0, 68463u, vec3<i32>(-48853i, -19797i, global3.x) << (u_input.b.zxw % vec3<u32>(32u))), Struct_1(global1[_wgslsmith_index_u32(64039u, 20u)] < var_0, global2.x != false, ~74210u, vec3<i32>(global3.x, 13263i, -1i)), global2.x, !func_1(var_0, Struct_2(u_input.b.wyw, global0[_wgslsmith_index_u32(58189u, 1u)], vec4<f32>(var_0, -1579f, -892f, -409f)), 4294967295u)), select(true, global2.x, (global3.x >> (_wgslsmith_clamp_u32(95083u, var_1, 4294967295u) % 32u)) > countOneBits(global3.x)), u_input.c.x, vec3<i32>(~0i, 1i, -2147483647i));
    var_2 = Struct_1(false & var_2.b, -1i > ~var_2.d.x, ~1u, abs(vec3<i32>(select(1i << (u_input.a % 32u), var_2.d.x, false), var_2.d.x, -2147483647i)));
    var_2 = Struct_1(false, func_1(_wgslsmith_f_op_f32(select(var_0, -1781f, !var_2.b & !global2.x)), Struct_2(reverseBits(countOneBits(u_input.c)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_1, 1u)] * vec3<f32>(var_0, var_0, -1618f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(61832u, 20u)], 1155f, var_0, global1[_wgslsmith_index_u32(var_2.c, 20u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], -167f, var_0, -1613f))))), ~(var_1 ^ var_2.c)), ~firstTrailingBit(u_input.b.x), -(var_2.d & vec3<i32>(_wgslsmith_mult_i32(var_2.d.x, 1i), -global3.x, var_2.d.x & 22449i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(89752u, 20u)]), _wgslsmith_f_op_f32(min(531f, -988f))))), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f) * _wgslsmith_f_op_f32(ceil(146f))))), _wgslsmith_div_f32(340f, 382f), _wgslsmith_f_op_f32(var_0 * global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(0u)), 20u)])), select(u_input.c, select(vec3<u32>(var_1, var_2.c, ~1u), reverseBits(u_input.b.wzw) >> (vec3<u32>(u_input.b.x, u_input.b.x, 20618u) % vec3<u32>(32u)), 1000f != _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 20u)]))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(var_2.a, global2.x, true), vec3<bool>(false, global2.x, var_2.a)), !vec3<bool>(var_2.b, var_2.a, global2.x), !vec3<bool>(true, global2.x, false)), !vec3<bool>(var_2.a, var_2.a, var_2.a), var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(802f)), 586f)) + global1[_wgslsmith_index_u32(var_2.c, 20u)]), ~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(13037i, -1i, global3.x, 34459i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_2.d.x, global3.x, global3.x, -14162i), vec4<i32>(9998i, var_2.d.x, global3.x, -1i), false), ~vec4<i32>(-23716i, global3.x, var_2.d.x, var_2.d.x))), 67690u);
}


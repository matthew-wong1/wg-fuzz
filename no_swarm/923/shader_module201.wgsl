struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(17324i, 2147483647i, -46225i, 2147483647i);

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: array<i32, 26>;

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global1 = array<vec4<f32>, 17>();
    var var_0 = ~39374u;
    var var_1 = Struct_2(Struct_1(u_input.e.wyz, u_input.d | _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, u_input.b.x, -2147483647i), u_input.d, vec4<i32>(0i, global2[_wgslsmith_index_u32(arg_0.x, 26u)], 0i, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2030f))), Struct_1(vec3<u32>(1u, ~(~u_input.c.x), u_input.c.x), u_input.d, 1000f), 0i, Struct_1(min(~u_input.e.yzy, vec3<u32>(firstLeadingBit(u_input.e.x), arg_0.x, u_input.e.x)), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1640f, 1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-881f)) + -875f))), vec4<f32>(_wgslsmith_f_op_f32(842f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -2261f), _wgslsmith_div_f32(826f, -1695f))), -1080f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - -493f)))), -992f));
    global2 = array<i32, 26>();
    global3 = array<Struct_2, 9>();
    return var_1.d.c;
}

fn func_3(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = vec4<bool>(false, true, any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)))), select(select(u_input.c.x < _wgslsmith_clamp_u32(u_input.c.x, 18781u, u_input.e.x), true, false), all(vec2<bool>(true, true)), true));
    let var_1 = u_input.e.x;
    let var_2 = -1i;
    var var_3 = true;
    let var_4 = var_0.yy;
    return global3[_wgslsmith_index_u32(countOneBits(0u), 9u)];
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(118125u, u_input.c.x))) + _wgslsmith_f_op_f32(floor(-212f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(992f, _wgslsmith_f_op_f32(-1363f + 246f))), _wgslsmith_f_op_f32(-583f * _wgslsmith_f_op_f32(trunc(640f)))), _wgslsmith_f_op_f32(f32(-1f) * -1009f)));
    let var_1 = select(func_3(vec3<f32>(var_0.a.c, var_0.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1327f))).d.b.xx, -vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(global0.xzz, vec3<i32>(31824i, arg_1.x, 481i))), !select(false, true | arg_0.x, false)) & (vec2<i32>(14762i, u_input.d.x) & (u_input.b & vec2<i32>(~global0.x, -4422i)));
    let var_2 = Struct_3(var_0, select(!vec2<bool>(select(arg_0.x, arg_0.x, true), true), !select(select(arg_0.zy, arg_0.xx, arg_0.xz), arg_0.xz, select(arg_0.zz, arg_0.zx, false)), !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), vec3<bool>(false, !any(!arg_0), arg_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(~(~1i), firstTrailingBit(var_0.d.b.x << (var_0.d.a.x % 32u))), reverseBits(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, global0.x), var_1.x))), func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, 614f, -810f)), var_0.e.zxx)).a);
    let var_3 = ~((var_2.e.a.x ^ ~(~var_2.a.b.a.x)) << ((_wgslsmith_mod_u32(firstTrailingBit(1u), 1u) & countOneBits(~67260u)) % 32u));
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(min(-368f, 1024f)), var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.d.c), -2141f) - var_2.a.d.c)), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.c, 204f)), 287f, -315f, 206f));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32((~44388u ^ _wgslsmith_add_u32(u_input.c.x, 1u)) >> (~_wgslsmith_add_u32(u_input.e.x, arg_2) % 32u), countOneBits(abs(arg_1.a.a.x) << (select(1u, 54265u, false) % 32u))), 12412u ^ abs(u_input.c.x));
    var var_1 = 1u;
    let var_2 = Struct_2(Struct_1(vec3<u32>(select(countOneBits(1u), arg_2 ^ var_0, var_0 > arg_0), ~arg_0, arg_2), vec4<i32>(u_input.d.x, -10132i, _wgslsmith_dot_vec4_i32(arg_1.d.b, vec4<i32>(global2[_wgslsmith_index_u32(43867u, 26u)], -35368i, arg_1.d.b.x, -2147483647i)), global0.x), _wgslsmith_f_op_f32(-arg_1.d.c)), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b.c, -598f, arg_1.e.x), vec3<f32>(arg_1.d.c, 505f, -726f))) - vec3<f32>(arg_1.b.c, 1540f, arg_1.a.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1793f, arg_1.e.x, 1534f), vec3<f32>(431f, arg_1.e.x, arg_1.e.x), true))))).a, _wgslsmith_div_i32(global0.x, global0.x), arg_1.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.c - 365f), -528f, _wgslsmith_f_op_f32(min(arg_1.b.c, arg_1.b.c)), _wgslsmith_f_op_f32(f32(-1f) * -1368f)) * _wgslsmith_f_op_vec4_f32(round(arg_1.e))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(566f)), func_3(vec3<f32>(arg_1.b.c, arg_1.b.c, -290f)).b.c, arg_1.e.x, _wgslsmith_f_op_f32(arg_1.b.c * -764f)), global1[_wgslsmith_index_u32(41154u, 17u)])))));
    let var_3 = func_3(_wgslsmith_f_op_vec3_f32(step(var_2.e.zxw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.e.wyw + var_2.e.zxz)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.e.x, var_2.b.c, 652f))))))).b;
    let var_4 = -arg_1.c;
    return func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), -1603f, var_3.c) * vec3<f32>(_wgslsmith_f_op_f32(765f - 2138f), _wgslsmith_f_op_f32(-var_2.e.x), var_3.c))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~0u, Struct_2(Struct_1(select(select(vec3<u32>(41546u, u_input.c.x, u_input.e.x), u_input.e.yzx, vec3<bool>(false, true, true)), vec3<u32>(1u, u_input.e.x, 0u) | vec3<u32>(69388u, u_input.e.x, u_input.e.x), vec3<bool>(false, true, true)), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(global0.x, 19571i), -2147483647i, global0.x), _wgslsmith_f_op_f32(-1411f - _wgslsmith_div_f32(801f, 128f))), Struct_1(vec3<u32>(firstTrailingBit(4294967295u), abs(4294967295u), firstLeadingBit(u_input.e.x)), firstTrailingBit(select(vec4<i32>(-1i, 24914i, global2[_wgslsmith_index_u32(u_input.e.x, 26u)], global0.x), u_input.d, vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(f32(-1f) * -948f))), global2[_wgslsmith_index_u32(func_1(vec3<bool>(true, true, false), ~u_input.d) ^ ~min(u_input.c.x, u_input.c.x), 26u)], func_3(vec3<f32>(_wgslsmith_f_op_f32(sign(431f)), -1623f, -1000f)).a, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), _wgslsmith_mod_u32(16140u, u_input.e.x))), 17u)]), u_input.e.x, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.e.x, ~25486u, ~u_input.e.x), ~vec3<u32>(0u, u_input.e.x, u_input.e.x) << (~vec3<u32>(u_input.e.x, u_input.e.x, u_input.c.x) % vec3<u32>(32u)), ~u_input.e.wyx));
    var var_1 = global1[_wgslsmith_index_u32(func_4(51805u, global3[_wgslsmith_index_u32((firstLeadingBit(~65441u) | var_0.a.x) << (firstTrailingBit(1u) % 32u), 9u)], func_4(93u, Struct_2(Struct_1(u_input.e.wxz, var_0.b >> (vec4<u32>(23624u, var_0.a.x, 0u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(-883f))), func_4(func_1(vec3<bool>(true, false, true), vec4<i32>(var_0.b.x, -5611i, 0i, global2[_wgslsmith_index_u32(34026u, 26u)])), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, u_input.e.x), var_0.b, -1259f), Struct_1(vec3<u32>(82379u, 3845u, 0u), vec4<i32>(global2[_wgslsmith_index_u32(38615u, 26u)], 2147483647i, global0.x, u_input.b.x), -465f), u_input.a.x, Struct_1(vec3<u32>(0u, 56671u, u_input.e.x), vec4<i32>(-2147483647i, 21357i, var_0.b.x, 0i), var_0.c), global1[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_mod_u32(var_0.a.x, 48500u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_0.a.x, 26u)], global0.x), -global0.x, func_4(4294967295u, global3[_wgslsmith_index_u32(0u, 9u)], u_input.c.x, u_input.e.xzz).b.x), Struct_1(var_0.a, var_0.b << (u_input.e % vec4<u32>(32u)), 909f), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x ^ 2930u), 17u)]), 1u >> (min(~u_input.c.x, _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(u_input.e.x, 4294967295u, 77895u))) % 32u), func_4(~139u, func_3(vec3<f32>(var_0.c, 1785f, -2182f)), var_0.a.x, ~var_0.a).a ^ vec3<u32>(289u, _wgslsmith_mod_u32(0u, u_input.e.x), ~0u)).a.x, var_0.a).a.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.e.x ^ u_input.c.x, 26u)] & -u_input.d.x, global2[_wgslsmith_index_u32(42775u, 26u)], 2147483647i), max(-(vec3<i32>(1340i, u_input.d.x, 2147483647i) >> (vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u))), var_0.b.zwx)));
}


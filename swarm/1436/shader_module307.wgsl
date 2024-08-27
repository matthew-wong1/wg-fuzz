struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec3<bool>, 15>;

var<private> global1: array<Struct_4, 1>;

var<private> global2: vec4<u32> = vec4<u32>(91085u, 1u, 4294967295u, 45197u);

var<private> global3: array<f32, 27> = array<f32, 27>(2663f, 1000f, -732f, 852f, -563f, -1603f, 1368f, 1000f, -155f, -1031f, -770f, 1689f, 363f, -1065f, 1300f, 931f, -245f, 758f, -2164f, -219f, -1303f, 1000f, -313f, -641f, 2307f, 747f, 618f);

var<private> global4: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~countOneBits(arg_1.x), 1u)];
    let var_1 = u_input.a.yy;
    global2 = firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, arg_3.b.x, global2.x), arg_1, select(arg_1, arg_1, vec4<bool>(true, true, arg_0.e, arg_0.c.x))), arg_1)) & firstTrailingBit(vec4<u32>(0u, _wgslsmith_div_u32(~29156u, ~arg_3.b.x), firstTrailingBit(59216u), arg_1.x));
    let var_2 = _wgslsmith_mod_vec2_u32(global2.xy, ~arg_1.yx);
    let var_3 = _wgslsmith_mod_i32(29038i, reverseBits(_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(arg_0.a, 12607i, u_input.a.x, 0i))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 0i, 22795i, 42991i), vec4<i32>(arg_0.d, arg_2.d, arg_0.d, 0i)), -vec4<i32>(41506i, -19998i, arg_0.d, -40216i)))));
    return var_2.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -7791i) | u_input.a, u_input.a) >> (global2.x % 32u), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(106f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1620f, 1339f)))), vec4<bool>(true, all(global4[_wgslsmith_index_u32(min(global2.x, 19353u), 11u)]), select(true, true, all(vec4<bool>(true, false, true, false))), true), 8567i & reverseBits(u_input.b), (u_input.b != _wgslsmith_dot_vec3_i32(vec3<i32>(-11025i, u_input.a.x, u_input.c), u_input.a)) || true), Struct_1(reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, -2147483647i, u_input.a.x), vec4<i32>(-16381i, u_input.a.x, -2147483647i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1519f, global3[_wgslsmith_index_u32(arg_0.x, 27u)], global3[_wgslsmith_index_u32(global2.x, 27u)])) + _wgslsmith_f_op_vec3_f32(-arg_1.a.yxw)), !vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), true), ~(-8774i), global2.x <= 14691u));
    return var_0.a.c.yxz;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = func_4(vec2<u32>(1u, firstLeadingBit(_wgslsmith_div_u32(func_3(Struct_1(21655i, arg_1.a.b, arg_1.b.c, 2147483647i, true), vec4<u32>(9539u, 1190u, 9926u, global2.x), arg_1.a, Struct_3(4294967295u, vec2<u32>(0u, 1u), global3[_wgslsmith_index_u32(global2.x, 27u)])), 0u & global2.x))), global1[_wgslsmith_index_u32(1u, 1u)]);
    var var_1 = ~21925u;
    var var_2 = !arg_1.b.c.xw;
    let var_3 = select(vec2<bool>(all(select(!global4[_wgslsmith_index_u32(global2.x, 11u)], global4[_wgslsmith_index_u32(~65858u, 11u)], any(vec2<bool>(true, arg_1.b.e)))), true), var_0.zy, (arg_1.a.c.x & var_2.x) | any(select(vec2<bool>(true, false), select(var_0.xy, vec2<bool>(false, false), true), select(arg_1.b.c.yy, var_0.xy, vec2<bool>(true, arg_1.a.e)))));
    var_2 = var_3;
    return global2.xz;
}

fn func_1() -> f32 {
    var var_0 = Struct_1((u_input.a.x >> (~select(global2.x, global2.x, false) % 32u)) ^ -(u_input.b | ~u_input.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-742f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(21134u, 27u)] + -679f))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(61432u, 0u), func_2(vec2<f32>(global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(9209u, 27u)]), Struct_2(Struct_1(u_input.c, vec3<f32>(-1034f, -501f, -1052f), global4[_wgslsmith_index_u32(global2.x, 11u)], u_input.c, true), Struct_1(u_input.a.x, vec3<f32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(global2.x, 27u)], -219f), global4[_wgslsmith_index_u32(global2.x, 11u)], u_input.a.x, false)))), 27u)]), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(20473u, 27u)], 1675f, 1329f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]))))), !global0[_wgslsmith_index_u32(23088u, 15u)])), !vec4<bool>(func_4(~vec2<u32>(35574u, 4294967295u), Struct_4(vec4<f32>(global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(56647u, 27u)], 1277f))).x, true, true, true), -2147483647i, !all(vec3<bool>(true, u_input.a.x <= u_input.a.x, u_input.b >= u_input.a.x)));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.d, u_input.b), vec2<i32>(-33037i, 0i), vec2<bool>(true, false)), ~u_input.a.xz), vec3<f32>(_wgslsmith_f_op_f32(597f * _wgslsmith_f_op_f32(-387f + 186f)), var_0.b.x, _wgslsmith_f_op_f32(floor(1000f))), select(vec4<bool>(any(global4[_wgslsmith_index_u32(34094u, 11u)]), true, all(vec4<bool>(var_0.e, var_0.e, true, true)), true), !(!var_0.c), _wgslsmith_f_op_f32(-498f * var_0.b.x) > var_0.b.x), max(-u_input.a.x, -12124i), (global2.x ^ ~global2.x) != 1u), Struct_1(u_input.a.x, vec3<f32>(var_0.b.x, global3[_wgslsmith_index_u32(global2.x, 27u)], -695f), select(global4[_wgslsmith_index_u32(global2.x, 11u)], global4[_wgslsmith_index_u32(~(~global2.x), 11u)], true | any(var_0.c)), 37360i, true));
    global1 = array<Struct_4, 1>();
    let var_2 = -abs(vec4<i32>(abs(var_0.a), countOneBits(2147483647i), _wgslsmith_div_i32(-2086i, 1i), -16582i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1123f, var_1.b.b.x, -603f, 338f), vec4<f32>(1276f, var_1.a.b.x, -709f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-647f, var_0.b.x, 628f, 610f)))) + vec4<f32>(global3[_wgslsmith_index_u32(countOneBits(50263u), 27u)], _wgslsmith_f_op_f32(var_0.b.x - global3[_wgslsmith_index_u32(global2.x, 27u)]), _wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(f32(-1f) * -1896f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, var_0.b.x, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(global2.x, 27u)])), _wgslsmith_f_op_f32(floor(1000f)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 27u)]), _wgslsmith_f_op_f32(-550f - -1000f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(-1522f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1380f, -1000f, -388f, -399f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 469f, global3[_wgslsmith_index_u32(0u, 27u)], 479f)), var_0.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global2.x, 27u)], -189f, 1238f, var_1.a.b.x) + vec4<f32>(var_1.a.b.x, 603f, 316f, 883f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global2.x, 27u)], 688f, global3[_wgslsmith_index_u32(1u, 27u)], var_1.a.b.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(global2.x, 27u)], var_0.b.x), vec4<f32>(var_1.b.b.x, global3[_wgslsmith_index_u32(19045u, 27u)], -539f, global3[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1714f, -864f, -2459f, 1363f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(firstTrailingBit(global2.x), 27u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(global2.x, 27u)])), var_0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_u32(21165u, global2.x) ^ global2.x, ~(~(~global2.zx | ~global2.yy)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a, 27u)] + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 1070f))), -2039f)));
    global2 = vec4<u32>(12910u, 4294967295u, _wgslsmith_dot_vec3_u32(global2.zyy, _wgslsmith_add_vec3_u32(global2.yyw, vec3<u32>(1u, 12558u, 56286u))), reverseBits(max(84958u, ~57018u >> (var_0.b.x % 32u))));
    global2 = select(~(~vec4<u32>(0u, 34136u, global2.x, global2.x)), ~vec4<u32>(max(var_0.b.x, 1u), ~global2.x, _wgslsmith_div_u32(1709u, global2.x), _wgslsmith_add_u32(72675u, var_0.a)), !global4[_wgslsmith_index_u32(firstLeadingBit(min(global2.x, var_0.a)), 11u)]) << (vec4<u32>(~(~global2.x), select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.x, 23989u, global2.x), vec4<u32>(22582u, 1u, 30094u, 60882u)), var_0.b.x, any(vec2<bool>(true, true))), 1u, func_3(Struct_1(-u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(288f, var_0.c, -629f) * vec3<f32>(-1097f, 939f, global3[_wgslsmith_index_u32(var_0.b.x, 27u)])), vec4<bool>(false, false, true, false), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 58818i, -18103i), u_input.a), 1583f > global3[_wgslsmith_index_u32(var_0.a, 27u)]), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(34436u, global2.x, 47978u, 72524u), vec4<u32>(global2.x, 30591u, global2.x, 50829u)), vec4<u32>(global2.x, 1u, 4294967295u, global2.x)), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -730f, -489f)), !global4[_wgslsmith_index_u32(111473u, 11u)], u_input.a.x, false), Struct_3(global2.x >> (var_0.b.x % 32u), global2.zw & global2.xz, var_0.c))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_clamp_u32(var_0.b.x, global2.x, firstLeadingBit(_wgslsmith_sub_u32(var_0.b.x ^ 17165u, countOneBits(20620u)))) | 0u;
    global4 = array<vec4<bool>, 11>();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, -473f, 660f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, global3[_wgslsmith_index_u32(var_0.b.x, 27u)], -346f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 117f, 234f) - vec3<f32>(680f, var_1.x, -2186f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.c, var_1.x) + vec3<f32>(-251f, -115f, 262f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1409f, var_0.c, var_0.c)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, -1000f, global3[_wgslsmith_index_u32(global2.x, 27u)])))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-920f, var_0.c, var_0.c))) * _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_2, 27u)], -1597f, var_0.c), vec3<f32>(global3[_wgslsmith_index_u32(var_2, 27u)], -842f, var_0.c)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1165f + 1000f), 410f, 1097f) + vec3<f32>(_wgslsmith_div_f32(-1326f, var_1.x), _wgslsmith_f_op_f32(-1343f * global3[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_f32(trunc(var_0.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(max(vec4<i32>(u_input.a.x, u_input.c, -1i, -1i), ~vec4<i32>(u_input.a.x, u_input.c, u_input.c, 51558i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, 26220i), vec4<i32>(0i, 2147483647i, u_input.a.x, -31693i)) ^ ~vec4<i32>(u_input.c, 23382i, u_input.c, -36457i), global4[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(var_2)), 11u)])));
}


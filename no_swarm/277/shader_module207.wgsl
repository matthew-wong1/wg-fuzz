struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<u32, 12>;

var<private> global3: f32;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global4 = ~(~(-35792i));
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(60706u, 1u, global0.e.a)), max(min(vec3<u32>(80293u, 4294967295u, 26302u), vec3<u32>(u_input.c, global0.a.a, global2[_wgslsmith_index_u32(50610u, 12u)])), ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 44267u, global2[_wgslsmith_index_u32(38206u, 12u)]))), vec3<u32>(~49325u, _wgslsmith_clamp_u32(min(global0.e.a, u_input.c), min(0u, u_input.c), 1u), abs(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global0.d, 12u)], u_input.c, 0u)))), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u << ((reverseBits(u_input.c) ^ global2[_wgslsmith_index_u32(~u_input.c, 12u)]) % 32u), 12u)], _wgslsmith_mod_u32(u_input.c, min(global0.d, ~0u)), _wgslsmith_add_u32(0u, (u_input.c ^ global0.e.a) << (global0.a.a % 32u))));
    global2 = array<u32, 12>();
    var var_1 = Struct_3(Struct_2(~5157u, Struct_1(~global0.b.x, vec4<f32>(-585f, _wgslsmith_div_f32(383f, global0.e.e.b.x), _wgslsmith_div_f32(arg_2.b.x, global0.a.b.b.x), global0.c), -21381i), _wgslsmith_add_i32(~arg_2.a, ~(-2147483647i)), select(global0.e.d, !select(global0.e.d, arg_1.yz, false), true), Struct_1(2147483647i, global0.a.e.b, -2147483647i << (u_input.c % 32u))), select(-select(global0.b, vec2<i32>(arg_2.a, -1i), true), _wgslsmith_div_vec2_i32(global0.b, -u_input.a.yz), arg_3), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-435f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1072f), _wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_mult_u32(((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 12u)], 12u)] & var_0.x) << (abs(global0.a.a) % 32u)) | 49888u, 36451u), Struct_2(18027u & (1u & global0.d), Struct_1(~1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(arg_2.b.x, 760f, global0.a.e.b.x, 368f)), vec4<f32>(global0.e.b.b.x, arg_2.b.x, arg_0, -191f)), 1i), firstLeadingBit(-global0.a.b.c), arg_1.xx, Struct_1(1864i, _wgslsmith_f_op_vec4_f32(global0.e.b.b - vec4<f32>(192f, -856f, -594f, 1254f)), firstTrailingBit(~2147483647i))));
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(2147483647i, -2147483647i, 6637i, -1i)), _wgslsmith_add_vec4_i32(u_input.a, u_input.a) | u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.e.e.b.x, 610f, arg_0, -766f))))))), _wgslsmith_div_i32(var_1.a.b.a, 44182i));
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - 1160f))), -931f, select(true, arg_1.x, global0.e.d.x) & (global0.e.e.b.x < _wgslsmith_f_op_f32(-909f * -272f)))), !(!vec4<bool>(global0.a.d.x, !global0.a.d.x, true, true)), Struct_1(reverseBits(1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(global0.e.b.b))))), arg_2.x), global0.e.d.x));
    var var_1 = vec2<f32>(global0.e.b.b.x, _wgslsmith_f_op_f32(global0.a.e.b.x + _wgslsmith_f_op_f32(-global0.c)));
    global0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(42554u, global0.a.a), 1u)], ~arg_2.zy, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1038f)))), arg_0.x, Struct_2(u_input.c, Struct_1(arg_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a.b.b * vec4<f32>(global0.c, var_1.x, -1000f, global0.c)) + _wgslsmith_f_op_vec4_f32(global0.e.e.b * vec4<f32>(global0.e.b.b.x, var_1.x, 1870f, var_1.x))), ~arg_2.x & arg_2.x), ~(-25030i), !(!select(arg_1.zz, global0.a.d, global0.a.d)), Struct_1(56488i, global0.a.e.b, abs(global0.b.x))));
    global0 = Struct_3(Struct_2(global0.a.a & 4294967295u, Struct_1(arg_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e.b.b + global0.e.e.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, global0.a.e.b.x, global0.e.e.b.x))), _wgslsmith_div_i32(-35537i, firstLeadingBit(-2147483647i))), -31344i, !global0.e.d, global0.e.b), vec2<i32>(_wgslsmith_add_i32(u_input.d, 2812i), -2147483647i), 1019f, global2[_wgslsmith_index_u32(~firstLeadingBit(global0.d), 12u)], Struct_2(~arg_0.x, global0.a.e, reverseBits(arg_2.x), !vec2<bool>(any(arg_1.yx), true), Struct_1(select(global0.b.x, u_input.d, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.e.b) + global0.e.e.b), u_input.d << (149128u % 32u))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(757f)), global0.e.e.b.x, any(vec4<bool>(global0.e.d.x, arg_1.x, true, global0.a.d.x))));
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_5(Struct_4(Struct_3(Struct_2(global0.a.a | 1u, global0.a.b, -7210i, vec2<bool>(true, global0.a.d.x), global0.e.e), vec2<i32>(~u_input.b, -8947i), -569f, ~24700u, Struct_2(abs(global2[_wgslsmith_index_u32(u_input.c, 12u)]), global0.e.e, func_2(vec3<u32>(global2[_wgslsmith_index_u32(24168u, 12u)], global0.a.a, 43944u), arg_1, vec3<i32>(global0.e.c, u_input.b, 19411i)).x, !global0.a.d, global0.a.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(10091i, i32(-1i) * -2147483647i), vec2<i32>(reverseBits(u_input.d), 972i >> (0u % 32u)))), Struct_2(9210u ^ (~4294967295u >> (_wgslsmith_mod_u32(u_input.c, global2[_wgslsmith_index_u32(u_input.c, 12u)]) % 32u)), Struct_1(-(~u_input.b), global0.a.b.b, -57467i << (max(global0.a.a, u_input.c) % 32u)), u_input.a.x, !vec2<bool>(false, select(false, false, arg_1.x)), global0.e.e), _wgslsmith_f_op_f32(-global0.c), true || (arg_0.x >= 1i));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.b.c, ~25620i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.a.b), vec2<i32>(-13057i, 8740i)), ~global0.a.b.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(64788i, global0.b.x, _wgslsmith_sub_i32(var_0.a.a.b.x, global0.e.b.c)), -vec3<i32>(1i, arg_0.x, 1i) << (~vec3<u32>(u_input.c, var_0.b.a, 4294967295u) % vec3<u32>(32u)), u_input.a.wzy)), u_input.a.ywx, -(~vec3<i32>(global0.a.c, arg_0.x, var_0.b.e.c)) | _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-20237i, -23004i, var_0.b.e.a)), -u_input.a.yyw, countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, global0.b.x, var_0.b.c), arg_0.zzx))));
    global1 = array<Struct_2, 1>();
    let var_2 = all(!vec3<bool>(all(vec4<bool>(true, true, false, arg_1.x)), true, !(var_0.b.d.x && arg_1.x)));
    global3 = 123f;
    return global0.e.c;
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_2, 1>();
    let var_0 = abs(((~vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 12u)], 5793u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]) >> (vec3<u32>(global0.a.a, 140u, global2[_wgslsmith_index_u32(global0.a.a, 12u)]) % vec3<u32>(32u))) ^ ~vec3<u32>(35980u, 33075u, global0.a.a)) | (((vec3<u32>(global0.e.a, 44199u, global0.a.a) ^ vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 12u)], 1u, 14661u)) | ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 41629u, global0.a.a)) << (~(~vec3<u32>(82873u, 4294967295u, 4294967295u)) % vec3<u32>(32u))));
    global3 = global0.a.e.b.x;
    var var_1 = global0.e.b;
    let var_2 = Struct_1(func_4(func_2(var_0 << (vec3<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 1u, var_0.x) % vec3<u32>(32u)), !vec3<bool>(false, global0.a.d.x, true), ~vec3<i32>(var_1.a, -1i, var_1.c)), select(!vec3<bool>(global0.e.d.x, true, global0.e.d.x), select(vec3<bool>(false, global0.a.d.x, global0.a.d.x), vec3<bool>(global0.e.d.x, global0.a.d.x, true), vec3<bool>(global0.e.d.x, false, true)), vec3<bool>(true, false, global0.a.d.x))) | (global0.a.b.c & (-7513i ^ global0.b.x)), global0.e.e.b, _wgslsmith_div_i32(~(~(-1i)), global0.e.b.a) << (var_0.x % 32u));
    return Struct_3(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(33105u, 0u)), 1u)], max(func_2(vec3<u32>(global0.e.a, 66335u, countOneBits(global0.a.a)), select(!vec3<bool>(global0.a.d.x, global0.a.d.x, true), select(vec3<bool>(false, global0.e.d.x, true), vec3<bool>(true, global0.e.d.x, global0.a.d.x), false), true), func_2(~var_0, vec3<bool>(true, global0.e.d.x, false), -u_input.a.yyx).xxy).yy, _wgslsmith_add_vec2_i32(vec2<i32>(var_2.a, -1i) ^ vec2<i32>(var_1.c, 1i), firstTrailingBit(vec2<i32>(2147483647i, 2147483647i) & vec2<i32>(var_1.a, 14048i)))), global0.a.e.b.x, global0.e.a, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_4(func_1(), -2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(58399u, 64387u), ~vec2<u32>(global2[_wgslsmith_index_u32(54727u, 12u)], u_input.c)), global0.a.a), ~(~abs(1u))), 1u)], -1212f, _wgslsmith_f_op_f32(min(1052f, _wgslsmith_f_op_f32(min(-322f, 1116f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.e.b.x) - _wgslsmith_f_op_f32(ceil(global0.c))), -305f));
    var var_1 = ~(~(~min(vec3<u32>(global2[_wgslsmith_index_u32(var_0.a.a.d, 12u)], global0.a.a, 0u), vec3<u32>(74708u, var_0.b.a, u_input.c)))) << (_wgslsmith_mod_vec3_u32(~(~reverseBits(vec3<u32>(38959u, 1u, 28375u))), (vec3<u32>(21188u, global2[_wgslsmith_index_u32(1u, 12u)], 0u) >> (vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], u_input.c, 61487u) % vec3<u32>(32u))) << (vec3<u32>(1u, 4294967295u, _wgslsmith_sub_u32(global0.e.a, global0.d)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = select(4294967295u << (global0.e.a % 32u), _wgslsmith_mod_u32(46662u, 65995u), all(select(func_1().a.d, vec2<bool>(true, true || global0.a.d.x), false)));
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(_wgslsmith_add_vec2_i32(u_input.a.wy, u_input.a.xw), firstTrailingBit(vec2<i32>(global0.e.b.c, var_0.a.b)), select(var_0.a.a.e.d, vec2<bool>(false, global0.e.d.x), var_0.a.a.e.d)), vec2<i32>(var_0.a.b, 11692i)), global0.b) | func_4(u_input.a, !(!vec3<bool>(true, global0.a.d.x, var_0.a.a.e.d.x)));
    var var_4 = func_1().e.e;
    global2 = array<u32, 12>();
    var_4 = Struct_1(u_input.b, var_4.b, u_input.a.x ^ ~(-49601i));
    global4 = ~var_4.c;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f)) - 1406f) * 1000f) <= _wgslsmith_f_op_f32(round(194f));
    let x = u_input.a;
    s_output = StorageBuffer(~max(reverseBits(u_input.a.zxx), firstTrailingBit(u_input.a.xxy)));
}


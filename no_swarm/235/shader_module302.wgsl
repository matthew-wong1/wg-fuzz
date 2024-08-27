struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 3>();
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(max(global1.x, 0i), select(0i, u_input.a.x, true), u_input.a.x, ~(-2147483647i)), select(vec4<i32>(-49307i, global1.x, 9816i, u_input.c.x) >> (vec4<u32>(56628u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(-35690i, global1.x, global1.x, -1i), all(vec3<bool>(true, global2[_wgslsmith_index_u32(95524u, 6u)], global2[_wgslsmith_index_u32(58707u, 6u)])))), global1.x, -8536i, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -4064i), u_input.d.zyw)), _wgslsmith_clamp_vec3_i32(reverseBits(u_input.a.www), vec3<i32>(44954i, global1.x, u_input.a.x), min(vec3<i32>(-13375i, global1.x, global1.x), u_input.a.ywz)))), ~((~0u | select(0u, 0u, global2[_wgslsmith_index_u32(17859u, 6u)])) ^ _wgslsmith_clamp_u32(44419u, ~5419u, 4294967295u)), false, abs(_wgslsmith_sub_u32(1u, 1u)));
    var var_1 = Struct_3(Struct_1(vec4<i32>(-var_0.a.x, firstTrailingBit(_wgslsmith_sub_i32(u_input.b, 26655i)), 0i, var_0.a.x), var_0.b << (select(40964u, ~var_0.d, global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)]) % 32u), all(vec2<bool>(global2[_wgslsmith_index_u32(countOneBits(var_0.d), 6u)], all(vec2<bool>(var_0.c, global2[_wgslsmith_index_u32(var_0.d, 6u)])))), ~(~var_0.b)));
    global1 = abs(vec3<i32>(reverseBits(countOneBits(-41034i | u_input.c.x)), u_input.a.x, select(1i, 23825i, false)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), global2[_wgslsmith_index_u32(~var_1.a.b, 6u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    global2 = array<bool, 6>();
    var var_0 = Struct_3(Struct_1(-(u_input.d & u_input.d), 1u, true, reverseBits(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(46535u, 34931u, 1u, 0u), vec4<u32>(6598u, 4294967295u, 65339u, 0u))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-839f, _wgslsmith_div_f32(-705f, -1145f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) - _wgslsmith_f_op_f32(f32(-1f) * -400f)) + _wgslsmith_f_op_f32(f32(-1f) * -1408f)), 188f) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), 379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(max(-599f, 1569f)))), _wgslsmith_f_op_f32(-369f * -647f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) + _wgslsmith_div_f32(742f, 2131f)))));
    let var_2 = !vec2<bool>(true || all(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 6u)], false, true)), global2[_wgslsmith_index_u32(4294967295u, 6u)]);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, -554f, var_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 2722f, var_1.x) - vec4<f32>(var_1.x, -967f, var_1.x, -456f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1197f, var_1.x, var_1.x, -1961f), vec4<f32>(var_1.x, -958f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(867f, var_1.x, -1199f, -1568f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(223f, -298f, 489f, 2310f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, var_1.x, var_1.x, var_1.x)), var_2.x)))), !select(select(vec4<bool>(true, var_0.a.c, var_2.x, var_0.a.c), !vec4<bool>(false, var_0.a.c, var_2.x, true), !vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(1u, 6u)])), select(vec4<bool>(var_2.x, true, var_2.x, var_0.a.c), select(vec4<bool>(false, var_0.a.c, global2[_wgslsmith_index_u32(var_0.a.b, 6u)], false), vec4<bool>(var_0.a.c, var_2.x, var_2.x, var_2.x), false), false), select(select(vec4<bool>(true, false, var_0.a.c, var_0.a.c), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.b, 6u)], true, var_2.x, true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_0.a.d, 6u)], var_2.x)), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.d, 6u)], var_0.a.c, var_2.x, var_0.a.c), var_2.x))));
    return Struct_2(Struct_1(vec4<i32>(arg_1, 2147483647i, 23732i, abs(arg_1)), var_0.a.d, true, ~12479u), _wgslsmith_div_f32(1817f, 2673f), Struct_1(abs(~(~var_0.a.a)), var_0.a.b, any(global0[_wgslsmith_index_u32(var_0.a.d, 3u)]), ~var_0.a.d));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_4 {
    var var_0 = Struct_1(-abs(_wgslsmith_sub_vec4_i32(arg_0.a.a, ~vec4<i32>(6828i, -1i, 2147483647i, global1.x))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~(arg_0.a.b ^ 1u), arg_0.a.d & abs(1u)), abs(max(0u, 4294967295u)) << (arg_0.c.d % 32u)), global2[_wgslsmith_index_u32(4294967295u, 6u)], ~1u);
    var var_1 = -667f;
    global2 = array<bool, 6>();
    let var_2 = func_2(_wgslsmith_mult_i32(-59336i, var_0.a.x), var_0.a.x);
    var var_3 = Struct_4(!vec2<bool>(arg_0.a.c, true), func_2(-arg_2, _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(47361i, global1.x), u_input.e, u_input.c.x)).a, global1.x, 0u);
    return Struct_4(select(!vec2<bool>(true, any(var_3.a)), vec2<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.c.b, 6u)], true, true, var_2.c.c), vec4<bool>(false, arg_0.c.c, var_0.c, arg_0.a.c), var_2.a.c)), !(2147483647i <= var_0.a.x)), true), Struct_1(_wgslsmith_sub_vec4_i32(abs(var_0.a), _wgslsmith_mult_vec4_i32(var_3.b.a, vec4<i32>(var_0.a.x, 0i, arg_2, 2147483647i))) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_2.c.b, 69517u, arg_0.a.d)), ~vec4<u32>(0u, 104160u, var_2.c.d, 4294967295u)) % vec4<u32>(32u)), var_3.d << (4294967295u % 32u), var_2.c.c, 1u), -abs(arg_2), ~(~(~_wgslsmith_add_u32(var_2.a.b, var_0.d))));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = func_4(func_2(arg_0, arg_0), ~(-u_input.d.x) < 1i, func_2(1i, global1.x).a.a.x);
    global1 = vec3<i32>(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 44832i, 0i, 12469i), vec4<i32>(u_input.b, -38793i, 32432i, var_0.b.a.x))) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(var_0.b.a.x), -17718i, -12997i, _wgslsmith_dot_vec2_i32(u_input.a.xz, global1.yx)), vec4<i32>(global1.x | u_input.b, select(var_0.c, 28206i, false), -3503i, firstTrailingBit(arg_0))), u_input.c.x, _wgslsmith_div_i32(reverseBits(-var_0.c), 1i));
    var var_1 = false;
    let var_2 = global2[_wgslsmith_index_u32(func_2(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_clamp_i32(1i, arg_0, _wgslsmith_add_i32(global1.x, arg_0))), _wgslsmith_dot_vec2_i32(-global1.yy, ~firstTrailingBit(u_input.d.yy))), global1.x).a.d, 6u)];
    global0 = array<vec3<bool>, 3>();
    return !(!vec2<bool>(true, !global2[_wgslsmith_index_u32(reverseBits(0u), 6u)]));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_3(arg_1.b);
    global2 = array<bool, 6>();
    global2 = array<bool, 6>();
    global2 = array<bool, 6>();
    global1 = var_0.a.a.wyw;
    return !select(!select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 6u)], false, global2[_wgslsmith_index_u32(var_0.a.d, 6u)]), vec4<bool>(var_0.a.c, true, true, arg_1.b.c), false), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.d, 6u)], true, arg_1.b.c, true), vec4<bool>(arg_1.b.c, global2[_wgslsmith_index_u32(arg_1.d, 6u)], true, global2[_wgslsmith_index_u32(var_0.a.d, 6u)])), !vec4<bool>(var_0.a.c, false, true, !arg_1.b.c), select(select(select(vec4<bool>(var_0.a.c, arg_1.b.c, true, arg_1.b.c), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.b.b, 6u)], false, arg_1.b.c), global2[_wgslsmith_index_u32(var_0.a.b, 6u)]), !vec4<bool>(true, false, var_0.a.c, var_0.a.c), !vec4<bool>(true, var_0.a.c, arg_1.a.x, false)), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.d, 6u)], false, arg_1.a.x, var_0.a.c), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.b, 6u)], true, arg_1.b.c, global2[_wgslsmith_index_u32(arg_1.d, 6u)]), !vec4<bool>(var_0.a.c, var_0.a.c, false, true)), all(select(global0[_wgslsmith_index_u32(22221u, 3u)], global0[_wgslsmith_index_u32(var_0.a.d, 3u)], false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_5(vec2<i32>(_wgslsmith_add_i32(global1.x, u_input.e), 8910i), Struct_4(func_1(-2147483647i), Struct_1(vec4<i32>(u_input.a.x, global1.x, global1.x, global1.x), 4294967295u, global2[_wgslsmith_index_u32(25326u, 6u)], 8454u), firstTrailingBit(u_input.b), 16068u), 0i & -u_input.d.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1156f, -849f))))));
    let var_1 = vec2<bool>(!var_0.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-29013i, min(u_input.d.x, global1.x) << (select(~1u, ~21623u, false) % 32u), u_input.e), global1.x, ~vec4<u32>(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 2438u))), ~(~1u), _wgslsmith_div_u32(func_4(Struct_2(Struct_1(u_input.d, 0u, global2[_wgslsmith_index_u32(14693u, 6u)], 0u), 180f, Struct_1(vec4<i32>(2147483647i, global1.x, 2147483647i, global1.x), 1u, false, 5441u)), var_1.x, global1.x).b.d, ~0u), 708u));
}


struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: vec3<i32> = vec3<i32>(25596i, -1i, -2342i);

var<private> global2: array<vec3<f32>, 13>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(select(~(~firstLeadingBit(global3.a.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global3.a.a.x, global3.a.a.x, global3.a.a.x), vec4<u32>(global3.a.a.x, 6442u, 2751u, global3.a.a.x)), select(all(vec4<bool>(global0[_wgslsmith_index_u32(51316u, 1u)], global3.d, true, true)) & (global0[_wgslsmith_index_u32(global3.a.a.x, 1u)] || false), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.x) - _wgslsmith_f_op_f32(floor(1073f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_4(Struct_2(global3.a.a.x), func_2(), global3.e.yz, vec2<bool>(!select(any(vec2<bool>(global3.d, true)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(63443u, arg_0.a.x), 1u)], true), global3.b), _wgslsmith_f_op_f32(step(621f, arg_2.b)));
    let var_1 = var_0.a;
    let var_2 = global3.a.a.zyz;
    global1 = -vec3<i32>(u_input.b.x, (_wgslsmith_dot_vec3_i32(u_input.b.xxx, u_input.b.zwy) << (39531u % 32u)) ^ -arg_3.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, select(vec2<i32>(u_input.b.x, -21300i), u_input.a.yw, vec2<bool>(global3.b, global3.b))), 1i, 107052i));
    global1 = vec3<i32>(abs(global3.c), ~_wgslsmith_clamp_i32(global1.x, 0i, _wgslsmith_mod_i32(reverseBits(-30870i), _wgslsmith_clamp_i32(global1.x, arg_3.x, 13812i))), select(select(_wgslsmith_clamp_i32(-2147483647i, -20621i, 63450i & global3.c), reverseBits(8013i), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(32212u, 19658u)), 1u)]), -u_input.b.x ^ min(~0i, -1i), any(vec3<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 1u)], global0[_wgslsmith_index_u32(37954u, 1u)], false, true)), global3.b))));
    return _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(arg_0.a.x, 13u)]);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    global2 = array<vec3<f32>, 13>();
    var var_0 = ~arg_1.a.a;
    return Struct_3(Struct_1(vec4<u32>(~arg_1.a.a.x, arg_1.a.a.x, _wgslsmith_sub_u32(global3.a.a.x, 37004u), 1u) >> (((global3.a.a & arg_1.a.a) << (firstTrailingBit(global3.a.a) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(1000f))), true, 0i, false, vec3<f32>(func_2().b, global3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(211f, _wgslsmith_f_op_f32(-arg_0.x), global3.b || true)))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = abs(-(~(select(u_input.b.xxz, vec3<i32>(42162i, global1.x, u_input.a.x), vec3<bool>(global0[_wgslsmith_index_u32(global3.a.a.x, 1u)], global3.b, global3.d)) >> (~vec3<u32>(arg_0.x, 4294967295u, 24337u) % vec3<u32>(32u)))));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1130f, global3.a.b, global3.e.x, 890f) + vec4<f32>(565f, global3.e.x, -2414f, global3.e.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-316f, 1000f, global3.a.b, 1215f), vec4<f32>(1148f, global3.e.x, -1170f, global3.e.x), vec4<bool>(global0[_wgslsmith_index_u32(51120u, 1u)], global0[_wgslsmith_index_u32(80338u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global3.b))))))), Struct_3(func_2(), false, u_input.b.x, all(select(vec4<bool>(false, global3.b, true, global3.d), vec4<bool>(false, true, global3.d, global0[_wgslsmith_index_u32(global3.a.a.x, 1u)]), select(vec4<bool>(global3.d, true, true, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.x, 1u)], false), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.a.b, global3.a.b, global3.e.x), global2[_wgslsmith_index_u32(40578u, 13u)])) * _wgslsmith_f_op_vec3_f32(func_3(global3.a, vec2<f32>(global3.a.b, global3.e.x), Struct_1(vec4<u32>(global3.a.a.x, global3.a.a.x, 0u, global3.a.a.x), -1734f), vec2<i32>(global1.x, global1.x)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(global3.a.a.x, 13u)])))))));
    let var_2 = u_input.a;
    global0 = array<bool, 1>();
    global1 = select(-(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(var_2.wxx, u_input.b.yxx)), reverseBits(var_2.xzx), !(!(!select(vec3<bool>(var_1.b, false, global3.b), vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.a.x, 1u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], true)))));
    return func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1490f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-1659f + -1202f)), _wgslsmith_f_op_f32(f32(-1f) * -1207f), -923f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.a.b, global3.e.x), _wgslsmith_f_op_f32(global3.e.x - global3.e.x), _wgslsmith_f_op_f32(-766f * global3.a.b), 209f))), Struct_3(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b, global3.e.x, 1827f, 1000f)), Struct_3(var_1.a, global3.b, var_2.x, global3.c != var_1.c, _wgslsmith_f_op_vec3_f32(-global3.e))).a, false, var_2.x, false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.e.x, -897f, global3.a.b))) * _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(arg_0.x, 13u)] - var_1.e)), vec3<f32>(_wgslsmith_f_op_f32(445f + var_1.e.x), var_1.e.x, _wgslsmith_f_op_f32(max(728f, var_1.e.x)))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    global2 = array<vec3<f32>, 13>();
    let var_0 = u_input.a.zz;
    global0 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(func_1(global3.a.a.zy).a.b, 467f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.e.yz), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.e.x, -1712f))))))) - arg_0.e.zy);
    var var_2 = !vec4<bool>(all(select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(25234u, 1u)]), vec3<bool>(true, arg_0.d, global0[_wgslsmith_index_u32(arg_1.a.a.x, 1u)]), vec3<bool>(true, arg_0.b, global0[_wgslsmith_index_u32(1u, 1u)])), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 1u)], true), vec3<bool>(true, arg_1.d, false), vec3<bool>(arg_0.b, global0[_wgslsmith_index_u32(27365u, 1u)], global0[_wgslsmith_index_u32(22624u, 1u)])), true)), all(vec4<bool>(global3.d && global3.d, true, global0[_wgslsmith_index_u32(max(41812u, 3042u), 1u)], any(vec2<bool>(global0[_wgslsmith_index_u32(global3.a.a.x, 1u)], true)))), func_1(~firstTrailingBit(arg_0.a.a.zz)).d, true);
    return vec4<bool>(global3.d, !arg_0.b, var_2.x, global0[_wgslsmith_index_u32(arg_1.a.a.x, 1u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(global3.a.a.x, 1u)], global0[_wgslsmith_index_u32(577u, 1u)])), true, true, global3.d), select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(global3.a.a.x, 1u)], global3.b, false, true), vec4<bool>(global3.d, false, global3.b, global3.d), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 1u)], false)), !select(vec4<bool>(global3.d, true, global3.b, true), vec4<bool>(global3.d, false, true, global3.d), global3.d), select(!vec4<bool>(global3.b, global0[_wgslsmith_index_u32(global3.a.a.x, 1u)], false, global3.b), !vec4<bool>(false, true, global3.b, false), vec4<bool>(false, global3.b, true, global3.d))), select(vec4<bool>(true, false, any(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(global3.a.a.x, 1u)] == global3.b), vec4<bool>(true, global3.d, global0[_wgslsmith_index_u32(global3.a.a.x, 1u)] | global3.b, global3.b & false), global0[_wgslsmith_index_u32(~(~global3.a.a.x), 1u)]), !func_5(func_1(vec2<u32>(global3.a.a.x, 4294967295u)), func_1(vec2<u32>(global3.a.a.x, global3.a.a.x)))), global0[_wgslsmith_index_u32(4294967295u, 1u)]);
    var var_1 = vec4<f32>(func_1(~(abs(global3.a.a.yx) >> (countOneBits(vec2<u32>(global3.a.a.x, 1u)) % vec2<u32>(32u)))).e.x, 320f, _wgslsmith_f_op_f32(-global3.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_1(vec2<u32>(global3.a.a.x, global3.a.a.x)).e.x))));
    let var_2 = func_1(_wgslsmith_div_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.a.a.x, global3.a.a.x), global3.a.a.xw ^ vec2<u32>(global3.a.a.x, 52310u)), _wgslsmith_div_vec2_u32(~vec2<u32>(global3.a.a.x, 59380u), vec2<u32>(55263u, global3.a.a.x))), ~_wgslsmith_div_vec2_u32(vec2<u32>(global3.a.a.x, global3.a.a.x), global3.a.a.yx) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.a.x, 52895u) & global3.a.a.xw, global3.a.a.zz >> (global3.a.a.xy % vec2<u32>(32u)))));
    let var_3 = func_2();
    var var_4 = var_2.a.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(-var_3.b));
}


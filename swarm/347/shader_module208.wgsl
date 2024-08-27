struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(26702i, Struct_2(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), 53173u, false, Struct_1(true, vec3<i32>(i32(-2147483648), -15834i, 53810i), vec2<bool>(true, true), vec3<f32>(-283f, 525f, 705f), vec4<bool>(false, false, true, false)))), Struct_5(-1i, Struct_2(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), 79501u, false, Struct_1(false, vec3<i32>(-29276i, 0i, -17521i), vec2<bool>(false, true), vec3<f32>(-1210f, -598f, -917f), vec4<bool>(false, true, true, true)))), Struct_5(-43534i, Struct_2(vec4<u32>(126809u, 18822u, 4294967295u, 49546u), vec3<u32>(36636u, 29631u, 0u), 1u, true, Struct_1(true, vec3<i32>(-1i, -26317i, -1843i), vec2<bool>(true, false), vec3<f32>(672f, 487f, 1111f), vec4<bool>(true, true, false, true)))), Struct_5(39485i, Struct_2(vec4<u32>(53316u, 67704u, 1u, 17196u), vec3<u32>(0u, 1u, 32438u), 0u, true, Struct_1(false, vec3<i32>(i32(-2147483648), 9143i, 2147483647i), vec2<bool>(true, true), vec3<f32>(-474f, 1533f, -1159f), vec4<bool>(true, false, false, true)))), Struct_5(i32(-2147483648), Struct_2(vec4<u32>(0u, 16728u, 0u, 54923u), vec3<u32>(4294967295u, 1u, 1u), 34767u, false, Struct_1(false, vec3<i32>(1i, -43027i, 6403i), vec2<bool>(true, true), vec3<f32>(2038f, 496f, 627f), vec4<bool>(true, false, true, false)))), Struct_5(-23035i, Struct_2(vec4<u32>(33383u, 54199u, 4294967295u, 1u), vec3<u32>(59713u, 4294967295u, 29596u), 1u, false, Struct_1(true, vec3<i32>(0i, 0i, 51441i), vec2<bool>(true, false), vec3<f32>(1152f, 2811f, 1546f), vec4<bool>(false, false, true, false)))), Struct_5(0i, Struct_2(vec4<u32>(57625u, 40630u, 0u, 4294967295u), vec3<u32>(62120u, 99132u, 90056u), 88209u, false, Struct_1(false, vec3<i32>(28340i, -30032i, 0i), vec2<bool>(true, false), vec3<f32>(-459f, 1746f, 510f), vec4<bool>(false, true, true, false)))));

var<private> global2: u32;

var<private> global3: array<Struct_1, 28>;

var<private> global4: array<f32, 20> = array<f32, 20>(1649f, -1000f, -328f, 1464f, -1552f, -465f, -620f, -929f, 1270f, 559f, 1000f, 1201f, -1821f, -377f, 907f, -922f, 525f, 507f, -659f, -778f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> i32 {
    global0 = -1774f;
    let var_0 = !(!vec2<bool>(arg_0.b.x && (global4[_wgslsmith_index_u32(arg_1.x, 20u)] == -1080f), select(!arg_0.b.x, all(arg_0.b.xy), false)));
    let var_1 = arg_0.a.b;
    global3 = array<Struct_1, 28>();
    let var_2 = vec3<u32>(firstTrailingBit(~_wgslsmith_mod_u32(~1u, u_input.c)), 21901u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, u_input.b, ~arg_1.x), ~_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, arg_1.x, u_input.c), vec4<u32>(u_input.c, u_input.a, u_input.c, 1u)), vec4<u32>(56482u, 33530u, arg_1.x, 1u))));
    return arg_0.a.b.x;
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(18696u, 7u)];
    var var_1 = ~var_0.b.a.zz;
    var_0 = Struct_5(func_3(Struct_3(Struct_1(var_0.b.d, firstLeadingBit(vec3<i32>(49967i, var_0.b.e.b.x, 1i)), !var_0.b.e.e.yy, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(0u, 20u)], -971f, -699f) + var_0.b.e.d), vec4<bool>(var_0.b.d, true, var_0.b.d, true)), !vec3<bool>(false, var_0.b.d, var_0.b.d)), ~abs(var_0.b.a.yxz) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.b.c, 1u, var_0.b.b.x), vec3<u32>(var_1.x, 30057u, var_0.b.b.x) >> (var_0.b.a.wzz % vec3<u32>(32u)))), var_0.b);
    let var_2 = var_0.b.e.d.x;
    global1 = array<Struct_5, 7>();
    return _wgslsmith_mod_u32(abs(43289u), 60261u);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a, 30179u, u_input.c, 41371u), vec4<u32>(u_input.c, 1u, 26036u, 3351u)), ~vec4<u32>(u_input.a, 10457u, 0u, 1u)), vec4<u32>(38650u, u_input.c, abs(u_input.b), 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.c, ~20739u, func_2()), reverseBits(vec3<u32>(4294967295u, 30777u, u_input.a))) >> (vec3<u32>(u_input.b, u_input.c, ~u_input.c) % vec3<u32>(32u)), 42611u, all(vec3<bool>(true, false, any(vec2<bool>(true, true)))), Struct_1(true, _wgslsmith_add_vec3_i32(vec3<i32>(-15697i, arg_0.x, 1i), arg_0.yyy) ^ vec3<i32>(abs(arg_0.x), ~17296i, i32(-1i) * -2147483647i), vec2<bool>(true, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 20u)], 522f, global4[_wgslsmith_index_u32(4294967295u, 20u)]))))), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), all(vec2<bool>(false, true))), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, true, true), true)));
    let var_1 = all(var_0.e.e);
    var var_2 = -888f;
    let var_3 = global1[_wgslsmith_index_u32(1u, 7u)];
    var var_4 = Struct_1(true, firstTrailingBit(abs(arg_0.wzx)), vec2<bool>(any(vec4<bool>(false || var_1, true, !var_1, select(true, var_3.b.d, false))), select(!var_1, true, true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.b.e.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(0u, 20u)]))), global4[_wgslsmith_index_u32(reverseBits(~var_3.b.c), 20u)]))), select(vec4<bool>(all(select(var_3.b.e.c, vec2<bool>(var_0.d, false), var_0.e.c)), true, !var_1 && any(vec3<bool>(false, var_3.b.e.e.x, var_1)), true), select(!vec4<bool>(var_0.e.e.x, var_3.b.d, true, true), vec4<bool>(!var_1, var_0.d, var_0.d, var_3.b.d), !var_0.e.a), !(!select(vec4<bool>(var_1, var_3.b.d, var_0.e.e.x, var_3.b.d), var_3.b.e.e, var_1))));
    return select(var_4.a, firstTrailingBit(-1784i) < var_0.e.b.x, all(var_3.b.e.e.wzz));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = arg_0.b.x ^ 1i;
    global1 = array<Struct_5, 7>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(min(abs(max(u_input.a, arg_2)), 130597u), 20u)])));
    var var_2 = (~(select(vec2<i32>(-2147483647i, arg_0.b.x), arg_0.b.xy, arg_0.e.xx) ^ arg_0.b.zy) ^ -max(vec2<i32>(62412i, arg_0.b.x), max(vec2<i32>(arg_0.b.x, arg_0.b.x), vec2<i32>(arg_0.b.x, arg_0.b.x)))) ^ vec2<i32>(arg_0.b.x, arg_0.b.x);
    let var_3 = arg_0.d.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, !(select(2147483647i, -2147483647i, true) != (-1i >> (1u % 32u))), true), select(vec3<bool>(~u_input.b != ~u_input.a, false, !all(vec2<bool>(false, true))), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), func_4(Struct_1(all(vec2<bool>(true, false)), -vec3<i32>(2147483647i, -1i, -1i), vec2<bool>(all(vec2<bool>(false, true)), global4[_wgslsmith_index_u32(u_input.c, 20u)] > 263f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4[_wgslsmith_index_u32(42618u, 20u)], global4[_wgslsmith_index_u32(26582u, 20u)], global4[_wgslsmith_index_u32(1u, 20u)]), vec3<f32>(global4[_wgslsmith_index_u32(13319u, 20u)], global4[_wgslsmith_index_u32(u_input.a, 20u)], global4[_wgslsmith_index_u32(36008u, 20u)]))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, false, true), true)), !vec3<bool>(func_1(vec4<i32>(-1i, 0i, 2147483647i, 5664i)), false, true), _wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.a, 26675u), vec2<u32>(8878u, u_input.c)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.b), vec2<u32>(49206u, 1u))))));
    var var_1 = Struct_3(Struct_1(any(var_0.xz), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(10040i, 0i, -1i), vec3<i32>(-111009i, 2147483647i, -24122i)), -1i, -45274i), vec3<i32>(1i, 1i, -20606i)), !(!(!var_0.zz)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.a, 20u)], global4[_wgslsmith_index_u32(u_input.c, 20u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(25207u, 20u)], global4[_wgslsmith_index_u32(u_input.c, 20u)])) * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 20u)], -782f))), vec4<bool>(false, any(vec2<bool>(var_0.x, var_0.x)), (var_0.x & var_0.x) & func_1(vec4<i32>(0i, 0i, 1i, 0i)), all(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x))))), !vec3<bool>(true, var_0.x, true));
    var var_2 = countOneBits(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.a.b.x, _wgslsmith_mult_i32(var_1.a.b.x, abs(var_1.a.b.x))), var_1.a.b.x, var_1.a.b.x));
    var var_3 = Struct_4(-545f, Struct_2(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a, 1u, 1u), vec4<u32>(u_input.b, 1u, 4294967295u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, 1u), vec4<u32>(79331u, u_input.c, 4294967295u, u_input.b))), max(abs(vec3<u32>(u_input.a, 71094u, 0u) << (vec3<u32>(u_input.a, u_input.b, u_input.c) % vec3<u32>(32u))), vec3<u32>(u_input.a | 4294967295u, ~u_input.b, _wgslsmith_add_u32(u_input.c, 82508u))), _wgslsmith_add_u32(4294967295u, ~u_input.c >> (4294967295u % 32u)), any(var_0.xy), Struct_1(any(select(vec4<bool>(true, false, false, var_1.a.a), vec4<bool>(true, false, false, var_1.b.x), var_1.a.e)), vec3<i32>(_wgslsmith_sub_i32(var_1.a.b.x, var_1.a.b.x), ~var_1.a.b.x, 0i), select(select(var_0.xy, vec2<bool>(false, var_0.x), false), !var_0.xy, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 20u)], var_1.a.d.x, 403f) + vec3<f32>(1000f, -356f, var_1.a.d.x)), !select(vec4<bool>(false, var_0.x, var_0.x, false), var_1.a.e, var_1.a.e))), var_1.b);
    global0 = var_3.b.e.d.x;
    var var_4 = Struct_3(Struct_1(all(vec4<bool>(u_input.c > u_input.a, !var_1.b.x, var_3.b.e.d.x != 415f, true)), vec3<i32>(abs(-var_1.a.b.x), _wgslsmith_clamp_i32(var_1.a.b.x, 0i, -2147483647i), var_1.a.b.x), !select(!var_1.a.e.wx, !vec2<bool>(true, var_3.c.x), var_3.c.x), _wgslsmith_f_op_vec3_f32(var_1.a.d - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_3.b.e.d * vec3<f32>(var_3.b.e.d.x, -1000f, 297f)), var_1.a.d))), var_3.b.e.e), var_1.a.e.xxx);
    var var_5 = -1589f;
    let var_6 = Struct_4(1804f, var_3.b, vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_3.b.e.b.x, var_3.b.e.b.x, 0i), 35884i) != var_1.a.b.x, all(vec4<bool>(select(true, var_4.a.e.x, var_0.x), true, false, var_3.c.x && true)), !(_wgslsmith_f_op_f32(-949f - global4[_wgslsmith_index_u32(91615u, 20u)]) < _wgslsmith_f_op_f32(abs(-936f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.a.d.x, 1419f, _wgslsmith_f_op_f32(ceil(-738f))));
}


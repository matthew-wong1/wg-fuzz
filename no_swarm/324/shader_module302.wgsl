struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(0u, true, vec4<i32>(-48452i, -29009i, 293i, 45497i)), Struct_2(9998u, true, vec4<i32>(24362i, -11079i, 1i, i32(-2147483648))), Struct_2(0u, true, vec4<i32>(0i, -1i, 35892i, 0i)), Struct_2(46584u, true, vec4<i32>(-19117i, i32(-2147483648), -54806i, -57127i)), Struct_2(4432u, false, vec4<i32>(-95383i, -7920i, -1i, -19158i)), Struct_2(20803u, true, vec4<i32>(-7949i, i32(-2147483648), 852i, i32(-2147483648))), Struct_2(45999u, false, vec4<i32>(1i, 48754i, -29467i, 22939i)), Struct_2(4294967295u, true, vec4<i32>(i32(-2147483648), 18644i, 36483i, 1i)), Struct_2(1u, false, vec4<i32>(14167i, 2147483647i, 1i, 2147483647i)), Struct_2(27411u, false, vec4<i32>(-25026i, -41873i, 0i, -41068i)), Struct_2(4294967295u, true, vec4<i32>(2147483647i, 1i, -4999i, 23514i)), Struct_2(27122u, true, vec4<i32>(4129i, -63526i, i32(-2147483648), 0i)), Struct_2(0u, false, vec4<i32>(-12563i, -35245i, -13693i, 31203i)), Struct_2(36942u, true, vec4<i32>(-1i, i32(-2147483648), 42833i, -13545i)), Struct_2(56248u, false, vec4<i32>(1i, -1i, -1i, 12596i)), Struct_2(4294967295u, true, vec4<i32>(73251i, 46587i, -1i, 2482i)), Struct_2(3631u, false, vec4<i32>(2147483647i, 872i, 15076i, i32(-2147483648))), Struct_2(31138u, false, vec4<i32>(0i, -19001i, 35295i, 13123i)), Struct_2(0u, false, vec4<i32>(i32(-2147483648), -1i, 2147483647i, 15267i)), Struct_2(0u, false, vec4<i32>(-1i, -1i, -5853i, -20145i)), Struct_2(4294967295u, true, vec4<i32>(-1i, 9111i, 1i, -13021i)));

var<private> global1: array<bool, 20>;

var<private> global2: array<bool, 3>;

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<bool, 3>();
    var var_0 = abs(-1i << (_wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(global3.x, 88350u, 40343u), vec3<u32>(35321u, 25600u, u_input.a))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(u_input.a, u_input.a, 53240u)), ~vec3<u32>(global3.x, u_input.a, 4294967295u))) % 32u));
    return global3.x;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> vec4<i32> {
    global0 = array<Struct_2, 21>();
    var var_0 = (~(~(-2147483647i)) & (17656i << (~func_3(arg_0) % 32u))) ^ ~_wgslsmith_div_i32(_wgslsmith_sub_i32(-37594i << (u_input.a % 32u), -1i), i32(-1i) * -arg_1);
    global2 = array<bool, 3>();
    let var_1 = vec3<i32>(arg_1, -17365i >> (~u_input.a % 32u), 1i) ^ _wgslsmith_sub_vec3_i32(reverseBits(countOneBits(-vec3<i32>(arg_1, arg_1, 2147483647i))), min(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(arg_1, arg_1, arg_1)), abs(vec3<i32>(arg_1, -1i, arg_1))), reverseBits(countOneBits(vec3<i32>(arg_1, -8845i, -25491i)))));
    global2 = array<bool, 3>();
    return -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, ~arg_1, var_1.x, ~(-2147483647i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(arg_1, arg_1, var_1.x, var_1.x), vec4<i32>(arg_1, 1i, var_1.x, var_1.x)), countOneBits(vec4<i32>(var_1.x, -21617i, 1i, 1i))) | vec4<i32>(arg_1, -44194i, var_1.x, -33926i << (u_input.a % 32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(global3.x, _wgslsmith_mult_u32(1u, ~58676u)), _wgslsmith_div_u32(min(u_input.a, ~0u), ~u_input.a) <= u_input.a, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1441f), -570f, true)), 1i, vec4<f32>(_wgslsmith_f_op_f32(trunc(-334f)), _wgslsmith_f_op_f32(-1332f + _wgslsmith_f_op_f32(2283f * 192f)), _wgslsmith_f_op_f32(ceil(-3279f)), -1000f), global2[_wgslsmith_index_u32(abs(global3.x), 3u)]));
    let var_1 = _wgslsmith_sub_u32(4294967295u, ~abs(u_input.a));
    global0 = array<Struct_2, 21>();
    global2 = array<bool, 3>();
    var_0 = global0[_wgslsmith_index_u32(~select(~_wgslsmith_sub_u32(var_1 >> (global3.x % 32u), max(4294967295u, var_0.a)), var_0.a, all(vec4<bool>(true, global1[_wgslsmith_index_u32(global3.x, 20u)] && true, !var_0.b, true))), 21u)];
    return Struct_2(global3.x, 22131i > ~var_0.c.x, var_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f) * arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x + 1108f))) + arg_1.b.x)) - arg_1.b.x);
    global3 = ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 10042u, 0u, arg_1.a), vec4<u32>(arg_1.a, arg_0.a, 1u, arg_0.a)), countOneBits(4294967295u), 20560u), countOneBits(vec3<u32>(u_input.a, 23611u, 4294967295u))));
    var var_1 = 1i;
    var var_2 = select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.a, 20u)], true)), !(!select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a, 20u)], true, true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 20u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 3u)], true, arg_0.b), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), !select(vec3<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 3u)])), select(global1[_wgslsmith_index_u32(arg_3.x, 20u)], true, true), global1[_wgslsmith_index_u32(select(1u, global3.x, true), 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_3.x, 20u)] && false, true, !global1[_wgslsmith_index_u32(1u, 20u)]), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 3u)], false), vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], arg_0.b), vec3<bool>(arg_0.b, false, global2[_wgslsmith_index_u32(arg_0.a, 3u)]))));
    global2 = array<bool, 3>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_2.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yz - arg_1.b.ww) - arg_1.b.zy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-1320f - -640f))), ~abs(vec4<i32>(-arg_0.c.x, _wgslsmith_mod_i32(arg_0.c.x, -20666i), ~0i, reverseBits(arg_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 20u)], true, any(!select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 3u)], true, global2[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 3u)], false), vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], false, global1[_wgslsmith_index_u32(global3.x, 20u)])), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global3.x, 20u)], true), true)), global1[_wgslsmith_index_u32(4294967295u, 20u)]);
    global0 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = func_4(func_1(), Struct_1(u_input.a, vec4<f32>(1985f, _wgslsmith_f_op_f32(-629f * _wgslsmith_f_op_f32(max(-1062f, 363f))), -410f, -1074f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(894f, -1000f, -1000f), vec3<f32>(998f, 1103f, -178f), vec3<bool>(false, false, true))), vec3<f32>(434f, 778f, -1050f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, 190f, 881f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -316f, 178f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, -1170f, 485f))))), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global3.x ^ global3.x, 0u), u_input.a, 26338u), ~min(~37781u, func_3(729f))));
}


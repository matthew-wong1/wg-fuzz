struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(true, Struct_1(89958u, vec2<u32>(100187u, 1u), 1u, 4294967295u)), Struct_2(true, Struct_1(1u, vec2<u32>(58027u, 63705u), 9194u, 9721u)), Struct_2(true, Struct_1(41942u, vec2<u32>(28457u, 31639u), 31856u, 1u)), Struct_2(false, Struct_1(32640u, vec2<u32>(11369u, 1u), 75100u, 55389u)), Struct_2(false, Struct_1(27753u, vec2<u32>(1u, 3744u), 4294967295u, 25386u)), Struct_2(true, Struct_1(42394u, vec2<u32>(11494u, 4294967295u), 0u, 0u)), Struct_2(true, Struct_1(35770u, vec2<u32>(569u, 36960u), 16815u, 1125u)), Struct_2(true, Struct_1(1u, vec2<u32>(16562u, 12705u), 10292u, 0u)), Struct_2(false, Struct_1(0u, vec2<u32>(25509u, 1u), 0u, 1u)), Struct_2(false, Struct_1(4294967295u, vec2<u32>(0u, 40850u), 1u, 1u)), Struct_2(true, Struct_1(10486u, vec2<u32>(23603u, 841u), 61875u, 1u)), Struct_2(false, Struct_1(22273u, vec2<u32>(0u, 1u), 59322u, 46000u)), Struct_2(true, Struct_1(0u, vec2<u32>(41240u, 1u), 4294967295u, 28256u)), Struct_2(true, Struct_1(31058u, vec2<u32>(4294967295u, 0u), 7676u, 81340u)), Struct_2(true, Struct_1(36249u, vec2<u32>(4294967295u, 1u), 1u, 81527u)), Struct_2(true, Struct_1(49671u, vec2<u32>(25804u, 23903u), 0u, 39406u)), Struct_2(false, Struct_1(1u, vec2<u32>(0u, 2717u), 0u, 31311u)), Struct_2(false, Struct_1(1u, vec2<u32>(0u, 17353u), 22737u, 2290u)), Struct_2(true, Struct_1(26712u, vec2<u32>(1u, 24870u), 24173u, 1u)), Struct_2(true, Struct_1(4294967295u, vec2<u32>(0u, 33235u), 3849u, 4294967295u)), Struct_2(true, Struct_1(9534u, vec2<u32>(55559u, 49765u), 0u, 4294967295u)), Struct_2(true, Struct_1(4294967295u, vec2<u32>(3270u, 9769u), 1216u, 4294967295u)), Struct_2(true, Struct_1(471u, vec2<u32>(74676u, 0u), 29857u, 9382u)), Struct_2(false, Struct_1(4294967295u, vec2<u32>(1u, 4294967295u), 4294967295u, 41407u)), Struct_2(false, Struct_1(1394u, vec2<u32>(27286u, 1u), 4294967295u, 1u)), Struct_2(false, Struct_1(25151u, vec2<u32>(1u, 1u), 4294967295u, 25757u)), Struct_2(true, Struct_1(40980u, vec2<u32>(4294967295u, 37925u), 67869u, 4294967295u)), Struct_2(false, Struct_1(22802u, vec2<u32>(0u, 13742u), 8581u, 4294967295u)), Struct_2(true, Struct_1(0u, vec2<u32>(1u, 4294967295u), 25436u, 31172u)), Struct_2(false, Struct_1(29977u, vec2<u32>(88713u, 76816u), 0u, 62232u)), Struct_2(false, Struct_1(0u, vec2<u32>(4294967295u, 18751u), 1u, 4294967295u)), Struct_2(true, Struct_1(4294967295u, vec2<u32>(11189u, 1u), 13906u, 1u)));

var<private> global2: vec3<f32>;

var<private> global3: f32 = 407f;

var<private> global4: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(4294967295u, 22737u, 4294967295u, 21643u), vec4<u32>(56446u, 1u, 0u, 4791u), vec4<u32>(70300u, 52242u, 0u, 75496u), vec4<u32>(0u, 0u, 74824u, 4294967295u), vec4<u32>(0u, 0u, 14681u, 43715u), vec4<u32>(75433u, 87336u, 0u, 1u), vec4<u32>(35524u, 22174u, 15310u, 23964u), vec4<u32>(0u, 29539u, 1u, 30370u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = min(min(vec2<i32>(~(i32(-1i) * -1i), firstLeadingBit(u_input.a)), ~vec2<i32>(u_input.c, u_input.a & 2147483647i)), -vec2<i32>(firstLeadingBit(u_input.a), abs(~u_input.c)));
    global3 = _wgslsmith_f_op_f32(-arg_1.d.x);
    var var_1 = Struct_3(true, global2.x, !select(!arg_1.c, vec4<bool>(any(arg_1.c.ww), false, true, arg_1.c.x), arg_1.c));
    var_1 = Struct_3(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * 308f) + _wgslsmith_f_op_f32(trunc(arg_1.d.x))), !select(select(!arg_1.c, select(arg_1.c, vec4<bool>(var_1.a, true, global0.a, arg_1.c.x), arg_0.a), all(var_1.c)), vec4<bool>(!arg_1.c.x, global2.x >= arg_1.d.x, true, var_0.x <= 16629i), all(arg_1.c.xwx)));
    var_1 = Struct_3(!select(_wgslsmith_add_i32(u_input.a, var_0.x) != var_0.x, true, true != !arg_1.c.x), _wgslsmith_f_op_f32(500f * _wgslsmith_f_op_f32(845f - global2.x)), vec4<bool>(!arg_1.c.x, var_0.x == -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -1i, -33988i), vec4<i32>(49599i, -17646i, u_input.a, 50682i)), true, any(!select(vec4<bool>(arg_1.c.x, true, arg_0.a, true), arg_1.c, vec4<bool>(arg_0.a, global0.a, true, true)))));
    return !vec3<bool>(!any(arg_1.c), global0.a, arg_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = global2.x;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1545f, global2.x, -1630f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(335f, -1000f, arg_0.b)), vec3<f32>(-1000f, -145f, _wgslsmith_f_op_f32(f32(-1f) * -527f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(154f, global2.x, -565f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-520f, global2.x, 512f) - vec3<f32>(-182f, -379f, -1555f))) + vec3<f32>(267f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(step(-1000f, global2.x))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + arg_0.b), _wgslsmith_f_op_f32(step(-1101f, arg_0.b)));
    var var_2 = global0.b.c;
    var var_3 = vec3<u32>(23724u, (u_input.b << (~(~u_input.b) % 32u)) & 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, global0.b.b.x)), _wgslsmith_mod_vec2_u32(~firstTrailingBit(global0.b.b), global0.b.b)));
    return any(vec3<bool>(true, !any(vec3<bool>(arg_1.x, arg_0.c.x, true)), all(vec2<bool>(false == global0.a, false))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    return Struct_3(!func_4(Struct_3(any(vec3<bool>(false, false, false)), arg_0.x, vec4<bool>(true, global0.a, global0.a, false)), func_3(global1[_wgslsmith_index_u32(~23823u, 32u)], Struct_4(41450u, Struct_1(56363u, vec2<u32>(u_input.b, 1043u), 32927u, 20515u), vec4<bool>(false, false, global0.a, true), vec4<f32>(global2.x, -596f, arg_0.x, arg_0.x))), 0i, Struct_1(reverseBits(u_input.b), vec2<u32>(4294967295u, u_input.b), 17151u, ~global0.b.d)), global2.x, select(vec4<bool>(all(!vec3<bool>(global0.a, global0.a, false)), func_4(Struct_3(global0.a, arg_0.x, vec4<bool>(global0.a, false, false, true)), vec3<bool>(false, true, global0.a), -16681i, global0.b), global0.a, true), vec4<bool>(false, global0.a, false, all(!vec4<bool>(global0.a, false, global0.a, true))), vec4<bool>(!global0.a, global0.a, !any(vec3<bool>(global0.a, global0.a, global0.a)), global0.a)));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = u_input.b;
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(628f, arg_1.b, 1369f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, global2.x, global2.x), vec3<f32>(arg_1.b, arg_1.b, -1149f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, global2.x, -658f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -283f, 178f) + vec3<f32>(1000f, global2.x, arg_1.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.b, 411f, -438f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-772f, global2.x, 1000f) - vec3<f32>(arg_1.b, global2.x, 218f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, 456f, arg_1.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, global2.x, arg_1.b) - vec3<f32>(global2.x, arg_1.b, arg_1.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-869f, 2193f, -1727f), vec3<f32>(892f, -1142f, global2.x)))))), true));
    global0 = global1[_wgslsmith_index_u32(var_0, 32u)];
    var var_1 = Struct_4(global0.b.d, global0.b, func_2(vec2<f32>(global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(276f)), -878f, any(arg_1.c))))).c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), -837f), _wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(arg_1.b - 101f))), _wgslsmith_f_op_f32(-global2.x))));
    global1 = array<Struct_2, 32>();
    return _wgslsmith_sub_vec4_u32(vec4<u32>(~firstTrailingBit(var_1.a << (1379u % 32u)), var_0, ~(~global0.b.a), var_1.a ^ 100508u), ~(~(~(~vec4<u32>(var_0, 28552u, 0u, var_1.b.d)))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(-2147483647i), firstLeadingBit(u_input.a));
    let var_1 = min(_wgslsmith_dot_vec4_u32(~global4[_wgslsmith_index_u32(global0.b.c, 8u)] ^ global4[_wgslsmith_index_u32(u_input.b, 8u)], func_5(-(~2147483647i), func_2(vec2<f32>(global2.x, -1000f)), global1[_wgslsmith_index_u32(global0.b.b.x, 32u)])), 4294967295u);
    var var_2 = _wgslsmith_div_vec2_i32(-vec2<i32>(-max(u_input.c, -1i), u_input.c), vec2<i32>(-18808i, ~u_input.a));
    let var_3 = _wgslsmith_mod_u32(~(~_wgslsmith_div_u32(25533u, 1u)), (_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b.d, 4294967295u), ~vec2<u32>(44347u, u_input.b)) ^ abs(_wgslsmith_sub_u32(u_input.b, var_1))) | select(~37131u, 10729u, all(!vec2<bool>(global0.a, global0.a))));
    var_0 = _wgslsmith_mod_i32(~(countOneBits(51770i) ^ _wgslsmith_mult_i32(0i, var_2.x)), 1i);
    return func_2(_wgslsmith_f_op_vec2_f32(-global2.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(-1055f, global2.x, true));
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = vec2<bool>(true, true);
    var var_3 = func_1();
    global1 = array<Struct_2, 32>();
    global0 = Struct_2(!(all(var_3.c.www) == (u_input.c >= u_input.a)), Struct_1(~(~_wgslsmith_add_u32(32579u, 1u)), select(vec2<u32>(~13472u, _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(63709u, 8u)], vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), ~global0.b.b, true), 4294967295u, ~_wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(u_input.b, global0.b.d))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -1864f, var_3.b);
    let var_4 = Struct_1(u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(61893u, u_input.b) ^ global0.b.b, ~_wgslsmith_div_vec2_u32(global0.b.b, global0.b.b)), global0.b.b.x, firstLeadingBit(firstLeadingBit(1u | _wgslsmith_sub_u32(global0.b.b.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(func_2(_wgslsmith_f_op_vec2_f32(-global2.zx)).b, -1876f, -1463f, _wgslsmith_f_op_f32(-936f - _wgslsmith_f_op_f32(sign(-845f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1888f, _wgslsmith_f_op_f32(floor(-561f))))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(~u_input.a, ~u_input.c, reverseBits(u_input.c), -1i & u_input.a)), -(_wgslsmith_mod_vec4_i32(vec4<i32>(50512i, u_input.a, 2147483647i, 24561i), vec4<i32>(2147483647i, -6202i, 0i, -1i)) ^ (vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, 3208i, -1i, u_input.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 2158f, var_3.b, var_3.b), vec4<f32>(var_3.b, var_3.b, var_3.b, global2.x), false))))), abs(~0u));
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 27>;

var<private> global2: vec4<u32> = vec4<u32>(48339u, 36162u, 19632u, 4294967295u);

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    var var_0 = global0.c.e.x;
    global1 = array<Struct_1, 27>();
    let var_1 = Struct_2(global0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(select(arg_0.x, i32(-1i) * -1403i, true), countOneBits(_wgslsmith_clamp_i32(global3.x, u_input.a.x, 0i))), vec2<i32>(i32(-1i) * -u_input.b, -1i)), global1[_wgslsmith_index_u32(~12245u, 27u)], -1i);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(457f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x - _wgslsmith_f_op_f32(global0.a.a.x + global0.c.a.x)))), global0.a.a.x, !(true | (false & (global0.c.b.x < var_1.d)))));
    return abs(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(var_1.c.e.x, global2.x)), firstLeadingBit(vec2<u32>(53341u, ~u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<f32> {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.d.yzz, -(global0.c.d.wyz & vec3<i32>(48590i, -5329i, arg_1.b.x))), -(~(-1i)), min(1i, max(~arg_0.b.x, _wgslsmith_dot_vec2_i32(~global0.b, global0.b >> (arg_1.e % vec2<u32>(32u))))));
    global3 = _wgslsmith_mod_vec2_i32(var_0.xy, var_0.xz);
    var var_1 = ~(~(_wgslsmith_clamp_vec3_u32(global2.xyy, _wgslsmith_clamp_vec3_u32(global2.zwx, global2.xwx, vec3<u32>(79924u, arg_2.x, 1u)), firstTrailingBit(vec3<u32>(0u, 24083u, 4294967295u))) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.e.x, arg_1.e.x, 60916u), vec4<u32>(77164u, 13148u, u_input.c, arg_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.e.x, 4294967295u, arg_0.e.x, 23571u), vec4<u32>(52683u, 1u, 6663u, arg_1.e.x)), 44670u | arg_1.e.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.a - arg_0.a)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = 6582u >= (4294967295u | _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, global2.x, global0.a.e.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 6050u, 25911u, global2.x), vec4<u32>(19601u, global2.x, global0.c.e.x, u_input.c), vec4<u32>(12933u, 32402u, 1u, global2.x)) << ((vec4<u32>(4294967295u, 30141u, 1u, 22494u) | vec4<u32>(global0.a.e.x, 1159u, global0.c.e.x, 100128u)) % vec4<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(global0.c.a, vec4<i32>(_wgslsmith_sub_i32(3372i, 60940i), -u_input.b, ~u_input.a.x, _wgslsmith_mod_i32(global3.x, -2147483647i)), -(~global3.x), vec4<i32>(firstTrailingBit(0i), u_input.e, min(global0.a.b.x, 12115i), -u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(27981u, global2.x), firstLeadingBit(global2.yz))), global1[_wgslsmith_index_u32(global0.c.e.x, 27u)], func_3(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, 0i), vec2<i32>(global0.a.b.x, u_input.a.x))), vec3<bool>((4294967295u > u_input.c) && all(vec4<bool>(var_0, true, true, false)), false, ~u_input.c > _wgslsmith_add_u32(global0.a.e.x, global2.x)))), global0.a.b, ~global0.b.x, abs(select(vec4<i32>(1i, global3.x, u_input.e << (1u % 32u), -32151i), countOneBits(vec4<i32>(1i, 2147483647i, u_input.e, global0.a.c)), var_0)), global2.yx);
    var var_2 = ~u_input.c;
    let var_3 = !(!(!arg_0.x));
    var_2 = 4294967295u;
    return Struct_2(var_1, _wgslsmith_sub_vec2_i32(vec2<i32>(-32651i, -1i), ~select(var_1.b.wz >> (global0.c.e % vec2<u32>(32u)), global0.b, arg_0.zx)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), select(var_1.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.x, 0i, -28365i, global0.d) | vec4<i32>(var_1.b.x, 0i, var_1.d.x, u_input.d), var_1.b | global0.a.b, global0.c.d), !select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(true, var_3, false, var_0), vec4<bool>(arg_0.x, var_0, var_3, false))), -1i, ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global3.x, global0.a.b.x, 2147483647i), global0.c.d), var_1.b), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~reverseBits(vec2<u32>(var_1.e.x, global2.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -6706i), vec2<i32>(-_wgslsmith_add_i32(var_1.d.x, 0i), -var_1.d.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = -(~arg_0.d >> (_wgslsmith_add_u32(~14690u, global2.x) % 32u));
    let var_1 = countOneBits(vec2<u32>(~global2.x, global2.x & ~(~31899u)));
    let var_2 = 566f;
    global2 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(1u, global0.a.e.x, 4294967295u, 4687u))), vec4<u32>(arg_1.x, select(abs(global2.x), global0.a.e.x, arg_2), 30349u, _wgslsmith_mod_u32(~77947u, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 4294967295u, 4294967295u, 20755u), ~vec4<u32>(0u, 28878u, var_1.x, u_input.c), vec4<bool>(false, arg_2, arg_2, arg_2)), vec4<u32>(global2.x, global0.c.e.x | global0.a.e.x, arg_0.c.e.x, arg_1.x), firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 49838u, 0u, u_input.c)))), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.e.x, 1u, 1574u, 81726u), vec4<u32>(65133u, 21269u, 4294967295u, u_input.c)), ~vec4<u32>(4294967295u, 44252u, 0u, 14681u)))));
    let var_3 = func_2(!select(vec3<bool>(arg_1.x != 60058u, false, false), vec3<bool>(true, !arg_2, !arg_2), vec3<bool>(true, any(vec3<bool>(arg_2, arg_2, true)), false)));
    return func_2(vec3<bool>(!(arg_0.a.e.x >= ~0u), true, any(!select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(true, false)))));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = func_5(func_2(vec3<bool>(true, true, _wgslsmith_dot_vec3_i32(global0.a.b.zzy, vec3<i32>(global0.c.c, 50696i, u_input.d)) == firstLeadingBit(global3.x))), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(14939u, 34568u), global0.c.e), ~4294967295u)), _wgslsmith_div_vec2_u32(global2.yz, firstLeadingBit(vec2<u32>(0u, 10877u)))), !any(vec4<bool>(true, true, true, true)));
    var var_1 = var_0;
    var_1 = func_5(func_5(func_5(Struct_2(func_5(Struct_2(var_1.c, vec2<i32>(1i, var_1.c.c), var_0.c, -1i), vec2<u32>(1411u, u_input.c), true).c, ~var_1.a.d.wx, Struct_1(vec2<f32>(global0.c.a.x, var_0.a.a.x), global0.c.d, -11739i, vec4<i32>(1i, 2147483647i, global0.b.x, var_1.d), vec2<u32>(4294967295u, arg_0)), _wgslsmith_sub_i32(1i, 21448i)), var_0.a.e, true), vec2<u32>(firstTrailingBit(firstTrailingBit(4294967295u)), var_0.a.e.x), false), vec2<u32>(~(func_3(var_0.b).x ^ ~u_input.c), _wgslsmith_dot_vec2_u32(~(~global0.c.e), func_5(func_5(Struct_2(Struct_1(vec2<f32>(var_0.a.a.x, -1910f), var_1.c.d, -2147483647i, vec4<i32>(-16423i, u_input.b, global3.x, var_0.a.c), vec2<u32>(arg_0, 4294967295u)), vec2<i32>(6061i, -11323i), Struct_1(vec2<f32>(var_1.a.a.x, global0.c.a.x), vec4<i32>(-14346i, u_input.e, u_input.e, global3.x), -17522i, global0.a.b, vec2<u32>(4294967295u, global0.c.e.x)), 2147483647i), var_1.c.e, false), global2.yw, any(vec4<bool>(false, true, false, false))).c.e)), any(vec3<bool>(_wgslsmith_sub_i32(-625i, var_1.c.c) <= (var_0.a.b.x >> (75309u % 32u)), false, true)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a.x, 1344f, 2104f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.a.x, global0.c.a.x, -456f), vec3<f32>(var_0.c.a.x, -773f, -322f), vec3<bool>(false, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(abs(684f)), _wgslsmith_f_op_f32(-var_0.c.a.x)))));
    return ~global0.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.a * vec2<f32>(global0.a.a.x, -832f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, -762f)))), countOneBits(countOneBits(vec4<i32>(-2147483647i, global0.c.c, global0.c.d.x, global3.x))), _wgslsmith_dot_vec4_i32(reverseBits(global0.a.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 0i, -6423i, 1i), global0.a.b, vec4<i32>(1i, u_input.e, 0i, -2147483647i))) >> (15265u % 32u), reverseBits(-global0.c.b) << (reverseBits(vec4<u32>(53814u, 0u, 46230u, u_input.c)) % vec4<u32>(32u)), (~global2.yx << ((global0.a.e << (global0.a.e % vec2<u32>(32u))) % vec2<u32>(32u))) >> (func_1(_wgslsmith_sub_u32(17980u, global2.x)) % vec2<u32>(32u))), global0.a.d.zz >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.e == global3.x), vec3<bool>(true, true, 1470f == global0.c.a.x))).a, global0.b.x);
    let var_1 = true;
    global3 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-global0.a.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-global0.c.a.x), -1000f)))));
    var var_4 = ~vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(-u_input.b, firstTrailingBit(-1i))), -30399i & abs(~u_input.d));
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-646f)))), 541f, var_2) * vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(exp2(var_2)), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0.c.a.x, _wgslsmith_div_f32(648f, _wgslsmith_f_op_f32(-global0.a.a.x))), global0.a.b);
}


struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, true, true, true, false, false, true, true, false, false, true, true);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-678f, 54650u, 0u), Struct_1(-1000f, 92819u, 1u), Struct_1(146f, 0u, 1u), Struct_1(-1126f, 1u, 36308u), Struct_1(1000f, 1u, 4294967295u), Struct_1(-924f, 4294967295u, 56063u), Struct_1(495f, 4294967295u, 28905u), Struct_1(-1445f, 31480u, 0u), Struct_1(-1236f, 7743u, 20282u), Struct_1(2087f, 50725u, 0u), Struct_1(494f, 4294967295u, 56972u), Struct_1(520f, 47814u, 4294967295u));

var<private> global2: array<vec4<f32>, 18>;

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> i32 {
    global3 = array<Struct_1, 2>();
    var var_0 = 2147483647i;
    global3 = array<Struct_1, 2>();
    let var_1 = arg_3.e;
    global2 = array<vec4<f32>, 18>();
    return -arg_3.b;
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_4(1i, abs(-30545i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f), 1230f))), max(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, -2810i), abs(vec3<i32>(2147483647i, 8274i, -1i))), vec3<i32>(i32(-1i) * -40632i, -6007i, -3670i), vec3<i32>(0i << (0u % 32u), -u_input.b, -u_input.c)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, u_input.c, u_input.c)), select(vec3<i32>(u_input.c, 0i, 18029i), vec3<i32>(u_input.c, u_input.c, u_input.b), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(28722u, 13u)], true)), firstTrailingBit(vec3<i32>(u_input.c, u_input.b, 2147483647i))), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 22580i), vec3<i32>(1709i, -1i, -19962i), vec3<i32>(u_input.a, 696i, u_input.c))))), Struct_3(_wgslsmith_div_vec2_i32(min(vec2<i32>(11432i, 2147483647i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(56889i, u_input.a), vec2<i32>(u_input.b, u_input.b))), ~(-vec2<i32>(-29407i, 2147483647i))), 31651u, ~_wgslsmith_mult_u32(firstTrailingBit(13053u), ~51059u)));
    let var_1 = select(var_0.b, -45572i, !all(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.e.b, 13u)], global0[_wgslsmith_index_u32(var_0.e.b, 13u)], false, global0[_wgslsmith_index_u32(44721u, 13u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0.e.b, 13u)], true), false)));
    let var_2 = Struct_5(!all(vec3<bool>(select(false, true, false), any(vec3<bool>(global0[_wgslsmith_index_u32(52566u, 13u)], false, true)), false)), _wgslsmith_sub_vec4_i32(firstTrailingBit(-(vec4<i32>(9218i, var_0.d.x, -40543i, -2147483647i) << (vec4<u32>(var_0.e.c, 993u, var_0.e.c, var_0.e.b) % vec4<u32>(32u)))), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, var_0.a, 10669i, u_input.a), vec4<i32>(10130i, -24936i, var_0.e.a.x, 2147483647i), vec4<i32>(-26004i, var_1, -2147483647i, var_1)), -vec4<i32>(u_input.a, -2147483647i, 11387i, 9173i), vec4<bool>(global0[_wgslsmith_index_u32(80486u, 13u)], true, global0[_wgslsmith_index_u32(4294967295u, 13u)], false))), abs(_wgslsmith_mod_u32(41173u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.b, 26328u, var_0.e.b, var_0.e.c), vec4<u32>(70192u, 51144u, var_0.e.c, var_0.e.c)))) <= ~1u);
    let var_3 = Struct_4(-29938i, var_2.b.x, _wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1236f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(319f, 2114f))), !(!global0[_wgslsmith_index_u32(firstTrailingBit(33599u), 13u)]))), ~_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a, ~0i, ~2147483647i), vec3<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(var_1, u_input.c, -2147483647i, var_1)), select(var_2.b.x, -27684i, global0[_wgslsmith_index_u32(38263u, 13u)]))), Struct_3(var_0.d.yz, ~(~(var_0.e.b | var_0.e.c)), ~(~(~30143u))));
    let var_4 = global0[_wgslsmith_index_u32(~var_0.e.b, 13u)];
    return !vec4<bool>(!global0[_wgslsmith_index_u32(1u, 13u)], false, true, all(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_3.e.c, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(46373u, 13u)], global0[_wgslsmith_index_u32(27658u, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(var_3.e.b, 13u)], false, global0[_wgslsmith_index_u32(var_3.e.c, 13u)])), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, true), !vec3<bool>(var_2.a, false, false))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(28003u, _wgslsmith_add_u32(0u, firstLeadingBit(39998u)), arg_1.b, _wgslsmith_clamp_u32(1u, 1u, 1u) & 34661u), vec4<u32>(arg_1.b, 1673u, arg_1.c << ((arg_1.b << (arg_1.b % 32u)) % 32u), arg_1.b)), ~vec4<u32>(~arg_1.b, ~13744u, _wgslsmith_add_u32(29987u, 67861u), arg_1.b) | ~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.b, 49909u, arg_1.c, arg_1.c), vec4<u32>(27909u, 31660u, 58487u, 0u)));
    let var_1 = Struct_5(13804i >= _wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(1i, 1i)), (firstTrailingBit(-vec4<i32>(-2147483647i, u_input.c, -504i, u_input.b)) >> ((~var_0 << (vec4<u32>(12708u, 1u, var_0.x, 51165u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (~_wgslsmith_mod_vec4_u32(~var_0, vec4<u32>(57559u, 27972u, 11690u, var_0.x)) % vec4<u32>(32u)), !any(vec4<bool>(arg_2.x, true, global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_2.x)) | any(!func_3(arg_1.a)));
    let var_2 = select(vec4<u32>(~1u, _wgslsmith_clamp_u32(~(arg_1.b | 90839u), _wgslsmith_div_u32(~arg_1.b, arg_1.b), 1u), _wgslsmith_div_u32(~_wgslsmith_div_u32(arg_1.b, 14621u), max(~36856u, _wgslsmith_add_u32(0u, arg_1.b))), ~arg_1.c), vec4<u32>(reverseBits(~arg_1.c), max(1u << (_wgslsmith_dot_vec3_u32(var_0.yzy, vec3<u32>(var_0.x, 0u, 57804u)) % 32u), 24030u), ~1u, ~0u), select(func_3(-796f), select(vec4<bool>(var_1.c, true, arg_1.c <= 30u, 1u <= var_0.x), vec4<bool>(arg_0.x, false & arg_0.x, false, true | arg_2.x), arg_0.x), vec4<bool>(any(vec2<bool>(true, var_1.c)), all(select(arg_0, vec2<bool>(true, arg_0.x), arg_0)), global0[_wgslsmith_index_u32(4294967295u, 13u)], select(global0[_wgslsmith_index_u32(~41550u, 13u)], !arg_2.x, arg_2.x))));
    global1 = array<Struct_1, 12>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a, -1422f, 1115f))), _wgslsmith_div_vec3_f32(vec3<f32>(2116f, arg_1.a, arg_1.a), vec3<f32>(-212f, arg_1.a, 207f))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + 603f), -1479f, _wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)))))));
    return Struct_4(countOneBits(~(-1i)), 13155i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-447f)), 1000f)), -333f)), -var_1.b.xzy << (var_0.zwy % vec3<u32>(32u)), Struct_3(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(var_1.b.x, var_1.b.x)), var_1.b.xz), _wgslsmith_clamp_u32(~1u, 8515u, ~(~arg_1.b)), ~(_wgslsmith_clamp_u32(1u, 34585u, 4294967295u) ^ var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 2>();
    global1 = array<Struct_1, 12>();
    let var_0 = vec3<i32>(countOneBits(_wgslsmith_clamp_i32(2147483647i | u_input.c, -39730i, u_input.c)), firstTrailingBit(u_input.c), func_1(~abs(vec4<u32>(5853u, 32915u, 1u, 3722u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(22079u, 1u), 13u)], -1i, Struct_4(u_input.a, u_input.a, _wgslsmith_f_op_f32(1252f * 593f), ~vec3<i32>(u_input.c, 44384i, u_input.b), Struct_3(vec2<i32>(-3855i, u_input.c), 4294967295u, 4294967295u)))) | vec3<i32>(~func_1(~vec4<u32>(4294967295u, 4294967295u, 72686u, 4294967295u), global0[_wgslsmith_index_u32(~11514u, 13u)], firstTrailingBit(0i), func_2(vec2<bool>(true, true), Struct_1(846f, 5061u, 0u), vec3<bool>(global0[_wgslsmith_index_u32(51124u, 13u)], global0[_wgslsmith_index_u32(27983u, 13u)], false))), u_input.c, u_input.a);
    let var_1 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, firstLeadingBit(4294967295u), 1u), abs(vec3<u32>(1u, 1u, 1u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))) ^ vec3<u32>(~(~4294967295u), ~select(~20014u, func_2(vec2<bool>(false, false), global1[_wgslsmith_index_u32(45116u, 12u)], vec3<bool>(false, true, true)).e.c, false), ~(~38009u));
    let var_2 = func_2(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(15910u, 13u)]), global0[_wgslsmith_index_u32(var_1.x, 13u)]))), Struct_1(_wgslsmith_f_op_f32(2461f - -1299f), 2766u, ~var_1.x), func_3(1629f).wyz).c;
    global1 = array<Struct_1, 12>();
    var var_3 = vec4<bool>(!select(true, true, all(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(44880u, 13u)], false))), ~var_1.x >= abs(0u), false, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -131f, 1628f)))))), abs(var_1.xx), (~var_0.x | 52879i) | -u_input.b, vec4<f32>(-193f, _wgslsmith_f_op_f32(-var_2), -1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2060f))));
}


struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 26> = array<Struct_5, 26>(Struct_5(vec3<i32>(2147483647i, 87773i, -1i)), Struct_5(vec3<i32>(-28447i, -42808i, 4651i)), Struct_5(vec3<i32>(0i, i32(-2147483648), 1i)), Struct_5(vec3<i32>(-1i, -1i, 0i)), Struct_5(vec3<i32>(3767i, i32(-2147483648), i32(-2147483648))), Struct_5(vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_5(vec3<i32>(20654i, 2147483647i, 1i)), Struct_5(vec3<i32>(-1i, -42295i, 39485i)), Struct_5(vec3<i32>(10911i, 0i, -17451i)), Struct_5(vec3<i32>(1i, 1i, i32(-2147483648))), Struct_5(vec3<i32>(-73623i, -20407i, 13055i)), Struct_5(vec3<i32>(-4951i, i32(-2147483648), -1i)), Struct_5(vec3<i32>(0i, -31908i, -1i)), Struct_5(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_5(vec3<i32>(-1i, 0i, -12232i)), Struct_5(vec3<i32>(1i, 54584i, 2147483647i)), Struct_5(vec3<i32>(-12728i, -21586i, 2147483647i)), Struct_5(vec3<i32>(-14686i, -1i, -1i)), Struct_5(vec3<i32>(i32(-2147483648), -51042i, -1862i)), Struct_5(vec3<i32>(-25387i, -28686i, 1i)), Struct_5(vec3<i32>(-27766i, -1i, 0i)), Struct_5(vec3<i32>(-1i, -26174i, 1i)), Struct_5(vec3<i32>(0i, 15876i, 2147483647i)), Struct_5(vec3<i32>(47963i, -37374i, -26461i)), Struct_5(vec3<i32>(1i, -16231i, 2147483647i)), Struct_5(vec3<i32>(-2914i, i32(-2147483648), -1i)));

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(1u, 4294967295u, 36234u), vec3<u32>(4294967295u, 4294967295u, 14065u), vec3<u32>(73195u, 57569u, 12788u), vec3<u32>(0u, 16924u, 32832u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 75230u, 18092u), vec3<u32>(26921u, 1u, 85929u), vec3<u32>(0u, 1u, 58997u), vec3<u32>(35320u, 11151u, 36689u), vec3<u32>(56568u, 4294967295u, 3577u), vec3<u32>(1u, 0u, 0u));

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: u32) -> i32 {
    global0 = array<Struct_5, 26>();
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(22828u, 0u), arg_3, abs(32574u), ~arg_1);
    let var_1 = -_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, 55784i, -41862i, arg_0.x), ~vec4<i32>(u_input.b.x, 2147483647i, 2246i, -2689i)), vec4<i32>(-62550i >> (var_0.x % 32u), -u_input.a.x, -arg_0.x, 2147483647i), vec4<bool>(global3.x, true, all(global3.zxy), true)), vec4<i32>(reverseBits(_wgslsmith_add_i32(u_input.b.x, 18738i)), i32(-1i) * -1i, _wgslsmith_sub_i32(1i, u_input.b.x), 0i));
    var var_2 = Struct_2(1948i);
    let var_3 = -(~(~1i >> (arg_1 % 32u)));
    return countOneBits(-(~(~(-22563i))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_1(true);
    let var_1 = arg_2;
    let var_2 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 10659u))) | ~reverseBits(1u), Struct_2(u_input.a.x), abs(global2[_wgslsmith_index_u32(~4294967295u, 11u)]), arg_2.a, 1792f);
    var var_3 = any(vec3<bool>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -14211i), vec2<i32>(31680i, arg_1.x)), _wgslsmith_clamp_i32(0i, 2539i, -20865i)) >= abs(1i), false, !(_wgslsmith_add_u32(var_2.a, 1u) > countOneBits(var_2.a))));
    var var_4 = _wgslsmith_sub_i32(var_2.b.a, arg_1.x);
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.e, var_2.e, var_2.e), vec3<f32>(791f, var_2.e, 1739f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2128f, var_2.e, var_2.e))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e, -985f, var_2.e)))))), var_2.b);
}

fn func_1() -> Struct_3 {
    var var_0 = ~_wgslsmith_div_u32(abs(~_wgslsmith_add_u32(1u, 60260u)), ~1u);
    var var_1 = Struct_2(countOneBits(1i & (_wgslsmith_mult_i32(u_input.a.x, u_input.b.x) ^ -u_input.a.x)));
    var_1 = Struct_2(_wgslsmith_mult_i32(abs((var_1.a & -18174i) << (~165032u % 32u)), max(i32(-1i) * -1i, 6515i)));
    let var_2 = func_3(func_2(select(-vec3<i32>(35480i, 1i, var_1.a) | vec3<i32>(40989i, -17242i, u_input.b.x), -vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), !(global3.x && global3.x)), _wgslsmith_add_u32(max(73022u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)])), 22464u >> (1u % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1197f - -464f))))), _wgslsmith_mult_u32(1u, 1u)), u_input.b.zy, Struct_1(true), !all(vec3<bool>(!global3.x, global3.x, select(false, false, false))));
    global3 = select(select(!select(select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, true), false), select(vec4<bool>(true, false, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(false, global3.x, true, false)), select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, false))), vec4<bool>(4113i != _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_2.b.a, 28969i, -2147483647i)), true, !all(vec4<bool>(true, true, global3.x, global3.x)), true), false), !(!select(select(vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(true, false, global3.x, global3.x), global3.x), !vec4<bool>(true, global3.x, global3.x, global3.x), global3.x != false)), select(!(!vec4<bool>(global3.x, true, global3.x, true)), select(select(!vec4<bool>(false, true, false, global3.x), vec4<bool>(true, true, global3.x, true), !vec4<bool>(global3.x, global3.x, true, true)), !vec4<bool>(false, global3.x, true, false), global3.x), global3.x));
    return Struct_3(1u, func_3(var_1.a, vec2<i32>(func_2(u_input.a, 22456u, var_2.a.x, 0u) >> (1u % 32u), var_2.b.a), Struct_1(true), true).b, vec3<u32>(4294967295u, 7032u, _wgslsmith_dot_vec3_u32(abs(global2[_wgslsmith_index_u32(abs(0u), 11u)]), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), firstLeadingBit(vec3<u32>(55165u, 1u, 72224u)), abs(vec3<u32>(4294967295u, 0u, 1u))))), !((func_3(u_input.b.x, vec2<i32>(-71557i, 2147483647i), Struct_1(false), global3.x).b.a ^ _wgslsmith_div_i32(0i, u_input.a.x)) != ~2147483647i), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_1().e)) * var_1.e);
    var var_3 = ~_wgslsmith_mod_vec4_u32(select(~vec4<u32>(var_1.a, 80981u, 81577u, 28127u), ~vec4<u32>(var_1.c.x, 0u, 1u, var_0.a) & _wgslsmith_sub_vec4_u32(vec4<u32>(14218u, var_1.c.x, 0u, 49929u), vec4<u32>(1u, var_1.a, 0u, var_0.c.x)), vec4<bool>(var_0.d, var_2 >= 334f, any(vec4<bool>(var_1.d, var_0.d, global3.x, true)), var_1.a >= var_1.a)), firstTrailingBit(~(~vec4<u32>(var_1.a, 4294967295u, 54451u, var_1.c.x))));
    let var_4 = vec2<u32>(~(~var_3.x), firstTrailingBit(_wgslsmith_clamp_u32(0u, func_1().c.x, ~var_0.c.x) | var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i), 4421i | u_input.a.x, ~select(~(-u_input.b.zy), abs(u_input.b.zx | u_input.a.xz), global3.zz), ~var_4, vec4<u32>(var_3.x, ~((1u & var_4.x) << (0u % 32u)), ~(23893u | var_1.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 5754u) >> (vec3<u32>(var_1.c.x, 0u, var_3.x) % vec3<u32>(32u)), vec3<u32>(var_0.c.x, var_1.a, 20682u)) % 32u), abs(_wgslsmith_mult_u32(firstLeadingBit(0u), 0u))));
}


struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(2147483647i, 2147483647i, 1i, -37931i), vec4<i32>(7427i, 8289i, 25717i, 2147483647i), vec4<i32>(-12282i, -76624i, 1i, 55569i), vec4<i32>(i32(-2147483648), 1i, 32551i, 2147483647i), vec4<i32>(-42263i, -80291i, 1i, 1i), vec4<i32>(1i, -40260i, 28054i, 26911i), vec4<i32>(47499i, -25979i, 4845i, 2147483647i), vec4<i32>(1i, -1i, i32(-2147483648), 64035i), vec4<i32>(-10577i, 47121i, 12910i, 19500i), vec4<i32>(0i, -30967i, 41307i, -14005i), vec4<i32>(-1i, 2147483647i, 0i, -1843i), vec4<i32>(1079i, 19810i, 13133i, -1i), vec4<i32>(-31228i, 24068i, -20705i, 7647i), vec4<i32>(23228i, 10795i, 31057i, 2485i), vec4<i32>(30937i, 1i, -19110i, -1i), vec4<i32>(2147483647i, -13903i, -1i, -1i), vec4<i32>(-14484i, -41571i, 27141i, -32396i), vec4<i32>(i32(-2147483648), -3483i, -1i, 48809i), vec4<i32>(15793i, -18714i, -5120i, 5970i), vec4<i32>(-48289i, -1i, 15742i, 1i), vec4<i32>(-60469i, 0i, 0i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -16367i, -64637i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_3 {
    global1 = array<vec4<i32>, 22>();
    global0 = array<vec2<bool>, 28>();
    var var_0 = firstLeadingBit(0i);
    var var_1 = global1[_wgslsmith_index_u32(min(1741u, 1u) & _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, 1u), u_input.b.x), 22u)];
    let var_2 = 1000f;
    return Struct_3(!((-var_1.x >> (_wgslsmith_clamp_u32(u_input.b.x, 11655u, 4294967295u) % 32u)) <= var_1.x), -u_input.a | ~reverseBits(1i & u_input.a), true);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(all(!(!select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.c), vec4<bool>(arg_0.a, arg_0.c, arg_0.a, arg_0.c), arg_0.c))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(586f + -681f), _wgslsmith_f_op_f32(f32(-1f) * -447f))), 335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + _wgslsmith_f_op_f32(sign(1000f)))))));
    global0 = array<vec2<bool>, 28>();
    var var_2 = true;
    var_2 = -arg_0.b >= arg_0.b;
    return Struct_1(select(var_0.a, arg_0.a, var_0.a & any(vec3<bool>(arg_0.c, var_0.a, true))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    global0 = array<vec2<bool>, 28>();
    global0 = array<vec2<bool>, 28>();
    let var_0 = select(vec3<bool>(true, arg_1.x, any(!vec4<bool>(arg_1.x, false, false, true))), arg_1, vec3<bool>(true, true, false));
    let var_1 = Struct_2(~u_input.b.xy, ~(abs(43214i | u_input.a) ^ ~(-1i)), arg_3, func_3(func_2(u_input.b.x, Struct_1(var_0.x), !var_0), 0u, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x & 1u)), (firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b.x, 22u)] << (vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u) % vec4<u32>(32u))) & ~(vec4<i32>(-41007i, u_input.a, -48543i, u_input.a) << (vec4<u32>(u_input.b.x, 0u, 29776u, 49907u) % vec4<u32>(32u)))) | vec4<i32>(arg_0, _wgslsmith_sub_i32(53485i, 1i), select(-arg_0, firstTrailingBit(u_input.a), !arg_1.x), u_input.a >> (min(1u, 4294967295u) % 32u)));
    global1 = array<vec4<i32>, 22>();
    return Struct_1(any(!select(vec3<bool>(true, false, false), !arg_1, vec3<bool>(arg_1.x, var_1.d.a, true))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(~u_input.b.x, ~u_input.b.x);
    global0 = array<vec2<bool>, 28>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0 << (_wgslsmith_dot_vec3_u32(u_input.b, ~(u_input.b << (u_input.b % vec3<u32>(32u)))) % 32u), _wgslsmith_add_u32(~(~19128u), ~(_wgslsmith_div_u32(56171u, var_0) >> (var_0 % 32u)))), 28u)];
    global0 = array<vec2<bool>, 28>();
    global1 = array<vec4<i32>, 22>();
    return func_2(min(~(1u >> (var_0 % 32u)), u_input.b.x) & (u_input.b.x | ~_wgslsmith_clamp_u32(1u, 4294967295u, 0u)), func_3(func_2(~(~0u), arg_0, select(vec3<bool>(false, var_1.x, false), !vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, arg_0.a, var_1.x))), ~var_0, select(vec3<u32>(~1u, abs(var_0), 4294967295u), ~select(vec3<u32>(var_0, var_0, 49013u), u_input.b, vec3<bool>(false, arg_1, arg_0.a)), select(vec3<bool>(true, var_1.x, arg_0.a), !vec3<bool>(true, var_1.x, arg_1), u_input.b.x == 26544u))), select(vec3<bool>(false, false, true), !select(vec3<bool>(var_1.x, false, false), vec3<bool>(true, true, true), vec3<bool>(arg_1, false, arg_1)), vec3<bool>(!var_1.x, true, !(!var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 28>();
    var var_0 = func_4(func_1(u_input.a, vec3<bool>(true, true, true), 427f, _wgslsmith_div_f32(622f, 803f)), select(true | (1u <= _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), u_input.b.x > u_input.b.x)), true));
    let var_1 = select(vec3<bool>(func_1(var_0.b, !(!vec3<bool>(var_0.a, false, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f)), _wgslsmith_f_op_f32(-849f + 647f)).a, true & func_4(func_1(u_input.a, vec3<bool>(true, true, var_0.a), 1083f, 1159f), var_0.c).c, false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_0.c), select(!select(vec3<bool>(var_0.c, false, var_0.a), vec3<bool>(var_0.c, true, var_0.c), var_0.a), vec3<bool>(var_0.a, var_0.c, u_input.a > u_input.a), var_0.a), var_0.c), !(!var_0.a));
    global0 = array<vec2<bool>, 28>();
    global0 = array<vec2<bool>, 28>();
    var var_2 = Struct_2(~u_input.b.xy >> (_wgslsmith_clamp_vec2_u32(u_input.b.xx, _wgslsmith_mod_vec2_u32(abs(u_input.b.yz), _wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(24207u, 4294967295u))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b.x, 49033u), u_input.b.xx, vec2<bool>(false, var_1.x)), select(u_input.b.yy, u_input.b.xy, true))) % vec2<u32>(32u)), (countOneBits(var_0.b) & 2147483647i) ^ u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2409f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f + _wgslsmith_div_f32(624f, -1204f)))), Struct_1(var_1.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-76217i, 0i, -2147483647i, u_input.a | 33269i), select(vec4<i32>(var_0.b, -52913i, -1704i, -684i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 22u)], all(var_1))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1678f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1182f - -291f), -296f, true)), 835f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<f32>(522f, -932f, var_2.c, var_2.c)))), select(select(!vec4<bool>(var_0.c, var_0.c, var_1.x, var_2.d.a), !vec4<bool>(true, var_1.x, var_2.d.a, false), vec4<bool>(var_0.c, var_2.d.a, var_1.x, false)), !(!vec4<bool>(var_2.d.a, var_2.d.a, var_1.x, true)), all(var_1)))));
    let var_4 = !(16862u > u_input.b.x);
    let var_5 = func_2(~(_wgslsmith_div_u32(15046u, var_2.a.x) | countOneBits(var_2.a.x)), var_2.d, select(var_1, vec3<bool>(false, var_2.d.a, !var_1.x), !(!vec3<bool>(true, var_1.x, false)))).c | true;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(var_3.xyy, var_3.yzx)), var_3.wyz, var_1)));
}


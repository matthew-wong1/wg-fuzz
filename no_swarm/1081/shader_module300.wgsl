struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: vec3<u32>;

var<private> global2: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-9088i, 17667i, 2147483647i, -2980i), vec4<i32>(5422i, 48993i, 1i, i32(-2147483648)), vec4<i32>(1i, 25574i, i32(-2147483648), 4797i), vec4<i32>(1i, 1i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 1i, 2147483647i, -1i), vec4<i32>(-1i, 3169i, 37593i, -26429i), vec4<i32>(1i, -19221i, 61747i, i32(-2147483648)), vec4<i32>(2147483647i, 11631i, 2147483647i, 0i), vec4<i32>(17700i, 0i, -73489i, i32(-2147483648)), vec4<i32>(-24334i, -1i, 0i, -21794i), vec4<i32>(-19474i, 43899i, 2147483647i, -30999i), vec4<i32>(12984i, -42328i, 17625i, 7466i), vec4<i32>(1i, -8432i, -18157i, 1i), vec4<i32>(-1908i, -89214i, 0i, -1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(max(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 14u)], vec4<i32>(-1i, u_input.d, u_input.d, arg_1.a.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(4294967295u), u_input.c.x | arg_0), 14u)]), ((vec4<i32>(arg_1.a.a.x, u_input.a.x, 1i, 2147483647i) << (vec4<u32>(37701u, arg_1.a.c, 1088u, 4650u) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(global2[_wgslsmith_index_u32(51838u, 14u)], vec4<i32>(u_input.a.x, arg_1.a.a.x, -2147483647i, arg_1.a.a.x))) >> (vec4<u32>(arg_1.a.c, reverseBits(global1.x), _wgslsmith_sub_u32(global1.x, arg_0), reverseBits(29881u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(arg_1.a.b * _wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1795f, arg_1.a.d.x))))), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, global1.x, _wgslsmith_div_u32(4834u, global1.x))) << (u_input.c.x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.d.x, 180f, arg_1.a.b))))));
    var var_1 = arg_1.a.d.x;
    let var_2 = all(!(!vec2<bool>(select(false, true, true), true)));
    let var_3 = arg_1.a;
    let var_4 = var_2;
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = u_input.a;
    var var_1 = u_input.b;
    global0 = array<vec3<f32>, 12>();
    let var_2 = 0u;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) + _wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(arg_1 - 1f), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -154f)))) * _wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(~12017u, 12u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, 0u, var_2) >> (vec3<u32>(34790u, 0u, var_2) % vec3<u32>(32u))), 12u)])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = countOneBits((arg_2.a.c | reverseBits(~4294967295u)) << ((~1u ^ _wgslsmith_sub_u32(0u, global1.x)) % 32u));
    var var_1 = 2147483647i;
    let var_2 = arg_2.a;
    var var_3 = Struct_1(global2[_wgslsmith_index_u32(var_0, 14u)], -612f, ~(reverseBits(~arg_2.a.c) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(func_4(func_3(reverseBits(4294967295u), arg_2), arg_2.a.d.x, -260f, vec2<i32>(~(~1i), arg_0.a.x))));
    var var_4 = var_2;
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = abs(reverseBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(20492u, arg_0.a.c, 92666u, 523u)), vec4<u32>(u_input.c.x, ~global1.x, 53320u, _wgslsmith_clamp_u32(global1.x, global1.x, global1.x)))));
    global1 = ~var_0.wyw;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(select(-1765f, arg_0.a.b, false));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-550f * arg_0.a.d.x), arg_0.a.b, _wgslsmith_div_f32(arg_0.a.b, arg_0.a.d.x), -392f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, arg_0.a.b, arg_0.a.b, arg_0.a.d.x)) * vec4<f32>(-872f, 556f, arg_0.a.d.x, arg_0.a.b)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -1893f, 490f, arg_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, 290f, 151f, 731f))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-162f, arg_0.a.d.x, -919f, -279f) - vec4<f32>(arg_0.a.b, -965f, arg_0.a.b, arg_0.a.b))))));
    return ~func_2(Struct_1(_wgslsmith_mult_vec4_i32(abs(arg_0.a.a), vec4<i32>(u_input.e, arg_0.a.a.x, 2147483647i, u_input.d)), _wgslsmith_f_op_f32(arg_0.a.b + 1039f), _wgslsmith_sub_u32(global1.x ^ global1.x, 18057u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1052f, arg_0.a.b))), vec2<bool>(true, true), Struct_2(func_2(Struct_1(vec4<i32>(0i, arg_0.a.a.x, arg_0.a.a.x, u_input.d), -1923f, 0u, vec3<f32>(var_3.x, -279f, var_3.x)), vec2<bool>(true, true), Struct_2(arg_0.a)).a)).a.c;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    return func_2(func_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(arg_0.d.x + arg_0.b), reverseBits(76159u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(arg_0.d, global0[_wgslsmith_index_u32(31723u, 12u)], vec3<bool>(true, true, true)))))), vec2<bool>(false, _wgslsmith_dot_vec3_i32(arg_0.a.zxz, vec3<i32>(arg_2, 1i, arg_1.x)) > arg_1.x), func_2(arg_0, select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), Struct_2(arg_0))).a, !select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_2(func_2(arg_0, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), false), func_2(arg_0, select(vec2<bool>(false, false), vec2<bool>(true, true), true), Struct_2(Struct_1(arg_0.a, arg_0.d.x, global1.x, vec3<f32>(arg_0.b, arg_0.d.x, arg_0.d.x))))).a, !vec2<bool>(all(vec3<bool>(false, true, false)), false), Struct_2(arg_0)));
}

fn func_1() -> Struct_2 {
    return func_6(Struct_1(-global2[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1089f + -759f))) * 1f), ~func_5(func_2(Struct_1(vec4<i32>(u_input.d, u_input.e, 1i, 34763i), -756f, 1u, global0[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -854i, u_input.d), -462f, u_input.b, global0[_wgslsmith_index_u32(19388u, 12u)])))), global0[_wgslsmith_index_u32(~0u, 12u)]), min(vec3<i32>(_wgslsmith_sub_i32(~0i, i32(-1i) * -1i), firstTrailingBit(-11315i), -_wgslsmith_clamp_i32(-11612i, -13893i, u_input.d)), firstTrailingBit(u_input.a)), -u_input.d << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x) % 32u), select(~(~reverseBits(vec4<u32>(global1.x, 5364u, 0u, u_input.b))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 6520u, ~global1.x, u_input.b), vec4<u32>(~1u, global1.x, 4294967295u, ~27566u)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)), vec4<bool>(false, true, true, all(vec3<bool>(false, true, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec4<bool>(true, false, -27867i == ~u_input.e, !all(vec2<bool>(false, true))));
    let var_1 = func_1();
    var var_2 = vec3<i32>(func_6(Struct_1(vec4<i32>(-10596i, 0i, 0i, var_1.a.a.x), _wgslsmith_f_op_f32(var_1.a.b + -1000f), 4294967295u, _wgslsmith_f_op_vec3_f32(var_1.a.d * var_1.a.d)), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(var_1.a.a.x, -35271i, var_1.a.a.x), ~var_1.a.a.yxx), -17869i, vec4<u32>(24733u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 22864u), u_input.c.zy), var_1.a.c, func_1().a.c)).a.a.x, var_1.a.a.x, ~u_input.a.x) | vec3<i32>(-2147483647i, u_input.d, -2147483647i);
    var var_3 = u_input.d;
    var_3 = func_2(var_1.a, vec2<bool>((24391i <= ~var_2.x) || !all(vec3<bool>(var_0, true, var_0)), any(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), var_0))), Struct_2(var_1.a)).a.a.x;
    let var_4 = Struct_1(reverseBits(vec4<i32>(func_1().a.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_2.x, 2147483647i), -47871i), 0i, 15201i)), _wgslsmith_div_f32(func_1().a.b, 449f), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.a.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(9962u, 12u)], vec3<f32>(var_1.a.b, var_1.a.d.x, var_1.a.d.x)) * _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(var_1.a.c, 12u)], var_1.a.d)))) + func_6(Struct_1(func_1().a.a, var_1.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global1.x, global1.x, u_input.b), vec4<u32>(68409u, u_input.c.x, u_input.c.x, global1.x)), var_1.a.d), abs(max(vec3<i32>(-2147483647i, 1i, u_input.e), vec3<i32>(-1i, var_2.x, -9005i))), u_input.e, vec4<u32>(_wgslsmith_mod_u32(0u, 91890u), _wgslsmith_add_u32(var_1.a.c, u_input.b), _wgslsmith_mod_u32(4294967295u, 1u), ~19796u)).a.d));
    var var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) * 196f), var_4.b, _wgslsmith_f_op_f32(-var_4.d.x)) * var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}


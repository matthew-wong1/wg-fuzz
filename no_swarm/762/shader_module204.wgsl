struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(642f, -886f, 2147483647i, 1i, 50739u);

var<private> global1: array<u32, 21>;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(global2.a, _wgslsmith_f_op_vec4_f32(-global2.a))), -abs(min(-global2.b, global2.b)));
    var_0 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(global2.a.yx));
    return -611f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = max(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(66367u, 4294967295u, 0u), _wgslsmith_mult_vec3_u32(arg_2, vec3<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(57381u, 21u)])))), _wgslsmith_mult_u32(_wgslsmith_add_u32(41037u, ~global0.e) << (~arg_2.x % 32u), 31300u));
    var var_1 = arg_0;
    let var_2 = Struct_3(global2.a.ww, arg_0, -1801f, false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, var_2.d, false), var_2, 1i)) - _wgslsmith_f_op_f32(step(global2.a.x, -385f)))))), -972f, -3885i, 2147483647i, global1[_wgslsmith_index_u32(min(1u, _wgslsmith_sub_u32(select(arg_2.x, _wgslsmith_mult_u32(0u, 0u), var_2.d), global0.e)), 21u)]);
    var var_4 = select(select(vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(select(var_2.d, !var_2.d, all(vec4<bool>(true, var_2.d, var_2.d, true))), var_3.e < 4294967295u), vec2<bool>(global2.a.x <= _wgslsmith_f_op_f32(-var_1.b), !(true & var_2.d))), vec2<bool>(true, true), false);
    return arg_2.x;
}

fn func_1() -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global0.e, 21u)], 2410u, global0.e, u_input.a), ~vec4<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(8627u, 21u)], 1115u)), ~vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(37361u, 1u, 13839u, u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 37202u, 95160u, 9640u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e, u_input.a, 1717u, global0.e), vec4<u32>(global0.e, global0.e, 108417u, global1[_wgslsmith_index_u32(48516u, 21u)])), 21u)])), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, func_2(Struct_1(-748f, global2.a.x, 0i, global0.c, 19082u), Struct_2(vec4<f32>(global0.a, -2248f, -1099f, -1879f), global2.b), ~vec3<u32>(global1[_wgslsmith_index_u32(47870u, 21u)], global0.e, u_input.a), _wgslsmith_f_op_f32(-global0.b)), global0.e), global0.e), global0.e, func_2(Struct_1(_wgslsmith_f_op_f32(max(-141f, _wgslsmith_f_op_f32(-global0.a))), -654f, _wgslsmith_dot_vec3_i32(global2.b, reverseBits(vec3<i32>(global0.d, global0.d, global2.b.x))), u_input.b.x, ~(~1u)), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, global0.a, global2.a.x, global0.a), global2.a), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b.x, global2.b.x), vec3<i32>(global2.b.x, global2.b.x, global2.b.x))), ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(global0.e, 21u)], 0u, 0u), vec3<u32>(120109u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], u_input.a), false), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.e, global0.e, global0.e), vec3<u32>(30584u, 1u, 42105u))), global0.b));
    let var_1 = countOneBits(var_0.yx);
    var_0 = vec4<u32>(min(u_input.a, ~(~0u)), _wgslsmith_sub_u32(global0.e, var_1.x), ~countOneBits(~(~global0.e)), global1[_wgslsmith_index_u32(1u, 21u)]);
    var var_2 = vec2<u32>(64181u, u_input.a);
    global0 = Struct_1(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-global2.a.x)), 1000f, 0i, _wgslsmith_dot_vec3_i32(-global2.b, vec3<i32>(max(global0.d, _wgslsmith_mult_i32(global2.b.x, -60478i)), -52119i, ~(-2147483647i))), 4294967295u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-791f)) * _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(round(-1100f))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    global1 = array<u32, 21>();
    let var_0 = vec4<bool>(false, arg_0.b.c != 1i, select(all(vec3<bool>(true, true, arg_0.d)), arg_0.d, false), true);
    global1 = array<u32, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(select(arg_1.e, arg_1.e, arg_0.d) <= ~54879u, arg_2, true), arg_0, abs(~(-1i)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(861f - arg_0.b.a) + arg_1.a), arg_0.a.x, _wgslsmith_f_op_f32(-1000f + global0.b) == _wgslsmith_f_op_f32(exp2(global2.a.x)))));
    var var_2 = _wgslsmith_clamp_i32(~(~u_input.b.x), arg_1.c ^ ((1i ^ ~global2.b.x) << (~38773u % 32u)), -1i);
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(748f, -1119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global2.a.x))))), vec3<i32>(global0.c, -1i, global0.c << (global1[_wgslsmith_index_u32(arg_1.b.e, 21u)] % 32u)));
    let var_1 = Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(global0.b * 207f), ~select(-18357i, firstLeadingBit(-global2.b.x), true), ~(-2147483647i), 36764u | (u_input.a & 0u));
    var var_2 = select(var_0.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_1.a))), arg_1.d, false);
    let var_3 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global2.a.xy - _wgslsmith_f_op_vec2_f32(vec2<f32>(2101f, global0.a) * var_0.a.zy)), _wgslsmith_f_op_vec2_f32(-var_0.a.wy))), Struct_1(arg_1.c, -174f, -5624i >> (1u % 32u), -2147483647i, _wgslsmith_mult_u32(~global0.e, func_4(Struct_3(vec2<f32>(var_0.a.x, 1000f), Struct_1(global0.a, global2.a.x, -1i, u_input.b.x, global1[_wgslsmith_index_u32(5078u, 21u)]), arg_1.b.a, arg_1.d), Struct_1(-875f, arg_2, u_input.b.x, arg_1.b.c, 4294967295u), arg_1.d).b.e)), -196f, all(vec4<bool>(!arg_1.d, arg_2 != 110f, arg_1.d, true))), arg_1.b, select(false, !(!(259f >= global2.a.x)), false));
    let var_4 = select(select(vec4<bool>(false, !(1u == arg_1.b.e), !any(vec3<bool>(false, arg_1.d, true)), all(select(vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d), vec4<bool>(true, arg_1.d, var_3.d, arg_1.d), false))), select(select(select(vec4<bool>(var_3.d, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(var_3.d, false, false, var_3.d)), select(vec4<bool>(false, var_3.d, var_3.d, true), vec4<bool>(var_3.d, true, var_3.d, false), var_3.d), var_0.a.x >= arg_2), !(!vec4<bool>(true, true, var_3.d, true)), false), !(!(!vec4<bool>(false, arg_1.d, true, true)))), select(vec4<bool>((var_3.d || false) != (var_1.d != u_input.b.x), true, arg_1.d, 22884u <= max(var_3.b.e, arg_1.b.e)), select(vec4<bool>(any(vec2<bool>(arg_1.d, var_3.d)), var_3.d, select(true, arg_1.d, arg_1.d), arg_1.d), !(!vec4<bool>(false, var_3.d, false, true)), select(!vec4<bool>(var_3.d, false, var_3.d, false), select(vec4<bool>(arg_1.d, arg_1.d, false, arg_1.d), vec4<bool>(arg_1.d, arg_1.d, false, false), var_3.d), vec4<bool>(true, false, arg_1.d, false))), true), !select(select(!vec4<bool>(false, false, arg_1.d, arg_1.d), !vec4<bool>(true, true, var_3.d, var_3.d), select(vec4<bool>(var_3.d, true, var_3.d, false), vec4<bool>(arg_1.d, false, true, false), var_3.d)), !(!vec4<bool>(false, var_3.d, var_3.d, var_3.d)), true));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(firstTrailingBit(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0.e)), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.xx, vec2<f32>(-1654f, global2.a.x))), Struct_1(_wgslsmith_f_op_f32(select(435f, -542f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2079f), ~global0.c, u_input.b.x, firstLeadingBit(u_input.a)), _wgslsmith_f_op_f32(func_1()), false), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-784f * -1437f), _wgslsmith_div_f32(-354f, 693f))), -615f, _wgslsmith_dot_vec2_i32(countOneBits(global2.b.yy), vec2<i32>(-22416i, 2661i) ^ vec2<i32>(15788i, u_input.b.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(8700i, global0.d), ~u_input.b.x), global0.e), !any(vec2<bool>(true, false)) && any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(ceil(global0.b)));
    global1 = array<u32, 21>();
    let var_0 = !select(vec3<bool>(global1[_wgslsmith_index_u32(6912u, 21u)] == firstTrailingBit(1u), false, _wgslsmith_f_op_f32(select(1701f, 224f, true)) <= global2.a.x), vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), (global2.a.x != 698f) && true, false), true);
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.b, func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global0.e << (global0.e % 32u), 21u)], 1u ^ global0.e, u_input.a >> (22265u % 32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.e, u_input.a, 0u), vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<u32>(u_input.a, 4294967295u, global0.e))), func_4(func_4(func_4(Struct_3(global2.a.wx, Struct_1(-240f, global2.a.x, 22546i, -1i, 64938u), global0.a, var_0.x), Struct_1(112f, 363f, 53980i, global0.d, global0.e), var_0.x), Struct_1(807f, global0.a, global0.c, 0i, 78195u), !var_0.x), Struct_1(_wgslsmith_f_op_f32(-global0.b), 254f, -23206i, ~global2.b.x, 1u), ~u_input.b.x == min(global0.d, 2147483647i)), _wgslsmith_f_op_f32(-202f + 1742f)).b.yz, _wgslsmith_div_vec2_i32(u_input.b, ~global2.b.zy));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, 964f, false)) * global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(184f - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global2.a.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, Struct_3(global2.a.zx, Struct_1(global2.a.x, global0.a, 0i, 48841i, global1[_wgslsmith_index_u32(u_input.a, 21u)]), global2.a.x, var_0.x), global2.b.x)) + -235f)), i32(-1i) * -15312i, firstLeadingBit(_wgslsmith_mult_i32(abs(-1i), min(i32(-1i) * -13010i, 0i))), global0.e);
    var var_3 = func_5(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) - global2.a.yw), func_4(Struct_3(vec2<f32>(global2.a.x, var_2.a), Struct_1(global0.a, var_2.a, 1i, u_input.b.x, 0u), 722f, false), Struct_1(global0.a, global2.a.x, global0.c, var_1.x, u_input.a), var_0.x).b, _wgslsmith_f_op_f32(f32(-1f) * -1067f), false), func_4(func_4(Struct_3(global2.a.zz, Struct_1(global0.b, global0.a, -24444i, 18256i, 0u), var_2.a, var_0.x), Struct_1(-630f, global0.a, global0.d, u_input.b.x, 31070u), var_0.x), func_4(Struct_3(vec2<f32>(global2.a.x, global0.a), Struct_1(global2.a.x, -1000f, global0.d, 1i, global0.e), global2.a.x, false), Struct_1(970f, global0.b, var_1.x, global2.b.x, 35892u), true).b, var_0.x).b, !(u_input.b.x <= global0.c)).b.e & max(1u, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(48334u, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(global0.e, 21u)], 1u)), 21u)]), func_4(func_4(Struct_3(global2.a.zy, Struct_1(global0.b, -1000f, global0.d, 1i, 45582u), var_2.b, false), func_4(func_4(Struct_3(global2.a.wx, Struct_1(global0.a, -276f, var_1.x, 6483i, 42787u), global2.a.x, var_0.x), Struct_1(global2.a.x, 190f, 0i, 2147483647i, global0.e), true), func_4(Struct_3(global2.a.xw, Struct_1(-1010f, global2.a.x, global2.b.x, global0.c, var_2.e), global2.a.x, var_0.x), Struct_1(var_2.b, global0.b, 1i, global0.c, global0.e), var_0.x).b, false && var_0.x).b, all(!var_0)), func_4(func_4(Struct_3(global2.a.xy, Struct_1(global0.b, -672f, 100332i, var_2.c, global0.e), var_2.b, var_0.x), func_4(Struct_3(global2.a.wx, Struct_1(global0.a, 472f, global0.c, 43642i, 51574u), 660f, var_0.x), Struct_1(var_2.b, global0.a, global0.d, -131i, u_input.a), false).b, true), func_4(func_4(Struct_3(vec2<f32>(-307f, -1615f), Struct_1(-696f, 272f, global0.d, global0.d, 97011u), global2.a.x, false), Struct_1(-1023f, global2.a.x, -1i, global0.c, u_input.a), var_0.x), Struct_1(-1336f, -965f, -20965i, 50671i, 1715u), any(var_0)).b, var_2.a == global2.a.x).b, var_0.x), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a.xyy)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(global2.a.wyw, vec3<f32>(-1021f, -399f, var_3.a.x))))))), vec4<u32>(_wgslsmith_add_u32(~max(4294967295u, global0.e), var_2.e), 1u, ~u_input.a, abs(global0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -686f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1341f))), min(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4251u, u_input.a, 1u, 4294967295u), vec4<u32>(0u, 1u, u_input.a, 4294967295u) >> (vec4<u32>(4294967295u, global0.e, global0.e, 1605u) % vec4<u32>(32u))), 21u)], func_2(Struct_1(551f, var_2.a, 0i, var_3.b.x, 37221u), Struct_2(vec4<f32>(var_2.b, -1081f, 1000f, -737f), vec3<i32>(1i, 0i, global0.d)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 6244u, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_f32(-global0.a)), var_2.e), ~(vec3<u32>(91542u, 4294967295u, 40606u) ^ vec3<u32>(0u, var_2.e, global1[_wgslsmith_index_u32(0u, 21u)])) >> (~reverseBits(vec3<u32>(1u, 65098u, 72677u)) % vec3<u32>(32u))));
}


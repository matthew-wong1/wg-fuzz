struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(Struct_1(1500f, -668i, vec3<u32>(43892u, 4294967295u, 88425u)), -791f), Struct_5(Struct_1(1233f, i32(-2147483648), vec3<u32>(35707u, 0u, 0u)), 894f), Struct_5(Struct_1(-583f, 1i, vec3<u32>(17233u, 38616u, 73415u)), 1857f), Struct_5(Struct_1(-616f, 2147483647i, vec3<u32>(1u, 4294967295u, 0u)), 296f), Struct_5(Struct_1(-738f, -16165i, vec3<u32>(46152u, 88215u, 1u)), -417f), Struct_5(Struct_1(1000f, 81111i, vec3<u32>(0u, 40352u, 4294967295u)), 2751f), Struct_5(Struct_1(274f, i32(-2147483648), vec3<u32>(0u, 65481u, 8289u)), 1312f), Struct_5(Struct_1(384f, -9118i, vec3<u32>(1u, 52183u, 0u)), 1248f), Struct_5(Struct_1(192f, i32(-2147483648), vec3<u32>(0u, 4294967295u, 4294967295u)), 1026f));

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<i32>, 5>;

var<private> global4: array<Struct_5, 27>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = vec4<f32>(arg_1.a, arg_0.a, 727f, 1f);
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.yzy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1524f, _wgslsmith_f_op_f32(f32(-1f) * -219f), -216f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.wzw, vec3<f32>(arg_0.a, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_1.a, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 165f, var_0.x), var_0.xzy))))));
    let var_2 = global2.x;
    global4 = array<Struct_5, 27>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2454f + var_1.x), -1912f, var_1.x, _wgslsmith_f_op_f32(var_0.x + -661f)))));
    return -43310i;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(-1097f));
    var var_1 = -firstTrailingBit(select(_wgslsmith_div_i32(-u_input.c.x, 2147483647i), ~firstTrailingBit(-13749i), !(arg_1 >= -1135f)));
    global1 = array<Struct_5, 9>();
    var_1 = 24599i;
    var var_2 = countOneBits(5471i) & func_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_i32(abs(-17955i), u_input.c.x), vec3<u32>(18373u, u_input.a, u_input.a)), Struct_1(arg_1, -2147483647i, vec3<u32>(u_input.d, 4294967295u ^ global0[_wgslsmith_index_u32(1u, 21u)], 0u)));
    return Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.b.x, 0i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 1i, 0i, -1i)), vec4<i32>(1i, 9405i, -2147483647i, countOneBits(-34412i))), u_input.b.x), select(!(!select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(true, true, false, arg_0), false)), !vec4<bool>(true, u_input.b.x <= u_input.c.x, all(vec2<bool>(arg_0, false)), false), vec4<bool>(all(select(vec3<bool>(true, arg_0, false), vec3<bool>(false, false, arg_0), vec3<bool>(true, true, true))), !arg_0, true, max(u_input.b.x, 0i) < -2147483647i)), select(vec2<bool>(arg_0, any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(false, arg_0, arg_0)))), select(!select(vec2<bool>(true, false), vec2<bool>(false, arg_0), arg_0), vec2<bool>(arg_1 == arg_1, arg_0), arg_0), vec2<bool>(true, arg_0)));
}

fn func_1() -> Struct_2 {
    var var_0 = global4[_wgslsmith_index_u32(4721u, 27u)];
    var var_1 = 0u;
    let var_2 = ~31006u;
    let var_3 = -firstTrailingBit(_wgslsmith_mult_i32(-1i ^ var_0.a.b, ~u_input.b.x));
    return func_2(!any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2302f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    global0 = array<u32, 21>();
    let var_0 = arg_1.a.c.xx;
    global4 = array<Struct_5, 27>();
    global3 = array<vec3<i32>, 5>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)));
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + -1179f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1122f)), -1183f);
    let var_1 = _wgslsmith_mod_u32(51450u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(25404u, global0[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(38644u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(global2.x, 21u)]))), 20164u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1661f, var_0.x, 156f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(921f, var_0.x, var_0.x, -458f) + vec4<f32>(-1106f, var_0.x, var_0.x, var_0.x))))), vec4<f32>(-1981f, _wgslsmith_f_op_f32(func_4(func_1(), Struct_3(Struct_1(var_0.x, u_input.b.x, vec3<u32>(u_input.a, global2.x, global0[_wgslsmith_index_u32(3587u, 21u)]))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_div_f32(var_0.x, 1318f))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 2286f, 1603f, var_0.x), vec4<f32>(659f, var_0.x, 2964f, var_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-280f, var_0.x, 1170f, 823f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -696f, 768f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1140f, var_0.x, var_0.x))))));
    let var_3 = countOneBits(countOneBits(abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x))) | vec4<i32>(firstLeadingBit(u_input.b.x), u_input.b.x, _wgslsmith_add_i32(-2692i, 1i), -u_input.c.x)));
    global4 = array<Struct_5, 27>();
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-197f * -279f), -1408f)), _wgslsmith_f_op_f32(f32(-1f) * -368f))) + vec3<f32>(_wgslsmith_f_op_f32(max(1858f, _wgslsmith_f_op_f32(-1991f + _wgslsmith_f_op_f32(floor(715f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(floor(876f)))), var_2.x));
    global0 = array<u32, 21>();
    let var_5 = ~select(_wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, var_1)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(global2.x, 4294967295u)), vec2<u32>(8664u, 4294967295u)), vec2<u32>(63621u | var_1, 1u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, global0[_wgslsmith_index_u32(0u, 21u)]), vec2<u32>(global0[_wgslsmith_index_u32(1u, 21u)], global2.x)), ~vec2<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec2<u32>(var_1, global0[_wgslsmith_index_u32(148296u, 21u)])) << (max(~vec2<u32>(1u, 9573u), vec2<u32>(8698u, 0u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1021f) >= var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(u_input.b.x, -var_3.x));
}


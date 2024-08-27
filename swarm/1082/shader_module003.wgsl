struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: array<bool, 29> = array<bool, 29>(false, true, false, false, false, true, true, false, true, true, true, false, true, true, true, true, false, true, true, true, true, false, true, true, true, true, true, false, false);

var<private> global2: array<Struct_1, 8>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_1 = -734i;
    return -(vec2<i32>(-1i) * -vec2<i32>(1i, var_1 ^ -2147483647i));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_1 {
    global4 = array<vec3<bool>, 7>();
    var var_0 = arg_0.x;
    global4 = array<vec3<bool>, 7>();
    let var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1 | u_input.a, _wgslsmith_mult_u32(abs(1u), ~u_input.a)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, global3.e, arg_1), firstTrailingBit(vec3<u32>(1u, arg_1, u_input.a))), vec3<u32>(u_input.a, global3.e, 50418u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 4294967295u, 1u), vec3<u32>(u_input.a, 32410u, u_input.a), vec3<u32>(0u, arg_1, 5227u)) % vec3<u32>(32u)), vec3<u32>(~22752u, ~4294967295u, min(1u, 4294967295u))));
    let var_2 = Struct_1(false == global3.c.x, i32(-1i) * -2147483647i, global3.c, _wgslsmith_f_op_f32(ceil(global3.d)), _wgslsmith_mult_u32(arg_1, ~40600u) | var_1.x);
    return Struct_1(any(select(select(vec4<bool>(global3.a, true, global1[_wgslsmith_index_u32(0u, 29u)], false), !global3.c, var_2.c), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, var_1.x), 29u)], !global3.a, true, global1[_wgslsmith_index_u32(~global3.e, 29u)]), var_2.c)), -(~(~_wgslsmith_mod_i32(1i, arg_3.x))), vec4<bool>(false, !global1[_wgslsmith_index_u32(u_input.a, 29u)], !all(var_2.c), global1[_wgslsmith_index_u32(~(~var_1.x), 29u)]), _wgslsmith_div_f32(-632f, -2212f), 4294967295u);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    let var_0 = Struct_1(global3.c.x, _wgslsmith_div_i32(-(arg_0 & arg_0), i32(-1i) * -44338i) >> (_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(1u, u_input.a)) % 32u), !global3.c, _wgslsmith_f_op_f32(-global3.d), ~6342u);
    var var_1 = _wgslsmith_div_u32(u_input.a, global3.e) ^ countOneBits(4760u);
    var var_2 = func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-580f, global3.d, -290f) - vec3<f32>(680f, 245f, global3.d))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(238f, 1000f, 1000f), vec3<f32>(var_0.d, -1889f, var_0.d)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, 516f, var_0.d) - vec3<f32>(236f, -218f, global3.d)))))), u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, _wgslsmith_f_op_f32(select(global3.d, _wgslsmith_f_op_f32(f32(-1f) * -609f), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-var_0.d)))), ~(abs(select(vec2<i32>(global3.b, global3.b), vec2<i32>(1i, global3.b), global3.c.yw)) ^ -func_2(arg_0)));
    global0 = array<vec3<bool>, 20>();
    let var_3 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(var_0.d * global3.d), -1369f) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(820f, global3.d, var_2.d), vec3<f32>(1000f, var_2.d, -1312f)), vec3<f32>(var_2.d, -899f, var_2.d)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, global3.d)))), u_input.a, vec2<f32>(global3.d, 1036f), _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, 2147483647i) & -vec2<i32>(1i, arg_0), vec2<i32>(-var_2.b, _wgslsmith_clamp_i32(2147483647i, var_2.b, 20420i))) >> (firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u))) % vec2<u32>(32u)));
    return _wgslsmith_mod_vec2_i32(firstTrailingBit(abs(select(vec2<i32>(global3.b, 8765i), -vec2<i32>(19692i, var_3.b), !global3.c.yz))), func_2(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 7>();
    var var_0 = _wgslsmith_mult_vec2_i32(func_1(-1i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b | global3.b, ~2147483647i, abs(25003i)), vec3<i32>(_wgslsmith_mod_i32(1i, global3.b), 9190i, ~global3.b)), 0i));
    let var_1 = Struct_1(true, var_0.x, select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 29u)] | global3.c.x, global3.c.x != !global3.c.x, true, !global1[_wgslsmith_index_u32(~0u, 29u)]), vec4<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(302f, -1839f, global3.d))), _wgslsmith_add_u32(19145u, global3.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1940f, global3.d)), vec2<i32>(global3.b, var_0.x)).c.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], true), !(!select(global3.c, vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, global3.c.x, global3.a), global3.c))), _wgslsmith_div_f32(-1071f, -1000f), max(~(~0u ^ select(u_input.a, u_input.a, false)), _wgslsmith_mod_u32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d, 1040f, global3.d) + vec3<f32>(286f, global3.d, -681f)), u_input.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.d, -1252f))), -vec2<i32>(-1i, 1i)).e, _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.e, global3.e, global3.e), countOneBits(vec3<u32>(24048u, 4294967295u, global3.e))))));
    global4 = array<vec3<bool>, 7>();
    global1 = array<bool, 29>();
    global0 = array<vec3<bool>, 20>();
    let var_2 = max(firstLeadingBit(~_wgslsmith_mod_u32(~global3.e, select(1u, 18783u, var_1.a))), 21112u);
    var_0 = vec2<i32>(~func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(195f)), -624f, _wgslsmith_f_op_f32(floor(global3.d))), ~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d, global3.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(478f, var_1.d) + vec2<f32>(var_1.d, -973f))), vec2<i32>(2147483647i, global3.b)).b, countOneBits(_wgslsmith_add_i32(countOneBits(var_1.b), var_0.x)) << ((~(~0u) << (_wgslsmith_add_u32(firstLeadingBit(u_input.a), ~4294967295u) % 32u)) % 32u));
    let var_3 = vec3<i32>(~(~1i), -10014i, -4837i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + 2079f) + -307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) - global3.d), 1f), vec4<u32>(0u, 1u, ~var_1.e, 0u));
}


struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, true, true, false, false, false, true, true, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    let var_0 = vec4<f32>(-339f, _wgslsmith_f_op_f32(f32(-1f) * -1424f), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-328f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -783f);
    let var_2 = Struct_1(vec3<f32>(-998f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(step(594f, var_0.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.wxx))));
}

fn func_2() -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(30373u, 2113u, 28051u, u_input.a))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -770f, 1061f) + vec3<f32>(1608f, 1846f, 1788f)), vec3<f32>(-646f, 628f, 1301f), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))), vec3<f32>(_wgslsmith_f_op_f32(-1000f + -619f), _wgslsmith_f_op_f32(-1000f - 232f), -351f)), select(vec3<bool>(true & global1[_wgslsmith_index_u32(0u, 11u)], true, true), vec3<bool>(false != global1[_wgslsmith_index_u32(21947u, 11u)], true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], true, false))), all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(47719u, 11u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false), true))))));
    global1 = array<bool, 11>();
    global0 = array<vec4<i32>, 24>();
    var var_2 = abs(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, -1i, 19007i), global0[_wgslsmith_index_u32(0u, 24u)]), vec4<i32>(721i, 0i, -1i, 26707i) ^ abs(global0[_wgslsmith_index_u32(33875u, 24u)]), all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(24933u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], false, true), true)))) ^ vec4<i32>(~_wgslsmith_clamp_i32(~(-1i), firstLeadingBit(0i), -14122i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-22606i, -2147483647i, -2147483647i), vec3<i32>(2147483647i, -30824i, 2147483647i)), -68675i) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33122u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a, 37659u, u_input.a, u_input.b.x)), ~u_input.b.x, ~35549u) % 32u), min(19615i, i32(-1i) * -1i), i32(-1i) * -1i);
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = ~u_input.a;
    let var_2 = Struct_1(vec3<f32>(-1464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280f - var_0.a.x)) - -1000f), arg_0.a.x));
    global0 = array<vec4<i32>, 24>();
    let var_3 = reverseBits(vec3<u32>(var_1, ~0u, _wgslsmith_mod_u32(~abs(var_1), var_1)));
    return select(!(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(var_3.x, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 11u)]), false)), select(vec3<bool>(select(!global1[_wgslsmith_index_u32(0u, 11u)], false | global1[_wgslsmith_index_u32(var_3.x, 11u)], all(vec2<bool>(global1[_wgslsmith_index_u32(39344u, 11u)], global1[_wgslsmith_index_u32(var_1, 11u)]))), any(select(vec3<bool>(global1[_wgslsmith_index_u32(var_3.x, 11u)], global1[_wgslsmith_index_u32(1u, 11u)], false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(var_1, 11u)], true), global1[_wgslsmith_index_u32(var_1, 11u)])), global1[_wgslsmith_index_u32(74552u, 11u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(9533u, 11u)] && false), select(vec3<bool>(global1[_wgslsmith_index_u32(~var_1, 11u)], any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(51353u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(38583u, 11u)])), true), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(var_3.x, 11u)], false), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(14880u, 11u)], false, false), false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], true, true)), !(u_input.b.x >= u_input.b.x))), true);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, -2465f), _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(335f, arg_2.x, arg_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_2.x, arg_0))), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, -1228f, arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(730f, 449f, 1422f) - vec3<f32>(arg_2.x, arg_0, 208f))))));
    var var_1 = !all(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(89482u, 11u)], true, global1[_wgslsmith_index_u32(u_input.a, 11u)], false), vec4<bool>(true, false, true, false), false), !vec4<bool>(global1[_wgslsmith_index_u32(28369u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], false, false), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(1u, 11u)]))));
    let var_2 = -1643f;
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-159f + -318f), _wgslsmith_f_op_f32(-834f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, 782f))))));
    let var_4 = Struct_1(var_3.a);
    return func_4(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.b.x);
    var var_1 = _wgslsmith_add_u32(max(~u_input.b.x & 52474u, reverseBits(~(u_input.a ^ 0u))), ~1u);
    let var_2 = select(vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(2076u, 0u >> (u_input.a % 32u)), 11u)], true || global1[_wgslsmith_index_u32(1u, 11u)]), !select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false), vec2<bool>(true, true), all(select(vec4<bool>(global1[_wgslsmith_index_u32(5271u, 11u)], false, global1[_wgslsmith_index_u32(4294967295u, 11u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], true, global1[_wgslsmith_index_u32(u_input.a, 11u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(24017u, 11u)], global1[_wgslsmith_index_u32(11225u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)])))), !any(func_1(-809f, reverseBits(vec2<i32>(-2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1674f, -404f) * vec2<f32>(-2326f, -443f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-2809f, _wgslsmith_f_op_f32(354f - -2223f), _wgslsmith_f_op_f32(f32(-1f) * -866f))))));
    let var_4 = -2735i;
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-277f, u_input.a, -44513i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, ~17436u, 4553u), _wgslsmith_clamp_vec4_u32(vec4<u32>(57395u, u_input.a, 3262u, u_input.a), vec4<u32>(31402u, u_input.a, 25379u, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 78461u, u_input.a) ^ vec4<u32>(4294967295u, 4221u, u_input.b.x, u_input.a))) % 32u));
}


struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: array<i32, 31>;

var<private> global2: vec4<u32> = vec4<u32>(45416u, 0u, 22616u, 84677u);

var<private> global3: f32;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    var var_0 = false;
    var var_1 = Struct_1(true, ~global2.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(10793u, 31u)], u_input.c, 30561i), -(vec3<i32>(1i, u_input.b, -745i) & vec3<i32>(-9020i, global1[_wgslsmith_index_u32(37062u, 31u)], 1i)))));
    global4 = 2147483647i;
    let var_2 = -(~1i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-798f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1325f * _wgslsmith_f_op_f32(floor(-1326f))))))), -772f, -1501f);
    return true;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    global1 = array<i32, 31>();
    let var_0 = arg_1;
    var var_1 = abs(1u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1f), 1290f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-295f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-266f)))), 428f));
    let var_3 = Struct_2(!select(arg_1.a, !var_0.a, select(vec3<bool>(arg_0, false, var_0.c.a), arg_1.a, true)), min(_wgslsmith_clamp_u32(~4811u, ~26922u, max(min(4294967295u, 4294967295u), firstTrailingBit(var_0.b))), var_0.b), Struct_1(select(true, var_2.x > var_2.x, !arg_1.a.x), ~var_0.c.b & ~4294967295u, _wgslsmith_mult_i32(-u_input.b, i32(-1i) * -11419i)), 1i);
    return _wgslsmith_div_i32(var_3.c.c, -4478i);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = vec3<bool>((!func_2() || true) & any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), !(min(func_3(false, Struct_2(vec3<bool>(false, false, true), 100389u, Struct_1(true, global2.x, global1[_wgslsmith_index_u32(global2.x, 31u)]), 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(23462i, global1[_wgslsmith_index_u32(0u, 31u)], u_input.c, u_input.c), vec4<i32>(u_input.e, u_input.b, 1i, -39859i))) <= select(44458i, -13382i, true)), false);
    var_0 = select(vec3<bool>(true, var_0.x, !any(!vec2<bool>(true, var_0.x))), select(vec3<bool>(true, false, all(!var_0.yx)), select(vec3<bool>(!var_0.x, true, true), vec3<bool>(select(var_0.x, var_0.x, var_0.x), var_0.x, any(vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(true, true, false)), all(var_0.xx)), false);
    let var_1 = i32(-1i) * -global1[_wgslsmith_index_u32(global2.x, 31u)];
    global4 = var_1;
    global3 = 591f;
    return Struct_2(vec3<bool>(true, select(var_0.x, true, false), !var_0.x), 0u, Struct_1(true, global2.x, 31609i | _wgslsmith_clamp_i32(select(-59585i, 2147483647i, false), countOneBits(global1[_wgslsmith_index_u32(u_input.d, 31u)]), -2013i >> (u_input.a.x % 32u))), ~firstTrailingBit(_wgslsmith_mod_i32(~var_1, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1453f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(116f * 2437f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -515f)))))))));
    let var_1 = !(firstTrailingBit(firstLeadingBit(u_input.d)) >= 1u);
    let var_2 = vec2<f32>(var_0, var_0);
    let var_3 = -1619f;
    let var_4 = Struct_1(false, ~4294967295u, max(-(78047i & u_input.c) << (_wgslsmith_div_u32(68793u >> (0u % 32u), global2.x >> (1u % 32u)) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(16910u, reverseBits(u_input.a.x)), 31u)]));
    var var_5 = func_1(var_3);
    global2 = ~vec4<u32>(global2.x, 10453u, max(4294967295u, 73477u), 68497u) ^ ~vec4<u32>(_wgslsmith_sub_u32(u_input.d, var_5.c.b), 19612u, reverseBits(4294967295u), var_4.b);
    global0 = array<vec2<bool>, 10>();
    global4 = ~abs(min(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 31u)], global1[_wgslsmith_index_u32(14719u, 31u)], global1[_wgslsmith_index_u32(17387u, 31u)]), vec3<i32>(1i, global1[_wgslsmith_index_u32(29044u, 31u)], var_4.c)), _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global2.x, 31u)], global1[_wgslsmith_index_u32(var_5.b, 31u)], 24055i), vec3<i32>(67822i, u_input.e, 0i))), min(min(global1[_wgslsmith_index_u32(4294967295u, 31u)], 0i), -var_5.c.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 850f)))), reverseBits(abs(8141u) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xx, u_input.a.xy), vec2<u32>(4294967295u, global2.x) ^ global2.yx)), var_2.x, i32(-1i) * -5542i);
}


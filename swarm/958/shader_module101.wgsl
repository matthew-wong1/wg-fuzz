struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, -1401f, vec3<u32>(1u, 1u, 30555u));

var<private> global1: Struct_1 = Struct_1(1u, 338f, vec3<u32>(1u, 26247u, 38366u));

var<private> global2: array<Struct_1, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    global1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(15336u, global1.c.x), global0.c.x, 1u)), 6u)];
    global2 = array<Struct_1, 6>();
    var var_0 = vec2<f32>(global1.b, 1202f);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~abs(u_input.a)), select(~(u_input.a << (~35466u % 32u)), global0.a << ((u_input.a & min(global1.a, global0.a)) % 32u), !(false == (u_input.a != 4294967295u)))), 6u)];
    var var_2 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1381f)))) - global0.b) - _wgslsmith_f_op_f32(-global1.b)), global0.c);
    return ~(~_wgslsmith_sub_i32(~(-27413i), _wgslsmith_mult_i32(min(0i, -47594i), 1i)));
}

fn func_4(arg_0: bool, arg_1: bool) -> vec3<bool> {
    global1 = Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 19347u, 16478u, global1.c.x), vec4<u32>(global1.a, u_input.a, u_input.a, global0.a) & vec4<u32>(92930u, 16704u, global0.c.x, global0.a)) >> (0u % 32u), 269f, max(~(~vec3<u32>(0u, 34018u, global0.c.x)), vec3<u32>(global1.a, 12100u, 16967u)));
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-442f, _wgslsmith_f_op_f32(trunc(global0.b)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * var_0.b) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1429f, -790f) + -1596f))));
    global2 = array<Struct_1, 6>();
    var var_2 = ~vec3<u32>(global0.c.x, ~var_0.a, abs(759u));
    return vec3<bool>(all(vec2<bool>(true, true)), select(select(all(!vec3<bool>(arg_1, arg_1, false)), !arg_0, true || all(vec4<bool>(false, arg_0, arg_0, false))), false, arg_1), !(!select(arg_0, true, !arg_1)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_4(any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), -(~1i) == func_3());
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(global1.c.x), 6u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(252f, 2081f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + arg_0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(244f, -950f, -1111f))) - vec3<f32>(-1166f, -1370f, global0.b)) * vec3<f32>(global0.b, _wgslsmith_div_f32(var_1.b, global1.b), -332f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 213f, -538f) - vec3<f32>(-573f, global0.b, 1893f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 302f, 848f))), _wgslsmith_div_vec3_f32(vec3<f32>(1014f, arg_0.x, global0.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-851f, arg_0.x, 368f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-434f))), 153f))));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -45601i, 0i), countOneBits(reverseBits(min(2147483647i, countOneBits(1i)))), -18289i, 1i);
    let var_4 = global2[_wgslsmith_index_u32(global0.c.x, 6u)];
    return global2[_wgslsmith_index_u32(global1.a, 6u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(abs(-605f))));
    let var_1 = global2[_wgslsmith_index_u32(29590u, 6u)];
    var var_2 = true;
    var var_3 = ~(-_wgslsmith_mod_i32(-5091i, countOneBits(i32(-1i) * -1i)));
    var var_4 = -1i;
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b, -1588f))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = !func_4(max(0u >> (arg_2 % 32u), 69047u ^ global1.c.x) >= 66725u, true);
    var var_1 = _wgslsmith_div_i32(i32(-1i) * -2147483647i, min(~(~select(54120i, -76435i, false)), -37210i));
    global0 = global2[_wgslsmith_index_u32(51416u, 6u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global1.b * 604f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, _wgslsmith_div_f32(2563f, global0.b))) - -702f));
    let var_3 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(sign(1886f))))), global1.c);
    return Struct_1(~(~arg_2), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(914f)) * _wgslsmith_f_op_f32(var_3.b + var_3.b)), -1065f, !var_0.x))), vec3<u32>(countOneBits(firstLeadingBit(163565u)), reverseBits(arg_0.c.x & 0u), global1.a) ^ vec3<u32>(~(arg_0.a << (var_3.a % 32u)), select(_wgslsmith_mod_u32(global1.c.x, arg_0.c.x), ~var_3.a, false), ~(4294967295u << (var_3.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(global0.a, 6u)];
    var var_0 = func_5(func_1(global0.c.x), 806f, 1u);
    var_0 = Struct_1(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13905u, 28797u, u_input.a), vec3<u32>(8364u, var_0.c.x, 38490u)), 23207u)) | func_5(func_5(global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -897f), 1u), _wgslsmith_div_f32(1940f, global0.b), ~(global1.a >> (global0.a % 32u))).c.x, _wgslsmith_f_op_f32(2353f + -187f), ~global0.c);
    global2 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-var_0.b);
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~0u)), ~0u), 6u)];
    let var_4 = global0.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(339f + 114f), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1892f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -573f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.x)), 871f, true))))));
}


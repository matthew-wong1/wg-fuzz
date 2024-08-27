struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(40144u, 1u, 4450u, 0u, 1u, 29322u, 58427u, 125703u, 1u, 1u, 0u, 0u, 1u, 61192u, 26469u, 19300u, 4294967295u, 1469u, 85610u, 4294967295u, 1u, 29861u, 70728u, 9676u, 4294967295u, 49857u, 1u, 104908u, 0u, 31371u, 53678u);

var<private> global1: vec2<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = arg_0.d;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.d.a));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))), arg_0.d, _wgslsmith_f_op_f32(trunc(191f)), 59994u, vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), false));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, -259f) - vec2<f32>(var_1.c, var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 769f)), _wgslsmith_div_vec2_f32(vec2<f32>(-2538f, var_1.c), vec2<f32>(-1842f, var_0.a)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, var_1.c)))))))) - vec2<f32>(var_1.a, 1000f));
    var var_3 = vec4<u32>(1u, ~(~(~u_input.b)) << (1u % 32u), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(~1u, _wgslsmith_sub_u32(1u, arg_0.a)), ~reverseBits(_wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(1u, 31u)], 1u))), ~2282u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(329f)), arg_1);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = 0u;
    var var_1 = Struct_2(u_input.b, arg_2.b, Struct_1(global1.x), Struct_1(global1.x));
    var var_2 = _wgslsmith_mod_vec3_i32(firstLeadingBit(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(31779i, 1i, 979i), vec3<i32>(-1i, -4900i, 23335i)))), firstLeadingBit(vec3<i32>(select(-u_input.d, ~u_input.a, select(arg_2.e.x, false, arg_2.e.x)), select(1i, _wgslsmith_div_i32(u_input.a, u_input.c.x), arg_2.e.x), _wgslsmith_add_i32(max(u_input.c.x, 0i), ~36892i))));
    var var_3 = Struct_2(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(~var_1.a, global0[_wgslsmith_index_u32(4330u, 31u)])), 31u)], ~_wgslsmith_add_u32(4294967295u, min(arg_2.d, 4294967295u)), arg_0), arg_2.b, arg_2.b, arg_2.b);
    var var_4 = !select(select(select(vec3<bool>(arg_2.e.x, false, arg_2.e.x), select(vec3<bool>(false, arg_2.e.x, arg_2.e.x), vec3<bool>(arg_2.e.x, false, arg_2.e.x), vec3<bool>(false, arg_2.e.x, arg_2.e.x)), !vec3<bool>(arg_2.e.x, true, false)), !(!vec3<bool>(arg_2.e.x, false, false)), any(!arg_2.e)), !vec3<bool>(true, true, arg_2.e.x & arg_2.e.x), !select(select(vec3<bool>(false, false, arg_2.e.x), vec3<bool>(arg_2.e.x, arg_2.e.x, arg_2.e.x), vec3<bool>(true, false, true)), !vec3<bool>(arg_2.e.x, arg_2.e.x, true), all(vec2<bool>(arg_2.e.x, arg_2.e.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.b.a, 247f)) - _wgslsmith_f_op_f32(-1060f * -839f));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_sub_u32(firstLeadingBit(12059u), u_input.b);
    let var_1 = Struct_3(global1.x, Struct_1(_wgslsmith_f_op_f32(func_4(~72961u, abs(_wgslsmith_div_vec2_u32(vec2<u32>(5621u, u_input.b), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], 37934u))), Struct_3(_wgslsmith_f_op_f32(1041f - 1283f), Struct_1(global1.x), _wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(global1.x), Struct_1(global1.x), Struct_1(global1.x)), 588f)), ~4294967295u, vec2<bool>(false, true))))), _wgslsmith_f_op_f32(min(-1091f, _wgslsmith_f_op_f32(-global1.x))), ~(~_wgslsmith_div_u32(20393u, 3781u)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), 70353u > global0[_wgslsmith_index_u32(4294967295u, 31u)])));
    var var_2 = ~_wgslsmith_add_vec4_u32(min(reverseBits(vec4<u32>(0u, var_1.d, 4294967295u, 0u)), vec4<u32>(u_input.b, var_1.d, u_input.b, 1u) << (vec4<u32>(var_1.d, 15695u, global0[_wgslsmith_index_u32(74402u, 31u)], 25149u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(22686u, 1u), var_1.d, _wgslsmith_add_u32(var_1.d, global0[_wgslsmith_index_u32(var_1.d, 31u)]), abs(global0[_wgslsmith_index_u32(u_input.b, 31u)]))) | ~vec4<u32>(_wgslsmith_mod_u32(u_input.b, firstLeadingBit(45419u)), var_1.d, global0[_wgslsmith_index_u32(4294967295u, 31u)], 1u);
    let var_3 = !select(select(vec3<bool>(true && var_1.e.x, any(vec3<bool>(false, false, false)), !var_1.e.x), !vec3<bool>(var_1.e.x, var_1.e.x, true), select(vec3<bool>(var_1.e.x, false, true), !vec3<bool>(false, var_1.e.x, var_1.e.x), true)), vec3<bool>(any(vec2<bool>(var_1.e.x, true)), any(vec4<bool>(true, var_1.e.x, var_1.e.x, false)), var_1.e.x), select(select(!vec3<bool>(var_1.e.x, false, var_1.e.x), !vec3<bool>(true, var_1.e.x, true), any(vec2<bool>(true, var_1.e.x))), select(select(vec3<bool>(true, false, var_1.e.x), vec3<bool>(false, var_1.e.x, true), vec3<bool>(var_1.e.x, false, var_1.e.x)), vec3<bool>(var_1.e.x, var_1.e.x, true), true), any(vec2<bool>(false, true))));
    global0 = array<u32, 31>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(func_3(Struct_2(7097u, var_1.b, Struct_1(var_1.a), var_1.b), global1.x)), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -261f)), var_1.b.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.x));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))), Struct_1(var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))), ~global0[_wgslsmith_index_u32(max(abs(~global0[_wgslsmith_index_u32(1959u, 31u)]), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 82504u), 31u)]), 31u)], vec2<bool>(true, true));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_2());
    var var_4 = global1.x;
    return Struct_1(-569f);
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = array<u32, 31>();
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(1u), 31u)];
    var var_1 = 884f;
    var_1 = _wgslsmith_f_op_f32(-arg_0.c.a);
    var var_2 = arg_0;
    return _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(3697u, 31u)], _wgslsmith_div_u32(1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(global0[_wgslsmith_index_u32(func_5(Struct_2(~4294967295u, Struct_1(_wgslsmith_f_op_f32(-517f - global1.x)), Struct_1(global1.x), func_1())), 31u)], max(_wgslsmith_mod_u32(~(~4294967295u), func_5(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38337u, 31u)], 31u)], 31u)], 31u)], Struct_1(global1.x), Struct_1(1566f), Struct_1(global1.x))) | ~4294967295u), u_input.b), func_5(Struct_2(_wgslsmith_add_u32(u_input.b, 62607u) ^ ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], Struct_1(_wgslsmith_f_op_f32(global1.x + 1312f)), func_1(), Struct_1(_wgslsmith_f_op_f32(abs(890f))))));
    let var_1 = vec4<u32>(~(select(~4294967295u, ~global0[_wgslsmith_index_u32(var_0.x, 31u)], false) ^ global0[_wgslsmith_index_u32(~var_0.x >> (global0[_wgslsmith_index_u32(var_0.x, 31u)] % 32u), 31u)]), var_0.x, ~4439u, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 0u), ~0u));
    let var_2 = var_0;
    var var_3 = select(select(vec2<bool>(true | all(vec4<bool>(true, true, false, false)), true), !vec2<bool>(all(vec4<bool>(true, false, false, false)), true), select(_wgslsmith_div_f32(global1.x, 682f) == _wgslsmith_f_op_f32(-global1.x), false | all(vec2<bool>(false, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(all(vec3<bool>(true, true, false)), (3509i != u_input.c.x) & (8646u == var_1.x)), vec2<bool>(true, true)), !(select(select(false, false, true), all(vec4<bool>(true, true, true, true)), true) | (_wgslsmith_f_op_f32(-global1.x) != global1.x)));
    let var_4 = Struct_1(global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}


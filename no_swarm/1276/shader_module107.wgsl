struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, -665f);

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: array<bool, 9> = array<bool, 9>(false, true, false, false, true, true, true, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(46541u & select(global0.a, _wgslsmith_div_u32(12490u, 0u ^ global0.a), all(select(vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 9u)], true, global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)], false), global2[_wgslsmith_index_u32(global0.a, 9u)]))), -1649f);
    var_0 = Struct_1(abs(47230u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b + -1538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 513f) + _wgslsmith_f_op_f32(ceil(global0.b))) - _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(-global0.b), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 9u)]))) + _wgslsmith_f_op_f32(round(562f))), global0.b));
    let var_2 = select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], ~firstTrailingBit(global0.a) >= global0.a), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1776f)), _wgslsmith_f_op_f32(round(global0.b))) <= global0.b, !(false && (global2[_wgslsmith_index_u32(global0.a, 9u)] | global2[_wgslsmith_index_u32(29935u, 9u)]))), !(any(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.a, 9u)], false)) && true));
    var var_3 = select(vec4<bool>(all(!select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.a, 9u)], true, var_2.x), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a, 9u)], false, false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(77478u, 9u)]))), global0.b < 1214f, !any(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_0.a, 9u)]), true)), true), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(23587u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], var_2.x, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(_wgslsmith_f_op_f32(ceil(-1400f)) == _wgslsmith_f_op_f32(1773f * var_0.b), false, global2[_wgslsmith_index_u32(~max(6530u, 4294967295u), 9u)], true), select(vec4<bool>(all(var_2), true, false || var_2.x, any(vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 9u)], false, true))), vec4<bool>(all(var_2), !global2[_wgslsmith_index_u32(71262u, 9u)], any(vec3<bool>(true, var_2.x, global2[_wgslsmith_index_u32(4294967295u, 9u)])), u_input.a > 34534u), true)), true);
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = u_input.a & ~(_wgslsmith_add_u32(70988u, ~arg_1.a) & _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.a, 19372u), u_input.a, func_3()));
    var_0 = 1u;
    let var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b - 1833f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1231f, arg_1.b)) + _wgslsmith_f_op_f32(global0.b * global0.b))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a, firstLeadingBit(4294967295u)), 9u)] && var_1;
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0, 2147483647i), vec2<i32>(0i, arg_0), var_1), min(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, 54373i))), -27154i, arg_0, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0, arg_0, arg_0, 0i) ^ vec4<i32>(arg_0, 11867i, arg_0, arg_0)), select(~vec4<i32>(1i, 2147483647i, -1i, -27953i), -vec4<i32>(50266i, 0i, -69027i, -1i), !vec4<bool>(false, false, var_1, true)))), vec4<i32>(_wgslsmith_mult_i32(~countOneBits(arg_0), ~arg_0), _wgslsmith_div_i32(arg_0, -arg_0), arg_0, 0i));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0 & var_3.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(-var_3.x, 15077i >> (0u % 32u)), arg_0)), -vec2<i32>(~firstTrailingBit(-14502i), var_3.x ^ ~2147483647i));
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_div_i32(countOneBits(-18498i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(22298i, 0i)) ^ _wgslsmith_sub_i32(1i, 1i));
    let var_1 = vec3<u32>(59060u, (u_input.a | 27212u) >> ((u_input.a & global0.a) % 32u), u_input.a);
    var var_2 = vec3<i32>(-31552i & _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, 7640i)), func_2(2147483647i, Struct_1(0u, global0.b))), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, -1i, -1i)), ~vec3<i32>(0i, 101458i, -35691i), abs(vec3<i32>(0i, -2147483647i, 59022i)))), abs(1i)) ^ ~(-vec3<i32>(func_2(-1i, Struct_1(u_input.a, global0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 31773i, -7580i), vec3<i32>(-40953i, 0i, 12335i)), min(-2147483647i, -13773i)));
    global0 = Struct_1(~var_1.x, _wgslsmith_f_op_f32(global0.b - global0.b));
    var var_3 = _wgslsmith_sub_i32(-14987i, _wgslsmith_sub_i32(-2147483647i, var_2.x));
    return Struct_1(var_1.x, _wgslsmith_f_op_f32(-global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 9>();
    let var_0 = func_1();
    var var_1 = var_0;
    global1 = array<vec2<u32>, 11>();
    var var_2 = var_0;
    var var_3 = ~vec4<i32>(1i, 1i, 1i, -1i);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_div_f32(global0.b, var_2.b)))));
    var_2 = Struct_1(~64230u, var_2.b);
    var_3 = abs((vec4<i32>(-1i) * -(~vec4<i32>(var_3.x, 2147483647i, var_3.x, var_3.x))) << (min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, var_1.a), vec3<u32>(u_input.a, 4294967295u, var_1.a)), 1u, firstTrailingBit(83055u), 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(27219u, u_input.a, 1u, 43622u), ~vec4<u32>(4294967295u, 4294967295u, var_2.a, 70644u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(1i, var_3.x), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 6494u, global0.a), vec3<u32>(var_1.a, 0u, 1u)))));
}


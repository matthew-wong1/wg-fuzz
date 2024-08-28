struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -42038i, 862f, vec3<bool>(false, false, true));

var<private> global1: array<f32, 29>;

var<private> global2: vec3<u32>;

var<private> global3: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = vec4<i32>((21223i & global0.b) | global0.b, 1i, global0.b, 1i) << (abs(vec4<u32>(min(global2.x, ~4294967295u), countOneBits(global2.x), 1u, firstTrailingBit(_wgslsmith_add_u32(1u, u_input.c)))) % vec4<u32>(32u));
    var var_1 = select(vec4<bool>(false, !all(global0.d.xy), !select(global0.a, !global0.d.x, true), !(true || global0.a)), !select(vec4<bool>(false, true, false, all(vec2<bool>(global0.a, global0.d.x))), vec4<bool>(any(global3[_wgslsmith_index_u32(1u, 5u)]), !global0.a, all(global0.d.xy), global1[_wgslsmith_index_u32(46721u, 29u)] <= global1[_wgslsmith_index_u32(global2.x, 29u)]), select(vec4<bool>(global0.d.x, true, false, true), !global3[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(global0.a, false, false, false))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.x, 81663u, 13038u), ~24201u)), 5u)]);
    var var_2 = ~select(~vec4<u32>(firstLeadingBit(u_input.c), u_input.c, global2.x, global2.x), ~(~(~vec4<u32>(u_input.c, 0u, 0u, global2.x))), true);
    let var_3 = Struct_1(all(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 5u)]), 1i, _wgslsmith_f_op_f32(458f - _wgslsmith_div_f32(-1162f, global1[_wgslsmith_index_u32(~(u_input.c & 0u), 29u)])), !vec3<bool>(global0.a, true, all(global0.d)));
    var var_4 = u_input.d;
    return _wgslsmith_div_i32(-2147483647i, var_3.b);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_2(~(-u_input.d & max(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), abs(vec4<i32>(u_input.b, u_input.d.x, 0i, u_input.d.x)))), _wgslsmith_f_op_f32(max(-119f, global0.c)), Struct_1(true, reverseBits(u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), global0.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-493f, -529f)), global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(arg_0, 29u)]));
    var var_1 = 10814u;
    let var_2 = global0.b;
    let var_3 = Struct_2(-var_0.a & vec4<i32>(func_3(), _wgslsmith_div_i32(3460i, func_3()), _wgslsmith_div_i32(min(0i, u_input.d.x), 2147483647i << (global2.x % 32u)), -func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * -1000f)), Struct_1(!(!any(global3[_wgslsmith_index_u32(23371u, 5u)])), -3878i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2151f)))), !select(select(vec3<bool>(false, true, global0.a), var_0.c.d, vec3<bool>(var_0.c.d.x, false, true)), var_0.c.d, select(vec3<bool>(false, global0.d.x, global0.a), global0.d, true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-952f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(22931u, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f * global0.c))), vec3<f32>(1000f, -1022f, _wgslsmith_f_op_f32(-622f + -449f)), !vec3<bool>(global0.d.x, any(vec4<bool>(global0.d.x, false, var_0.c.a, true)), false))));
    var var_4 = 24966u;
    return var_0.c.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global0.b;
    global3 = array<vec4<bool>, 5>();
    var var_1 = vec2<u32>(global2.x, reverseBits(global2.x));
    global0 = arg_0.c;
    let var_2 = Struct_1(!(min(abs(4294967295u), _wgslsmith_add_u32(4294967295u, global2.x)) >= min(~u_input.c, ~419u)), 19398i, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 29u)], _wgslsmith_f_op_f32(-142f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c))))), arg_1.d);
    return arg_0.c;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    global0 = func_4(Struct_2(~vec4<i32>(func_2(u_input.c), _wgslsmith_sub_i32(-1i, arg_2.a.x), -2147483647i, -1i), _wgslsmith_f_op_f32(-arg_2.c.c), arg_2.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(-840f, arg_0.x)), _wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_f_op_f32(f32(-1f) * -326f)), arg_2.d, select(select(vec3<bool>(false, global0.a, false), vec3<bool>(arg_2.c.a, arg_2.c.a, false), vec3<bool>(false, true, global0.d.x)), global0.d, arg_2.c.d)))), Struct_1(_wgslsmith_add_i32(global0.b & -1i, _wgslsmith_mod_i32(u_input.d.x, -33031i)) != select(-53959i, ~55997i, global0.a), -firstLeadingBit(i32(-1i) * -33928i), 532f, vec3<bool>(global0.a, false, true)));
    let var_0 = _wgslsmith_add_i32(~(-2147483647i), reverseBits(u_input.d.x)) ^ -select(-7797i, _wgslsmith_dot_vec3_i32(min(u_input.d.zzy, vec3<i32>(global0.b, global0.b, 2147483647i)), _wgslsmith_sub_vec3_i32(arg_2.a.xyx, vec3<i32>(-33468i, 17305i, -10967i))), true);
    var var_1 = arg_2;
    var_1 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(7139i, global0.b, u_input.d.x, var_0)), vec4<i32>(-1i) * -vec4<i32>(-8454i, global0.b, global0.b, arg_2.c.b)), 378f, arg_2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(154f, -256f, var_1.d.x))), _wgslsmith_div_vec3_f32(arg_2.d, vec3<f32>(arg_0.x, -1520f, -1660f)), !arg_2.c.d)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0)))) - var_1.d));
    var_1 = Struct_2(reverseBits(arg_2.a) >> (~vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.c, 1u, 58651u), vec4<u32>(4294967295u, 88062u, 1u, 19717u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, global2.x, u_input.c), vec3<u32>(34909u, 1u, global2.x)), 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 29u)] - var_1.d.x), 1051f)))), var_1.c, vec3<f32>(-1640f, 1000f, _wgslsmith_f_op_f32(var_1.c.c * _wgslsmith_f_op_f32(abs(-742f)))));
    return ~abs(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, global2.x, u_input.c), vec4<u32>(30412u, 0u, u_input.c, u_input.c), vec4<u32>(global2.x, global2.x, 32689u, 4294967295u))) << (vec4<u32>(arg_1 << (0u % 32u), arg_1, arg_1, 1u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 5>();
    var var_0 = max(~(~(~(vec4<u32>(1u, 0u, 46271u, 1u) << (vec4<u32>(u_input.c, 36403u, global2.x, 76201u) % vec4<u32>(32u))))), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(global2.x, 29u)], -1463f, global1[_wgslsmith_index_u32(global2.x, 29u)]))), vec3<f32>(1396f, _wgslsmith_f_op_f32(f32(-1f) * -1676f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9820u, 29u)])), global0.d)), 4294967295u, Struct_2(u_input.d, _wgslsmith_f_op_f32(floor(-335f)), Struct_1(global0.d.x, firstTrailingBit(28842i), global1[_wgslsmith_index_u32(select(23329u, 71462u, global0.a), 29u)], !global0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global1[_wgslsmith_index_u32(global2.x, 29u)], global0.c))))));
    let var_1 = vec3<i32>(-1i, (~global0.b | countOneBits(_wgslsmith_mult_i32(global0.b, 2147483647i))) ^ global0.b, ~(-u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_0.zzy, var_0.ywz) | ~vec3<u32>(var_0.x, abs(global2.x), ~1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(100564u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(1u, 29u)], -850f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 29u)] * 656f), 212f))))));
}


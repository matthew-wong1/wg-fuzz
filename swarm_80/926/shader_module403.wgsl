struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 12> = array<u32, 12>(101160u, 46790u, 4070u, 53497u, 1u, 0u, 4294967295u, 6397u, 0u, 68776u, 0u, 32408u);

var<private> global3: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-38995i, -49056i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -20271i), vec2<i32>(-15809i, 2147483647i), vec2<i32>(-1i, 45552i), vec2<i32>(7941i, 1i), vec2<i32>(11797i, 36688i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 63055i));

var<private> global4: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    global3 = array<vec2<i32>, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2189f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -407f), _wgslsmith_f_op_f32(floor(global1.d.x)))) * global1.a), any(global4[_wgslsmith_index_u32(0u, 24u)]), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -872f, global1.d.x, global1.d.x)), _wgslsmith_f_op_vec4_f32(step(global1.d, global1.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.d.x, global1.d.x, global1.a) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(346f, global1.d.x, -1498f, global1.d.x))))))));
    global0 = !vec4<bool>(select(all(select(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 24u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47217u, 12u)], 12u)], 24u)], vec4<bool>(global0.x, true, false, global1.b))), select(any(global4[_wgslsmith_index_u32(51011u, 24u)]), any(vec3<bool>(global0.x, global1.c, false)), !global1.c), var_0.b), true, var_0.b, global0.x);
    var var_1 = Struct_1(462f, global2[_wgslsmith_index_u32(49957u, 12u)] != ~1u, any(global0.yyy), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 708f, -1318f, global1.a))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.d.x), true, true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(global1.d, var_1.d, global0.x))))))));
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_1(global1.a, select(false & (_wgslsmith_mult_u32(0u, 1u) < _wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70567u, 12u)], 12u)])), all(global0.wyz), all(!arg_1) & !(arg_1.x | global1.c)), true, global1.d);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-firstTrailingBit(-u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.b.x), u_input.a, firstLeadingBit(-2147483647i), 2147483647i), vec4<i32>(func_3(), _wgslsmith_dot_vec4_i32(vec4<i32>(32950i, u_input.b.x, u_input.b.x, -29181i), vec4<i32>(u_input.b.x, u_input.b.x, -59405i, u_input.b.x)), u_input.a, abs(16833i)))), vec2<i32>(~u_input.a, 753i));
    global4 = array<vec4<bool>, 24>();
    var var_2 = global1.d.wx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(-global1.a))))));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, ~u_input.a);
    let var_1 = select(vec3<u32>(func_2(arg_1, global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27438u, 12u)], 12u)], 12u)], 12u)], 12u)], 24u)]) ^ global2[_wgslsmith_index_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63658u, 12u)], 12u)], 12u)], 12u)]), 12u)], firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(24955u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60668u, 12u)], 12u)], 12u)], 69777u, 4294967295u), ~vec4<u32>(13725u, global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(82677u, 12u)]))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(28766u, 12u)]), 12u)], 4294967295u), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38894u, 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 46166u), vec3<u32>(73927u, global2[_wgslsmith_index_u32(3054u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)])), 12u)])), min(~firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86609u, 12u)], 12u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 54150u, 53208u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 26202u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28862u, 12u)], 12u)])) >> (~vec3<u32>(global2[_wgslsmith_index_u32(19221u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19822u, 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52892u, 12u)], 12u)]) % vec3<u32>(32u))) | (~_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52336u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(30185u, 12u)], 41441u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10894u, 12u)], 12u)], global2[_wgslsmith_index_u32(1u, 12u)])) & vec3<u32>(4294967295u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1u, 12u)], 73195u, 1u), 1u)), false);
    var var_2 = Struct_1(1208f, !(!all(select(vec3<bool>(arg_0.c, arg_1.b, arg_0.b), global0.xzy, vec3<bool>(false, false, arg_1.c)))), true, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.d.x + -244f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1603f), _wgslsmith_f_op_f32(floor(-741f))))), 844f, _wgslsmith_f_op_f32(f32(-1f) * -383f)));
    global1 = arg_0;
    global1 = arg_0;
    return _wgslsmith_f_op_f32(-arg_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 9>();
    let var_0 = !vec2<bool>(global1.b, !global1.b);
    global2 = array<u32, 12>();
    var var_1 = ~abs(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, 0i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a, u_input.a, 35694i)));
    global3 = array<vec2<i32>, 9>();
    var var_2 = 0u & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(1u), ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65465u, 12u)], 12u)], 12u)])) & 1u, 12u)];
    let var_3 = !global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.ywz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, global0.x || var_0.x, any(vec3<bool>(var_0.x, true, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(global1.d))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -585f), all(vec3<bool>(true, var_0.x, true)), true, global1.d))), -1416f), select(firstTrailingBit(~vec4<i32>(-1i, var_1.x, u_input.b.x, var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(25007i, u_input.b.x, 1i, var_1.x), vec4<i32>(var_1.x, u_input.b.x, u_input.a, u_input.b.x)) ^ vec4<i32>(u_input.b.x, u_input.a, -54033i, 1i), select(!global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 24u)], select(vec4<bool>(false, global1.b, global1.c, var_0.x), vec4<bool>(var_3, var_0.x, var_0.x, var_3), var_0.x), var_0.x)) >> (reverseBits(~reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 12u)], 0u, global2[_wgslsmith_index_u32(0u, 12u)]))) % vec4<u32>(32u)));
}


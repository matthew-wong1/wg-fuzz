struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(true, Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), false), Struct_3(true, Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), true), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(true, true), true), Struct_3(true, Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), false), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(false, true), false), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(true, false), false), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(false, false), true), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(true, false), true), Struct_3(false, Struct_1(vec2<bool>(false, true)), vec2<bool>(false, true), true), Struct_3(true, Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), true), Struct_3(false, Struct_1(vec2<bool>(true, false)), vec2<bool>(false, true), false), Struct_3(false, Struct_1(vec2<bool>(true, false)), vec2<bool>(false, false), false), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(false, true), true), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(true, false), true), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(false, false), false), Struct_3(true, Struct_1(vec2<bool>(true, true)), vec2<bool>(true, false), true), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(false, false), true), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(false, false), false), Struct_3(false, Struct_1(vec2<bool>(true, false)), vec2<bool>(false, false), true), Struct_3(false, Struct_1(vec2<bool>(false, true)), vec2<bool>(true, true), false), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(false, false), true), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(true, false), true), Struct_3(false, Struct_1(vec2<bool>(true, false)), vec2<bool>(true, true), false), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(false, true), true), Struct_3(true, Struct_1(vec2<bool>(true, false)), vec2<bool>(true, false), true), Struct_3(false, Struct_1(vec2<bool>(true, true)), vec2<bool>(false, true), true), Struct_3(true, Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), true), Struct_3(false, Struct_1(vec2<bool>(false, false)), vec2<bool>(false, false), true), Struct_3(true, Struct_1(vec2<bool>(false, true)), vec2<bool>(false, false), false), Struct_3(true, Struct_1(vec2<bool>(true, true)), vec2<bool>(true, false), false));

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-251f, vec4<i32>(-22071i, -1i, -42384i, -3252i), 2147483647i, false, -1943f), Struct_2(-903f, vec4<i32>(1i, 0i, -1i, -18865i), 4305i, false, -339f), Struct_2(423f, vec4<i32>(-51371i, 1i, 18454i, 24647i), -19139i, true, 1480f), Struct_2(1000f, vec4<i32>(0i, -2698i, 2147483647i, -13764i), 14085i, true, 178f), Struct_2(-1000f, vec4<i32>(2147483647i, -26968i, 6609i, 1i), -60682i, true, 1549f), Struct_2(-1000f, vec4<i32>(-6092i, 1i, i32(-2147483648), i32(-2147483648)), 1i, true, -233f), Struct_2(789f, vec4<i32>(i32(-2147483648), 1i, -1i, 20521i), 1i, true, 788f), Struct_2(1096f, vec4<i32>(47608i, -42682i, 6006i, i32(-2147483648)), -41805i, true, -916f), Struct_2(1276f, vec4<i32>(-27080i, -7255i, -1i, -15996i), 1i, false, 1207f), Struct_2(248f, vec4<i32>(61585i, 35338i, i32(-2147483648), -13093i), i32(-2147483648), true, 1133f), Struct_2(-1670f, vec4<i32>(-75331i, 2147483647i, -1i, 1i), -11133i, false, -700f), Struct_2(-1205f, vec4<i32>(-1i, -1i, 2147483647i, 1i), 0i, true, 1858f), Struct_2(1697f, vec4<i32>(-1525i, -1i, -1i, -11918i), -32674i, true, 609f), Struct_2(-1000f, vec4<i32>(-1i, 24628i, 1i, 2147483647i), -10198i, false, 1252f), Struct_2(1952f, vec4<i32>(762i, 2147483647i, -6178i, 0i), -2679i, true, -126f), Struct_2(-861f, vec4<i32>(2147483647i, -10212i, -1i, -4039i), 24686i, true, 706f), Struct_2(624f, vec4<i32>(0i, i32(-2147483648), -1i, 0i), 2147483647i, false, 1000f), Struct_2(-688f, vec4<i32>(1i, 0i, 1i, -14689i), i32(-2147483648), true, 1000f), Struct_2(712f, vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648)), 25462i, true, 274f), Struct_2(511f, vec4<i32>(-18365i, 17744i, 1i, 1i), 24961i, true, -784f), Struct_2(-1227f, vec4<i32>(-1i, i32(-2147483648), -14093i, 1i), 28903i, true, -1381f), Struct_2(-998f, vec4<i32>(24733i, 24281i, -49051i, 2147483647i), 10553i, false, 176f));

var<private> global4: vec4<i32> = vec4<i32>(-20948i, -1i, 6441i, 15021i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 27u)];
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1, 4294967295u), ~abs(firstTrailingBit(u_input.c.x)));
    var var_2 = Struct_4(1i, !select(vec4<bool>(true, !var_0.a.x, false, true), vec4<bool>(all(vec4<bool>(arg_2.d, var_0.a.x, arg_2.d, var_0.a.x)), arg_2.e > arg_2.a, false, -29656i > global4.x), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(221f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a)) - _wgslsmith_f_op_f32(min(arg_2.e, _wgslsmith_div_f32(554f, _wgslsmith_f_op_f32(ceil(-236f)))))));
}

fn func_2() -> Struct_4 {
    let var_0 = vec2<bool>(true, true);
    global3 = array<Struct_2, 22>();
    let var_1 = true;
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.c.x, 0u, 6143u, u_input.c.x), 4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 22u)]))) - 1f)));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(min(-2147483647i, u_input.b) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 61903u), vec2<u32>(1u, u_input.c.x)) % 32u), -global4.x, 60114i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-35636i, global4.x), _wgslsmith_div_i32(1i, -13821i))), vec4<i32>(~(-1i), global4.x, -2147483647i, ~_wgslsmith_mult_i32(u_input.b, u_input.a.x))), (-vec4<i32>(u_input.b, global4.x, global4.x, global4.x) << (~(~vec4<u32>(u_input.c.x, 21109u, 1663u, 0u)) % vec4<u32>(32u))) << (~vec4<u32>(u_input.c.x, 0u, ~62704u, 4294967295u) % vec4<u32>(32u)));
    return Struct_4(_wgslsmith_add_i32(~global4.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global4.x, 0i, 2147483647i), vec4<i32>(775i, 22379i, -63967i, u_input.b)), global4.x)), select(vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(var_1, true, var_0.x), var_0.x)), var_0.x, var_1, ~1u >= reverseBits(u_input.c.x)), vec4<bool>(all(!vec4<bool>(false, var_1, true, false)), true, true & var_1, var_0.x), vec4<bool>(var_1, var_0.x, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = select(4294967295u >> (_wgslsmith_add_u32(u_input.c.x, abs(~62036u)) % 32u), reverseBits(u_input.c.x ^ ~78864u), func_2().b.x);
    global2 = array<Struct_3, 30>();
    var var_1 = Struct_4(u_input.a.x, select(select(vec4<bool>(true, true, arg_1.x, true), select(arg_2.b, vec4<bool>(arg_1.x, arg_2.b.x, true, false), arg_1.x), any(!vec2<bool>(arg_1.x, arg_0.a.x))), select(vec4<bool>(false, select(false, arg_0.a.x, true), !arg_1.x, arg_2.a < 16097i), vec4<bool>(true, arg_1.x, true, true), all(arg_1)), arg_1.x));
    let var_2 = ~vec4<i32>(func_2().a, -1i, 2147483647i, 0i);
    let var_3 = func_2();
    return !vec4<bool>(true, !(!(arg_2.b.x || false)), select(select(arg_2.b.x, true, false), any(var_3.b.wy), select(arg_2.b.x, false, true)) && arg_1.x, !all(vec4<bool>(false, arg_2.b.x, arg_2.b.x, var_1.b.x)));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = array<Struct_3, 30>();
    var var_0 = true;
    var var_1 = Struct_4(global4.x, !func_4(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), func_2()));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2019f, 197f)), _wgslsmith_f_op_f32(f32(-1f) * -986f), all(vec2<bool>(true, var_1.b.x))))), -1337f) - 1f);
    var var_3 = var_1.b.x;
    return _wgslsmith_f_op_f32(-338f * _wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 22>();
    global1 = _wgslsmith_f_op_f32(-750f - _wgslsmith_div_f32(-972f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b)))))));
    var var_0 = global0[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(min(0u, 1u), u_input.c.x), 4294967295u, any(vec2<bool>(true, true))) ^ select(abs(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 0u))), u_input.c.x & 1u, all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))))), 27u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2895f, -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -488f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1132f)) * _wgslsmith_f_op_f32(sign(658f))))), vec4<i32>(-57319i, ~(-14894i), u_input.b, firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global4.x, u_input.a.x, global4.x), vec4<i32>(u_input.b, u_input.b, global4.x, u_input.b)))), -1i << (u_input.c.x % 32u), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1335f + 245f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, 1101f)))), -965f)));
    global4 = vec4<i32>(func_2().a, var_1.c, 0i, 10550i);
    var var_2 = var_1.e;
    global2 = array<Struct_3, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.e)), _wgslsmith_f_op_f32(f32(-1f) * -536f), _wgslsmith_f_op_f32(-var_1.e)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, -298f, -325f))))), global4.x, var_1.b.x, _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(4163u, u_input.c.x)), max(u_input.c.x, 4294967295u >> ((u_input.c.x | u_input.c.x) % 32u))));
}


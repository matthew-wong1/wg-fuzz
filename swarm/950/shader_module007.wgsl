struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(-1885f, 1559f, -502f);

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<i32>(59204i, 36425i), 71432i, 23757u, 4563u), Struct_1(vec2<i32>(20420i, 2147483647i), 1i, 3293u, 1u), Struct_1(vec2<i32>(1i, -1i), 1i, 1u, 104622u), Struct_1(vec2<i32>(16830i, -85668i), 0i, 0u, 137683u), Struct_1(vec2<i32>(1i, -64206i), 1i, 42334u, 30513u), Struct_1(vec2<i32>(0i, 60858i), 43487i, 0u, 1u), Struct_1(vec2<i32>(i32(-2147483648), -1i), -1i, 42746u, 1u), Struct_1(vec2<i32>(36475i, -1i), 2195i, 0u, 0u), Struct_1(vec2<i32>(-11268i, -4199i), i32(-2147483648), 4294967295u, 30934u), Struct_1(vec2<i32>(-1i, i32(-2147483648)), i32(-2147483648), 1366u, 0u), Struct_1(vec2<i32>(-20552i, -1i), 1i, 4294967295u, 33714u), Struct_1(vec2<i32>(14171i, 2147483647i), 1i, 50258u, 4294967295u), Struct_1(vec2<i32>(-1i, -30321i), -6539i, 18264u, 33059u), Struct_1(vec2<i32>(46678i, 1i), 49889i, 0u, 1u), Struct_1(vec2<i32>(-36222i, 30298i), 3510i, 1u, 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 1i, 0u, 39332u), Struct_1(vec2<i32>(-3852i, 2147483647i), -34402i, 1064u, 16251u), Struct_1(vec2<i32>(i32(-2147483648), -1i), 1i, 1u, 105413u), Struct_1(vec2<i32>(5366i, -50642i), 0i, 56345u, 30385u));

var<private> global3: array<bool, 28>;

var<private> global4: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(346f, _wgslsmith_div_f32(-1850f, 900f), _wgslsmith_f_op_f32(sign(-1433f))) - vec3<f32>(_wgslsmith_f_op_f32(round(976f)), _wgslsmith_f_op_f32(arg_1.x + global1.x), 1f)))), u_input.e, vec2<i32>(u_input.c, -59317i));
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = func_3(select(vec2<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 28u)], any(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(1u, 28u)], false))), vec2<bool>(!any(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], false)), any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], false))), !vec2<bool>(all(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.e, 28u)])), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 1u), 28u)])), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - _wgslsmith_f_op_f32(438f * 1557f))), _wgslsmith_div_f32(436f, global1.x), -153f, 431f));
    var var_1 = !select(!(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)], true, var_0), vec4<bool>(var_0, false, var_0, global3[_wgslsmith_index_u32(4294967295u, 28u)]), var_0)), vec4<bool>(any(vec3<bool>(true, false, var_0)), var_0, var_0, _wgslsmith_f_op_f32(trunc(-1061f)) <= _wgslsmith_f_op_f32(global1.x * -628f)), ~(~u_input.e) >= (_wgslsmith_sub_u32(u_input.d.x, u_input.e) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(5174u, 1u, arg_1.x), u_input.d) % 32u)));
    global0 = -121f;
    var var_2 = u_input.c;
    let var_3 = arg_0.x;
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-317f, 697f, _wgslsmith_f_op_f32(115f - global1.x))))));
    global3 = array<bool, 28>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-198f + global1.x), -502f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, -941f, global1.x), vec3<f32>(1078f, global1.x, global1.x))))), vec3<bool>(true, !global3[_wgslsmith_index_u32(abs(26007u), 28u)], func_3(!vec2<bool>(true, global3[_wgslsmith_index_u32(3927u, 28u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -948f, global1.x, -198f))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-377f, global1.x, 799f), vec3<f32>(global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, global1.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -667f), global1.x, 115f)));
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 906f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(961f + global1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -2424f, global1.x), vec3<f32>(global1.x, -385f, 1945f), global3[_wgslsmith_index_u32(arg_1.d, 28u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1000f, -1209f) + vec3<f32>(355f, -391f, -1485f))))));
    let var_0 = ~arg_1.c;
    return Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1289i, arg_0.b), arg_0.a), select(arg_0.a, arg_0.a, false)), abs(u_input.b) << (firstTrailingBit(4294967295u) % 32u)), -2147483647i, var_0, _wgslsmith_add_u32(arg_1.c, 34222u));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = func_4(Struct_1(min(-countOneBits(vec2<i32>(u_input.a, u_input.c)), vec2<i32>(func_2(vec3<f32>(440f, arg_1.x, arg_1.x), vec2<u32>(4294967295u, u_input.e), vec2<i32>(u_input.c, -2147483647i)), u_input.c)), u_input.a, arg_0, u_input.d.x), global2[_wgslsmith_index_u32(arg_0, 19u)]);
    global4 = !global3[_wgslsmith_index_u32(~arg_0, 28u)];
    global3 = array<bool, 28>();
    global1 = vec3<f32>(arg_1.x, 2042f, 1f);
    let var_1 = !(787f <= _wgslsmith_f_op_f32(-arg_1.x));
    return select(!vec3<bool>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) <= 1u, true, true), vec3<bool>(true, false, false), _wgslsmith_f_op_f32(trunc(global1.x)) >= _wgslsmith_f_op_f32(global1.x - global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = select(!(!func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(24404u, 9232u, 66450u, u_input.d.x), vec4<u32>(59908u, 38090u, u_input.e, 0u)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, -698f, -869f))))), !func_1(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, global1.x))), select(func_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1003f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1149f))))), vec3<bool>(!(global3[_wgslsmith_index_u32(0u, 28u)] | false), u_input.a > -26064i, !(!global3[_wgslsmith_index_u32(0u, 28u)])), vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.e, 135u), 28u)], global3[_wgslsmith_index_u32(~max(75187u, u_input.e), 28u)])));
    var_0 = u_input.a;
    global2 = array<Struct_1, 19>();
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1000f, global1.x)), u_input.d.zy, -vec2<i32>(u_input.c, u_input.a)) << (~(~94158u) % 32u), u_input.b), vec2<i32>(_wgslsmith_mod_i32(~select(u_input.c, u_input.a, global3[_wgslsmith_index_u32(u_input.d.x, 28u)]), reverseBits(-2147483647i)), _wgslsmith_mod_i32(u_input.b, 31243i)));
    var_2 = vec2<i32>(abs(u_input.b), -u_input.b);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-564f, global1.x, global1.x), vec3<f32>(global1.x, 1376f, 439f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, global1.x))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(min(global1.x, global1.x)))), _wgslsmith_mult_u32(u_input.e, u_input.d.x), vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, -2147483647i, 29847i, -2147483647i)), ~vec4<i32>(u_input.c, var_2.x, u_input.b, 17177i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, -29817i), var_2.x)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.d.x ^ 4294967295u, ~u_input.e), 11393u) % vec2<u32>(32u)));
    global2 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-max(2147483647i, var_2.x), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_3.c.x, -2147483647i), _wgslsmith_mod_i32(0i, var_2.x))), -firstLeadingBit(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.c.x, u_input.c, var_2.x, 0i), vec4<i32>(2147483647i, 0i, var_3.c.x, 14954i)), vec4<i32>(2147483647i, -4832i, 9824i, var_2.x), !global3[_wgslsmith_index_u32(1u, 28u)])));
}


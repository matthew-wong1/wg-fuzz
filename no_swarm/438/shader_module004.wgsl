struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 27>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), 2147483647i), -921f), Struct_3(vec2<u32>(0u, 1u), vec2<i32>(20531i, -30843i), 593f), Struct_3(vec2<u32>(1712u, 985u), vec2<i32>(-44969i, 1i), -261f), Struct_3(vec2<u32>(24702u, 1u), vec2<i32>(2147483647i, -1i), -217f), Struct_3(vec2<u32>(1u, 41248u), vec2<i32>(1i, -64062i), -903f), Struct_3(vec2<u32>(1u, 4294967295u), vec2<i32>(1i, i32(-2147483648)), 1606f), Struct_3(vec2<u32>(4294967295u, 20296u), vec2<i32>(16652i, 1597i), -148f), Struct_3(vec2<u32>(5206u, 35254u), vec2<i32>(-1i, 2147483647i), -1084f), Struct_3(vec2<u32>(1u, 95637u), vec2<i32>(i32(-2147483648), 25964i), -106f), Struct_3(vec2<u32>(1u, 4294967295u), vec2<i32>(2147483647i, -99867i), -1285f), Struct_3(vec2<u32>(0u, 1u), vec2<i32>(-1i, 2147483647i), -162f), Struct_3(vec2<u32>(11252u, 4294967295u), vec2<i32>(1i, 1i), -235f), Struct_3(vec2<u32>(4294967295u, 1u), vec2<i32>(i32(-2147483648), -18579i), 708f), Struct_3(vec2<u32>(4294967295u, 1u), vec2<i32>(i32(-2147483648), -26838i), 178f), Struct_3(vec2<u32>(14312u, 15046u), vec2<i32>(-227i, i32(-2147483648)), 737f), Struct_3(vec2<u32>(49955u, 18150u), vec2<i32>(-1i, 35934i), 650f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = !vec4<bool>(any(select(!vec3<bool>(arg_2, false, global2.a.b), vec3<bool>(arg_2, true, global2.a.b), -884f >= arg_3)), true, (abs(60123u) | abs(u_input.a.x)) <= (36602u & (91759u & global1[_wgslsmith_index_u32(1u, 27u)])), all(select(vec4<bool>(arg_2, global2.a.b, arg_2, false), vec4<bool>(arg_2, true, global2.a.b, true), false)) || select(arg_2, all(vec3<bool>(global2.a.b, false, false)), global2.a.b && false));
    global3 = array<Struct_3, 16>();
    let var_1 = !(!all(vec4<bool>(arg_2, true, false, false))) || global2.a.b;
    var var_2 = Struct_2(select(vec4<u32>(countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 27u)]) >> (global1[_wgslsmith_index_u32(~global2.a.a.x, 27u)] % 32u), global1[_wgslsmith_index_u32(~global2.a.a.x, 27u)], reverseBits(1u), 54684u), vec4<u32>(global2.a.a.x, 45075u, ~0u, 0u), select(vec4<bool>(global2.a.b, false, global2.a.b, all(vec3<bool>(false, global2.a.b, arg_2))), vec4<bool>(true, any(vec2<bool>(true, true)), !var_1, global2.a.b), true)), select(!vec2<bool>(all(var_0), !var_0.x), vec2<bool>(false, all(vec4<bool>(false, var_1, true, false))), vec2<bool>(true, any(vec4<bool>(false, var_1, arg_2, var_0.x)))), !(!arg_2), var_0.wx);
    let var_3 = select(vec4<bool>(_wgslsmith_div_i32(_wgslsmith_sub_i32(22426i, u_input.b), u_input.b & arg_1) <= (~arg_1 >> (_wgslsmith_mod_u32(15403u, u_input.a.x) % 32u)), !(11042i <= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.b, 35265i), vec4<i32>(-3914i, -2147483647i, u_input.b, -8332i))), !(!var_1), false), var_0, true);
    return _wgslsmith_div_f32(-2316f, _wgslsmith_f_op_f32(step(-148f, global0.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-895f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, global0.x, -1033f) * vec3<f32>(1131f, global0.x, -868f))), -74597i, true, _wgslsmith_f_op_f32(-global0.x))), global0.x, global0.x)));
    let var_1 = select(!vec3<bool>(true, !global2.a.b, !(false | global2.a.b)), select(!(!vec3<bool>(false, global2.a.b, true)), !vec3<bool>(false || global2.a.b, false, false), true), vec3<bool>(all(select(vec2<bool>(global2.a.b, true), vec2<bool>(true, true), !vec2<bool>(global2.a.b, global2.a.b))), !(true && all(vec2<bool>(global2.a.b, true))), _wgslsmith_f_op_f32(-773f * 1663f) != global0.x));
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_div_f32(-368f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global0.x))), -616f);
    let var_3 = Struct_3(u_input.c, _wgslsmith_add_vec2_i32((vec2<i32>(1i, 0i) | vec2<i32>(u_input.b, 0i)) | vec2<i32>(u_input.b, 0i), vec2<i32>(firstTrailingBit(u_input.b), u_input.b)) & ~reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 23033i), vec2<i32>(-45385i, -1i))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -465f)));
    var var_4 = u_input.a << (vec4<u32>(min(global2.a.a.x, u_input.c.x), _wgslsmith_mod_u32(var_3.a.x, var_3.a.x), _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(~u_input.c.x, 27u)], abs(~global2.a.a.x)), _wgslsmith_sub_u32(0u ^ global2.a.a.x, global2.a.c.x) << (global2.a.c.x % 32u)) % vec4<u32>(32u));
    return global2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> Struct_4 {
    global1 = array<u32, 27>();
    let var_0 = Struct_2(vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, 6159u), abs(0u)), 0u, 46793u, ~countOneBits(select(13465u, global1[_wgslsmith_index_u32(46944u, 27u)], false))), vec2<bool>(global2.a.b, any(!vec2<bool>(arg_1.b.c, true))), true, vec2<bool>(false, select(arg_1.a.c, func_2().b, true)));
    var var_1 = global2.a.c.x;
    global3 = array<Struct_3, 16>();
    global3 = array<Struct_3, 16>();
    return Struct_4(Struct_1(abs(~arg_0.a | vec2<u32>(u_input.a.x, global2.a.a.x)), true, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 13377u, 1u), global2.a.c))));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(func_2(), Struct_5(Struct_2(u_input.a, !(!vec2<bool>(global2.a.b, global2.a.b)), any(select(vec2<bool>(false, global2.a.b), vec2<bool>(global2.a.b, true), vec2<bool>(global2.a.b, true))), select(select(vec2<bool>(global2.a.b, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(global2.a.b, global2.a.b), vec2<bool>(global2.a.b, global2.a.b)), select(vec2<bool>(false, false), vec2<bool>(global2.a.b, true), false))), Struct_2(vec4<u32>(~117023u, global2.a.c.x << (global2.a.c.x % 32u), global1[_wgslsmith_index_u32(16850u, 27u)] & 50564u, firstLeadingBit(u_input.c.x)), !select(vec2<bool>(true, global2.a.b), vec2<bool>(global2.a.b, global2.a.b), vec2<bool>(false, true)), true, select(select(vec2<bool>(false, global2.a.b), vec2<bool>(global2.a.b, global2.a.b), vec2<bool>(global2.a.b, false)), select(vec2<bool>(true, false), vec2<bool>(global2.a.b, global2.a.b), vec2<bool>(global2.a.b, true)), u_input.b <= -2147483647i))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -979f, 1905f)) + vec3<f32>(1937f, global0.x, global0.x)), !var_0.a.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, 204f)))))));
    var var_1 = vec2<u32>(global1[_wgslsmith_index_u32(abs(~1u), 27u)], 181u ^ (abs(1u & global1[_wgslsmith_index_u32(29278u, 27u)]) << (select(93152u, 1u, true) % 32u)));
    global1 = array<u32, 27>();
    global2 = Struct_4(func_2());
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(u_input.a) | vec4<u32>(var_0.a.a.x, u_input.c.x, u_input.a.x, 4294967295u), firstLeadingBit(vec4<u32>(var_1.x, 65121u, 35905u, 82558u))), vec4<u32>(13521u, ~_wgslsmith_mult_u32(select(global1[_wgslsmith_index_u32(2810u, 27u)], global2.a.a.x, var_0.a.b), ~var_1.x), ~var_0.a.c.x, u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 16u)];
    var var_1 = vec4<bool>((41399u & _wgslsmith_dot_vec4_u32(func_1(), abs(u_input.a))) <= global1[_wgslsmith_index_u32(~1695u, 27u)], true, true, !(all(!vec3<bool>(global2.a.b, true, global2.a.b)) | !global2.a.b));
    var var_2 = _wgslsmith_mult_vec4_u32(firstTrailingBit(~_wgslsmith_mult_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), u_input.a | u_input.a)), ~u_input.a);
    var_2 = u_input.a;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c)))))), _wgslsmith_div_u32(0u, 23647u), -18516i);
}


struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<u32>) -> f32 {
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 15u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1054f, var_0.c.a) - vec2<f32>(459f, -1580f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.c.a, arg_1.c.a))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a, arg_0) * vec2<f32>(-325f, var_0.c.a)) * vec2<f32>(-2118f, 519f)))));
    return _wgslsmith_f_op_f32(arg_1.c.a * _wgslsmith_f_op_f32(floor(var_0.c.a)));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-908f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f + -661f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f))), 509f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, _wgslsmith_f_op_f32(select(284f, 1043f, false)), _wgslsmith_f_op_f32(func_3(-585f, global0[_wgslsmith_index_u32(u_input.c, 15u)], vec2<u32>(u_input.c, 88170u)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_div_f32(-986f, 602f), _wgslsmith_f_op_f32(f32(-1f) * -264f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-576f, _wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(2519f * 1046f))))));
    global0 = array<Struct_4, 15>();
    let var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(0u, 15298u), ~u_input.c) << (1u % 32u), 15u)];
    var var_2 = _wgslsmith_f_op_f32(max(442f, -1587f));
    global0 = array<Struct_4, 15>();
    return Struct_4(var_1.c.b.x < ~_wgslsmith_add_i32(20094i, _wgslsmith_mod_i32(var_1.c.c, var_1.c.e.x)), var_1.b, var_1.c);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 15>();
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.a)) * 1f), _wgslsmith_f_op_f32(floor(-693f))), vec3<f32>(arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a * arg_0.c.a)), _wgslsmith_div_f32(-1163f, 533f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(718f, arg_0.c.a, arg_0.c.a) - vec3<f32>(-321f, -1212f, arg_0.c.a)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.a + arg_0.c.a), _wgslsmith_f_op_f32(abs(arg_0.c.a)), _wgslsmith_f_op_f32(min(arg_0.c.a, 230f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(120f, arg_0.c.a, arg_0.c.a), vec3<f32>(112f, arg_0.c.a, -296f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, arg_0.c.a, -173f) * vec3<f32>(137f, arg_0.c.a, arg_0.c.a)))), select(arg_0.b.d, all(vec4<bool>(false, arg_0.b.d, arg_0.a, arg_0.b.d)), arg_0.a)))));
    global0 = array<Struct_4, 15>();
    var var_2 = arg_0.b;
    return arg_0.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    global0 = array<Struct_4, 15>();
    let var_0 = func_4(func_2());
    var var_1 = var_0.b;
    let var_2 = Struct_3(var_0.e.x << (func_4(global0[_wgslsmith_index_u32(89486u, 15u)]).d.x % 32u), _wgslsmith_sub_vec2_u32(vec2<u32>(6296u, 0u), var_0.d));
    var_1 = abs(var_0.e);
    return all(!vec4<bool>(true, _wgslsmith_mult_i32(var_1.x, -3442i) < func_2().c.e.x, true, !all(vec4<bool>(false, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~47644i;
    let var_1 = select(true, _wgslsmith_mult_u32(u_input.c, ~min(2871u, 0u)) <= ~31972u, select(~reverseBits(12509i) < u_input.b, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_1(vec2<u32>(~4294967295u, ~u_input.c), Struct_3(u_input.a.x, ~vec2<u32>(u_input.c, 24634u)))));
    var var_2 = min(reverseBits(-(countOneBits(vec4<i32>(u_input.b, 27853i, 3098i, 1i)) >> (vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c) % vec4<u32>(32u)))), vec4<i32>(u_input.b, 6025i, 1i, abs(-15871i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2661f, -734f));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f * 1606f))))), _wgslsmith_div_vec4_i32(abs(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 4649i, 0i), vec4<i32>(-69120i, u_input.b, var_2.x, var_2.x)))), firstLeadingBit(vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.a.x)) << (vec4<u32>(~u_input.c, _wgslsmith_add_u32(1u, u_input.c), ~15809u, _wgslsmith_mod_u32(115586u, 31346u)) % vec4<u32>(32u))), var_2.x, _wgslsmith_sub_vec2_u32(~min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.c)), ~countOneBits(vec2<u32>(u_input.c, 0u))) >> (firstTrailingBit(select(_wgslsmith_mult_vec2_u32(vec2<u32>(21036u, u_input.c), vec2<u32>(38747u, u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(90199u, 4950u), vec2<u32>(u_input.c, u_input.c)), !vec2<bool>(true, var_1))) % vec2<u32>(32u)), countOneBits(func_4(Struct_4(var_1, func_2().b, func_4(global0[_wgslsmith_index_u32(40993u, 15u)]))).b));
    var_0 = min(abs(min(-2147483647i, -(~var_2.x))), -var_2.x);
    let var_5 = Struct_1(0u, var_4.d.x, ~abs(~(~4294967295u)), any(!vec4<bool>(var_1, any(vec4<bool>(true, true, true, var_1)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}


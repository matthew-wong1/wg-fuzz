struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(-16207i, true, vec2<f32>(781f, -1477f), vec3<bool>(true, false, false), true), Struct_3(1i, false, vec2<f32>(-1332f, 1000f), vec3<bool>(true, true, true), false), Struct_3(-1i, false, vec2<f32>(-125f, -231f), vec3<bool>(true, false, false), false), Struct_3(11836i, true, vec2<f32>(-372f, 1167f), vec3<bool>(false, false, false), false), Struct_3(-1i, false, vec2<f32>(-585f, -959f), vec3<bool>(false, false, false), false), Struct_3(-7492i, false, vec2<f32>(-1232f, 1758f), vec3<bool>(false, true, false), true), Struct_3(19727i, true, vec2<f32>(-727f, -809f), vec3<bool>(false, false, false), true), Struct_3(2147483647i, true, vec2<f32>(675f, -833f), vec3<bool>(false, false, false), true), Struct_3(17791i, false, vec2<f32>(-521f, 1644f), vec3<bool>(false, false, true), true), Struct_3(1i, false, vec2<f32>(-967f, -1069f), vec3<bool>(true, false, true), false), Struct_3(i32(-2147483648), true, vec2<f32>(-334f, -689f), vec3<bool>(false, true, false), true), Struct_3(-59068i, false, vec2<f32>(-674f, -841f), vec3<bool>(false, false, true), false), Struct_3(0i, false, vec2<f32>(855f, -855f), vec3<bool>(false, true, false), false), Struct_3(-13202i, true, vec2<f32>(112f, 907f), vec3<bool>(false, false, false), true), Struct_3(0i, false, vec2<f32>(843f, -116f), vec3<bool>(false, true, false), true), Struct_3(2147483647i, true, vec2<f32>(-880f, -463f), vec3<bool>(true, false, false), false), Struct_3(2147483647i, false, vec2<f32>(-1000f, -342f), vec3<bool>(true, true, false), false), Struct_3(5260i, true, vec2<f32>(-1426f, -714f), vec3<bool>(false, true, true), true), Struct_3(-1203i, true, vec2<f32>(-1195f, -319f), vec3<bool>(true, false, true), false), Struct_3(-1i, false, vec2<f32>(1085f, 1764f), vec3<bool>(true, true, false), false), Struct_3(2147483647i, true, vec2<f32>(484f, -2091f), vec3<bool>(false, true, false), false), Struct_3(2147483647i, true, vec2<f32>(-140f, -100f), vec3<bool>(true, true, false), false), Struct_3(2147483647i, true, vec2<f32>(499f, -462f), vec3<bool>(true, false, true), true), Struct_3(18612i, true, vec2<f32>(-1000f, -278f), vec3<bool>(true, false, true), false), Struct_3(8682i, true, vec2<f32>(1011f, 1142f), vec3<bool>(true, true, true), true), Struct_3(0i, false, vec2<f32>(-144f, 426f), vec3<bool>(true, false, true), true), Struct_3(-57268i, false, vec2<f32>(-1077f, -1000f), vec3<bool>(true, false, true), false), Struct_3(0i, false, vec2<f32>(156f, 939f), vec3<bool>(false, true, false), false), Struct_3(-28254i, true, vec2<f32>(505f, -1000f), vec3<bool>(false, true, false), true), Struct_3(-11051i, true, vec2<f32>(1865f, -403f), vec3<bool>(true, true, true), true), Struct_3(160i, false, vec2<f32>(-131f, 308f), vec3<bool>(false, true, true), true));

var<private> global1: Struct_3 = Struct_3(0i, true, vec2<f32>(-2121f, -483f), vec3<bool>(false, false, false), true);

var<private> global2: bool = true;

var<private> global3: i32;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_1(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f + global4.c.x)), true, 2147483647i, any(global1.d));
    let var_1 = u_input.e;
    let var_2 = ~u_input.b;
    global1 = Struct_3(~abs(~arg_1.c.x) >> (arg_2.x % 32u), true, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2830f), 609f), global4.c), arg_0.d, arg_1.a.d.c);
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(-arg_0.c.x), true, ~arg_1.a.d.d, all(global1.d));
    return vec4<f32>(var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-415f, _wgslsmith_f_op_f32(-global4.c.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(314f + 883f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f * arg_0.c.x))) - _wgslsmith_f_op_f32(abs(global4.c.x))));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], Struct_4(Struct_2(u_input.c.x, -397f, Struct_1(any(global4.d.yx), global4.c.x, !global1.e, -6696i, global1.b), Struct_1(-120f < global1.c.x, _wgslsmith_f_op_f32(-global4.c.x), global4.d.x, -40569i, 25209u > u_input.c.x), !any(vec4<bool>(true, true, global1.e, true))), Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-222f, -1870f))), Struct_1(true, _wgslsmith_f_op_f32(global4.c.x + 574f), global1.e, i32(-1i) * -12000i, 1i >= global4.a), Struct_1(true, -913f, !global4.d.x, global4.a, true), true), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, 1i), -u_input.a.x, abs(0i)), 0i, 0i, firstLeadingBit(u_input.a.x))), vec4<u32>(~(~1u), ~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, 1u), 90980u), global1.a ^ global4.a));
    let var_1 = true;
    var var_2 = Struct_4(Struct_2(~reverseBits(~u_input.c.x), var_0.x, Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - var_0.x), global1.d.x, firstLeadingBit(-2147483647i), u_input.c.x == u_input.d.x), Struct_1((var_1 || false) || false, _wgslsmith_f_op_f32(-var_0.x), global4.b, _wgslsmith_mult_i32(~(-2147483647i), _wgslsmith_sub_i32(global4.a, -1i)), true), any(!global1.d) != !(-4413i != u_input.b)), Struct_2(_wgslsmith_div_u32(~(u_input.d.x ^ u_input.d.x), _wgslsmith_dot_vec4_u32(abs(u_input.d), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.c.x, 0u, u_input.d.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1066f * global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global1.c.x)), all(vec4<bool>(var_1, global4.d.x, false, var_1)))), Struct_1(true, _wgslsmith_f_op_f32(select(var_0.x, 1234f, 2473f < var_0.x)), !(var_0.x >= 587f), max(-37575i, select(global4.a, global4.a, false)), global1.d.x), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1267f + var_0.x) + _wgslsmith_f_op_f32(sign(341f))), !select(true, var_1, var_1), 2147483647i, all(vec4<bool>(false, global4.e, false, true))), var_1), _wgslsmith_add_vec4_i32(vec4<i32>(global4.a, 0i, global4.a << (52875u % 32u), -2147483647i), u_input.e) | vec4<i32>(global1.a, 0i, -2880i, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.a, global4.a), u_input.e.zx)));
    global4 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, var_2.c.x) << (~u_input.c.x % 32u), -39735i) >> (~var_2.a.a % 32u), (global1.a >> (var_2.b.a % 32u)) <= _wgslsmith_mod_i32(-31746i, -5313i | (-32447i << (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-444f, var_0.x), _wgslsmith_f_op_vec2_f32(-global1.c)))), global4.d, var_2.a.c.a);
    var var_3 = var_2.b.d.c;
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(825f, -467f)) - _wgslsmith_f_op_f32(trunc(2061f)))), -1000f)));
}

fn func_1() -> vec3<bool> {
    global2 = any(vec4<bool>(all(global4.d.zy), true, !(!any(vec4<bool>(true, global1.d.x, true, global1.d.x))), all(global1.d)));
    let var_0 = -45002i;
    var var_1 = Struct_3(firstTrailingBit(~14952i), 4294967295u < u_input.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2()))))), vec3<bool>(global4.b, any(!select(vec2<bool>(true, global1.e), global1.d.yy, global4.d.x)), !(!any(vec4<bool>(global1.e, true, global1.e, true)))), true);
    var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_2 = _wgslsmith_div_i32(countOneBits(abs(_wgslsmith_add_i32(-27891i >> (u_input.c.x % 32u), 17993i))), 5055i);
    return vec3<bool>(!any(!var_1.d.zy), !(!(all(vec2<bool>(false, true)) | true)), global4.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(min(~(~vec2<u32>(u_input.d.x, 22193u)), ~(u_input.c.yz << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))))) & select(u_input.c.yy, vec2<u32>(_wgslsmith_mod_u32(21229u, u_input.d.x) << (u_input.c.x % 32u), 0u), false);
    let var_1 = u_input.e.zwy;
    let var_2 = Struct_1(true, 282f, global4.e, ~(i32(-1i) * -2147483647i), global4.b);
    let var_3 = 0i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, global1.c.x) - var_2.b), global4.c.x), -206f));
    global1 = Struct_3(global1.a, false, global4.c, func_1(), _wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(16354i, u_input.a.x)), ~u_input.e.yz), -u_input.a.xy) >= _wgslsmith_add_i32(global4.a, _wgslsmith_mod_i32(var_3 << (63398u % 32u), min(global4.a, 1i))));
    var var_5 = 1u;
    let var_6 = min(vec3<i32>(~abs(abs(global4.a)), _wgslsmith_mod_i32(-1482i, -2147483647i), global1.a), reverseBits(vec3<i32>(abs(~var_2.d), 10245i, 31520i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, -636f, -1375f))))) + vec3<f32>(-924f, -449f, global4.c.x)));
}


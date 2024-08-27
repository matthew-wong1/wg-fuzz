struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6>;

var<private> global1: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(1398u, 5298u, 1u), vec3<u32>(4294967295u, 0u, 14345u), vec3<u32>(92312u, 1u, 0u), vec3<u32>(4294967295u, 8710u, 1u), vec3<u32>(53377u, 55475u, 61950u), vec3<u32>(32367u, 16941u, 0u), vec3<u32>(29613u, 58725u, 93184u), vec3<u32>(0u, 0u, 0u), vec3<u32>(51964u, 1u, 4294967295u), vec3<u32>(31623u, 1u, 0u), vec3<u32>(4294967295u, 2115u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(14072u, 55646u, 62218u), vec3<u32>(37660u, 4294967295u, 4294967295u), vec3<u32>(91785u, 0u, 1u), vec3<u32>(0u, 4294967295u, 120415u), vec3<u32>(59367u, 24979u, 0u), vec3<u32>(54083u, 28545u, 0u), vec3<u32>(1u, 8637u, 81944u), vec3<u32>(59814u, 4294967295u, 86023u), vec3<u32>(67187u, 4294967295u, 1u), vec3<u32>(71260u, 4294967295u, 0u), vec3<u32>(1u, 51864u, 23468u), vec3<u32>(1u, 20034u, 47104u), vec3<u32>(29802u, 1u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(65661u, 4294967295u, 21061u));

var<private> global2: array<bool, 17>;

var<private> global3: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-22776i, -63218i), vec2<i32>(-6743i, -1i), vec2<i32>(2147483647i, 32599i), vec2<i32>(-12223i, 25429i), vec2<i32>(i32(-2147483648), 24174i), vec2<i32>(-45189i, 0i), vec2<i32>(-40001i, -1i), vec2<i32>(-16521i, 1778i), vec2<i32>(-61327i, -33709i), vec2<i32>(1i, -1i), vec2<i32>(1i, 9187i), vec2<i32>(-1i, -7356i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -1i), vec2<i32>(-1i, 9141i), vec2<i32>(8626i, 28795i), vec2<i32>(40629i, 8672i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(-43127i, 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = array<bool, 17>();
    var var_0 = Struct_3(vec3<bool>(arg_0.a, true, all(select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], arg_0.a, false), vec3<bool>(arg_0.a, true, global2[_wgslsmith_index_u32(4294967295u, 17u)]), !vec3<bool>(false, arg_0.a, arg_0.a)))));
    global2 = array<bool, 17>();
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_3(var_0.a);
    return 904f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> Struct_3 {
    var var_0 = Struct_1(694f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-264f, 1506f)) - _wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1056f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_1, Struct_1(arg_2.c.x, vec3<f32>(arg_2.c.x, arg_2.c.x, arg_2.c.x), u_input.b), Struct_1(-949f, vec3<f32>(arg_2.c.x, 470f, -1739f), u_input.b), Struct_1(-669f, vec3<f32>(arg_2.c.x, arg_2.c.x, -144f), u_input.b)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c.x))), arg_2.c.x, true))), vec3<i32>(-21978i >> (arg_0 % 32u), firstLeadingBit(select(u_input.b.x, 47889i, false) >> (reverseBits(28806u) % 32u)), max(min(arg_2.b ^ arg_2.b, u_input.d), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b ^ vec3<i32>(21556i, -2147483647i, 1i)))));
    var var_1 = var_0.c;
    var var_2 = arg_2.b | 6248i;
    global0 = array<Struct_5, 6>();
    global3 = array<vec2<i32>, 20>();
    return Struct_3(!select(select(!vec3<bool>(false, arg_3, false), vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzx, vec3<u32>(1u, 1392u, 55493u)), 17u)]), !select(vec3<bool>(arg_1, true, global2[_wgslsmith_index_u32(arg_2.d, 17u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 17u)], true, true), vec3<bool>(true, false, arg_3)), !vec3<bool>(arg_1, false, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    let var_0 = 2023f;
    global0 = array<Struct_5, 6>();
    var var_1 = ~u_input.d;
    var var_2 = u_input.c;
    let var_3 = all(arg_1.a.xz);
    return vec4<bool>(!arg_1.a.x, any(!arg_2.a), any(!(!arg_1.a.yz)), select(all(arg_1.a), !any(!vec2<bool>(var_3, global2[_wgslsmith_index_u32(4294967295u, 17u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.wwy, vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a.x, 36759u), u_input.c.x)), 17u)]));
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_5, 6>();
    var var_0 = ~1u;
    var var_1 = !select(vec4<bool>(global2[_wgslsmith_index_u32(reverseBits(1u), 17u)], true, true, !global2[_wgslsmith_index_u32(u_input.c.x, 17u)] && true), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 17u)], true, global2[_wgslsmith_index_u32(34231u, 17u)]), false), func_4(~u_input.d, Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(80179u, 17u)], false)), func_2(4294967295u, true, Struct_4(u_input.c.x, 2147483647i, vec2<f32>(314f, 986f), u_input.a.x), global2[_wgslsmith_index_u32(u_input.c.x, 17u)]), _wgslsmith_mod_u32(39623u, u_input.a.x)), false), !(!(!global2[_wgslsmith_index_u32(u_input.a.x, 17u)])));
    let var_2 = ~(u_input.a | u_input.a);
    let var_3 = Struct_4(14128u, u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_div_f32(499f, -378f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), 188f)), ~_wgslsmith_sub_u32(max(max(u_input.a.x, 1u), ~24756u), 14344u));
    return reverseBits(~(~var_2.zy));
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2005f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(true, Struct_1(1000f, vec3<f32>(307f, 415f, 828f), vec3<i32>(44844i, u_input.b.x, u_input.b.x)), Struct_1(-1271f, vec3<f32>(1011f, -289f, -1030f), u_input.b), Struct_1(2603f, vec3<f32>(337f, -854f, -191f), vec3<i32>(0i, -13103i, 2147483647i)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -984f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-463f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1726f, -1249f, -1339f, -661f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-723f, 511f, 1226f, 682f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2843f, 201f, 2105f, -230f) + vec4<f32>(1122f, -1227f, -1780f, 330f)))))));
    let var_1 = func_2(~(_wgslsmith_add_u32(~arg_0.x, 16015u >> (u_input.a.x % 32u)) ^ reverseBits(select(arg_0.x, arg_0.x, global2[_wgslsmith_index_u32(66322u, 17u)]))), var_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), Struct_4(~(1u << (arg_0.x % 32u)), u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x), u_input.c.x), true);
    let var_2 = func_2(arg_0.x, all(!(!func_2(u_input.c.x, global2[_wgslsmith_index_u32(1u, 17u)], Struct_4(arg_0.x, -1221i, vec2<f32>(-1000f, var_0.x), 14124u), true).a)), Struct_4(arg_0.x, u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, var_0.x)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), var_0.x)), u_input.a.x), false);
    let var_3 = Struct_3(!(!vec3<bool>(any(vec2<bool>(false, global2[_wgslsmith_index_u32(31487u, 17u)])), global2[_wgslsmith_index_u32(40400u, 17u)], 1i >= u_input.b.x)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(106f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1036f) + var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(round(-438f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-963f)) + var_0.x)), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -183f, false)) - _wgslsmith_f_op_f32(-var_0.x))))), select(select(!(!var_2.a), !(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, var_2.a.x)), true), !vec3<bool>(var_1.a.x, var_1.a.x, 1i == u_input.d), any(vec4<bool>(var_2.a.x || true, var_1.a.x, var_2.a.x != global2[_wgslsmith_index_u32(0u, 17u)], var_1.a.x)))));
    return Struct_1(var_4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1473f, _wgslsmith_f_op_f32(var_4.x - 711f), _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_vec3_f32(round(var_0.zyw)))), abs(_wgslsmith_mult_vec3_i32(-(vec3<i32>(-2147483647i, 2147483647i, 134i) << (global1[_wgslsmith_index_u32(9764u, 27u)] % vec3<u32>(32u))), max(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.d, -1i)), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(825f))))));
    var var_1 = func_5(func_1());
    let var_2 = vec3<bool>(true, false, false);
    let var_3 = func_2(~u_input.a.x, func_4(~func_5(u_input.a.xw).c.x, Struct_3(var_2), Struct_3(var_2), u_input.a.x ^ 4294967295u).x, Struct_4(35588u, -16869i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.b.x), vec2<f32>(-1000f, -1636f)))), u_input.c.x), all(func_4(u_input.d, func_2(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), all(vec4<bool>(var_2.x, true, global2[_wgslsmith_index_u32(u_input.c.x, 17u)], var_2.x)), Struct_4(u_input.a.x, var_1.c.x, var_1.b.yy, u_input.a.x), !global2[_wgslsmith_index_u32(1u, 17u)]), Struct_3(select(vec3<bool>(global2[_wgslsmith_index_u32(14802u, 17u)], false, false), var_2, vec3<bool>(global2[_wgslsmith_index_u32(19167u, 17u)], false, true))), u_input.a.x)));
    var var_4 = ~u_input.b.x;
    var var_5 = vec3<i32>(_wgslsmith_sub_i32(var_1.c.x | 1i, -firstLeadingBit(1i)) ^ min(u_input.d, min(var_1.c.x, var_1.c.x)), 1i, firstLeadingBit(u_input.d ^ u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x << (0u % 32u), vec2<u32>(~_wgslsmith_sub_u32(0u, ~u_input.a.x), ~(~(~u_input.c.x))));
}


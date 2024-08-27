struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-169f, -1465f, -2138i, i32(-2147483648)), Struct_1(-1676f, -131f, 0i, 0i), Struct_1(1000f, 137f, -3423i, 1i), Struct_1(418f, 2626f, -62052i, 0i), Struct_1(2101f, 586f, -8948i, i32(-2147483648)), Struct_1(915f, -808f, -20624i, -1i), Struct_1(582f, 452f, -19516i, -31749i), Struct_1(-665f, 1000f, -31677i, 1i), Struct_1(434f, -747f, -1i, 1i), Struct_1(1783f, -800f, i32(-2147483648), -47137i), Struct_1(-1046f, -1569f, -1i, 1i), Struct_1(-992f, 694f, -2149i, 1i), Struct_1(-115f, -455f, -36838i, 45706i), Struct_1(-1535f, 179f, 1i, 12340i), Struct_1(-351f, -735f, 0i, 2147483647i), Struct_1(1572f, 297f, -1i, -6704i), Struct_1(453f, -245f, 2147483647i, 14297i));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(28199u, vec4<bool>(false, true, true, true), -1000f, 93161u, 74208i), Struct_2(1u, vec4<bool>(true, false, false, true), 424f, 2789u, 1i), Struct_2(23092u, vec4<bool>(false, true, true, true), 909f, 44000u, 1323i), Struct_2(68935u, vec4<bool>(false, false, true, false), -174f, 80599u, 2147483647i), Struct_2(57853u, vec4<bool>(false, false, true, true), -461f, 1u, -51718i), Struct_2(1u, vec4<bool>(false, true, false, false), -660f, 39365u, -41874i), Struct_2(17458u, vec4<bool>(false, false, false, true), -1695f, 4294967295u, -14027i), Struct_2(10526u, vec4<bool>(true, false, true, true), -276f, 1u, -1i), Struct_2(44556u, vec4<bool>(true, false, false, true), -580f, 0u, 2147483647i), Struct_2(0u, vec4<bool>(false, false, true, false), -144f, 78019u, 1i), Struct_2(1u, vec4<bool>(false, false, true, false), 389f, 28857u, 1138i), Struct_2(1u, vec4<bool>(true, false, false, false), 495f, 0u, i32(-2147483648)), Struct_2(1u, vec4<bool>(false, true, true, true), 1209f, 0u, 2147483647i), Struct_2(18421u, vec4<bool>(false, true, true, true), 339f, 58719u, 0i), Struct_2(29811u, vec4<bool>(true, false, true, true), 1000f, 1u, -13948i), Struct_2(4294967295u, vec4<bool>(false, false, false, false), -1190f, 45613u, 32878i), Struct_2(7683u, vec4<bool>(false, false, true, true), 976f, 29420u, 57376i), Struct_2(49842u, vec4<bool>(true, true, false, true), -1000f, 96992u, -10502i), Struct_2(127609u, vec4<bool>(true, true, true, true), 127f, 7498u, -3599i), Struct_2(0u, vec4<bool>(true, false, false, false), 738f, 11627u, 1i), Struct_2(77356u, vec4<bool>(true, true, false, false), 319f, 0u, i32(-2147483648)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = countOneBits(vec3<i32>(abs(0i ^ u_input.c) ^ (1i ^ _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(46425i, global2.d, global2.d))), global2.c, arg_0.x));
    let var_1 = _wgslsmith_div_u32(~24948u, arg_1);
    var var_2 = global2.c;
    let var_3 = _wgslsmith_dot_vec3_i32(~vec3<i32>(select(u_input.c, 2147483647i, true), _wgslsmith_add_i32(var_0.x, -15100i), -2147483647i) & var_0, _wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(-2147483647i, u_input.d, var_0.x) & arg_0), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, _wgslsmith_mod_i32(1i, global2.d), select(u_input.e.x, -7871i, arg_2)), _wgslsmith_div_vec3_i32(arg_0, var_0 ^ vec3<i32>(var_0.x, u_input.c, arg_0.x)))));
    var var_4 = Struct_2(u_input.a.x, vec4<bool>(select(arg_2, true, any(vec3<bool>(true, true, true))), !(!(var_1 > 0u)), arg_2, false), _wgslsmith_f_op_f32(global2.b * -1422f), u_input.a.x, 31857i);
    return var_4.c;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 17>();
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), global2.a) + arg_1.a), _wgslsmith_f_op_f32(-global2.b), min(global2.d ^ _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -225i), firstLeadingBit(arg_0.e), global2.c), _wgslsmith_add_i32(~firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(0i, u_input.c) ^ arg_1.c)), u_input.b);
    var var_0 = arg_1;
    let var_1 = vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec3<i32>(-21284i, arg_0.e, arg_0.e), ~arg_0.d | 16341u, arg_0.b.x))));
    global2 = Struct_1(-1000f, _wgslsmith_f_op_f32(-arg_0.c), 1i, arg_0.e);
    return vec4<bool>((~(u_input.a.x >> (1u % 32u)) < 48722u) | !arg_0.b.x, any(select(select(select(vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), arg_0.b.x), arg_0.b, arg_0.b), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), arg_0.b, false), !all(arg_0.b))), true & !(!select(false, false, arg_0.b.x)), arg_0.b.x);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(348f * _wgslsmith_f_op_f32(-arg_0)) + arg_0), 744f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1469f) * _wgslsmith_f_op_f32(global2.a + 2235f)))), _wgslsmith_div_f32(1000f, global2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -862f), global2.b, true)), global2.b), true & !all(vec2<bool>(true, true))));
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 21u)];
    global1 = 4294967295u | _wgslsmith_mult_u32(_wgslsmith_clamp_u32(39890u, _wgslsmith_mult_u32(var_1.a, 4294967295u), ~var_1.d), u_input.a.x);
    let var_2 = all(var_1.b) & all(select(vec4<bool>(u_input.a.x > 9999u, all(vec2<bool>(true, false)), var_1.b.x, 14382i >= var_1.e), vec4<bool>(var_1.b.x, var_1.b.x && var_1.b.x, false, true), select(func_2(Struct_2(u_input.a.x, var_1.b, -692f, var_1.a, u_input.b), global0[_wgslsmith_index_u32(var_1.d, 17u)]), var_1.b, var_1.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, arg_0, -310f, 224f) - vec4<f32>(global2.a, arg_0, -1000f, -1755f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-752f, 135f, var_0.x, global2.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 666f, 1671f, 1062f)))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(0u, 21u)];
    let var_1 = -firstLeadingBit(2147483647i);
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~(~vec3<u32>(0u, var_0.d, 0u))), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(var_0.a, 32278u, var_0.d), 37803u), var_0.a), ~reverseBits(~select(u_input.a.x, u_input.a.x, var_0.b.x)));
    var var_3 = var_0.c;
    var_0 = global3[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(-var_0.c)), 21u)];
    var var_4 = u_input.a.zx;
    global2 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(ceil(-388f)), any(var_0.b.zwx))))), 22683i, -(~(var_1 >> (91483u % 32u))));
    global3 = array<Struct_2, 21>();
    global1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.d, var_0.a), u_input.a)), ~abs(~u_input.a.x)), firstLeadingBit(~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_sub_i32(-_wgslsmith_div_i32(var_0.e, var_1 & 49311i), _wgslsmith_div_i32(23504i, -(i32(-1i) * -21333i))));
}


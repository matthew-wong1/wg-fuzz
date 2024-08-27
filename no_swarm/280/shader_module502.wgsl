struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1715f, 240f, 289f, 1065f), vec4<f32>(840f, 671f, 1373f, -2393f), vec4<f32>(1819f, 303f, 741f, -405f), vec4<f32>(158f, 563f, 1407f, 103f), vec4<f32>(625f, 385f, -690f, -805f), vec4<f32>(-1000f, -1000f, -1467f, -1370f), vec4<f32>(1204f, 1172f, 430f, 546f), vec4<f32>(258f, -1175f, 303f, -273f), vec4<f32>(-1113f, 2285f, -371f, 2154f), vec4<f32>(1176f, -1107f, -1000f, -1547f), vec4<f32>(-108f, 1000f, 422f, -348f), vec4<f32>(1000f, -1523f, -1660f, -1000f), vec4<f32>(-620f, 1014f, -1000f, -817f), vec4<f32>(1889f, 807f, -3289f, -1143f), vec4<f32>(1806f, 1963f, 1992f, -1000f), vec4<f32>(248f, 127f, 1510f, -491f), vec4<f32>(341f, 791f, 343f, 1051f), vec4<f32>(-125f, -1603f, 386f, -1026f), vec4<f32>(607f, 1698f, 1344f, -955f), vec4<f32>(-1438f, -804f, -1000f, 251f), vec4<f32>(-271f, 1000f, 738f, 1364f), vec4<f32>(344f, 499f, 1102f, -1217f), vec4<f32>(-426f, -1597f, 227f, -1033f), vec4<f32>(830f, 1721f, 413f, -318f), vec4<f32>(-803f, -251f, -291f, 186f), vec4<f32>(708f, -667f, -1000f, 624f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> i32 {
    global2 = array<Struct_1, 9>();
    var var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -10083i), _wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(arg_1.b, arg_1.a.x))) ^ (-8281i ^ u_input.a), _wgslsmith_add_i32(arg_1.a.x, ~u_input.a), u_input.b << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, 7701u)), ~14966u, u_input.e) % 32u)));
    let var_1 = global2[_wgslsmith_index_u32(u_input.e, 9u)];
    let var_2 = ~((vec4<u32>(u_input.c, arg_0, arg_0, 8132u) & ~vec4<u32>(arg_0, arg_0, arg_0, 27073u)) & ~(~vec4<u32>(arg_0, 0u, 18304u, u_input.e))) << (vec4<u32>(firstLeadingBit(u_input.e) ^ ~100815u, ~(~_wgslsmith_mult_u32(u_input.e, arg_0)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(44921u, 32254u), ~vec2<u32>(1u, 1u)), _wgslsmith_mod_u32(~u_input.e, u_input.c)) % vec4<u32>(32u));
    var var_3 = ~var_2.zx;
    return min(2147483647i, arg_1.b | ~var_0.x) << (u_input.c % 32u);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = ~select(select(vec4<u32>(44442u, min(2625u, u_input.e), _wgslsmith_div_u32(1u, u_input.e), u_input.c), ~(vec4<u32>(12113u, 37012u, u_input.c, 84208u) << (vec4<u32>(u_input.e, u_input.e, u_input.c, u_input.e) % vec4<u32>(32u))), arg_1.x >= arg_1.x), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 229u, 4294967295u, u_input.c), vec4<u32>(u_input.e, u_input.c, u_input.c, 1u))), all(vec4<bool>(any(vec4<bool>(false, false, arg_3.b.x, arg_2.a.x)), arg_2.c.x && false, !arg_2.b.x, true)));
    let var_1 = 2147483647i;
    return -_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(i32(-1i) * -13897i), 2147483647i, 0i, var_1), abs(vec4<i32>(-264i, 1i, _wgslsmith_div_i32(0i, u_input.d.x), 1i)));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, 10007i, u_input.a), vec4<i32>(-75089i, 10801i, u_input.d.x, u_input.b))), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.b), vec4<i32>(-10795i, 0i, u_input.b, -24479i))) ^ -14078i, firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec4_i32(func_3(false, vec4<f32>(656f, -798f, 674f, -712f), global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)]), firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, 0i))))));
    var var_1 = -1i;
    var var_2 = min(~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 79566i, var_0, u_input.b), firstTrailingBit(vec4<i32>(1i, u_input.d.x, var_0, u_input.d.x)), vec4<i32>(u_input.b, -2147483647i, -5167i, -2017i) & vec4<i32>(u_input.b, var_0, 2147483647i, var_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -21391i, -2147483647i, u_input.d.x) << (vec4<u32>(1u, u_input.c, u_input.c, 109012u) % vec4<u32>(32u)), min(vec4<i32>(var_0, var_0, 0i, 2147483647i), vec4<i32>(u_input.a, 2147483647i, u_input.d.x, var_0)))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, firstTrailingBit(var_0), 1i, max(var_0, u_input.d.x)), vec4<i32>(-2147483647i, min(-36019i, u_input.a), var_0 & 2147483647i, u_input.b & u_input.d.x)), vec4<i32>(_wgslsmith_mod_i32(1i, var_0), u_input.a, -3816i, u_input.b)));
    let var_3 = vec3<bool>((all(vec3<bool>(true, true, true)) == all(vec4<bool>(true, false, false, true))) | any(vec2<bool>(all(vec3<bool>(true, false, true)), true)), !(true || (~(-33378i) > _wgslsmith_clamp_i32(36101i, -18269i, var_0))), false);
    let var_4 = 21431u;
    return any(vec4<bool>(false, true, var_3.x & (min(57730i, -7841i) != abs(var_2.x)), var_3.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<vec4<bool>, 12>();
    var var_0 = 2147483647i;
    global2 = array<Struct_1, 9>();
    global3 = array<vec4<f32>, 26>();
    var var_1 = vec2<bool>(true, true);
    return vec4<u32>(1u, ~(u_input.c & arg_1) << (abs(arg_1) % 32u), abs(reverseBits(u_input.c)), arg_1);
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_div_i32(func_3(arg_3.d.a.x, vec4<f32>(_wgslsmith_f_op_f32(1721f - _wgslsmith_f_op_f32(floor(-645f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(224f + -1106f), _wgslsmith_f_op_f32(select(-1554f, -390f, arg_3.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -900f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-219f - 1000f)))), func_4(arg_3, vec2<bool>(arg_3.c == false, arg_3.d.c.x)).d, func_4(func_4(func_4(arg_3, arg_3.d.a.xy), arg_3.d.a.yz), vec2<bool>(any(vec4<bool>(true, arg_3.d.b.x, false, true)), arg_3.c)).d).x, u_input.a);
    global0 = array<vec4<bool>, 12>();
    var var_1 = func_4(Struct_2(vec4<i32>(~(-2147483647i), func_4(arg_3, vec2<bool>(true, arg_3.d.b.x)).a.x, _wgslsmith_add_i32(max(arg_3.a.x, 31499i), 2147483647i), -21541i), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.b, -2147483647i, arg_3.b, arg_3.a.x), vec4<i32>(u_input.d.x, arg_2.x, 0i, u_input.b)), vec4<i32>(var_0, -1i, u_input.b, u_input.b))), min(max(0u, arg_0.x), 0u) > 130176u, arg_3.d), !func_4(Struct_2(select(arg_3.a, vec4<i32>(-7090i, -36346i, -1i, arg_2.x), global0[_wgslsmith_index_u32(u_input.c, 12u)]), var_0, arg_3.d.b.x, func_4(arg_3, arg_3.d.a.zz).d), arg_3.d.b.xz).d.a.xz).d;
    let var_2 = Struct_1(arg_3.d.a, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, (u_input.e << (arg_0.x % 32u)) << (u_input.c % 32u)) >> (~_wgslsmith_mod_u32(u_input.e, _wgslsmith_clamp_u32(arg_0.x, 0u, u_input.e)) % 32u), 12u)], !vec2<bool>(var_1.b.x, true));
    let var_3 = Struct_1(vec3<bool>(any(!var_1.b.wxx), true, all(arg_3.d.a)), vec4<bool>(true, !var_1.c.x, !(!var_1.a.x) || any(vec3<bool>(true, arg_3.d.a.x, false)), func_2()), !var_2.a.xy);
    return StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f * 2950f)) - _wgslsmith_f_op_f32(f32(-1f) * -1540f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(408f))), _wgslsmith_div_f32(-1639f, _wgslsmith_f_op_f32(max(667f, 1529f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 9>();
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.e, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.e, u_input.c)), 0u)), 9u)];
    global1 = array<vec2<f32>, 30>();
    var var_1 = min(-_wgslsmith_mult_vec3_i32(countOneBits(select(vec3<i32>(-41428i, -15679i, u_input.b), vec3<i32>(1i, u_input.d.x, 0i), var_0.b.zwx)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec3<i32>(~u_input.a, select(~u_input.b, u_input.a, !var_0.c.x) << (6116u % 32u), -_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 26595i), u_input.d)));
    global1 = array<vec2<f32>, 30>();
    let var_2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(39029i, 2147483647i, u_input.a) ^ vec3<i32>(var_1.x, -1i, var_1.x), vec3<i32>(11004i, 5457i, 7043i), vec3<i32>(u_input.a, 39633i, 1i)), select(-vec3<i32>(u_input.a, -1i, 9931i), vec3<i32>(-1i, -1i, u_input.a) | vec3<i32>(-1i, var_1.x, -2147483647i), !var_0.a)), u_input.a);
    var var_3 = Struct_1(var_0.b.zwz, vec4<bool>(var_0.c.x, var_0.b.x, true, true), var_0.c);
    let var_4 = ~u_input.c;
    let x = u_input.a;
    s_output = func_6(func_5(reverseBits(_wgslsmith_mod_u32(~var_4, reverseBits(u_input.e))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(20372u, u_input.c, 1u, u_input.c), vec4<u32>(83457u, u_input.c, u_input.e, u_input.c)), ~vec4<u32>(47698u, var_4, u_input.c, var_4)), vec4<i32>(_wgslsmith_mult_i32(var_2.x, func_1(0u, Struct_2(vec4<i32>(22739i, -1i, -1i, -1i), u_input.b, var_3.b.x, Struct_1(vec3<bool>(var_3.b.x, var_0.c.x, true), vec4<bool>(var_3.a.x, var_0.b.x, var_0.a.x, var_3.b.x), var_3.c)))), u_input.a, 1i, -1i), func_4(Struct_2(select(vec4<i32>(-8422i, var_1.x, u_input.b, var_2.x), vec4<i32>(-1i, -2147483647i, var_2.x, u_input.a), var_0.b.x), 57073i, func_2(), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, var_4), 9u)]), select(!var_3.c, !vec2<bool>(false, var_0.a.x), true))), var_4, vec2<i32>(-(i32(-1i) * -21568i), 1i), func_4(Struct_2(reverseBits(abs(vec4<i32>(0i, u_input.b, 36220i, u_input.d.x))), var_1.x, !all(vec4<bool>(var_0.b.x, false, false, var_3.b.x)), global2[_wgslsmith_index_u32(var_4, 9u)]), !select(vec2<bool>(false, false), !var_0.c, false)));
}


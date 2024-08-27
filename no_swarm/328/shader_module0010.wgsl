struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(29241u, 0u, 0u, 71249u), vec4<u32>(18596u, 4294967295u, 1u, 68171u), vec4<u32>(7649u, 40856u, 0u, 1u), vec4<u32>(4294967295u, 29675u, 72157u, 1u), vec4<u32>(28332u, 53812u, 13032u, 97886u), vec4<u32>(118529u, 367u, 0u, 78685u), vec4<u32>(45401u, 33195u, 4294967295u, 1u), vec4<u32>(0u, 30726u, 0u, 29875u), vec4<u32>(10611u, 70273u, 26829u, 0u), vec4<u32>(81752u, 4294967295u, 4294967295u, 32504u), vec4<u32>(20343u, 0u, 0u, 42768u), vec4<u32>(49011u, 25890u, 57551u, 20355u), vec4<u32>(70u, 1u, 0u, 1u), vec4<u32>(0u, 3352u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 250u, 0u), vec4<u32>(1u, 18262u, 9709u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 39446u), vec4<u32>(62416u, 4294967295u, 8589u, 0u), vec4<u32>(0u, 712u, 4294967295u, 1u), vec4<u32>(83477u, 251u, 10425u, 15340u), vec4<u32>(4294967295u, 62653u, 58454u, 1839u), vec4<u32>(5765u, 130949u, 44884u, 1u), vec4<u32>(0u, 261u, 72497u, 4294967295u), vec4<u32>(1u, 1u, 50974u, 28330u));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(1u, 6390u, 4294967295u, 4294967295u), vec2<f32>(-588f, -2041f), -697i);

var<private> global2: array<Struct_3, 4>;

var<private> global3: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(199f, -1284f), vec2<f32>(-638f, 934f), vec2<f32>(-2104f, 709f), vec2<f32>(1313f, -281f), vec2<f32>(-1022f, -1614f), vec2<f32>(-2106f, 1512f), vec2<f32>(-1354f, 1098f), vec2<f32>(-394f, -1172f), vec2<f32>(-1031f, -552f), vec2<f32>(-725f, -689f), vec2<f32>(-1000f, 1346f), vec2<f32>(-2081f, -1311f), vec2<f32>(-2262f, -1722f), vec2<f32>(-1156f, 367f), vec2<f32>(-1668f, -1000f), vec2<f32>(-922f, -445f), vec2<f32>(1277f, -281f), vec2<f32>(901f, 113f), vec2<f32>(-421f, 1449f), vec2<f32>(117f, 383f), vec2<f32>(474f, 996f), vec2<f32>(-729f, 1602f), vec2<f32>(-163f, 2012f), vec2<f32>(-1000f, 1007f), vec2<f32>(1985f, -1302f), vec2<f32>(132f, -1715f), vec2<f32>(-758f, 424f), vec2<f32>(284f, 1774f), vec2<f32>(-1492f, -1812f), vec2<f32>(-1842f, 1000f));

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = global1.c;
    var var_1 = arg_2;
    var var_2 = vec2<bool>(true, true);
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(-399f, global1.b.x))), vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.b.x, global1.b.x)), arg_2.b.x), vec2<bool>(-180f < arg_2.b.x, all(vec3<bool>(false, true, var_2.x))))))), ~((global1.c & firstLeadingBit(1i)) | (2147483647i << (~global1.a.x % 32u))));
    let var_4 = Struct_2(vec4<u32>(countOneBits(_wgslsmith_add_u32(u_input.e, var_1.a.x)) & countOneBits(~1u), ~var_1.a.x, _wgslsmith_div_u32(59216u, _wgslsmith_dot_vec4_u32(vec4<u32>(2502u, 100299u, u_input.a.x, global1.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, 23244u, 4294967295u), global1.a))), var_3.a.x & global1.a.x));
    return arg_2.a.x;
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = -8357i << (select(~min(0u, _wgslsmith_mult_u32(1u, 51910u)), u_input.e, select(false, any(vec2<bool>(true, false)), !any(vec2<bool>(false, true)))) % 32u);
    global3 = array<vec2<f32>, 30>();
    let var_1 = _wgslsmith_dot_vec2_i32(~(~(~arg_0.yw)), -(_wgslsmith_div_vec2_i32(~arg_0.wz, arg_0.xx) ^ vec2<i32>(-2147483647i, -50943i)));
    var var_2 = ~vec3<i32>(1i, 2147483647i, reverseBits(i32(-1i) * -global1.c));
    global0 = array<vec4<u32>, 24>();
    return max(vec4<u32>(4294967295u, u_input.a.x, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.e, 0u), vec4<u32>(u_input.b, 47501u, 1u, 0u)), global1.a), ~global1.a.x), vec4<u32>(1u, _wgslsmith_mult_u32(u_input.e, global1.a.x), global1.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, global1.a.x), u_input.e)));
}

fn func_2() -> u32 {
    global3 = array<vec2<f32>, 30>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32((vec4<u32>(global1.a.x, 51816u, 20853u, u_input.a.x) & ~vec4<u32>(26396u, u_input.b, 4294967295u, 1u)) << (firstTrailingBit(abs(vec4<u32>(1u, 17459u, 33323u, global1.a.x))) % vec4<u32>(32u)), ~(global1.a & global1.a) | func_3(vec4<i32>(0i, global1.c, 22790i, 0i))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.x)))))), u_input.d);
    var var_1 = ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i ^ global1.c, ~var_0.c)), abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(1i, 77841i)), ~vec2<i32>(-2147483647i, 2147483647i))));
    var var_2 = vec4<bool>(!any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), !(~(var_0.c | global1.c) > u_input.c), true, false);
    return min(~(var_0.a.x ^ abs(30639u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(27803u, 26345u, 51952u), _wgslsmith_clamp_vec3_u32(var_0.a.ywy, global1.a.zzx, var_0.a.xwx)), abs(~69202u))) ^ 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(max(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, global1.a.x) & 1u, _wgslsmith_div_u32(0u, func_1(global2[_wgslsmith_index_u32(14293u, 4u)], -2147483647i, Struct_1(global1.a, global3[_wgslsmith_index_u32(global1.a.x, 30u)], 0i), vec4<bool>(true, false, true, true)))), ~abs(func_2())), func_1(Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, global1.c, global1.c, -35725i), vec4<i32>(global1.c, u_input.c, u_input.d, global1.c)) | vec4<i32>(global1.c, -62441i, global1.c, u_input.d), _wgslsmith_f_op_f32(-700f - global1.b.x)), -15204i, Struct_1(~vec4<u32>(13175u, global1.a.x, u_input.e, 121745u), vec2<f32>(-492f, _wgslsmith_f_op_f32(-1076f + global1.b.x)), -11006i), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), false)));
    global3 = array<vec2<f32>, 30>();
    global3 = array<vec2<f32>, 30>();
    global1 = Struct_1(~(vec4<u32>(func_1(global2[_wgslsmith_index_u32(46981u, 4u)], 79436i, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], global1.b, global1.c), vec4<bool>(true, true, true, true)), ~1u, 0u, 26889u) ^ global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(~(global1.a.x >> (u_input.a.x % 32u)), 30u)] - global1.b) - global1.b), global1.c);
    let var_1 = Struct_2(func_3(_wgslsmith_mult_vec4_i32(~vec4<i32>(global1.c, global1.c, global1.c, global1.c), -vec4<i32>(35746i, -34111i, -1i, -1i))));
    var var_2 = Struct_3((-(vec4<i32>(-2147483647i, u_input.c, -2147483647i, -16817i) ^ vec4<i32>(global1.c, -17454i, global1.c, 0i)) | firstLeadingBit(select(vec4<i32>(-39393i, 1i, 65396i, global1.c), vec4<i32>(u_input.c, -2147483647i, global1.c, u_input.d), false))) ^ (vec4<i32>(51165i, -2147483647i >> (u_input.b % 32u), _wgslsmith_add_i32(-1i, u_input.d), 0i) ^ ~(-vec4<i32>(-1i, u_input.d, u_input.d, 66163i))), _wgslsmith_f_op_f32(ceil(global1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_mult_i32(max(_wgslsmith_mod_i32(-8452i, 3115i), countOneBits(global1.c)), 1i) << (~(~(~0u)) % 32u), min(vec2<i32>(2147483647i, firstTrailingBit(reverseBits(818i))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(var_2.a.x, var_2.a.x) & var_2.a.zz, ~var_2.a.yw), var_2.a.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2060f)))));
}


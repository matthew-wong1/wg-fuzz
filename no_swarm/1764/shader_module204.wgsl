struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(1u, 4294967295u, 0u, 4493u), vec4<u32>(6813u, 72610u, 9448u, 35676u), vec4<u32>(4294967295u, 65746u, 17031u, 19182u), vec4<u32>(0u, 1u, 1u, 9745u), vec4<u32>(82799u, 14847u, 4294967295u, 4294967295u), vec4<u32>(53213u, 82441u, 11717u, 4294967295u), vec4<u32>(4294967295u, 1u, 14662u, 4294967295u), vec4<u32>(0u, 93186u, 0u, 74071u), vec4<u32>(0u, 56783u, 38512u, 47819u));

var<private> global1: array<f32, 22> = array<f32, 22>(620f, 612f, 939f, 814f, 278f, -435f, -189f, 248f, 1502f, 115f, -859f, -1071f, 863f, 543f, 549f, 1685f, -953f, 335f, 173f, 102f, -411f, 561f);

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_1(~(~abs(~vec2<i32>(1502i, 0i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~arg_1.x, 22u)] * _wgslsmith_f_op_f32(max(1188f, -653f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(621f, 674f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(44126u, 22u)])))), global1[_wgslsmith_index_u32(abs(69040u), 22u)], arg_0)))), vec4<i32>(firstLeadingBit(~(-2147483647i)), 1i, _wgslsmith_mod_i32(1i, -1i), min(select(-1i, countOneBits(-1i), false), _wgslsmith_mult_i32(34364i, 0i))));
    global3 = !(!(!arg_0));
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(arg_1.x, 24103u), min(max(u_input.c.x, 0u), ~74873u)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, u_input.d.x), firstTrailingBit(11097u)), _wgslsmith_sub_u32(max(48162u, 36226u), 1u)));
    let var_2 = Struct_2(Struct_1(var_0.c.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-739f))), var_0.c), var_0, Struct_1(var_0.a, _wgslsmith_f_op_f32(1470f * 1774f), var_0.c));
    global0 = array<vec4<u32>, 9>();
    return false;
}

fn func_2(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = vec3<bool>(func_3(all(vec4<bool>(true, true, true, true)), ~global2[_wgslsmith_index_u32(u_input.b, 7u)]) || (_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(4294967295u), 22u)]) <= global1[_wgslsmith_index_u32(~(~1u), 22u)]), func_3(false, vec3<u32>(_wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(17969u, 7u)], vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x)), u_input.d.x, _wgslsmith_mult_u32(~0u, u_input.a))), !(((942f == global1[_wgslsmith_index_u32(u_input.b, 22u)]) && true) | func_3(false, select(global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.c.x, 7u)], vec3<bool>(false, false, true)))));
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    let var_1 = vec3<i32>(arg_0.x, arg_0.x, 0i);
    return vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_1.x), reverseBits(vec2<i32>(var_1.x, 2287i))), _wgslsmith_clamp_vec2_i32(~arg_0.xx, -arg_0.yz, arg_0.xx)), _wgslsmith_add_vec2_i32(~(var_1.xx >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), ~vec2<i32>(-1i, -2147483647i))), arg_0.x, 8952i);
}

fn func_4(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = vec2<i32>(-countOneBits(51742i) ^ _wgslsmith_div_i32(firstLeadingBit(~arg_0.x), firstTrailingBit(~arg_0.x)), _wgslsmith_div_i32(arg_0.x, 0i));
    var_0 = vec2<i32>(_wgslsmith_div_i32(arg_0.x, var_0.x), abs(countOneBits(0i)));
    var var_1 = Struct_3(all(vec4<bool>(false, false, true, any(vec4<bool>(false, true, true, false)) | true)), Struct_2(Struct_1(arg_0.xy, global1[_wgslsmith_index_u32(2564u, 22u)], -(~vec4<i32>(5600i, 0i, var_0.x, arg_0.x))), Struct_1(reverseBits(arg_0.xz) >> (~u_input.c % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1782f, global1[_wgslsmith_index_u32(u_input.b, 22u)])))), (vec4<i32>(15764i, 14931i, arg_0.x, 0i) & vec4<i32>(arg_0.x, -45100i, var_0.x, -2147483647i)) & abs(vec4<i32>(41689i, -1i, var_0.x, -2147483647i))), Struct_1(abs(vec2<i32>(0i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b, 22u)], 1037f)) + 948f), min(countOneBits(vec4<i32>(var_0.x, -2147483647i, 25594i, arg_0.x)), countOneBits(vec4<i32>(1i, 33151i, arg_0.x, 1i))))));
    var_0 = var_1.b.a.c.xy;
    let var_2 = 1i;
    return Struct_5(Struct_4(!(!(!vec3<bool>(true, var_1.a, var_1.a))), -(~arg_0.x), select(vec2<bool>(true, !var_1.a), vec2<bool>(var_1.a, true), select(vec2<bool>(true, true), vec2<bool>(var_1.a, true), vec2<bool>(true, true)))), select(reverseBits(global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 9u)]), ~(~reverseBits(global0[_wgslsmith_index_u32(4294967295u, 9u)])), !var_1.a), Struct_2(Struct_1(vec2<i32>(2147483647i ^ var_1.b.b.a.x, _wgslsmith_div_i32(arg_0.x, -2147483647i)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 22u)])), _wgslsmith_div_vec4_i32(var_1.b.b.c & vec4<i32>(-1i, arg_0.x, -1i, var_2), var_1.b.c.c)), var_1.b.c, var_1.b.b));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-51i, 2673i, 0i, 71966i)), -vec4<i32>(32821i, 71164i, 19926i, 0i)), (i32(-1i) * -2147483647i) >> (~u_input.d.x % 32u), 1i), func_2(~firstTrailingBit(vec4<i32>(1i, 1i, -18046i, -6062i)))));
    let var_1 = Struct_3(var_0.a.c.x, var_0.c);
    let var_2 = -vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 20485i), var_0.c.a.c.wz) | reverseBits(var_1.b.c.a.x >> (64243u % 32u)));
    global0 = array<vec4<u32>, 9>();
    let var_3 = Struct_5(func_4(_wgslsmith_sub_vec3_i32(var_0.c.b.c.zww, vec3<i32>(var_2.x, var_2.x, _wgslsmith_mod_i32(var_2.x, -34418i)))).a, vec4<u32>(1u, ~u_input.a, ~var_0.b.x, var_0.b.x), func_4(vec3<i32>(0i, -2147483647i << (~4294967295u % 32u), ~var_2.x)).c);
    return Struct_1(abs(reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.c.c.c.wz, var_2), countOneBits(var_2)))), global1[_wgslsmith_index_u32(var_0.b.x, 22u)], vec4<i32>(-_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(741i, -2147483647i, var_2.x, -1i), var_1.b.b.c)), _wgslsmith_dot_vec4_i32(var_1.b.c.c, vec4<i32>(_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(0i, -2147483647i)), 1i, var_2.x, 36950i)), ~var_1.b.b.c.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b >> (~4294967295u % 32u), 22u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(34233u, 22u)]))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, reverseBits(1u)), 22u)], -157f)));
    var var_1 = Struct_2(func_1(), func_4(vec3<i32>(~(~(-6251i)), -_wgslsmith_mod_i32(31984i, -11931i), 2147483647i)).c.c, Struct_1(-vec2<i32>(i32(-1i) * -2147483647i, -31680i), var_0.x, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(32755i, 1i, 12178i), ~(-27631i), _wgslsmith_mod_i32(-12215i, 2147483647i), countOneBits(10040i)), ~min(vec4<i32>(-109215i, 16539i, -100i, 1i), vec4<i32>(1i, 83185i, -5412i, -1i)))));
    var var_2 = vec4<u32>(reverseBits(_wgslsmith_clamp_u32(abs(1u), ~u_input.d.x, _wgslsmith_add_u32(u_input.a, 20370u))), ~(~(~1u)), 58256u, firstLeadingBit(34246u)) >> (_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(19328u, 9u)], vec4<u32>(1317u, 27121u, 4294967295u, 7259u)), u_input.a, 4294967295u, 0u)), vec4<u32>(func_4(var_1.c.c.xxx).b.x, u_input.d.x, max(u_input.d.x, u_input.b), max(u_input.b, u_input.d.x))) % vec4<u32>(32u));
    let var_3 = func_4(abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(var_1.a.c.yyy, vec3<i32>(var_1.a.a.x, -2147483647i, var_1.b.a.x))) >> (global2[_wgslsmith_index_u32(6651u, 7u)] % vec3<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(-var_3.c.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-5149i), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(15509u, 4294967295u, 0u), var_3.b.yyy)), -1863f);
}


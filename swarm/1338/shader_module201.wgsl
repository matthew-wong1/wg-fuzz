struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 28>;

var<private> global2: vec3<i32> = vec3<i32>(0i, 26326i, i32(-2147483648));

var<private> global3: array<i32, 29>;

var<private> global4: array<Struct_2, 29>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    global3 = array<i32, 29>();
    global1 = array<f32, 28>();
    let var_0 = !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), false);
    let var_1 = -arg_0.x;
    var var_2 = Struct_4(Struct_3(Struct_1(max(max(vec3<i32>(1i, var_1, -9984i), vec3<i32>(arg_0.x, 40737i, arg_1)), vec3<i32>(arg_0.x, arg_1, u_input.a)), reverseBits(arg_0.zyw), arg_2.x, (i32(-1i) * -1i) & var_1), Struct_2(vec4<i32>(2147483647i, 0i, global2.x, -1i)), global4[_wgslsmith_index_u32(~(u_input.b.x ^ 24738u), 29u)], false || var_0.x), arg_2.x);
    return global3[_wgslsmith_index_u32(reverseBits(var_2.a.a.c), 29u)];
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global2 = vec3<i32>(abs(global3[_wgslsmith_index_u32(~(~(~41666u)), 29u)]), 15153i, global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(4364u, u_input.b.x << (u_input.b.x % 32u)), ~u_input.b.x)), 29u)]);
    var var_0 = Struct_1(vec3<i32>(func_3(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global2.x, 2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 29u)], -2147483647i), vec4<i32>(global2.x, global2.x, 1i, -2147483647i), -vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], -1i, global2.x, 1i)), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~u_input.b.x, 29u)], global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 1i), vec3<u32>(~109076u, u_input.b.x & 105397u, min(u_input.b.x, u_input.b.x))), i32(-1i) * -8500i, global3[_wgslsmith_index_u32(20587u, 29u)]), vec3<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(global2.yy ^ vec2<i32>(2147483647i, 0i), max(global2.xz, global2.yx)) | (_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2147483647i, u_input.a, global2.x), vec4<i32>(global3[_wgslsmith_index_u32(53838u, 29u)], global2.x, 0i, 7557i)) << (u_input.b.x % 32u)), ~global3[_wgslsmith_index_u32(4294967295u, 29u)]), max(~1u, ~select(firstLeadingBit(u_input.b.x), u_input.b.x, true)), -786i);
    global1 = array<f32, 28>();
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(0u), firstTrailingBit(~_wgslsmith_mod_u32(var_0.c, 4294967295u))), vec2<u32>(var_0.c << (~max(7431u, var_0.c) % 32u), u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 28u)], -1000f) + vec2<f32>(288f, global1[_wgslsmith_index_u32(0u, 28u)]))), (global3[_wgslsmith_index_u32(186u, 29u)] & var_0.a.x) > abs(var_0.d))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_0.c, 28u)], global1[_wgslsmith_index_u32(var_1.x, 28u)]), vec2<f32>(global1[_wgslsmith_index_u32(1u, 28u)], -583f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(53093u, 28u)], 425f) * vec2<f32>(-938f, global1[_wgslsmith_index_u32(4294967295u, 28u)])), arg_0.ww)), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(20469u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec2<f32>(-1282f, global1[_wgslsmith_index_u32(0u, 28u)]), arg_0.yw))))), vec2<f32>(1554f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 28u)])))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!vec4<bool>(!arg_0.a.d, arg_0.a.d, arg_0.a.d, arg_0.a.d))));
    var var_1 = global4[_wgslsmith_index_u32(select(reverseBits(~_wgslsmith_sub_u32(arg_0.a.a.c, u_input.b.x)), abs(45642u), any(vec2<bool>(true, true))) ^ u_input.b.x, 29u)];
    global1 = array<f32, 28>();
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(-401f - var_0);
    return all(select(vec3<bool>(_wgslsmith_f_op_f32(-1191f - 2744f) != _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(53383u, 28u)], -1365f)), _wgslsmith_clamp_i32(-1i, 32761i, var_1.a.x) != _wgslsmith_add_i32(global3[_wgslsmith_index_u32(arg_0.b, 29u)], -65102i), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0.a.d, arg_0.a.d), vec3<bool>(true, true, false), vec3<bool>(true, arg_0.a.d, arg_0.a.d)), vec3<bool>(arg_0.a.d, arg_0.a.d, true)), !select(vec3<bool>(arg_0.a.d, arg_0.a.d, true), !vec3<bool>(arg_0.a.d, true, true), arg_0.b == 4294967295u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: u32) -> bool {
    let var_0 = Struct_2(vec4<i32>(-1i) * -reverseBits(select(vec4<i32>(u_input.a, 0i, arg_1.x, -2803i), vec4<i32>(-26531i, global2.x, -2147483647i, global3[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(arg_0.x, arg_0.x, false, true))));
    global0 = arg_0.x & !(!any(arg_0.yy) || (any(vec2<bool>(false, false)) || true));
    let var_1 = Struct_4(Struct_3(Struct_1(arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, 16918i), vec3<i32>(1i, -53759i, var_0.a.x)) | firstTrailingBit(vec3<i32>(-35434i, 1i, -2147483647i)), ~reverseBits(4294967295u), 8574i), Struct_2(var_0.a), Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 1i), global2.xz), 2147483647i, global2.x, -1i)), true), u_input.b.x);
    global3 = array<i32, 29>();
    global1 = array<f32, 28>();
    return any(select(vec2<bool>(true, true), !select(arg_0.xz, arg_0.xx, var_1.a.d), (global2.x | global3[_wgslsmith_index_u32(29864u, 29u)]) >= var_0.a.x)) & (false | select(any(arg_0), true, !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 29>();
    global0 = func_4(!vec3<bool>(all(vec4<bool>(true, true, true, true)), !func_1(Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.a, 0i, 1i), vec3<i32>(-25744i, 1i, global3[_wgslsmith_index_u32(4510u, 29u)]), 0u, u_input.a), Struct_2(vec4<i32>(58323i, 1i, -19474i, global3[_wgslsmith_index_u32(117418u, 29u)])), global4[_wgslsmith_index_u32(u_input.b.x, 29u)], false), 26643u)), true), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, 18747i, 3316i), vec3<i32>(1i, global3[_wgslsmith_index_u32(0u, 29u)], 11853i)) >> (firstLeadingBit(vec3<u32>(u_input.b.x, 1u, u_input.b.x)) % vec3<u32>(32u)), abs(~vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.b.x, 29u)]))) | vec3<i32>(global2.x, 1665i, _wgslsmith_mod_i32(global2.x, ~u_input.a)), ~firstLeadingBit(4294967295u));
    let var_0 = Struct_4(Struct_3(Struct_1(vec3<i32>(65287i, u_input.a, u_input.a), -firstLeadingBit(vec3<i32>(2147483647i, 0i, global3[_wgslsmith_index_u32(u_input.b.x, 29u)])), reverseBits(~u_input.b.x), _wgslsmith_add_i32(u_input.a, min(12362i, u_input.a))), global4[_wgslsmith_index_u32(~30685u, 29u)], Struct_2(-countOneBits(vec4<i32>(46846i, global3[_wgslsmith_index_u32(u_input.b.x, 29u)], global2.x, 14726i))), false), u_input.b.x);
    let var_1 = ~(firstLeadingBit(firstTrailingBit(firstTrailingBit(u_input.b))) << (~max(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, var_0.a.a.c), vec2<u32>(0u, 8849u)), select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x), vec2<bool>(false, var_0.a.d))) % vec2<u32>(32u)));
    var var_2 = 1i;
    global3 = array<i32, 29>();
    global1 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(44523u, 44215u, u_input.b.x), vec3<u32>(29099u, 69001u, var_1.x)), reverseBits(vec3<u32>(16988u, u_input.b.x, 4294967295u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.x, 1u), vec3<u32>(1u, u_input.b.x, 18106u)) & (vec3<u32>(57346u, var_0.b, u_input.b.x) << (vec3<u32>(61686u, var_0.b, var_1.x) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, 37479u), abs(vec3<u32>(var_0.a.a.c, 79049u, u_input.b.x))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, var_1.x), vec3<u32>(8743u, var_1.x, 538u)))), ~vec4<u32>(2590u << (var_1.x % 32u), 1u, 4294967295u, ~(4294967295u << (var_1.x % 32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(~var_1.x, u_input.b.x << (u_input.b.x % 32u), abs(0u), u_input.b.x), abs(select(~vec4<u32>(1u, var_0.b, 19496u, 43794u), select(vec4<u32>(1u, 49643u, var_1.x, u_input.b.x), vec4<u32>(1u, 16134u, var_0.b, 1u), false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(step(508f, _wgslsmith_f_op_f32(-1164f - _wgslsmith_f_op_f32(-513f * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -2257f))))));
}


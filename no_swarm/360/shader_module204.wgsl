struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<f32, 14> = array<f32, 14>(196f, -1517f, 1194f, 593f, 1136f, 337f, -581f, -283f, -254f, 1000f, -398f, 634f, -1071f, 810f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -690f, 785f, 173f)), vec4<f32>(arg_0.x, global1[_wgslsmith_index_u32(arg_2, 14u)], 1000f, global1[_wgslsmith_index_u32(18136u, 14u)]))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -576f, 2138f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2109f, 885f, global1[_wgslsmith_index_u32(arg_1, 14u)], -1381f))))), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(33896i, -48962i)), -vec2<i32>(2147483647i, -1i))), ~(-_wgslsmith_mult_i32(1i, -1i))), Struct_2(Struct_1(firstLeadingBit(-vec2<i32>(1045i, -44417i))), -select(countOneBits(vec2<i32>(13019i, -2147483647i)), firstLeadingBit(vec2<i32>(-28403i, 2147483647i)), true), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -2147483647i) >> (countOneBits(u_input.a.zw) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(-1i, -2147483647i)))), Struct_1(~_wgslsmith_div_vec2_i32(~vec2<i32>(2567i, 1i), vec2<i32>(-2147483647i, -1i))), vec4<f32>(1394f, arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(680f, arg_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9434u, 14u)])))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wwz - _wgslsmith_f_op_vec3_f32(min(arg_0.wzy, _wgslsmith_f_op_vec3_f32(-var_0.a.wyw)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-844f, 1000f, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))))));
    let var_3 = Struct_5(vec4<i32>(var_0.c.a.a.x, var_0.c.a.a.x, countOneBits(var_0.b), var_0.c.a.a.x), _wgslsmith_clamp_u32(min(32501u, _wgslsmith_mult_u32(arg_2, u_input.a.x) & 10212u), _wgslsmith_mult_u32(arg_1, arg_1), abs(0u)), var_0.d, var_0.c);
    var_1 = any(vec4<bool>(true, false, _wgslsmith_add_u32(2257u, var_3.b) < 51007u, arg_1 < ~_wgslsmith_add_u32(var_3.b, arg_1)));
    return -(vec4<i32>(reverseBits(var_0.c.c), var_3.c.a.x, ~2147483647i, var_0.c.b.x) ^ var_3.a) << (vec4<u32>(_wgslsmith_add_u32(~(37099u >> (1u % 32u)), ~u_input.d.x), ~u_input.d.x >> (var_3.b % 32u), _wgslsmith_mod_u32(var_3.b, 48517u), firstLeadingBit(4294967295u)) % vec4<u32>(32u));
}

fn func_2() -> Struct_5 {
    global1 = array<f32, 14>();
    var var_0 = Struct_5(~func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(15546u, 14u)], 543f, global1[_wgslsmith_index_u32(4294967295u, 14u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], 480f, global1[_wgslsmith_index_u32(1u, 14u)]) - vec4<f32>(global1[_wgslsmith_index_u32(61645u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], -1744f))), 1u, countOneBits(~4294967295u)), u_input.a.x, Struct_1(select(vec2<i32>(-2147483647i, i32(-1i) * -1i), vec2<i32>(1i, 29391i), vec2<bool>(true, true))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 45317u, abs(u_input.a.x)), 6u)]);
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(var_0.d.a.a ^ reverseBits(abs(var_0.c.a)), vec2<i32>(_wgslsmith_add_i32(var_0.a.x, var_0.d.c), -21403i)));
    var var_2 = var_0.d.a;
    return Struct_5(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1191f, 122f, 931f, -1582f)))), vec4<f32>(global1[_wgslsmith_index_u32(~53421u, 14u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 14u)] * -1433f), -107f, _wgslsmith_f_op_f32(floor(746f)))), var_0.b, u_input.d.x), _wgslsmith_sub_u32(abs(var_0.b), firstTrailingBit(48439u)), Struct_1(var_0.d.a.a), Struct_2(Struct_1(-var_2.a & _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, var_0.d.c), vec2<i32>(-35737i, var_0.d.c), vec2<i32>(var_1.a.x, 0i))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, -2147483647i), (vec2<i32>(var_2.a.x, var_2.a.x) & vec2<i32>(40188i, var_1.a.x)) & var_1.a), -46511i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = func_2();
    let var_1 = true;
    var var_2 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-arg_1.x, 1i), firstTrailingBit(1i)), -var_0.c.a.x, ~select(-10228i, arg_1.x, var_1) << (var_0.b % 32u), arg_1.x), u_input.c, Struct_1(abs(-_wgslsmith_mod_vec2_i32(arg_1.yw, var_0.d.a.a))), func_2().d);
    let var_3 = var_1;
    let var_4 = _wgslsmith_mod_i32(~(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(abs(var_0.a.x), var_0.d.a.a.x ^ arg_1.x, _wgslsmith_add_i32(arg_1.x, arg_1.x), arg_1.x), vec4<i32>(firstLeadingBit(-37961i), min(var_2.d.b.x, var_0.c.a.x), 0i | var_0.d.a.a.x, 2147483647i)), firstLeadingBit(vec4<i32>(~46384i, arg_1.x, abs(var_2.a.x), ~arg_1.x))));
    return arg_0.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    let var_0 = ~(-vec3<i32>(1i, 1i, 1i) ^ reverseBits(select(vec3<i32>(26629i, -2147483647i, -2841i), vec3<i32>(2147483647i, 0i, -1i), vec3<bool>(false, false, true)) ^ -vec3<i32>(-1i, -48172i, 1014i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(163f, global1[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 14u)], global1[_wgslsmith_index_u32(~(~u_input.a.x), 14u)]), vec4<i32>(-1i) * -vec4<i32>(var_0.x, 15645i, var_0.x, var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 14u)])))))));
    global0 = array<Struct_2, 6>();
    let var_2 = _wgslsmith_clamp_vec3_u32(u_input.d, firstTrailingBit(min(vec3<u32>(u_input.b, 38431u, _wgslsmith_mod_u32(u_input.d.x, 4294967295u)), ~vec3<u32>(21955u, u_input.d.x, u_input.d.x))), u_input.d);
    var var_3 = ~firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, var_0.x, var_0.x, 22863i), select(select(vec4<i32>(var_0.x, -61203i, 2147483647i, var_0.x), vec4<i32>(0i, 22657i, var_0.x, var_0.x), vec4<bool>(true, false, false, true)), -vec4<i32>(33249i, -1246i, var_0.x, -21555i), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, ~(~var_2.x), ~max(var_2.x, func_2().b), var_2.x), ~func_3(vec4<f32>(_wgslsmith_div_f32(-578f, -384f), _wgslsmith_div_f32(var_1.x, global1[_wgslsmith_index_u32(var_2.x, 14u)]), -1773f, _wgslsmith_f_op_f32(var_1.x * var_1.x)), 4294967295u, 0u).xw, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1499f, 1000f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1720f, 1214f, var_1.x, 475f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 1000f, global1[_wgslsmith_index_u32(var_2.x, 14u)]), vec4<f32>(-1345f, global1[_wgslsmith_index_u32(4294967295u, 14u)], var_1.x, -384f), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-624f, var_1.x, 2338f, -1662f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 14u)], 559f, -538f, 189f))))))));
}


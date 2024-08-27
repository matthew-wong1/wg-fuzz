struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2916i, -4847i, 33418i);

var<private> global1: Struct_1 = Struct_1(1u);

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 1u, 0u, 1u, 6326u, 1u, 4294967295u, 0u, 65055u, 17572u, 0u, 19442u, 5470u, 2309u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(1678f - 195f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-287f, 1065f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f * -1259f) - 1342f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-152f - 1594f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(275f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-638f + -824f)), _wgslsmith_f_op_f32(-1179f + 852f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534f * 972f)))))));
    var var_1 = ~(-(i32(-1i) * -1i)) | global0.x;
    var_1 = _wgslsmith_clamp_i32(u_input.a.x, global0.x, global0.x) ^ ~u_input.a.x;
    let var_2 = vec4<i32>(~global0.x, global0.x, i32(-1i) * -44186i, _wgslsmith_mult_i32(u_input.a.x, countOneBits(u_input.a.x) >> (_wgslsmith_add_u32(select(10604u, global2[_wgslsmith_index_u32(9089u, 15u)], false), _wgslsmith_div_u32(74973u, u_input.c.x)) % 32u)));
    var var_3 = ~global0.x;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, -221f, -3924f, -2172f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1081f, var_0.x), vec4<f32>(var_0.x, var_0.x, -951f, -314f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, _wgslsmith_div_f32(var_0.x, -1640f), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(25462u);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(796f, 1679f, -1523f, 1019f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -730f, 1000f, 1446f)), any(vec3<bool>(true, false, false)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(309f * -716f), _wgslsmith_f_op_f32(-2349f * -317f), _wgslsmith_f_op_f32(abs(-2062f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(333f, 1000f, 370f, -107f))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global2[_wgslsmith_index_u32(var_0.a, 15u)])))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, 1000f, -814f, -1613f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-957f, 1050f, -1592f, -143f)))), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -563f)), -741f, _wgslsmith_div_f32(-1480f, -1184f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 901f)))));
    var var_2 = Struct_2(Struct_1(~reverseBits(~21611u)), Struct_1(min(~(~var_0.a), (4294967295u ^ global2[_wgslsmith_index_u32(1u, 15u)]) & 2191u)), u_input.a, vec3<bool>(true, select(any(vec3<bool>(true, false, false)), !any(vec4<bool>(false, false, true, true)), false), !all(vec4<bool>(false, true, false, true))), vec2<f32>(_wgslsmith_f_op_f32(sign(-2195f)), -411f));
    var var_3 = _wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(-var_2.e.x));
    var var_4 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~global1.a, firstLeadingBit(_wgslsmith_mod_u32(var_0.a, 0u)), ~var_2.b.a, ~(~var_0.a)), vec4<u32>(4294967295u ^ ~var_0.a, 26040u, 55131u, 4294967295u));
    return Struct_2(Struct_1(4294967295u & var_4.x), Struct_1(var_2.a.a), var_2.c, vec3<bool>(true, var_2.d.x, !(var_2.d.x == true) && (var_2.d.x != !var_2.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, var_2.e.x)), _wgslsmith_f_op_f32(var_1.x + -148f)) + var_1.yw));
}

fn func_1(arg_0: vec4<u32>) -> vec4<i32> {
    global0 = countOneBits(~(-vec3<i32>(~1i, 23067i, ~global0.x)));
    var var_0 = func_2(min(-1i, min(33179i, -1i)), -(global0.xy ^ firstLeadingBit(vec2<i32>(global0.x, -2147483647i))) ^ vec2<i32>(global0.x, global0.x));
    var var_1 = global0.x;
    var var_2 = func_2(_wgslsmith_sub_i32(-2147483647i, -u_input.a.x), min(vec2<i32>(0i, ~select(-2147483647i, 0i, true)), var_0.c));
    let var_3 = func_2(0i, _wgslsmith_clamp_vec2_i32(vec2<i32>(func_2(u_input.a.x, -vec2<i32>(33655i, var_0.c.x)).c.x, -2147483647i), ~_wgslsmith_sub_vec2_i32(var_0.c, vec2<i32>(global0.x, -44505i)) << (~firstLeadingBit(vec2<u32>(5738u, u_input.b)) % vec2<u32>(32u)), ~(-vec2<i32>(-26140i, 2147483647i))));
    return abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 1i, 18164i, var_0.c.x)), vec4<i32>(u_input.a.x, var_0.c.x, 1i, -1i), vec4<i32>(global0.x, 0i, 0i, 4135i) & vec4<i32>(1i, u_input.a.x, -3161i, 0i)), firstTrailingBit(vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, var_3.c.x)))) << (vec4<u32>(firstTrailingBit(u_input.b), ~(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c.x)), _wgslsmith_dot_vec2_u32(u_input.c.zz, max(~vec2<u32>(9626u, arg_0.x), ~vec2<u32>(4294967295u, arg_0.x))), var_0.b.a) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = select(!vec2<bool>(var_0, var_0), vec2<bool>((true || !var_0) && all(vec2<bool>(var_0, true)), select(var_0, true, (global1.a != u_input.c.x) && var_0)), vec2<bool>(true, true));
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(func_1(vec4<u32>(1u, 3423u, 4294967295u, 89646u)), vec4<i32>(2147483647i, 0i, -6764i, u_input.a.x)), ~(~vec4<i32>(-46742i, global0.x, global0.x, 0i))), _wgslsmith_add_vec4_i32(~(vec4<i32>(-2147483647i, global0.x, u_input.a.x, 0i) & vec4<i32>(-12154i, -46317i, global0.x, 1i)), -(~vec4<i32>(global0.x, global0.x, 50668i, 36935i)))), -(select(2147483647i & u_input.a.x, -27749i, true) >> (_wgslsmith_add_u32(~1u, ~global1.a) % 32u)), _wgslsmith_mult_i32(-45572i, 36439i & ~_wgslsmith_sub_i32(u_input.a.x, 6190i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(181f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1621f, 946f)), -2825f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f)), 875f, _wgslsmith_f_op_f32(func_2(func_1(vec4<u32>(u_input.b, global1.a, 0u, 1u)).x, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-1i, -27455i), u_input.a)).e.x * 1f)));
    var var_3 = var_2;
    global1 = func_2(-(~_wgslsmith_sub_i32(-global0.x, global0.x)), u_input.a).a;
    global2 = array<u32, 15>();
    global1 = func_2(_wgslsmith_dot_vec4_i32(max(vec4<i32>(~global0.x, -u_input.a.x, 7237i, abs(global0.x)), reverseBits(~vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1i))), -_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, global0.x, global0.x, -18986i), vec4<i32>(global0.x, u_input.a.x, global0.x, u_input.a.x))), global0.zx).a;
    global2 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(min(~u_input.c.xx, vec2<u32>(0u, 1u)) >> (select(_wgslsmith_add_vec2_u32(u_input.c.xz, u_input.c.yz), u_input.c.zy ^ u_input.c.zz, select(true, false, false)) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global1.a, 15u)], 0u, global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), u_input.c), 1u)));
}


struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<u32> = vec2<u32>(9971u, 4294967295u);

var<private> global2: array<i32, 31>;

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_1(global1.x, (firstLeadingBit(vec2<i32>(global3.b.x, global2[_wgslsmith_index_u32(global3.a, 31u)])) | reverseBits(vec2<i32>(arg_0.b.x, 0i))) | arg_0.b);
    global1 = arg_1.yx;
    let var_1 = _wgslsmith_div_vec3_u32(firstTrailingBit(firstTrailingBit(~(~arg_1.wzw))), select(_wgslsmith_div_vec3_u32(select(vec3<u32>(32832u, 0u, 4294967295u), abs(arg_1.wzz), vec3<bool>(true, true, true)), arg_1.xwx), arg_1.xxz, select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), false), true)));
    global2 = array<i32, 31>();
    let var_2 = arg_0;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-abs(0i), _wgslsmith_mult_i32(-1i, var_2.b.x), _wgslsmith_sub_i32(-2147483647i, arg_0.b.x), countOneBits(global3.b.x)), vec4<i32>(-1i) * -(vec4<i32>(global2[_wgslsmith_index_u32(arg_1.x, 31u)], u_input.c.x, var_2.b.x, 1i) & vec4<i32>(arg_0.b.x, -36824i, var_2.b.x, arg_0.b.x))), -abs(abs(vec4<i32>(-1i, -2147483647i, arg_0.b.x, 0i))) ^ ~vec4<i32>(_wgslsmith_div_i32(u_input.a, -31259i), min(-48640i, -5585i), arg_0.b.x, u_input.c.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = false;
    global1 = ~(vec2<u32>(_wgslsmith_clamp_u32(max(340u, 0u), global1.x, global3.a), global1.x) & (vec2<u32>(1u, ~global3.a) << (~vec2<u32>(global1.x, global3.a) % vec2<u32>(32u))));
    let var_1 = vec3<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(func_3(Struct_1(10670u, global3.b), vec4<u32>(11373u, 0u, 6967u, global3.a)), _wgslsmith_clamp_i32(u_input.c.x, global3.b.x, 2147483647i)), -2147483647i, global3.b.x, _wgslsmith_mult_i32(global3.b.x & 12756i, global3.b.x)), reverseBits(vec4<i32>(-32033i, _wgslsmith_sub_i32(19870i, global3.b.x), i32(-1i) * -1i, 13883i))), 55813i);
    global3 = Struct_1(_wgslsmith_add_u32(~(~global1.x), global3.a & (~2177u ^ global1.x)), vec2<i32>(-func_3(Struct_1(49155u, var_1.yz), ~vec4<u32>(global1.x, 0u, 0u, global1.x)), func_3(Struct_1(_wgslsmith_clamp_u32(31294u, 1u, global3.a), ~vec2<i32>(global2[_wgslsmith_index_u32(global3.a, 31u)], u_input.b)), select(~vec4<u32>(0u, 76696u, global3.a, 32326u), min(vec4<u32>(global3.a, global3.a, global3.a, global1.x), vec4<u32>(4294967295u, 0u, 1u, 0u)), vec4<bool>(true, true, true, true)))));
    return Struct_1(0u, -u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(global3.a, 2587u), 31471u, arg_0.a, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.x, 38950u, global1.x, 8134u)), vec4<u32>(arg_0.a, 0u, 5361u, ~25233u))));
    var var_1 = arg_0;
    global2 = array<i32, 31>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(arg_3.x)), -1234f);
    let var_3 = !vec3<bool>(all(select(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, false), arg_2), select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, false, false), vec4<bool>(arg_2, arg_2, false, true)), select(vec4<bool>(true, true, arg_2, false), vec4<bool>(false, false, false, false), arg_2))), !any(vec4<bool>(false, false, false, arg_2)) && any(vec4<bool>(false, true, false, false)), any(!(!vec2<bool>(false, arg_2))));
    return Struct_1(~func_2(vec2<f32>(var_2.x, arg_3.x), vec4<f32>(var_2.x, -121f, arg_3.x, var_2.x)).a & 4294967295u, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, global3.b.x, 0i), global3.b.x), select(0i, 19817i, arg_2)) << (~(vec2<u32>(arg_1.x, global3.a) << (reverseBits(vec2<u32>(1u, 57553u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<f32> {
    global3 = Struct_1(arg_1.a, _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(global2[_wgslsmith_index_u32(global3.a, 31u)] >> (global3.a % 32u), _wgslsmith_add_i32(2147483647i, arg_1.b.x)), -select(vec2<i32>(arg_1.b.x, -21928i), arg_1.b, false)), vec2<i32>(~(-global2[_wgslsmith_index_u32(global3.a, 31u)]), 0i)));
    let var_0 = func_4(func_2(vec2<f32>(1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-104f, 274f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(213f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2229f - -276f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-340f)), _wgslsmith_f_op_f32(f32(-1f) * -416f), true)))), select(vec3<u32>(arg_1.a, global1.x, ~arg_1.a), abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.a, global1.x, arg_1.a), vec3<u32>(arg_1.a, global1.x, 0u))), !vec3<bool>(arg_0, arg_0, select(arg_0, arg_0, arg_0))), false, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-130f, 926f, -514f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -621f, -473f, 2084f)), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(arg_0, true, arg_0, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(920f, -506f, -467f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, 401f, 390f, -614f)))), vec4<f32>(-183f, -279f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1143f)), _wgslsmith_f_op_f32(f32(-1f) * -845f), true)), -492f)));
    global2 = array<i32, 31>();
    let var_1 = (i32(-1i) * -1i) >> (~arg_1.a % 32u);
    var var_2 = ~(~vec3<u32>(50020u, ~(20785u << (global1.x % 32u)), arg_1.a));
    return vec4<f32>(-1171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 878f, _wgslsmith_sub_u32(var_2.x, global3.a) <= ~4294967295u))), -1914f, _wgslsmith_f_op_f32(-970f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1628f, -508f)) + -727f))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global3 = arg_0;
    var var_0 = !select(vec2<bool>(true, any(vec3<bool>(false, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true));
    global2 = array<i32, 31>();
    var_0 = vec2<bool>(var_0.x, var_0.x);
    let var_1 = vec4<i32>(global3.b.x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(global3.a, 31u)], _wgslsmith_div_i32(~(-35974i), max(global2[_wgslsmith_index_u32(global1.x, 31u)], global2[_wgslsmith_index_u32(67837u, 31u)]))), u_input.c.x, arg_0.b.x) ^ vec4<i32>(1i, _wgslsmith_mod_i32(u_input.b, arg_0.b.x), arg_0.b.x, func_2(arg_1.zz, arg_1).b.x);
    return 7463u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(global1.x | 50342u, _wgslsmith_mod_u32(func_5(Struct_1(global1.x, u_input.c), _wgslsmith_f_op_vec4_f32(func_1(true, Struct_1(57328u, global3.b)))), 16361u)), ~func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 588f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1284f, 1171f, 1574f, 747f), vec4<f32>(-1000f, -377f, -419f, -453f))))).a);
    global1 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 42299u), vec2<u32>(abs(global1.x), ~4294967295u)), ~countOneBits(~vec2<u32>(var_0.x, global3.a))), vec2<u32>(1u, global1.x) ^ ~select(abs(vec2<u32>(global3.a, 75624u)), vec2<u32>(global3.a, global1.x) >> (vec2<u32>(6944u, global1.x) % vec2<u32>(32u)), true));
    var var_1 = func_4(func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, -154f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1894f, 248f, 657f, -688f)) * vec4<f32>(-431f, 1572f, -1502f, -1641f))), vec3<u32>(1u | ~global1.x, _wgslsmith_clamp_u32(func_4(Struct_1(global3.a, vec2<i32>(23294i, u_input.c.x)), vec3<u32>(global1.x, 0u, var_0.x), false, vec4<f32>(-818f, 1442f, 889f, -265f)).a, 0u ^ var_0.x, 1u), _wgslsmith_clamp_u32(min(63461u, 24519u), select(4294967295u, 0u, false), min(0u, var_0.x))), false, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(1020f, -299f, true)), -691f, _wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_f_op_f32(ceil(-1348f)))))), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(0u, func_5(Struct_1(41302u, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], u_input.b)), vec4<f32>(-257f, -963f, 781f, 252f)), 596u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.a, var_0.x, global1.x) | vec3<u32>(var_0.x, var_0.x, global1.x), vec3<u32>(var_0.x, 37459u, global3.a)), ~vec3<u32>(1u, 4294967295u, 63165u) | (vec3<u32>(1u, 4294967295u, global3.a) >> (vec3<u32>(var_0.x, 48233u, global3.a) % vec3<u32>(32u))))), false, vec4<f32>(141f, _wgslsmith_f_op_f32(select(-471f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1041f, 179f) - _wgslsmith_f_op_f32(abs(244f))), any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - 396f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -254f)));
    var var_2 = Struct_1(var_0.x, countOneBits(min(u_input.c << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), u_input.c)));
    global2 = array<i32, 31>();
    var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-970f, -1338f) + vec2<f32>(-1456f, -1726f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-139f, 1484f)))), vec2<f32>(_wgslsmith_div_f32(-124f, -351f), _wgslsmith_f_op_f32(-264f + 833f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-837f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-658f)) + -218f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(175f - -854f))), _wgslsmith_f_op_f32(sign(371f)), _wgslsmith_f_op_f32(max(794f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(521f)), _wgslsmith_f_op_f32(abs(1335f))))))));
    global2 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-54147i, -985f, var_2.b.x, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~1i, firstTrailingBit(global3.b.x)), ~var_1.b.x, max(~u_input.c.x, min(2147483647i, var_2.b.x))), global3.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1766f, 176f, 191f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2212f, 195f, 101f) + vec3<f32>(-1550f, -1127f, 1819f)))))));
}


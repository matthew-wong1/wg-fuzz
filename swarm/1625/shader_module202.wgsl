struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 57730u);

var<private> global1: array<Struct_4, 3>;

var<private> global2: array<bool, 31> = array<bool, 31>(true, true, false, false, false, false, true, true, true, true, false, false, false, true, false, true, false, true, false, false, false, false, true, true, false, true, false, false, true, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~u_input.c.x), global0.x, 1u), u_input.c);
    var_0 = u_input.a.wyw;
    var var_1 = ~(~min(firstLeadingBit(vec4<u32>(0u, 0u, var_0.x, 36970u)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) & ~(~u_input.a));
    let var_2 = u_input.b;
    var_1 = vec4<u32>(~var_0.x, ~4294967295u, 4294967295u, var_1.x);
    return select(u_input.b.ywz, countOneBits(~_wgslsmith_clamp_vec3_i32(u_input.b.wyy, vec3<i32>(u_input.b.x, -1i, 1i), var_2.xwz)), !(!(!global2[_wgslsmith_index_u32(1u, 31u)]))) | var_2.yyy;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(max(func_3(), arg_3.yxw), u_input.b.yyx, _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.x, -1i, arg_3.x), func_3())) & -_wgslsmith_mod_vec3_i32(arg_3.wyw, ~u_input.b.zyx), arg_3.xww);
    let var_1 = !global2[_wgslsmith_index_u32(1u, 31u)];
    var var_2 = Struct_3(select(select(vec3<bool>(!var_1, true, all(vec2<bool>(var_1, global2[_wgslsmith_index_u32(arg_1.x, 31u)]))), vec3<bool>(u_input.c.x == arg_0, var_1, select(var_1, false, false)), vec3<bool>(true, false, any(vec2<bool>(false, false)))), !vec3<bool>(var_1, true, var_1), vec3<bool>(!var_1 || true, all(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(61934u, 31u)])), !(!var_1))));
    let var_3 = ((firstTrailingBit(0i) >> (u_input.c.x % 32u)) & _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, 1i)), arg_3.zz)) == (u_input.b.x & u_input.b.x);
    let var_4 = Struct_3(var_2.a);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), 1375f, arg_2, _wgslsmith_f_op_f32(arg_2 + 153f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-905f + arg_2), 1883f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(981f, 528f, arg_2, arg_2)))))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2(global0.x, ~firstLeadingBit(vec3<u32>(0u, 35900u, 31579u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(694f)) + _wgslsmith_f_op_f32(973f - -652f)))), u_input.b)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2100f, -959f))), 2070f, _wgslsmith_f_op_f32(select(1f, 842f, global2[_wgslsmith_index_u32(global0.x, 31u)])), _wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(329f + -2125f)))))));
    global1 = array<Struct_4, 3>();
    global2 = array<bool, 31>();
    global0 = u_input.c.yx << (u_input.c.zy % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(global0.x, firstLeadingBit(u_input.c), var_0.x, vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(arg_1, -14674i)), firstTrailingBit(arg_0), select(u_input.b.x, 1i, global2[_wgslsmith_index_u32(global0.x, 31u)]), select(-2147483647i, u_input.b.x, true)))).zy))));
    return vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, firstLeadingBit(global0.x) | 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(18603u, 1u), _wgslsmith_mod_u32(17138u, 2774u)), vec2<u32>(countOneBits(u_input.a.x), 1u)), 0u, ~(~(_wgslsmith_sub_u32(u_input.a.x, 2872u) | ~10343u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec2_u32(~u_input.c.yz, reverseBits(~(~(~u_input.c.zy))));
    global2 = array<bool, 31>();
    var var_2 = ~(~arg_0.x) | min(global0.x, global0.x & (firstLeadingBit(global0.x) >> (_wgslsmith_div_u32(arg_0.x, global0.x) % 32u)));
    global1 = array<Struct_4, 3>();
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(max(vec2<i32>(11510i, 33467i), firstTrailingBit(u_input.b.yz))), func_3().yz, _wgslsmith_sub_vec2_i32(u_input.b.wy, max(max(u_input.b.zz, u_input.b.wx), u_input.b.wx))), ~u_input.b.wz, vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(0i, u_input.b.x)), -1i) >> (arg_0.wy % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -14235i, -5112i), u_input.b.wzy), u_input.b.x >> (u_input.a.x % 32u)) | u_input.b.x), -_wgslsmith_mult_i32(~u_input.b.x, u_input.b.x << (14693u % 32u)), 14351i, _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.b.wy, vec2<i32>(u_input.b.x, u_input.b.x)) & func_4(func_1(38727i, 2147483647i), Struct_3(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(19403u, 31u)], global2[_wgslsmith_index_u32(28150u, 31u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(54788u, 31u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], true), global2[_wgslsmith_index_u32(1u, 31u)])), vec2<i32>(_wgslsmith_add_i32(func_4(u_input.a, Struct_3(vec3<bool>(true, true, true)), vec2<bool>(true, true)).x, u_input.b.x), ~u_input.b.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, -1840f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-141f, 427f), _wgslsmith_div_vec2_f32(vec2<f32>(-2721f, -1862f), vec2<f32>(1647f, -684f)))))))), select(!select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 31u)], global2[_wgslsmith_index_u32(global0.x, 31u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 31u)]), true)), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x & func_1(var_0.x, 5499i).x, 31u)], global2[_wgslsmith_index_u32(u_input.c.x, 31u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 31u)], all(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global0.x, 31u)]))))), abs(~firstLeadingBit(u_input.a.zyz)));
    var var_2 = var_1.a.yyy;
    var var_3 = select(select(select(vec4<bool>(false, true, true, var_1.c.x), !vec4<bool>(false, global2[_wgslsmith_index_u32(5539u, 31u)], true, global2[_wgslsmith_index_u32(4220u, 31u)]), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.d.x, 31u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(var_1.d.x, 31u)], var_1.c.x, false, var_1.c.x), false), vec4<bool>(false, false, var_1.c.x, var_1.c.x), true)), select(select(vec4<bool>(false, var_1.c.x, var_1.c.x, true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0.x, 31u)], true, true), vec4<bool>(false, true, var_1.c.x, global2[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(20793u, 31u)], true)), var_1.c.x), select(vec4<bool>(global2[_wgslsmith_index_u32(15218u, 31u)], global2[_wgslsmith_index_u32(var_1.d.x, 31u)], var_1.c.x, false), !vec4<bool>(false, true, var_1.c.x, false), select(vec4<bool>(var_1.c.x, global2[_wgslsmith_index_u32(26750u, 31u)], var_1.c.x, false), vec4<bool>(false, false, false, var_1.c.x), vec4<bool>(false, false, var_1.c.x, false))), !vec4<bool>(var_1.c.x, global2[_wgslsmith_index_u32(0u, 31u)], false, true)), !all(select(vec3<bool>(var_1.c.x, var_1.c.x, false), vec3<bool>(global2[_wgslsmith_index_u32(47745u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], true), false))), vec4<bool>(!(!global2[_wgslsmith_index_u32(37137u, 31u)] || !global2[_wgslsmith_index_u32(83276u, 31u)]), true | (select(u_input.c.x, 23826u, var_1.c.x) >= ~0u), any(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, !any(vec2<bool>(false, var_1.c.x)), any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], true, global2[_wgslsmith_index_u32(1u, 31u)], true), vec4<bool>(var_1.c.x, global2[_wgslsmith_index_u32(global0.x, 31u)], global2[_wgslsmith_index_u32(65338u, 31u)], global2[_wgslsmith_index_u32(2977u, 31u)]), vec4<bool>(var_1.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 31u)], true, true)), select(vec4<bool>(var_1.c.x, false, true, false), vec4<bool>(global2[_wgslsmith_index_u32(43254u, 31u)], global2[_wgslsmith_index_u32(19215u, 31u)], global2[_wgslsmith_index_u32(43376u, 31u)], var_1.c.x), vec4<bool>(global2[_wgslsmith_index_u32(24076u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(var_1.d.x, 31u)], true)), 4294967295u > u_input.c.x)), !any(var_1.c)));
    global0 = _wgslsmith_mult_vec2_u32(reverseBits(select(~(vec2<u32>(4294967295u, var_1.d.x) & vec2<u32>(98041u, var_1.d.x)), vec2<u32>(_wgslsmith_div_u32(1u, global0.x), 4294967295u), vec2<bool>(!var_3.x, global2[_wgslsmith_index_u32(0u, 31u)] || true))), var_1.d.yy);
    let var_4 = var_1.d;
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - 164f), -1000f)), vec2<bool>(any(select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 31u)], var_3.x, var_1.c.x), vec4<bool>(var_3.x, false, true, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 31u)], true))), select(false, global2[_wgslsmith_index_u32(u_input.c.x, 31u)], var_1.c.x) & (-528f > var_2.x)), var_1.d), firstLeadingBit(vec4<i32>(abs(-2147483647i), i32(-1i) * -27710i, max(~2147483647i, -u_input.b.x), var_0.x)), vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(abs(global0.x) & _wgslsmith_sub_u32(global0.x, var_1.d.x), _wgslsmith_mult_vec3_u32(var_4, var_4 << (var_1.d % vec3<u32>(32u))), var_2.x, var_0)).x, 852f), global2[_wgslsmith_index_u32(0u, 31u)] & any(select(select(vec4<bool>(var_3.x, global2[_wgslsmith_index_u32(var_4.x, 31u)], false, false), vec4<bool>(true, true, false, var_3.x), vec4<bool>(true, global2[_wgslsmith_index_u32(var_4.x, 31u)], false, false)), select(vec4<bool>(true, false, false, var_1.c.x), vec4<bool>(false, true, false, false), var_3.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x))), any(vec3<bool>(false, select(var_1.a.x > -500f, global2[_wgslsmith_index_u32(u_input.c.x, 31u)], !var_3.x), true)));
    let var_6 = _wgslsmith_clamp_i32(-53209i, ~(var_0.x | -2147483647i) | 27626i, var_5.b.x) << (0u % 32u);
    var var_7 = !select(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 31u)], var_1.c.x, false)), select(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 31u)], false, false), vec3<bool>(var_1.c.x, true, false), all(var_1.c)), vec3<bool>(all(vec4<bool>(false, var_1.c.x, var_3.x, true)), true, select(var_5.e, global2[_wgslsmith_index_u32(46886u, 31u)], var_5.a.c.x))), vec3<bool>(false, var_3.x, var_0.x > var_5.b.x), vec3<bool>((false | var_1.c.x) | true, global2[_wgslsmith_index_u32(14064u, 31u)] & var_5.a.c.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(-313i, countOneBits(~(~vec4<i32>(var_6, var_0.x, 14685i, var_6)) << ((u_input.a >> (vec4<u32>(1u, u_input.c.x, 21493u, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u))), max(12120u, ~1u & reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(40619u, var_1.d.x, var_1.d.x), vec3<u32>(55715u, global0.x, 16321u)))));
}


struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> vec4<u32> {
    global1 = u_input.a;
    return min(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, global1.x, 0u, u_input.a.x)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 2651u, u_input.b.x, 4294967295u)), ~vec4<u32>(0u, global1.x, 4294967295u, u_input.a.x)), ~(vec4<u32>(global1.x, global1.x, u_input.b.x, global1.x) << (vec4<u32>(global1.x, u_input.b.x, global1.x, u_input.b.x) % vec4<u32>(32u)))), firstLeadingBit(vec4<u32>(reverseBits(u_input.b.x), u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u >> (u_input.a.x % 32u), 31306u), 48996u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    let var_0 = vec2<bool>(true, all(vec4<bool>(!all(vec4<bool>(false, true, true, true)), true, true, false)));
    let var_1 = ~(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 0u) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global1.x, global1.x), vec3<u32>(1u, u_input.b.x, 29515u)), func_1().yxw) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, arg_1, 22144u), reverseBits(vec3<u32>(global1.x, 26842u, u_input.b.x))) % vec3<u32>(32u)));
    var var_2 = -6021i;
    let var_3 = !select(!(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, true))), vec3<bool>(all(vec3<bool>(true, var_0.x, var_0.x)), true, true), vec3<bool>(true, !var_0.x, var_0.x));
    global0 = array<Struct_1, 26>();
    return ~612u;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    global1 = vec2<u32>(111127u, 32599u);
    let var_0 = arg_3;
    let var_1 = abs((func_1().x & (firstTrailingBit(1u) ^ 26156u)) << (_wgslsmith_sub_u32(global1.x, 1u) % 32u));
    var var_2 = _wgslsmith_add_vec2_u32(~(vec2<u32>(arg_3.b.x, var_0.b.x >> (24962u % 32u)) ^ min(countOneBits(arg_3.b.zz), abs(vec2<u32>(10546u, 4294967295u)))), firstLeadingBit(reverseBits(arg_3.b.wx)));
    let var_3 = -arg_2 ^ (min(~arg_2, abs(~arg_2)) ^ arg_2);
    return ~(~var_0.b.yx);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_sub_vec2_u32(countOneBits(arg_0.b.yy), func_4(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(27541i, 7658i, -2147483647i, -39808i), vec4<i32>(-1i, 79998i, -18435i, -2147483647i))), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, -765f, -569f)), abs(global1.x)) == 25232u, 1i, arg_0));
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(591f, -1123f) - vec2<f32>(-1280f, -1340f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-944f, 1000f), vec2<f32>(-796f, 1191f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    var var_1 = vec4<i32>(-2147483647i, ~(-2147483647i), -3500i, _wgslsmith_mod_i32(~_wgslsmith_div_i32(1i, 35488i), ~(i32(-1i) * -2147483647i))) ^ reverseBits(vec4<i32>(_wgslsmith_add_i32(-48545i, abs(19335i)), abs(0i), -5577i, firstTrailingBit(countOneBits(-20210i))));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, -40909i), _wgslsmith_mult_vec2_i32(var_1.yw, var_1.xz)), var_1.x, 22633i) | abs(select(var_1.yyw, vec3<i32>(-11707i, var_1.x, var_1.x), !arg_0.a.x)), var_1.xxw, select(vec3<i32>(max(firstTrailingBit(-36756i), abs(2147483647i)), -_wgslsmith_div_i32(1i, var_1.x), abs(-2147483647i)), ~(~var_1.wzz ^ vec3<i32>(var_1.x, var_1.x, var_1.x)), !arg_0.a.zzy));
    global0 = array<Struct_1, 26>();
    return Struct_1(vec4<bool>(all(arg_0.a), false, false, true), firstTrailingBit(firstLeadingBit(vec4<u32>(~39857u, func_1().x, ~arg_0.b.x, ~arg_0.b.x))));
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 26>();
    var var_0 = arg_0.a.x;
    var var_1 = global0[_wgslsmith_index_u32(~global1.x ^ u_input.a.x, 26u)];
    let var_2 = any(func_2(func_2(func_2(arg_0))).a.yyw);
    let var_3 = _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(1i, -4962i), countOneBits(-46744i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(19787i, -1i, -12294i)), i32(-1i) * -2147483647i)) << (~firstLeadingBit(countOneBits(arg_0.b.ww) & func_2(Struct_1(var_1.a, vec4<u32>(0u, 1u, 0u, 45507u))).b.wy) % vec2<u32>(32u));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-min(-1i, 37596i), -21581i), -vec2<i32>(0i, abs(var_3.x))) << (abs(vec2<u32>(u_input.a.x, u_input.b.x) >> (func_2(global0[_wgslsmith_index_u32(~var_1.b.x, 26u)]).b.zy % vec2<u32>(32u))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), ~_wgslsmith_add_vec4_u32(~func_1(), abs(vec4<u32>(22884u, u_input.b.x, 53332u, global1.x)) & abs(vec4<u32>(global1.x, 4294967295u, 4294967295u, 4294967295u))));
    var var_1 = Struct_1(vec4<bool>(!var_0.a.x, false, true, false), ~max(~var_0.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 51665u, 1u, 7299u))));
    var var_2 = func_5(func_2(Struct_1(vec4<bool>(false, true, true, var_1.a.x), ~(vec4<u32>(0u, 20989u, u_input.b.x, var_1.b.x) >> (var_0.b % vec4<u32>(32u))))));
    let var_3 = func_2(func_2(global0[_wgslsmith_index_u32(~14592u, 26u)]));
    global0 = array<Struct_1, 26>();
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(18216u, var_3.b, select(vec4<i32>(_wgslsmith_add_i32(max(-25022i, var_2.x), select(var_2.x, 2147483647i, true)), -21005i >> (1u % 32u), ~(~var_2.x), min(var_2.x, 2147483647i)), vec4<i32>(abs(var_2.x), -(~var_2.x), min(-57654i << (1u % 32u), var_2.x), var_2.x), true), func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(4888i, var_2.x), vec2<i32>(2147483647i, var_2.x) ^ vec2<i32>(-29053i, var_2.x)), countOneBits(_wgslsmith_mult_i32(var_2.x, var_2.x)), -2147483647i & _wgslsmith_mod_i32(var_2.x, var_2.x), -(~var_2.x)), var_1.a.x, i32(-1i) * -_wgslsmith_mult_i32(var_2.x, -2147483647i), var_3).x);
}


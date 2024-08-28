struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: vec2<f32> = vec2<f32>(-547f, 120f);

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-402f, -990f, 1318f), vec3<f32>(1046f, -489f, 280f), vec3<f32>(-1000f, 1840f, -248f), vec3<f32>(-1561f, 1000f, -240f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -557f);
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_div_u32(~(arg_1.x & 0u), _wgslsmith_mod_u32(arg_1.x, 1u)), 37535u, _wgslsmith_sub_u32(~0u, arg_2.c >> (arg_2.c % 32u)) & 856u, arg_1.x), 47734u, arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17176u, arg_1.x, arg_2.c, 23859u) | vec4<u32>(4294967295u, 4294967295u, 1u, arg_2.c), countOneBits(vec4<u32>(8780u, arg_2.c, arg_1.x, arg_1.x))), ~(~355u)), vec3<u32>(max(~arg_2.c, countOneBits(arg_2.c)), firstLeadingBit(88916u), 0u)));
    var var_2 = arg_2;
    var var_3 = Struct_2(vec4<u32>(var_1.b, 1u, 23219u, _wgslsmith_dot_vec2_u32(min(~var_1.a.xy, abs(arg_1.zz)), vec2<u32>(arg_2.c << (var_2.c % 32u), _wgslsmith_dot_vec3_u32(var_1.a.zzy, arg_1.wyx)))), 1u, Struct_1(vec2<bool>(true, false), _wgslsmith_div_i32(~firstLeadingBit(var_2.b), -arg_2.b), var_2.c), var_2.c);
    let var_4 = _wgslsmith_mod_i32(min(-(~(33977i << (var_3.b % 32u))), _wgslsmith_sub_i32(~(~var_2.b), _wgslsmith_div_i32(~arg_2.b, -var_1.c.b))), var_1.c.b);
    return -225f;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(33488u), arg_0.c), 4u)] * vec3<f32>(_wgslsmith_f_op_f32(sign(-742f)), global1.x, _wgslsmith_f_op_f32(global1.x * 382f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(688f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.x)), global1.x))));
    var var_1 = _wgslsmith_f_op_f32(-1516f + _wgslsmith_f_op_f32(1049f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, ~vec4<u32>(24071u, arg_0.c, 79742u, arg_0.c), Struct_1(vec2<bool>(false, false), u_input.b.x, arg_0.c))))));
    global2 = array<vec3<f32>, 4>();
    var var_2 = select(!select(vec2<bool>(!arg_0.a.x, true), vec2<bool>(arg_0.a.x, true), arg_0.a), arg_0.a, true);
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -811f)) - _wgslsmith_f_op_f32(select(global1.x, 1449f, var_2.x && !var_2.x))));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 781f, 440f, 3037f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1675f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1710f, global1.x, 445f, global1.x) + vec4<f32>(959f, -854f, 1001f, 1304f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, 1371f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 2015f, global1.x))))));
    var var_1 = Struct_1(select(vec2<bool>(true, func_2(Struct_1(vec2<bool>(true, true), 3258i, 4294967295u))), !vec2<bool>(all(vec4<bool>(false, true, false, false)), true), !vec2<bool>(true, any(vec2<bool>(true, true)))), select(u_input.a, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.c.x, u_input.b.x, -2147483647i)), u_input.b, vec3<bool>(true, true, true)), vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.c.x, u_input.b.x), 68675i)), true), abs(_wgslsmith_add_u32(9204u, 8826u)));
    let var_2 = all(!vec4<bool>(var_1.a.x, var_1.a.x, max(var_1.c, var_1.c) >= 4294967295u, true));
    var var_3 = Struct_2(~vec4<u32>(min(_wgslsmith_mult_u32(var_1.c, 53514u), 53699u), _wgslsmith_sub_u32(~0u, 18690u), var_1.c, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.c, var_1.c), var_1.c >> (14587u % 32u))), ~var_1.c, Struct_1(vec2<bool>(any(!vec4<bool>(true, var_2, true, var_1.a.x)), func_2(Struct_1(var_1.a, 0i, var_1.c))), 8062i, 4294967295u), 74141u);
    let var_4 = _wgslsmith_mult_u32(var_3.a.x, 17968u);
    return var_3.c;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    global0 = array<vec3<bool>, 32>();
    let var_0 = Struct_2(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 4294967295u, 1u, arg_1), vec4<u32>(1u, 0u, arg_1, arg_1)) & select(vec4<u32>(28244u, 2141u, arg_0.c, 86397u), vec4<u32>(arg_1, 4294967295u, 99427u, 3248u), vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)))), reverseBits(arg_0.c), func_1(), 21158u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.c.a.x, var_0.a, var_0.c)));
    global0 = array<vec3<bool>, 32>();
    let var_2 = func_1();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-178f)) * var_1)), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(), 0u)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2546f) - 181f))));
    var var_0 = 1u;
    var var_1 = -29932i;
    var_1 = firstTrailingBit(reverseBits(-1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(462f, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f - 653f)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-global1.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(805f, 1000f, 732f, -3063f) * vec4<f32>(-2221f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, -102f, global1.x, global1.x)))), vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1882f), -484f), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, true, true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1359f, 2640f, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, 882f, global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-129f, global1.x, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -298f, global1.x, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(0u)), ~vec3<u32>(16926u, ~4294967295u, select(35910u, 4294967295u, false)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
}


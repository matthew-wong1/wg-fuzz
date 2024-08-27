struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -751f;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(85035u, 4294967295u)), Struct_1(vec2<u32>(79425u, 1u)), Struct_1(vec2<u32>(4294967295u, 66769u)), Struct_1(vec2<u32>(0u, 1738u)), Struct_1(vec2<u32>(4294967295u, 11503u)), Struct_1(vec2<u32>(94422u, 0u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 88276u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(1u, 57048u)), Struct_1(vec2<u32>(23707u, 1u)), Struct_1(vec2<u32>(4294967295u, 27739u)), Struct_1(vec2<u32>(6048u, 50606u)), Struct_1(vec2<u32>(30474u, 2806u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global1 = 365f;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) + _wgslsmith_f_op_f32(sign(498f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(211f, -1243f))))) - vec3<f32>(-579f, -715f, 1f));
    global2 = !vec2<bool>(any(vec3<bool>(true, true, true)) || all(vec3<bool>(global2.x, false, global2.x)), ~u_input.a.x >= ~abs(u_input.a.x));
    let var_1 = Struct_1(u_input.a);
    let var_2 = firstTrailingBit(var_1.a.x);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(-981f * _wgslsmith_f_op_f32(var_0.x + -1000f))), _wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-2251f)), _wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-204f, var_0.x)) + -364f))));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(min(~(~0u), _wgslsmith_div_u32(14746u, 4294967295u) << (u_input.a.x % 32u)), ~u_input.a.x));
    var var_1 = arg_0.x;
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-186f + arg_0.x), _wgslsmith_f_op_vec4_f32(func_3()).x, -2112f));
    var var_4 = global3[_wgslsmith_index_u32(~u_input.a.x, 19u)];
    return vec2<bool>(global2.x, !global2.x);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = select(select(select(select(select(vec3<bool>(arg_0.x, arg_0.x, global2.x), vec3<bool>(true, global2.x, false), true), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, false, global2.x), global2.x), u_input.a.x > u_input.a.x), select(vec3<bool>(false, arg_0.x, true), vec3<bool>(global2.x, false, global2.x), arg_0.x), select(vec3<bool>(true, true, global2.x), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, arg_0.x, true), arg_0.x), !vec3<bool>(global2.x, arg_0.x, true))), vec3<bool>(any(func_2(vec2<f32>(-512f, -1573f))), any(arg_0), !(!global2.x)), !(_wgslsmith_add_u32(u_input.a.x, 0u) >= ~0u)), !select(select(select(vec3<bool>(true, false, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, false)), vec3<bool>(false, false, global2.x), vec3<bool>(false, true, global2.x)), !vec3<bool>(global2.x, false, false), true), vec3<bool>(!arg_0.x, _wgslsmith_mod_i32(u_input.b.x, firstTrailingBit(u_input.b.x)) > abs(-u_input.b.x), !(!any(vec4<bool>(arg_0.x, true, false, true)))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1100f);
    global1 = _wgslsmith_f_op_vec4_f32(func_3()).x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - _wgslsmith_f_op_f32(trunc(-1448f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-553f)) + -677f));
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(~0u, countOneBits(0u))), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))));
    return _wgslsmith_add_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -1i));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: i32) -> u32 {
    let var_0 = Struct_1(vec2<u32>(u_input.a.x, 1u));
    let var_1 = countOneBits(reverseBits(arg_1.xx));
    var var_2 = reverseBits(abs(u_input.a) << (firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.a, max(vec2<u32>(0u, 14215u), vec2<u32>(4294967295u, u_input.a.x)), ~var_0.a)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(-133f * -1345f);
    global2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(410f, -1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2330f, -471f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -1324f)))))));
    return (4294967295u & (u_input.a.x << (u_input.a.x % 32u))) ^ ~var_2.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 19>();
    let var_0 = 0u;
    global0 = -612f;
    return global3[_wgslsmith_index_u32(~firstTrailingBit(1448u), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 19u)];
    var var_1 = u_input.a.x;
    var var_2 = func_5(_wgslsmith_sub_u32(func_4(u_input.a.x <= (u_input.a.x ^ var_0.a.x), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 0i)), func_1(vec2<bool>(false, false)) >> ((63374u << (u_input.a.x % 32u)) % 32u)), 7222u), Struct_1(firstLeadingBit(u_input.a)), Struct_1(~u_input.a), global3[_wgslsmith_index_u32(~(~reverseBits(~u_input.a.x)), 19u)]);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1148f)), _wgslsmith_div_f32(711f, 267f))) + _wgslsmith_f_op_f32(min(1f, 1061f)))));
    let var_3 = !(!vec4<bool>(!(u_input.b.x >= -8484i), func_5(33444u, Struct_1(vec2<u32>(0u, var_0.a.x)), global3[_wgslsmith_index_u32(65585u, 19u)], global3[_wgslsmith_index_u32(var_2.a.x, 19u)]).a.x > (0u << (var_2.a.x % 32u)), true, !all(vec4<bool>(false, false, global2.x, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(132064u, ~reverseBits(~reverseBits(vec4<u32>(var_2.a.x, 4294967295u, 0u, var_2.a.x))), vec4<u32>(~abs(27358u << (var_2.a.x % 32u)), ~(~4294967295u) | u_input.a.x, _wgslsmith_mult_u32(var_0.a.x, var_0.a.x), ~_wgslsmith_sub_u32(var_0.a.x, ~4294967295u)));
}


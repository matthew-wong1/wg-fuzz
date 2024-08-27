struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, false, false, false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(!(!arg_1.a), ~arg_0.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, ~1i), _wgslsmith_mult_i32(u_input.a, arg_1.c)) ^ arg_1.d.x, ~(_wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a, 1i), arg_1.d, vec2<bool>(false, false)), firstLeadingBit(arg_1.d)) ^ reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -57069i), vec2<i32>(u_input.b, -27057i)))));
    var_0 = arg_1;
    var var_1 = 1f;
    let var_2 = arg_1;
    global0 = array<bool, 8>();
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(~select(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), func_3(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false, 66830u, -31798i, vec2<i32>(u_input.a, u_input.a))), 0u), countOneBits(abs(4294967295u)), true), ~firstLeadingBit(1u));
    let var_1 = Struct_3(!select(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(54755u, 8u)], global0[_wgslsmith_index_u32(85203u, 8u)])), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 31929u)), 8u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(45506u, 8u)], global0[_wgslsmith_index_u32(3743u, 8u)], global0[_wgslsmith_index_u32(31328u, 8u)])), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, global0[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_mult_i32(~(i32(-1i) * -u_input.a), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-20265i, 38781i), vec2<i32>(-1i, u_input.a))) ^ 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) * -681f)), Struct_2(~(~(~vec3<u32>(4294967295u, 1u, 59895u))), vec3<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(12570u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])), true), Struct_1(!any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)])), ~(~1u), _wgslsmith_mult_i32(max(0i, 0i), ~1i), -(~vec2<i32>(u_input.a, -1i))), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(85622u, 77020u, 834u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), 8u)], 1648f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) + _wgslsmith_f_op_f32(floor(-1516f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1050f))), max(~0u, ~select(4294967295u, 64999u, global0[_wgslsmith_index_u32(1u, 8u)])), 1i, _wgslsmith_sub_vec2_i32(countOneBits(-vec2<i32>(u_input.b, -5114i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -71876i)) | countOneBits(vec2<i32>(u_input.b, u_input.b)))));
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    var_0 = ~(_wgslsmith_mod_u32(~(~39202u), _wgslsmith_div_u32(0u ^ var_1.e.b, abs(var_1.e.b))) & var_1.d.a.x);
    return var_1.e;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~28848u, 8u)], global0[_wgslsmith_index_u32(firstLeadingBit(~(~4294967295u)), 8u)]);
    var_0 = !select(arg_1.b.xy, vec2<bool>(false, true), vec2<bool>(true, true));
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.e))), -411f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(983f, arg_1.e, 295f) + vec3<f32>(arg_1.e, 652f, arg_1.e))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(783f, arg_0.e, 1481f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.e, -1232f, 2204f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, arg_1.e, 746f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-896f, arg_0.e, arg_0.e)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-398f, arg_0.e, arg_1.e))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e, arg_1.e, 1343f))))))));
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 8>();
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1249f - _wgslsmith_f_op_f32(-347f - -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1003f))))), _wgslsmith_f_op_f32(-1387f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(245f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1551f + 697f), -1455f, -1000f) + vec3<f32>(_wgslsmith_f_op_f32(min(760f, 1000f)), 777f, 430f)), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(~vec3<u32>(0u, 8653u, 48661u), !vec3<bool>(global0[_wgslsmith_index_u32(79443u, 8u)], true, false), func_2(), global0[_wgslsmith_index_u32(9987u, 8u)] | true, 335f), Struct_2(vec3<u32>(54688u, 5279u, 127154u), !vec3<bool>(global0[_wgslsmith_index_u32(11787u, 8u)], global0[_wgslsmith_index_u32(17649u, 8u)], global0[_wgslsmith_index_u32(12424u, 8u)]), func_2(), global0[_wgslsmith_index_u32(53800u, 8u)] | true, _wgslsmith_f_op_f32(-371f - 1000f)))))));
    global0 = array<bool, 8>();
    let var_1 = min(reverseBits(~(~select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 40414u), vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(39602u, 8u)])))), vec2<u32>(0u, 1u));
    let var_2 = select(select(select(vec4<bool>(var_0.x != 247f, true, !global0[_wgslsmith_index_u32(var_1.x, 8u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], false, global0[_wgslsmith_index_u32(var_1.x, 8u)], global0[_wgslsmith_index_u32(var_1.x, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(10706u, 8u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], true, false, false)), select(vec4<bool>(true, true, true, false), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], true, false, global0[_wgslsmith_index_u32(var_1.x, 8u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(71540u, 8u)], true))), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(40375u, 8u)], false, true)), !(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(var_1.x, 8u)])), false), true), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(552f))) < var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1296f * -259f)) < var_0.x, true, !any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 8u)])) && func_2().a), !select(vec4<bool>(!global0[_wgslsmith_index_u32(var_1.x, 8u)], var_0.x <= 584f, true, global0[_wgslsmith_index_u32(~35152u, 8u)]), vec4<bool>(!global0[_wgslsmith_index_u32(var_1.x, 8u)], true, !global0[_wgslsmith_index_u32(0u, 8u)], all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(64278u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]))), select(!vec4<bool>(global0[_wgslsmith_index_u32(16849u, 8u)], false, false, global0[_wgslsmith_index_u32(26127u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(60961u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(var_1.x, 8u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], false, global0[_wgslsmith_index_u32(var_1.x, 8u)], false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 8u)], true)))));
    return Struct_3(select(vec3<bool>(!(false && var_2.x), func_2().a, false), !select(!var_2.zww, !var_2.wxy, !var_2.zxz), true), 1i, var_0.x, Struct_2(vec3<u32>(0u, func_3(~vec3<u32>(8410u, 1u, var_1.x), Struct_1(true, var_1.x, u_input.b, vec2<i32>(-15153i, -2147483647i))), 6240u), !(!var_2.xxw), Struct_1(!(var_0.x >= var_0.x), abs(firstLeadingBit(var_1.x)), 2147483647i, select(vec2<i32>(72515i, 0i), vec2<i32>(-56043i, u_input.a), false) | vec2<i32>(1i, u_input.b)), !(!var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2740f))), Struct_1(all(var_2), var_1.x, _wgslsmith_mult_i32(~22559i, -(8299i >> (var_1.x % 32u))), vec2<i32>(-10370i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = u_input.a;
    let var_1 = select(!vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(5068u, 8u)], true, false, global0[_wgslsmith_index_u32(32812u, 8u)])), all(vec2<bool>(true, true))), vec2<bool>(~1u < _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(40282u, 67660u, 66417u), vec3<u32>(52193u, 4294967295u, 44488u), vec3<u32>(53513u, 0u, 650u)), vec3<u32>(1u, 1u, 1u)), global0[_wgslsmith_index_u32(~abs(~10742u), 8u)]), false);
    global0 = array<bool, 8>();
    var var_2 = _wgslsmith_mult_i32(8108i, ~abs(var_0));
    let var_3 = func_1();
    let var_4 = -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(var_3.e.d, func_2().d, countOneBits(firstLeadingBit(vec2<i32>(-4741i, var_3.d.c.c)))), firstLeadingBit(countOneBits(-var_3.e.d)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -var_4.x, ~(~(~vec2<u32>(var_3.d.a.x, 0u))));
}


struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, i32(-2147483648), 22014i, i32(-2147483648), 2147483647i, -9494i, -34425i, 2147483647i, -1i, 0i, -1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> bool {
    var var_0 = select(select(vec2<i32>(~global0[_wgslsmith_index_u32(arg_0.x, 11u)], firstTrailingBit(29923i)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(5194i, global0[_wgslsmith_index_u32(arg_0.x, 11u)])), min(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 77987i), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -61392i), vec2<i32>(50439i, 13686i))), true), countOneBits(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(9626i, global0[_wgslsmith_index_u32(97957u, 11u)]), vec2<i32>(global0[_wgslsmith_index_u32(604u, 11u)], 2147483647i)), min(vec2<i32>(0i, global0[_wgslsmith_index_u32(arg_3.x, 11u)]), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 11u)])))), false) >> (vec2<u32>(~(~(~arg_0.x)), _wgslsmith_div_u32(~abs(arg_3.x), 1u)) % vec2<u32>(32u));
    global0 = array<i32, 11>();
    var_0 = min(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 11u)], 2147483647i)), vec2<i32>(var_0.x, var_0.x)), abs(vec2<i32>(i32(-1i) * -696i, abs(3158i)))), vec2<i32>(global0[_wgslsmith_index_u32(44371u, 11u)], _wgslsmith_add_i32(abs(0i), 1i << (u_input.a.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-1398f + _wgslsmith_f_op_f32(min(-940f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-897f, -314f)) * -795f))));
    let var_2 = -1i;
    return select(any(!vec4<bool>(true, all(vec2<bool>(arg_1, arg_1)), all(vec2<bool>(true, true)), true)), true, !(arg_1 && true));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    let var_0 = true & any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true));
    var var_1 = ~arg_1.yy;
    var var_2 = false;
    let var_3 = u_input.a.wy & abs(countOneBits(countOneBits(~vec2<u32>(arg_0.a, 48391u))));
    var_2 = any(!select(vec3<bool>(true, select(var_0, false, var_0), func_3(arg_0.c.wxy, false, var_0, arg_0.c.zzw)), select(vec3<bool>(false, var_0, false), !vec3<bool>(true, true, var_0), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), var_0)), vec3<bool>(true, all(vec4<bool>(true, true, true, false)), var_0 & true)));
    return _wgslsmith_f_op_f32(max(535f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(831f * -779f) + _wgslsmith_f_op_f32(trunc(132f)))))))));
}

fn func_1() -> vec2<bool> {
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1349f + -968f)))), -419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1911f + _wgslsmith_f_op_f32(floor(719f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(235f, 1626f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(0u, vec2<u32>(0u, u_input.a.x), u_input.a, global0[_wgslsmith_index_u32(0u, 11u)]), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))) - 904f)))), _wgslsmith_f_op_f32(func_2(Struct_1(52250u, _wgslsmith_sub_vec2_u32(min(u_input.a.wx, u_input.a.xx), u_input.a.xy), ~vec4<u32>(1u, 0u, 10025u, 0u), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(37910u & u_input.a.x, 11u)], -19873i)), vec3<i32>(global0[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_dot_vec2_i32(-vec2<i32>(-31578i, 0i), select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 2147483647i), vec2<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 11u)]), true)), abs(abs(global0[_wgslsmith_index_u32(0u, 11u)]))))));
    var var_1 = ~vec2<i32>(abs(-_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(35037u, 11u)])), -2147483647i);
    var var_2 = Struct_2(max(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(~u_input.a, firstTrailingBit(u_input.a))), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yy), 101589u, 4294967295u, ~(~1u))), Struct_1(u_input.a.x, reverseBits(vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x)), ~u_input.a, 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1013f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 528f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(381f, -361f)))))), Struct_1(0u, vec2<u32>(~(~10430u), u_input.a.x), max(u_input.a, u_input.a), 0i), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<bool>(true, global0[_wgslsmith_index_u32(10582u, 11u)] == 11545i)));
    return select(vec2<bool>(var_2.e.x & var_2.e.x, !(var_2.c.x < -1421f)), select(select(vec2<bool>(var_2.e.x, var_2.e.x), !var_2.e, all(!vec4<bool>(false, var_2.e.x, var_2.e.x, true))), var_2.e, vec2<bool>(true, var_2.e.x)), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    var var_0 = Struct_1(28431u, u_input.a.yx, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(min(u_input.a.x << (u_input.a.x % 32u), _wgslsmith_div_u32(4294967295u, u_input.a.x)), 11u)]), _wgslsmith_mult_vec2_i32(-(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])), vec2<i32>(2571i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(11878u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<i32>(9555i, global0[_wgslsmith_index_u32(26035u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))))));
    var var_1 = any(!func_1());
    let var_2 = _wgslsmith_mod_u32(0u, var_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_mult_u32(~1u, abs(var_0.c.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.b, u_input.a.xz), max(u_input.a.xw, vec2<u32>(59104u, var_0.c.x))), max(vec4<u32>(var_2, 12412u, 74558u, u_input.a.x), vec4<u32>(var_0.c.x, 1u, u_input.a.x, 68515u)), _wgslsmith_mult_i32(select(global0[_wgslsmith_index_u32(0u, 11u)], 5976i, false), 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-56821i, -11329i, ~var_0.d), vec3<i32>(5769i, -1322i, global0[_wgslsmith_index_u32(37001u, 11u)]) | -vec3<i32>(var_0.d, global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0.d)))));
    global0 = array<i32, 11>();
    global0 = array<i32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-27775i >> (_wgslsmith_dot_vec2_u32(~select(u_input.a.yw, u_input.a.xy, vec2<bool>(true, false)), vec2<u32>(countOneBits(25667u), select(0u, var_0.b.x, true))) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(20287u, _wgslsmith_sub_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, var_0.c.x)), u_input.a, var_0.d << (var_2 % 32u)), ~vec3<i32>(69602i, var_0.d, global0[_wgslsmith_index_u32(var_2, 11u)]))), -524f), vec2<f32>(var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_1(11615u, vec2<u32>(u_input.a.x, 27848u), vec4<u32>(1u, 51180u, 4294967295u, var_0.c.x), var_0.d), min(vec3<i32>(6883i, -19059i, 3996i), vec3<i32>(44697i, 3207i, 8411i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1539f)), true))));
}


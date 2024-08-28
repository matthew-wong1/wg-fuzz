struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(46443u, 58491u, 1u, 19268u), vec4<u32>(4587u, 0u, 4294967295u, 61503u), vec4<u32>(4294967295u, 1u, 4294967295u, 33126u), vec4<u32>(0u, 55480u, 42545u, 0u), vec4<u32>(13139u, 4294967295u, 7923u, 0u), vec4<u32>(1u, 4294967295u, 1u, 23647u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(34992u, 0u, 1u, 20422u), vec4<u32>(0u, 4294967295u, 58839u, 570u), vec4<u32>(25645u, 4294967295u, 53182u, 32557u), vec4<u32>(33550u, 709u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 31593u, 4294967295u), vec4<u32>(10803u, 1u, 1u, 18822u), vec4<u32>(4294967295u, 0u, 1u, 10728u), vec4<u32>(1u, 72607u, 1u, 1u), vec4<u32>(4294967295u, 1u, 42275u, 37331u), vec4<u32>(56943u, 17679u, 1u, 13631u), vec4<u32>(4294967295u, 24550u, 46164u, 0u), vec4<u32>(0u, 1u, 57254u, 44369u), vec4<u32>(71022u, 107012u, 75681u, 0u), vec4<u32>(56910u, 41878u, 8655u, 96707u));

var<private> global1: array<bool, 14>;

var<private> global2: vec4<bool>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: u32) -> vec4<i32> {
    var var_0 = Struct_1(~vec4<i32>(countOneBits(_wgslsmith_sub_i32(u_input.a, 17046i)), firstTrailingBit(-2147483647i) << (firstLeadingBit(u_input.c.x) % 32u), abs(1i), arg_1), global1[_wgslsmith_index_u32(~(~14062u), 14u)]);
    var var_1 = Struct_1(var_0.a, false);
    var_1 = Struct_1(~(firstTrailingBit(var_1.a) >> (vec4<u32>(~78204u, arg_3, 0u, ~arg_3) % vec4<u32>(32u))), var_1.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, arg_2, arg_0, 1000f))) + vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(step(1037f, arg_2)), _wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_div_f32(-2684f, arg_0)), vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)] != global2.x, all(vec4<bool>(var_1.b, true, var_0.b, var_1.b)), true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_div_f32(arg_0, -724f), _wgslsmith_f_op_f32(arg_2 + -2044f), 1f))));
    global0 = array<vec4<u32>, 21>();
    return vec4<i32>(reverseBits(-_wgslsmith_add_i32(var_1.a.x, ~(-38822i))), var_1.a.x, _wgslsmith_div_i32(~(~21546i), 36334i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.wz, _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(472i, u_input.a)), vec2<i32>(23002i, var_0.a.x))), select(var_0.a.zx, ~vec2<i32>(45069i, 1i), !global2.xz) >> (_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(4294967295u, 20517u)), _wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(4812u, u_input.b))) % vec2<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    global0 = array<vec4<u32>, 21>();
    let var_0 = Struct_2(reverseBits(~arg_1 | ~1u), Struct_1(select(vec4<i32>(1i, _wgslsmith_clamp_i32(379i, arg_0, arg_0), arg_0, 1i), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-19009i, 1i, arg_0, 2147483647i)), reverseBits(vec4<i32>(u_input.a, u_input.a, 69i, -2147483647i))), true), true), Struct_1(-(~func_3(361f, u_input.a, -2614f, 4294967295u)), all(!select(vec3<bool>(global2.x, true, global2.x), global2.zwy, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global2.x, false)))), countOneBits(0u) >> (~(~(~u_input.c.x)) % 32u), 246f);
    var var_1 = Struct_2(0u, var_0.c, var_0.b, var_0.d, var_0.e);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-580f, _wgslsmith_div_f32(var_0.e, var_0.e))))), var_0.e))));
    global1 = array<bool, 14>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f - 107f) + var_1.e), _wgslsmith_f_op_f32(floor(302f)));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    global2 = select(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 14u)], all(vec4<bool>(false, global2.x, global2.x, global2.x)), true), vec4<bool>(all(global2.yw) || (false || global2.x), any(select(global2.yyy, vec3<bool>(true, true, false), true)), !(global2.x || false), true || (-2382f > arg_1.x)), true & (_wgslsmith_f_op_f32(-182f - arg_1.x) != arg_1.x)), select(select(select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global2.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 14u)], false, false, true), vec4<bool>(global2.x, false, false, false)), select(vec4<bool>(global2.x, global1[_wgslsmith_index_u32(1u, 14u)], false, global2.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global2.x, global2.x, false), global2.x), select(global1[_wgslsmith_index_u32(arg_0, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(arg_0, 14u)])), select(select(vec4<bool>(global1[_wgslsmith_index_u32(13745u, 14u)], false, true, true), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(55887u, 14u)], false, global1[_wgslsmith_index_u32(4294967295u, 14u)]), global1[_wgslsmith_index_u32(u_input.c.x, 14u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, global2.x, global1[_wgslsmith_index_u32(4294967295u, 14u)]), false), select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global2.x, true, false), vec4<bool>(global2.x, true, global1[_wgslsmith_index_u32(25896u, 14u)], global1[_wgslsmith_index_u32(arg_0, 14u)]), any(global2.zy))), select(vec4<bool>(arg_0 >= arg_0, !global2.x, global1[_wgslsmith_index_u32(1u, 14u)], true), !vec4<bool>(global2.x, false, false, global2.x), any(vec3<bool>(false, global1[_wgslsmith_index_u32(27074u, 14u)], global2.x)) && true), select(select(!vec4<bool>(global2.x, false, global2.x, true), !vec4<bool>(global2.x, global1[_wgslsmith_index_u32(4294967295u, 14u)], true, false), select(vec4<bool>(false, true, global2.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 14u)], global2.x, true, true), false)), !vec4<bool>(false, false, global2.x, global2.x), !global2.x)), global2.x);
    global2 = vec4<bool>(global1[_wgslsmith_index_u32(~arg_0, 14u)], any(!vec4<bool>(false, global2.x, global1[_wgslsmith_index_u32(arg_0, 14u)], true)) || !(!(1u <= u_input.b)), _wgslsmith_f_op_f32(abs(arg_1.x)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-498f, arg_1.x)))), true);
    var var_0 = any(!select(select(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global2.x), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 14u)], true, global2.x, global2.x), global2.x), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], global2.x, global1[_wgslsmith_index_u32(arg_0, 14u)]), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(1u, 14u)]), false), false), vec4<bool>(all(global2.yyx), true, true, all(global2.wy)), vec4<bool>(global2.x | false, false, true, true)));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.b) >> (reverseBits(vec2<u32>(6593u, 0u)) % vec2<u32>(32u)), u_input.c.wz), Struct_1(vec4<i32>(0i, _wgslsmith_mod_i32(i32(-1i) * -16489i, _wgslsmith_sub_i32(2147483647i, u_input.a)), u_input.a, u_input.a), global2.x), Struct_1(_wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a, 7279i, 0i, 8481i)), firstTrailingBit(-vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a))), true), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(740f))));
    let var_2 = vec2<bool>(true, true);
    return Struct_2(~4294967295u, var_1.b, Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(var_1.b.a), select(func_3(arg_1.x, var_1.c.a.x, arg_1.x, var_1.a), vec4<i32>(21824i, var_1.c.a.x, u_input.a, var_1.b.a.x) >> (global0[_wgslsmith_index_u32(var_1.d, 21u)] % vec4<u32>(32u)), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 14u)], global2.x))), false), ~(_wgslsmith_div_u32(24985u, arg_0) ^ _wgslsmith_add_u32(42672u, 36480u)) << (~1u % 32u), -751f);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: i32) -> vec3<i32> {
    global2 = !arg_0;
    let var_0 = -59825i;
    var var_1 = arg_1.x;
    let var_2 = func_4(38320u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(233f, 2029f, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(620f, -1319f, -2921f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(func_2(-5459i, 20853u)), arg_1.x), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x)), arg_0.yzy)));
    let var_3 = Struct_2(9643u, func_4(~0u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(794f, var_2.e, -1322f), vec3<f32>(550f, -383f, -1103f), false))))))).c, var_2.c, ~((select(var_2.a, u_input.b, arg_0.x) ^ 0u) << (~max(42256u, 1u) % 32u)), -480f);
    return var_2.c.a.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~vec3<i32>(abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 27342i, u_input.a, 134i), vec4<i32>(u_input.a, 2147483647i, u_input.a, -1158i)), countOneBits(u_input.a))));
    var_0 = vec3<i32>(1i, firstLeadingBit(select(var_0.x, abs(u_input.a), true)), 1i) & select(vec3<i32>(var_0.x, abs(u_input.a), -1i) << ((firstLeadingBit(vec3<u32>(0u, 0u, u_input.c.x)) >> (u_input.c.zww % vec3<u32>(32u))) % vec3<u32>(32u)), func_1(vec4<bool>(true, true, 29850u <= u_input.c.x, -2147483647i >= var_0.x), vec2<f32>(_wgslsmith_div_f32(-1525f, -1438f), _wgslsmith_f_op_f32(step(2064f, -304f))), var_0.x), !global2.xzx);
    let var_1 = ~1u;
    var var_2 = _wgslsmith_mod_i32(-16801i, -2147483647i);
    global2 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, global2.x, global2.x, false)), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, true, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(46022u, 14u)], global2.x, false, global1[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.b, 14u)], true, global2.x), true)), select(!vec4<bool>(true, global2.x, false, false), select(vec4<bool>(global1[_wgslsmith_index_u32(42365u, 14u)], global1[_wgslsmith_index_u32(24910u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)]), vec4<bool>(false, global2.x, global1[_wgslsmith_index_u32(4294967295u, 14u)], false), false), true == global2.x)), !(!vec4<bool>(global1[_wgslsmith_index_u32(17533u, 14u)], global1[_wgslsmith_index_u32(var_1, 14u)], false, global2.x)), !(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(63811u, 14u)], global2.x, true), vec4<bool>(global2.x, true, true, true), true))), select(!vec4<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 14u)], false, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(52249u, u_input.c.x), 14u)], global1[_wgslsmith_index_u32(0u | var_1, 14u)]), vec4<bool>(all(!vec3<bool>(global2.x, false, true)), true, global2.x, global2.x), any(vec4<bool>(true, global2.x, true, u_input.a != -35961i))), !(!global1[_wgslsmith_index_u32(u_input.b, 14u)]));
    global1 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(389f, -113f, -291f), vec3<f32>(-1000f, -1328f, -118f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1129f, -369f, 1862f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-593f, 124f, -432f)))))).e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_4(var_1, vec3<f32>(1000f, -727f, 442f)).e), 1000f)), -1i >> (abs(var_1) % 32u));
}


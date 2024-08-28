struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32> = vec3<u32>(16489u, 4294967295u, 1u);

var<private> global2: array<f32, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = vec2<f32>(228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1669f))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(var_0.x, 447f), -374f))))));
    var var_1 = Struct_1(min(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.b, -1i, 27123i, u_input.a)), -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 43621i, u_input.a, u_input.b), vec4<i32>(u_input.a, 15640i, u_input.a, 2147483647i))), _wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(2147483647i, ~(-28580i)))), _wgslsmith_mod_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, 1i, 5018i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.b, -1i) & vec3<i32>(u_input.a, 27118i, 4370i)), reverseBits(max(~vec3<i32>(u_input.a, -15942i, 22219i), max(vec3<i32>(u_input.a, 0i, u_input.b), vec3<i32>(u_input.a, 27991i, 0i))))), vec4<bool>(true, 4294967295u <= global1.x, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1006f + 1353f), _wgslsmith_f_op_f32(trunc(var_0.x)))) != -639f));
    global0 = -28578i;
    var_1 = Struct_1(var_1.a, var_1.b, vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(12865u, 12u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 68513u, 19267u, global1.x), vec4<u32>(43711u, 34911u, 71557u, 44208u)), 12u)])), _wgslsmith_f_op_f32(min(-426f, _wgslsmith_f_op_f32(-var_0.x))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), var_1.c.x & false, all(vec2<bool>(true, var_1.c.x))));
    return !(var_1.c.x | true);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_1(0i, vec3<i32>(reverseBits(_wgslsmith_sub_i32(-2147483647i, -4056i | arg_0.x)), -50009i, abs(arg_0.x)), vec4<bool>(all(vec2<bool>(true, 21633i != u_input.b)), (global1.x & arg_3.x) > ~(~4294967295u), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true | any(vec4<bool>(false, false, true, true))));
    let var_1 = vec2<bool>(func_3(), false);
    var var_2 = countOneBits(var_0.b.x ^ 2147483647i);
    let var_3 = Struct_1(_wgslsmith_clamp_i32(13788i << (~_wgslsmith_sub_u32(1u, arg_3.x) % 32u), ~1i, -1i), var_0.b, select(select(vec4<bool>(any(var_1), true, true, var_1.x), select(vec4<bool>(var_0.c.x, true, false, var_1.x), select(var_0.c, var_0.c, true), select(var_0.c, var_0.c, var_0.c)), var_1.x), vec4<bool>(var_0.c.x, true, ~arg_0.x <= var_0.b.x, false), !select(!var_0.c, select(var_0.c, vec4<bool>(var_1.x, true, var_0.c.x, true), var_0.c.x), true)));
    global0 = -18319i;
    return ~_wgslsmith_mult_u32(abs(26106u), 0u << (select(~1u, _wgslsmith_clamp_u32(1u, arg_3.x, global1.x), any(var_3.c.xw)) % 32u));
}

fn func_4(arg_0: u32) -> u32 {
    global2 = array<f32, 12>();
    var var_0 = Struct_1(u_input.b, vec3<i32>(u_input.b, 6432i, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -76133i), 0i)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 12u)]) > -1080f, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 12u)] * -1138f) <= -1196f, !all(vec3<bool>(true, true, true))), true));
    let var_1 = ~55860u;
    var_0 = Struct_1(u_input.b | 20397i, vec3<i32>(min(12586i, 1i), -u_input.b >> (_wgslsmith_add_u32(var_1 & var_1, var_1) % 32u), firstLeadingBit(u_input.a)), vec4<bool>(var_0.c.x, true, var_0.c.x, true));
    let var_2 = select(select(vec4<bool>(var_0.b.x >= abs(var_0.b.x), var_0.c.x, var_0.c.x, var_0.c.x), select(select(var_0.c, select(vec4<bool>(false, false, var_0.c.x, false), var_0.c, var_0.c), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), vec4<bool>(true, all(vec2<bool>(var_0.c.x, true)), false, var_0.c.x), select(select(var_0.c, var_0.c, false), vec4<bool>(false, false, var_0.c.x, var_0.c.x), var_0.c)), func_3()), select(vec4<bool>(var_0.c.x, true & var_0.c.x, !all(vec3<bool>(false, var_0.c.x, true)), var_0.c.x), vec4<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 12u)]) >= 1164f, false, !(true == var_0.c.x), !(arg_0 == arg_0)), vec4<bool>(any(var_0.c), var_0.c.x, !(var_0.c.x & true), var_0.c.x)), false);
    return ~(~arg_0);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(378f - _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(80860u, 12u)], -1290f, false)));
    var var_1 = arg_1;
    var var_2 = Struct_1(reverseBits(2147483647i), abs(~arg_2.b) << (select(~(~vec3<u32>(0u, 707u, 65286u)), select(~vec3<u32>(1u, 55839u, 1u), ~vec3<u32>(0u, global1.x, 78787u), var_1.c.xwz), true) % vec3<u32>(32u)), select(var_1.c, vec4<bool>(true, true, arg_2.c.x, arg_2.c.x), true));
    global0 = _wgslsmith_add_i32(-2147483647i, arg_2.a);
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~countOneBits(~vec4<u32>(72910u, 24938u, 18u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(17310u, 1u, global1.x, global1.x)), vec4<u32>(global1.x, _wgslsmith_sub_u32(0u, 0u), 76865u << (0u % 32u), global1.x), vec4<u32>(global1.x, global1.x, 4294967295u, 61377u ^ global1.x))), ~vec4<u32>(global1.x, global1.x, 768u, ~_wgslsmith_sub_u32(22252u, global1.x)));
    return min(global1.x, func_4(func_2(var_2.b.yx, vec3<f32>(1231f, _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -650f)), (vec2<u32>(var_3.x, global1.x) << (var_3.yy % vec2<u32>(32u))) ^ var_3.wy)));
}

fn func_5(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, ~firstTrailingBit(32491u), ~_wgslsmith_clamp_u32(4294967295u, 62437u, 1u)), ~(~max(~vec3<u32>(arg_0.x, arg_0.x, 0u), ~vec3<u32>(0u, global1.x, 21200u))));
    var var_1 = _wgslsmith_mod_vec3_i32(firstLeadingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-27015i, arg_1, -1i) << (arg_0 % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-8558i, 48518i, arg_1), vec3<i32>(-41409i, u_input.a, arg_1)), vec3<i32>(19068i, u_input.a, -31377i)), vec3<i32>(u_input.b, 2147483647i, 71756i) >> ((vec3<u32>(49185u, global1.x, global1.x) ^ arg_0) % vec3<u32>(32u)), vec3<bool>(true, true, true))), vec3<i32>(u_input.a, arg_1, _wgslsmith_mod_i32(u_input.a, ~(-2147483647i)) << (firstLeadingBit(~var_0.x) % 32u)));
    return Struct_1(u_input.a, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(~1i, -2147483647i), -(arg_1 ^ u_input.b)), arg_1, _wgslsmith_sub_i32(-1i, u_input.a) >> (~arg_0.x % 32u)), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), reverseBits(countOneBits(u_input.b)));
    global0 = u_input.a;
    let var_0 = func_5(vec3<u32>(~1u & _wgslsmith_add_u32(firstTrailingBit(global1.x), 25828u << (1u % 32u)), _wgslsmith_div_u32(func_1(1141f, Struct_1(u_input.b, vec3<i32>(69993i, u_input.a, u_input.a), vec4<bool>(true, false, false, false)), Struct_1(2147483647i, vec3<i32>(2147483647i, 1i, 2147483647i), vec4<bool>(false, false, true, false))), global1.x) ^ (min(37774u, global1.x) ^ global1.x), global1.x), 2147483647i);
    let var_1 = global1.x;
    let var_2 = var_0;
    var var_3 = func_5(~_wgslsmith_mult_vec3_u32(~(vec3<u32>(global1.x, global1.x, 87124u) >> (vec3<u32>(12682u, global1.x, 27039u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(global1.x, global1.x, 7573u))), var_2.b.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global1.x, 82115u, global1.x), vec4<u32>(global1.x ^ global1.x, global1.x, abs(71828u), global1.x)) % 32u)).c.yz;
    global2 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(~(global1.x ^ global1.x), 12u)], 532f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(32533u, 12u)], _wgslsmith_f_op_f32(f32(-1f) * -848f)))))));
}


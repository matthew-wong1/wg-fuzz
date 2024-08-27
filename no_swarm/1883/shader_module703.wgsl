struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(75388u, 0u, 0u);

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: Struct_2;

var<private> global3: vec2<u32> = vec2<u32>(0u, 31016u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<i32> {
    return arg_3.a;
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(~firstTrailingBit(37765u), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f - -1499f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1791f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(817f, -846f)), 1241f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-921f * -520f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1727f), _wgslsmith_f_op_f32(1657f - 263f)))), u_input.b.yx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-429f + _wgslsmith_f_op_f32(sign(131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -921f) - -2095f)))), ~min(u_input.a.x, _wgslsmith_sub_u32(global3.x, 0u) >> ((1u ^ u_input.a.x) % 32u)));
    var var_1 = global2.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.d.x, var_0.b.x), _wgslsmith_f_op_f32(step(var_0.d.x, -480f)), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f * var_0.b.x) * -362f), var_0.d.x)), false)) - _wgslsmith_f_op_f32(sign(var_0.d.x)));
    var var_3 = 35250u;
    var var_4 = -var_0.c.x >> (~global0.x % 32u);
    return abs(~(u_input.a & vec3<u32>(var_1.b, var_1.b, global2.b.b))) ^ _wgslsmith_sub_vec3_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.a, u_input.a))), countOneBits(_wgslsmith_mult_vec3_u32(u_input.a, ~u_input.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec2<i32>(-2002i, 13902i), global2.b.b, false, vec4<bool>(!(!global2.b.d.x), false, !select(false, true, true), false));
    global2 = Struct_2(var_0.d.xy, global2.b);
    return ~vec3<u32>(_wgslsmith_add_u32(select(4294967295u, _wgslsmith_dot_vec3_u32(arg_0, u_input.a), all(vec4<bool>(true, arg_2.d.x, arg_2.d.x, global2.a.x))), global0.x >> (global2.b.b % 32u)), _wgslsmith_add_u32(abs(arg_0.x), 1u), ~(arg_2.b << (reverseBits(73380u) % 32u)));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = !vec4<bool>(all(arg_0.b.d), arg_0.b.d.x, true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(global2.a.x, arg_0.a.x, true, arg_0.a.x), select(arg_0.b.d, global2.b.d, true))));
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(reverseBits(1u), ~0u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.b.b, global2.b.b), vec3<u32>(34989u, global0.x, global2.b.b))), _wgslsmith_clamp_u32(global2.b.b & _wgslsmith_clamp_u32(26180u, u_input.a.x, 47053u), _wgslsmith_mult_u32(countOneBits(global2.b.b), ~global0.x), ~u_input.a.x)), func_4(~func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1255f))), global2.b), ~select(u_input.a, firstLeadingBit(u_input.a) >> (~u_input.a % vec3<u32>(32u)), !(!vec3<bool>(var_0.x, var_0.x, arg_0.b.c))));
    let var_1 = global2.b;
    global3 = u_input.a.yx;
    var var_2 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(~(u_input.a.x | global0.x), ~arg_0.b.b, ~_wgslsmith_add_u32(var_1.b, 27219u)), func_4(select(~u_input.a, u_input.a, arg_0.b.d.x), _wgslsmith_f_op_f32(-1400f * _wgslsmith_f_op_f32(min(-866f, 171f))), Struct_1(vec2<i32>(-1i, arg_0.b.a.x), _wgslsmith_mult_u32(0u, 8077u), true, var_1.d))), _wgslsmith_f_op_f32(trunc(-1014f)), Struct_1(_wgslsmith_mod_vec2_i32(arg_0.b.a, vec2<i32>(global2.b.a.x ^ -33444i, ~arg_0.b.a.x)), ~_wgslsmith_clamp_u32(abs(global2.b.b), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 4294967295u, u_input.a.x), vec4<u32>(var_1.b, 18289u, 0u, 22317u)), _wgslsmith_mult_u32(var_1.b, 30869u)), all(!arg_0.b.d), !var_1.d)).zz;
    return _wgslsmith_sub_i32(-1i, -_wgslsmith_mult_i32(arg_0.b.a.x, abs(arg_0.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(35344i, u_input.b.x) ^ global2.b.a), _wgslsmith_sub_vec2_i32(global2.b.a, vec2<i32>(u_input.b.x << (global3.x % 32u), abs(global2.b.a.x)))) ^ min(-u_input.b.x, 1i);
    var var_1 = Struct_1(min(countOneBits(-u_input.b.zy), _wgslsmith_mod_vec2_i32(~vec2<i32>(-22078i, -2147483647i), func_1(vec4<u32>(u_input.a.x, 10877u, 15625u, u_input.a.x), global2.b.c, global1[_wgslsmith_index_u32(1u, 9u)], global2.b))) & vec2<i32>(_wgslsmith_mult_i32(func_2(Struct_2(global2.a, Struct_1(u_input.b.xy, global0.x, global2.b.d.x, global2.b.d))), min(1i, -1i)), -2147483647i), global3.x, false, vec4<bool>(global3.x <= global2.b.b, true, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-600f, 593f))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -556f))), all(select(select(vec3<bool>(true, global2.b.c, global2.b.d.x), vec3<bool>(false, false, global2.b.d.x), vec3<bool>(false, global2.a.x, global2.a.x)), !vec3<bool>(global2.b.d.x, global2.b.c, global2.b.d.x), global2.b.d.zxw))));
    var var_2 = !(!select(select(global2.b.d.xyx, !vec3<bool>(var_1.c, var_1.c, var_1.d.x), select(global2.b.d.xzx, vec3<bool>(false, var_1.c, false), var_1.c)), vec3<bool>(!var_1.c, var_1.d.x, false), select(vec3<bool>(global2.a.x, var_1.d.x, false), vec3<bool>(true, true, true), true)));
    let var_3 = Struct_1(u_input.b.yx, global0.x, -((3660i >> (1u % 32u)) << ((11984u & global3.x) % 32u)) == _wgslsmith_sub_i32(global2.b.a.x, _wgslsmith_div_i32(countOneBits(u_input.b.x), func_2(Struct_2(var_2.xy, global2.b)))), vec4<bool>(true, true, select(true, _wgslsmith_f_op_f32(abs(607f)) > _wgslsmith_f_op_f32(round(-1000f)), var_2.x), -_wgslsmith_mult_i32(global2.b.a.x, global2.b.a.x) == var_1.a.x));
    var var_4 = Struct_1(vec2<i32>(global2.b.a.x, var_3.a.x), func_3().x, all(global2.b.d), select(vec4<bool>(!var_2.x, true, var_1.c, func_1(vec4<u32>(4294967295u, u_input.a.x, var_3.b, global3.x), var_1.c, vec2<f32>(328f, 1000f), Struct_1(u_input.b.xx, global0.x, global2.a.x, vec4<bool>(true, false, global2.a.x, global2.b.d.x))).x >= 65437i), select(select(select(var_1.d, var_3.d, global2.b.d), vec4<bool>(var_1.d.x, var_3.d.x, global2.b.c, var_1.c), var_2.x), vec4<bool>(true, true, select(global2.a.x, true, var_2.x), true), any(select(var_1.d.xy, vec2<bool>(var_3.d.x, var_3.d.x), vec2<bool>(global2.a.x, global2.b.d.x)))), var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~countOneBits(2147483647i)) ^ countOneBits(max(u_input.b.x, var_1.a.x) >> (var_3.b % 32u)));
}


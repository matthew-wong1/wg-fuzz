struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 27163i), vec2<i32>(26987i, -25562i), vec2<i32>(-1195i, 15046i), vec2<i32>(2147483647i, 40457i), vec2<i32>(2147483647i, -58462i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-14063i, 78168i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(44322i, 8859i), vec2<i32>(44320i, 2147483647i), vec2<i32>(-35291i, -35239i), vec2<i32>(-1i, 2147483647i));

var<private> global1: i32 = -1093i;

var<private> global2: vec2<u32> = vec2<u32>(0u, 420u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global2 = firstLeadingBit(min(max(~vec2<u32>(global2.x, global2.x), ~(vec2<u32>(4294967295u, 14957u) << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)))), vec2<u32>(global2.x, ~global2.x)));
    let var_0 = Struct_1(any(vec4<bool>(true, all(vec4<bool>(false, true, true, false)) || (global2.x != 45635u), true, (i32(-1i) * -2147483647i) != _wgslsmith_mod_i32(u_input.b, u_input.b))), false, _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(global2.x, global2.x)), ~(global2.x | 0u), ~global2.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global2.x, global2.x), vec3<u32>(global2.x, 66701u, global2.x)) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(20209u, global2.x, global2.x), vec3<u32>(global2.x, 1u, 58141u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1003f)))), countOneBits(_wgslsmith_mult_vec3_u32(abs(reverseBits(vec3<u32>(global2.x, 41640u, global2.x))), vec3<u32>(1u, global2.x & 4294967295u, reverseBits(global2.x)))));
    var var_1 = var_0.d;
    var var_2 = var_0;
    var var_3 = vec4<i32>(u_input.b, -_wgslsmith_div_i32(u_input.b, -1i), -2147483647i >> (select(6031u, _wgslsmith_div_u32(var_2.c.x, 50908u) >> (4294967295u % 32u), !var_2.b) % 32u), select(u_input.a, -u_input.b, all(select(vec2<bool>(var_2.a, false), vec2<bool>(var_0.a, true), false))) >> (~max(_wgslsmith_mult_u32(73302u, global2.x), 5999u) % 32u));
    return ~(4294967295u >> (min(var_2.c.x, _wgslsmith_dot_vec2_u32(var_2.e.yy, var_2.c.xx) ^ 1u) % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-9133i, 2147483647i)), _wgslsmith_mod_vec2_i32(-global0[_wgslsmith_index_u32(55112u, 15u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.x, global2.x), 15u)])), u_input.a);
    var var_1 = vec4<u32>(4294967295u | ~min(global2.x, 4294967295u), 1u, select(global2.x, ~(~(~1u)), all(vec2<bool>(true, true))), _wgslsmith_sub_u32(func_3(), global2.x));
    let var_2 = Struct_1(false, true, _wgslsmith_sub_vec3_u32(var_1.zwz, var_1.yzw ^ var_1.wyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1802f)), 598f))), ~var_1.wxz);
    var var_3 = vec3<u32>(min(countOneBits(var_1.x), ~var_2.c.x), 1u, var_1.x);
    let var_4 = countOneBits(~(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 12018i, 10144i, u_input.a), vec4<i32>(u_input.b, -4709i, u_input.a, -2147483647i)), _wgslsmith_add_i32(u_input.b, 0i))));
    return Struct_1(var_2.b, var_2.a, vec3<u32>(var_3.x, ~var_1.x ^ firstLeadingBit(func_3()), 1u), _wgslsmith_f_op_f32(ceil(982f)), vec3<u32>(~(~(var_3.x | global2.x)), ~15060u, reverseBits(select(global2.x | var_2.c.x, 65556u, true))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = !select(!vec2<bool>(any(vec2<bool>(true, true)), arg_1), vec2<bool>(true, select(!arg_1, any(vec4<bool>(arg_1, arg_0.b, true, arg_0.a)), arg_0.b || arg_1)), vec2<bool>(arg_0.b, all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(517f, arg_0.d, 316f) * vec3<f32>(-523f, 536f, arg_0.d)))))));
    global1 = ~min(abs(-countOneBits(6148i)), -_wgslsmith_dot_vec2_i32(-vec2<i32>(29068i, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.c.x, arg_0.e.x), 15u)]));
    let var_2 = !(!select(vec2<bool>(var_0.x, false), !(!vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(false, true), vec2<bool>(true, true), arg_1)));
    var var_3 = Struct_1(arg_1, false || var_0.x, ~(~(~(~vec3<u32>(global2.x, arg_0.e.x, arg_0.c.x)))), 1f, vec3<u32>(abs(~global2.x), 132897u, ~_wgslsmith_mult_u32(37503u, _wgslsmith_mod_u32(global2.x, arg_0.c.x))));
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = !select(vec3<bool>(arg_0.a, arg_0.b, _wgslsmith_f_op_f32(-640f * 2044f) > _wgslsmith_f_op_f32(-1000f * arg_0.d)), !select(select(vec3<bool>(false, false, true), vec3<bool>(arg_1, false, true), arg_0.b), vec3<bool>(arg_0.b, true, true), true), vec3<bool>((arg_0.e.x << (global2.x % 32u)) != ~1u, true || arg_0.a, select(all(vec4<bool>(arg_0.a, arg_0.b, true, arg_0.a)), all(vec4<bool>(arg_1, arg_1, arg_0.a, arg_1)), arg_0.b)));
    global1 = u_input.b;
    var var_1 = func_4(func_2(), arg_0.a);
    global2 = ~arg_0.e.zy;
    let var_2 = abs(vec4<i32>(~(-(u_input.a & u_input.a)), 18461i, ~(-1i), 0i));
    return func_4(Struct_1(var_0.x, !var_1.b || any(vec4<bool>(var_0.x, false, true, var_1.a)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.e.x, 4294967295u), var_1.e) << (vec3<u32>(~arg_0.e.x, global2.x, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - arg_0.d) + var_1.d)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, 39732u)), min(vec3<u32>(99847u, global2.x, var_1.c.x), var_1.e))), !(true & func_4(arg_0, !arg_0.a).b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.b ^ u_input.b;
    var var_1 = func_1(Struct_1((max(global2.x, global2.x) >> (~70373u % 32u)) > 4294967295u, true, vec3<u32>(~(4294967295u ^ global2.x), ~(global2.x << (global2.x % 32u)), 2379u), _wgslsmith_f_op_f32(round(2187f)), ~(vec3<u32>(global2.x, global2.x, 0u) >> (abs(vec3<u32>(global2.x, 73288u, global2.x)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f + _wgslsmith_f_op_f32(trunc(307f)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2243f - -1244f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1831f, -694f)) + _wgslsmith_f_op_f32(f32(-1f) * -864f))));
    let var_2 = -u_input.b;
    var var_3 = !(!(!var_1.b));
    let var_4 = ~_wgslsmith_clamp_u32(global2.x, max(global2.x | ~1u, 30682u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(38443u, global2.x, 0u, 114739u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, 37477u), vec4<u32>(global2.x, 0u, var_1.e.x, var_1.e.x), vec4<u32>(8413u, 1u, 44171u, global2.x))));
    var var_5 = func_2();
    var var_6 = var_5.e;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_4, var_1.e.x) | vec2<u32>(1u, var_4)), vec2<u32>(~global2.x, ~1u)));
}


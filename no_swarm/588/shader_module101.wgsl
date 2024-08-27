struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: Struct_2 = Struct_2(Struct_1(-920f, vec2<f32>(2003f, 616f), vec2<f32>(459f, -326f), vec3<u32>(0u, 1u, 4294967295u)), true, Struct_1(-368f, vec2<f32>(946f, -1000f), vec2<f32>(-558f, -428f), vec3<u32>(29132u, 39315u, 0u)), vec3<bool>(false, true, true));

var<private> global3: vec4<f32> = vec4<f32>(1697f, 1779f, -176f, 258f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = vec3<f32>(-1918f, 1000f, -315f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-672f)) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(-global3.yw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1058f + _wgslsmith_div_f32(var_0.x, -663f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x * -1297f), _wgslsmith_f_op_f32(var_0.x * global0[_wgslsmith_index_u32(0u, 23u)])))), vec3<u32>(~(_wgslsmith_add_u32(32274u, global2.c.d.x) & ~65145u), _wgslsmith_sub_u32(~(~global2.a.d.x), 55823u), _wgslsmith_mult_u32(41059u, _wgslsmith_mult_u32(~global2.c.d.x, ~u_input.c))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1070f, 2236f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-878f, global2.a.a))))), global2.a.b, vec3<u32>(_wgslsmith_div_u32(global2.c.d.x >> (global2.a.d.x % 32u), ~53019u), _wgslsmith_dot_vec3_u32(global2.c.d, vec3<u32>(0u, u_input.c, global2.a.d.x)), _wgslsmith_add_u32(u_input.c ^ 4294967295u, 4294967295u))), global2.b, global2.a, !(!(!vec3<bool>(arg_0.x, false, global2.b))));
    var var_3 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(u_input.a)), ~vec3<i32>(34397i, u_input.b, firstTrailingBit(-1i)), vec3<i32>(u_input.b, max(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-66607i, u_input.d, u_input.d, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, u_input.a.x)), -u_input.d), u_input.a.x), 14617i));
    var var_4 = Struct_3(global2.c);
    return ~vec3<u32>(var_2.a.d.x ^ 7935u, _wgslsmith_mult_u32(var_2.c.d.x, _wgslsmith_mult_u32(global2.c.d.x, 0u)), u_input.e);
}

fn func_2() -> bool {
    global2 = Struct_2(global2.c, !global2.b, Struct_1(global3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.b * vec2<f32>(global3.x, -1000f)) * _wgslsmith_f_op_vec2_f32(-global2.c.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.c.b.x, global2.a.c.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.c.x, global0[_wgslsmith_index_u32(u_input.e, 23u)])))))), _wgslsmith_add_vec3_u32(func_3(vec4<bool>(false, true, global2.b, global2.b)), ~(global2.a.d | global2.a.d))), global2.d);
    global3 = vec4<f32>(518f, _wgslsmith_f_op_f32(216f + 2843f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.c.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1294f + 188f))), global0[_wgslsmith_index_u32(4294967295u, 23u)], global2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(954f, global3.x) + global3.x) + _wgslsmith_f_op_f32(1094f - 185f)));
    var var_0 = vec3<i32>(~1i, u_input.d, _wgslsmith_mod_i32(~(~32981i) ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(54127i, -62790i, -2147483647i), ~vec3<i32>(u_input.d, -1i, u_input.b)), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(250f, global2.a.c.x, global3.x, -412f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, 590f, 208f, global2.a.c.x), vec4<f32>(1022f, -133f, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(45724u, 23u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-604f, 270f, global3.x, -375f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, -1000f, global0[_wgslsmith_index_u32(u_input.e, 23u)], global2.c.a))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.a, -469f, 1000f, global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec4<f32>(1000f, 577f, global3.x, global2.c.c.x)), vec4<f32>(global3.x, global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(47309u, 23u)], -856f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(global2.c.d.x, 23u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1039f, _wgslsmith_f_op_f32(ceil(-846f)))), -133f)), _wgslsmith_div_f32(-664f, -275f), global3.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, -1212f, global2.a.a, -1178f) * vec4<f32>(var_1.x, var_1.x, -321f, -289f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1238f, -1145f, -908f, -516f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(35696u, 23u)], global3.x, var_1.x, 1294f) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], var_1.x, global0[_wgslsmith_index_u32(1u, 23u)], var_1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c.a, var_1.x, -974f, global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec4<f32>(1000f, 944f, 151f, global3.x), global2.d.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1584f, var_1.x, 381f) * vec4<f32>(var_1.x, 923f, 796f, 356f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, var_1.x, global0[_wgslsmith_index_u32(global2.c.d.x, 23u)], -494f) + vec4<f32>(global2.c.a, 385f, global3.x, global3.x))))))), global2.b));
    return global2.b | true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = global2.a;
    var var_1 = vec3<bool>(true, arg_1.d.x, !all(vec3<bool>(true, func_2(), true)));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(u_input.b, 30519i), u_input.d, u_input.a.x, i32(-1i) * -2147483647i) | max(~firstTrailingBit(vec4<i32>(-26743i, 37587i, u_input.b, 35511i) >> (vec4<u32>(0u, arg_1.a.d.x, 0u, 1u) % vec4<u32>(32u))), ~(~vec4<i32>(u_input.b, 25342i, u_input.b, u_input.a.x)));
    let var_3 = arg_1;
    let var_4 = any(select(select(!vec4<bool>(global2.d.x, true, true, true), !vec4<bool>(var_3.d.x, true, false, false), select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(false, var_1.x, var_1.x, arg_1.d.x), var_1.x)), !vec4<bool>(true, arg_1.b, var_1.x, var_1.x), select(!vec4<bool>(true, false, true, var_3.d.x), !vec4<bool>(false, true, true, arg_1.d.x), any(vec3<bool>(arg_1.d.x, false, true))))) | arg_1.d.x;
    return firstTrailingBit(~_wgslsmith_dot_vec3_i32(~select(vec3<i32>(1i, var_2.x, 47710i), var_2.wzy, arg_1.d), countOneBits(vec3<i32>(2147483647i, 0i, 0i) ^ vec3<i32>(-2147483647i, u_input.a.x, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a, false | !any(vec2<bool>(false, true)), global2.a, global2.d);
    let var_1 = select(min(firstTrailingBit(vec4<i32>(0i, -1i, 14380i, u_input.d) ^ vec4<i32>(-14902i, u_input.d, -1i, u_input.a.x)), -vec4<i32>(2147483647i, u_input.d, u_input.a.x, 2147483647i)) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, global2.a.d.x, 37031u), ~vec4<u32>(global2.a.d.x, 0u, u_input.c, u_input.c))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -19263i, reverseBits(-u_input.d), _wgslsmith_div_i32(u_input.a.x | 1i, select(-15440i, u_input.b, true)), select(func_1(global2.c, Struct_2(global2.a, false, Struct_1(global0[_wgslsmith_index_u32(var_0.a.d.x, 23u)], var_0.a.b, var_0.c.c, var_0.c.d), var_0.d), var_0.c, 1u), func_1(var_0.a, var_0, var_0.a, 4294967295u), !global2.d.x)), -(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x) & select(vec4<i32>(u_input.b, u_input.d, 2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.d, -32456i), global2.b))), select(vec4<bool>(select(false, any(vec4<bool>(true, var_0.d.x, false, var_0.d.x)), true), global2.d.x, true, any(global2.d.xz)), !(!select(vec4<bool>(true, var_0.d.x, false, true), vec4<bool>(true, global2.d.x, true, global2.d.x), vec4<bool>(var_0.b, var_0.d.x, true, true))), all(vec2<bool>(true, true))));
    let var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(~(i32(-1i) * -2147483647i), var_1.x, _wgslsmith_mult_i32(abs(u_input.d), -86917i ^ u_input.a.x), 40947i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.a.x, 0i), var_1) & countOneBits(var_1)));
    global1 = array<vec3<u32>, 7>();
    let var_3 = 1i;
    let var_4 = Struct_2(global2.c, global2.b, var_0.a, !global2.d);
    global1 = array<vec3<u32>, 7>();
    let var_5 = global2.a.b.x;
    global2 = Struct_2(var_4.a, false, Struct_1(858f, vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1651f + var_4.a.b.x) - global2.c.a)), _wgslsmith_f_op_vec2_f32(sign(var_4.c.b)), vec3<u32>(var_0.c.d.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4.a.d.x, var_0.c.d.x), ~u_input.e), _wgslsmith_div_u32(u_input.e, ~12139u))), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f * _wgslsmith_f_op_f32(f32(-1f) * -499f))));
}


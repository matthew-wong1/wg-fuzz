struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(51860u, 4294967295u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false, true), Struct_1(vec2<i32>(0i, -63511i), false, true), Struct_1(vec2<i32>(0i, 7048i), true, false));

var<private> global1: array<vec4<i32>, 3>;

var<private> global2: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<i32>) -> i32 {
    global0 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(17148u, global0.a.x), 28458u << (global0.a.x % 32u)), _wgslsmith_sub_u32(4757u, ~global0.a.x)), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -4294i, _wgslsmith_mult_i32(arg_2.x, 0i)), _wgslsmith_sub_vec2_i32(select(global0.d.a, arg_2.yy, vec2<bool>(global0.c.b, true)), _wgslsmith_mult_vec2_i32(vec2<i32>(31521i, 0i), vec2<i32>(arg_2.x, 0i)))), true, arg_0.c.d.a.x == _wgslsmith_mod_i32(8077i, -1346i)), Struct_1(_wgslsmith_mod_vec2_i32(select(arg_2.xz, vec2<i32>(arg_2.x, u_input.c), arg_0.e.x), -global0.d.a) | vec2<i32>(_wgslsmith_div_i32(76024i, -16313i), 1i), global2.x, !any(global2.yz)), Struct_1(_wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(0i, -1i)), abs(abs(vec2<i32>(u_input.c, 15009i))), global0.b.a), all(!vec4<bool>(true, global2.x, global2.x, arg_0.e.x)), _wgslsmith_f_op_f32(-arg_1.x) != 874f));
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * 259f), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(191f)))))));
    let var_1 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -557f)))) < var_0.x;
    let var_2 = _wgslsmith_f_op_f32(-1030f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(-arg_1.x)) * arg_1.x), _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-768f, 992f)), var_0.x), arg_1.xw)));
    return ~51132i ^ reverseBits(global0.b.a.x);
}

fn func_2() -> Struct_4 {
    let var_0 = ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(min(3442i, 4099i), ~u_input.c), -firstTrailingBit(7215i)), _wgslsmith_div_i32(-func_3(Struct_4(global0.c.a.x, 59358u, Struct_2(vec2<u32>(u_input.b.x, 4294967295u), global0.d, global0.c, global0.c), 1u, vec4<bool>(true, global2.x, false, global0.b.b)), vec4<f32>(-1000f, 742f, -512f, -1212f), global1[_wgslsmith_index_u32(global0.a.x, 3u)]), -(12083i | u_input.c)));
    global2 = !vec4<bool>(global0.c.b, !any(vec2<bool>(global2.x, global2.x)), all(global2.xw) & global0.b.c, !any(!global2.xzy));
    var var_1 = _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), ~(~vec3<u32>(u_input.b.x, 4294967295u, 1u))), ~max(reverseBits(vec3<u32>(1u, u_input.a, global0.a.x)) ^ u_input.b, _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(global0.a.x, 0u, 26539u)) | vec3<u32>(4294967295u, u_input.a, global0.a.x)));
    global1 = array<vec4<i32>, 3>();
    global1 = array<vec4<i32>, 3>();
    return Struct_4(max(_wgslsmith_sub_i32(-8553i << ((u_input.a & var_1.x) % 32u), global0.b.a.x >> (var_1.x % 32u)), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(var_0.x, global0.d.a.x, u_input.c, -2147483647i), vec4<i32>(1i, var_0.x, var_0.x, 2516i), vec4<bool>(false, true, false, true)), min(global1[_wgslsmith_index_u32(global0.a.x, 3u)], _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 0i, 1i, global0.b.a.x), global1[_wgslsmith_index_u32(global0.a.x, 3u)])))), 0u, Struct_2(~vec2<u32>(var_1.x << (var_1.x % 32u), 54467u), global0.c, Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.c, global0.b.a.x) ^ global0.d.a), any(select(vec4<bool>(global2.x, true, global0.b.c, global0.b.b), vec4<bool>(global0.d.c, false, global0.d.b, global2.x), true)), true), global0.b), ~16467u, select(select(!vec4<bool>(true, true, false, global0.d.c), vec4<bool>(!global2.x, true, true, any(vec4<bool>(true, true, global0.c.c, global2.x))), select(vec4<bool>(true, true, global2.x, true), select(vec4<bool>(global0.b.b, global2.x, global0.b.c, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(false, global0.c.c, false, global0.c.c)), true)), vec4<bool>(!(u_input.b.x < var_1.x), any(!vec4<bool>(true, false, false, global2.x)), ~u_input.a >= u_input.a, (var_1.x < var_1.x) | global0.d.b), global2.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-704f)), _wgslsmith_f_op_f32(f32(-1f) * -1601f))));
    global1 = array<vec4<i32>, 3>();
    global1 = array<vec4<i32>, 3>();
    var var_1 = func_2();
    let var_2 = vec2<i32>(arg_1.x, ~(global0.b.a.x | var_1.c.d.a.x));
    return Struct_4(27425i & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_2, arg_1.yy) | _wgslsmith_mult_vec2_i32(vec2<i32>(42148i, u_input.c), var_1.c.d.a), vec2<i32>(arg_0.x, u_input.c) ^ vec2<i32>(arg_1.x, arg_0.x)), 70781u, var_1.c, global0.a.x, select(vec4<bool>(true, true, var_1.c.c.c, global2.x), vec4<bool>(false, all(!var_1.e), !all(global2.yw), false), vec4<bool>(var_1.e.x == false, true, true || all(global2.zwx), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    var var_0 = firstTrailingBit(u_input.a);
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 81158u), _wgslsmith_mod_u32(arg_2.d << (~global0.a.x % 32u), 36773u) & (~(~61644u) ^ global0.a.x), ~firstLeadingBit(abs(~48262u)));
    global0 = arg_2.c;
    var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1038f, 1229f, 838f, 493f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(356f, -1611f, -968f, 2396f) + vec4<f32>(-371f, 2236f, 548f, 1047f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1189f, _wgslsmith_f_op_f32(f32(-1f) * -1276f), -322f, 137f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1316f, -635f, -572f, -1094f))))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32) -> vec3<f32> {
    let var_0 = vec4<bool>(all(select(global2.wwy, select(!global2.yxx, vec3<bool>(global2.x, global2.x, false), arg_0.x), true)), global0.b.b, true, true);
    var var_1 = Struct_2(global0.a, Struct_1(vec2<i32>(-15871i, global0.d.a.x), true, true), func_2().c.b, Struct_1(-(min(vec2<i32>(-1i, global0.d.a.x), global0.b.a) & vec2<i32>(-2147483647i, 8903i)), arg_0.x, select(true, all(select(vec4<bool>(global0.b.c, true, global2.x, arg_0.x), var_0, true)), false)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)), arg_2)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), arg_2, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1310f * 200f), _wgslsmith_f_op_f32(func_4(var_0, var_1.b, Struct_4(u_input.c, global0.a.x, Struct_2(vec2<u32>(u_input.b.x, 1u), global0.c, Struct_1(vec2<i32>(-2147483647i, var_1.d.a.x), var_0.x, var_1.b.c), Struct_1(global0.d.a, false, true)), 40783u, var_0))), false)))), 857f, _wgslsmith_f_op_f32(-arg_2));
    let var_3 = func_2();
    var var_4 = ~(~vec2<i32>(_wgslsmith_add_i32(1i, 0i) >> (~var_1.a.x % 32u), global0.c.a.x));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, arg_1.x, _wgslsmith_f_op_f32(exp2(var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(-389f - var_2.x), -1038f, var_2.x)))), _wgslsmith_f_op_vec3_f32(-var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = 34889u;
    let var_2 = !vec3<bool>(!global0.d.b, global2.x, global2.x);
    var var_3 = vec2<bool>(all(global2.xyw), true && var_2.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(func_5(var_2, vec3<f32>(-243f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1695f, _wgslsmith_f_op_f32(sign(-673f))) * 310f), _wgslsmith_f_op_f32(func_4(select(!vec4<bool>(false, var_3.x, true, true), !vec4<bool>(global0.c.c, global0.d.c, false, true), !vec4<bool>(false, var_3.x, global2.x, global2.x)), global0.c, func_1(reverseBits(vec3<i32>(2147483647i, 39627i, global0.d.a.x)), -vec3<i32>(global0.d.a.x, global0.c.a.x, 1i))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(979f, 369f, global0.b.b)) - -971f), -3123f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-615f)), -297f))));
    var var_5 = Struct_4(1i, ~(~40183u), func_2().c, countOneBits(_wgslsmith_mod_u32(4294967295u, 4294967295u)), !(!select(!vec4<bool>(true, global0.c.b, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, global2.x, true))));
    var var_6 = Struct_3(func_2().c.d.a.x, func_1(reverseBits(vec3<i32>(u_input.c ^ global0.c.a.x, ~29126i, global0.c.a.x)), firstLeadingBit(vec3<i32>(u_input.c ^ global0.d.a.x, u_input.c, ~20146i))).c.d, var_5.c.b);
    let var_7 = var_5.c;
    let var_8 = func_1(-vec3<i32>(2147483647i, (i32(-1i) * -44964i) | func_1(vec3<i32>(var_5.c.c.a.x, 55314i, global0.d.a.x), vec3<i32>(var_6.a, var_7.c.a.x, -9812i)).c.c.a.x, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, 18653i), vec3<i32>(2147483647i, 27938i, var_6.c.a.x)), -51192i)), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.a.x, 0i, global0.c.a.x, var_5.c.c.a.x), vec4<i32>(u_input.c, var_6.c.a.x, u_input.c, -46530i)), global1[_wgslsmith_index_u32(4766u ^ u_input.a, 3u)]), -1i, -33932i))).c;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_add_i32(var_7.c.a.x, u_input.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(exp2(var_4.x)), -313f, _wgslsmith_f_op_f32(1270f + var_4.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(678f, -2223f, var_4.x, var_4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, 968f, 799f)), !vec4<bool>(global0.c.b, false, false, global2.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_4.x, var_4.x, 499f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1134f, var_4.x, -1353f, 1203f), vec4<f32>(var_4.x, -916f, 959f, var_4.x), true)))))), var_5.e)));
}


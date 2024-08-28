struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-619f, 1317f), vec2<f32>(2087f, -1434f), vec2<f32>(-1000f, 2002f), vec2<f32>(1217f, 542f), vec2<f32>(2048f, 762f), vec2<f32>(-739f, -833f), vec2<f32>(1501f, -1939f), vec2<f32>(-1777f, 364f), vec2<f32>(739f, 351f), vec2<f32>(196f, 757f), vec2<f32>(-287f, 588f), vec2<f32>(913f, -695f), vec2<f32>(-1584f, 335f), vec2<f32>(-1600f, 1000f), vec2<f32>(-216f, -991f), vec2<f32>(215f, 1061f), vec2<f32>(-432f, -1000f), vec2<f32>(769f, -635f), vec2<f32>(239f, -1295f), vec2<f32>(2313f, -598f), vec2<f32>(-552f, 2715f), vec2<f32>(-468f, 339f), vec2<f32>(668f, 1461f), vec2<f32>(697f, -1725f), vec2<f32>(-526f, -1795f), vec2<f32>(-630f, 852f), vec2<f32>(-789f, -113f), vec2<f32>(-222f, 464f), vec2<f32>(-1586f, -1387f));

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global3: i32 = -39058i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    let var_1 = Struct_2(firstTrailingBit(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, 2147483647i)), ~vec2<i32>(u_input.c.x, -8729i)) << (~arg_1.ww % vec2<u32>(32u))), arg_3, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-23731i, -1i), 754i, u_input.c.x) & ~(21295i & u_input.c.x), -1005f, arg_3);
    var_0 = arg_3;
    let var_2 = vec3<i32>(u_input.c.x, -1240i, -(~u_input.c.x));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -542f);
    return false;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: f32) -> Struct_2 {
    global3 = 2147483647i;
    var var_0 = u_input.b.x;
    let var_1 = vec2<i32>(-_wgslsmith_mult_i32(u_input.c.x, 0i), 58405i);
    let var_2 = Struct_2(select(u_input.c, vec2<i32>(var_1.x, u_input.c.x) & var_1, func_3(arg_3, vec4<u32>(u_input.a, ~28224u, max(20926u, u_input.b.x), 1u), Struct_1(true, 0u), Struct_1(!arg_0, u_input.a >> (21752u % 32u)))), Struct_1(all(vec3<bool>(arg_0 != true, arg_2, false)), countOneBits(~1u) | _wgslsmith_mod_u32(global2.x ^ 0u, 22068u)), var_1.x, _wgslsmith_f_op_f32(-arg_3), Struct_1((arg_0 | select(true, arg_2, arg_0)) | (_wgslsmith_f_op_f32(-arg_1) > arg_3), 36825u));
    global3 = var_1.x;
    return Struct_2(~(-select(firstLeadingBit(vec2<i32>(u_input.c.x, -8483i)), min(var_1, var_2.a), !vec2<bool>(true, arg_0))), var_2.b, _wgslsmith_add_i32(-var_1.x, -select(min(var_2.a.x, 1i), var_1.x >> (global2.x % 32u), var_2.c != var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(sign(-630f)), ~u_input.a >= global2.x)))), Struct_1(all(select(select(vec2<bool>(false, false), vec2<bool>(var_2.e.a, false), vec2<bool>(var_2.e.a, false)), select(vec2<bool>(arg_2, arg_0), vec2<bool>(true, false), false), vec2<bool>(arg_2, true))), global2.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = firstTrailingBit(u_input.c);
    let var_1 = arg_1.a.x;
    let var_2 = vec2<u32>(global2.x, min(_wgslsmith_add_u32(4294967295u << (min(u_input.a, u_input.b.x) % 32u), 53334u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(7937u, 65001u)), u_input.b.zx) >> (~firstLeadingBit(global2.x) % 32u)));
    let var_3 = arg_1;
    let var_4 = abs(vec3<i32>(-(_wgslsmith_add_i32(-5121i, var_1) | (i32(-1i) * -1i)), 0i, var_1));
    return Struct_1(false, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(select(u_input.b.xz, u_input.b.xx, false), u_input.b.zz, _wgslsmith_sub_vec2_u32(u_input.b.yx, var_2)), vec2<u32>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(arg_1.b.b, var_2.x)), 4294967295u)));
}

fn func_1() -> i32 {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f + -1065f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1798f + _wgslsmith_f_op_f32(511f * -1000f))))), func_2(true, -382f, true, 1120f));
    let var_1 = func_4(global1[_wgslsmith_index_u32(14196u, 29u)], Struct_2(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, -18978i)), u_input.c), Struct_1(all(select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, var_0.a, false), vec3<bool>(false, false, var_0.a))), _wgslsmith_mod_u32(39848u & var_0.b, 4294967295u)), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(-942f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-970f, -1108f)))), func_2(any(vec3<bool>(false, true, false)), 1313f, !(!var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -211f)).b));
    let var_2 = vec2<i32>(-59032i, u_input.c.x);
    global2 = u_input.b.yx;
    let var_3 = ~u_input.b.zy;
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.x, i32(-1i) * -1i, 1i >> (var_0.b % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-21213i, -countOneBits(var_2.x), var_2.x), reverseBits(_wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, var_2.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -5088i), -vec3<i32>(u_input.c.x, -2147483647i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = global2.x;
    global0 = -2147483647i;
    global0 = abs(2147483647i) ^ _wgslsmith_sub_i32(func_1(), u_input.c.x);
    let var_2 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.x, select(~27303u, 1u, true)), 29u)], func_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-644f, -176f)) - -994f), _wgslsmith_f_op_f32(abs(-610f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-161f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2153f)), 2215f));
    global1 = array<vec2<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(global2.x, u_input.a), global2.x), ~u_input.c.x, vec4<i32>(-abs(_wgslsmith_mult_i32(1545i, -21265i)), _wgslsmith_sub_i32(-45071i, ~(-52641i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2200i, u_input.c.x << (global2.x % 32u)), -firstLeadingBit(u_input.c.x)), u_input.c.x), global1[_wgslsmith_index_u32(global2.x & u_input.b.x, 29u)], ~vec2<u32>(53867u, 15210u) | ~(~(~vec2<u32>(var_2.b, 57452u))));
}


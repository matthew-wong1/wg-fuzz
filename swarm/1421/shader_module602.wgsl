struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(339f);

var<private> global1: array<u32, 7> = array<u32, 7>(4294967295u, 4643u, 21791u, 4294967295u, 4294967295u, 1u, 1u);

var<private> global2: u32 = 22795u;

var<private> global3: array<vec4<f32>, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    let var_0 = all(vec3<bool>(select(false, !all(vec4<bool>(true, true, true, false)), true), 17845u == reverseBits(arg_0.d.x), all(vec2<bool>(true, true))));
    var var_1 = Struct_3(~vec4<u32>(arg_1.c.a, countOneBits(43541u), 4294967295u ^ _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x), ~_wgslsmith_clamp_u32(71028u, 1u, 1u)), !vec2<bool>(select(arg_1.b.b.x, 4294967295u, true) > 39446u, true), Struct_1(~firstLeadingBit(global1[_wgslsmith_index_u32(1u, 7u)] | arg_1.b.a), arg_1.b.b));
    let var_2 = Struct_4(548f, Struct_1(~_wgslsmith_mult_u32(countOneBits(global1[_wgslsmith_index_u32(arg_1.c.a, 7u)]), var_1.a.x & 38470u), ~(~_wgslsmith_clamp_vec3_u32(var_1.a.yzz, vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_1.c.a, 7u)], arg_0.b.a), vec3<u32>(var_1.c.b.x, var_1.a.x, global1[_wgslsmith_index_u32(arg_1.c.b.x, 7u)])))), arg_0.c, abs(select(~select(vec2<u32>(arg_0.d.x, 2583u), u_input.b.zx, true), vec2<u32>(1u, ~2845u), false)));
    let var_3 = var_1.b.x;
    let var_4 = arg_1;
    return !all(select(vec3<bool>(var_1.b.x, !var_1.b.x, !var_0), select(vec3<bool>(var_0, var_1.b.x, var_0), select(vec3<bool>(var_1.b.x, false, false), vec3<bool>(var_1.b.x, true, false), vec3<bool>(var_1.b.x, true, false)), !var_1.b.x), any(var_1.b)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(2368u, u_input.e), 1u)] + -441f) * 776f)));
    var var_1 = Struct_4(638f, arg_3, vec4<i32>(~_wgslsmith_clamp_i32(-u_input.d, -1i << (1u % 32u), 0i), ~(-2147483647i), _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-3424i, -1i, 58911i), ~vec3<i32>(1i, 17964i, u_input.d))), -min(reverseBits(-1805i), 0i)), arg_3.b.zz);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) * vec2<f32>(_wgslsmith_f_op_f32(-845f + _wgslsmith_f_op_f32(ceil(1231f))), _wgslsmith_f_op_f32(round(-1313f))));
    var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1110f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(floor(1284f))))), vec2<bool>(false, true))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-3435f, 400f)))), vec2<bool>(false, arg_0)));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -abs(vec3<i32>(var_1.c.x, u_input.d, var_1.c.x)), var_1.c.wxy);
    return abs(1u);
}

fn func_2() -> Struct_2 {
    global2 = u_input.e;
    global3 = array<vec4<f32>, 2>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(f32(-1f) * -1054f)))), 514f, _wgslsmith_f_op_f32(max(-1000f, -879f)));
    var var_1 = _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(func_4(select(!all(vec2<bool>(true, false)), !(u_input.d != u_input.a), func_3(Struct_4(var_0.x, Struct_1(31049u, u_input.b.xwy), vec4<i32>(1i, -58181i, u_input.c.x, -2147483647i), u_input.b.zw), Struct_2(123f, Struct_1(global1[_wgslsmith_index_u32(0u, 7u)], vec3<u32>(global1[_wgslsmith_index_u32(52591u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x)), Struct_1(0u, u_input.b.wwx), vec2<f32>(var_0.x, 382f))) & func_3(Struct_4(1678f, Struct_1(47694u, vec3<u32>(21180u, u_input.e, 18004u)), vec4<i32>(u_input.a, u_input.d, 42360i, -1i), vec2<u32>(0u, 68825u)), Struct_2(-1688f, Struct_1(u_input.e, u_input.b.xwy), Struct_1(4294967295u, vec3<u32>(global1[_wgslsmith_index_u32(50168u, 7u)], global1[_wgslsmith_index_u32(31956u, 7u)], u_input.b.x)), vec2<f32>(global0[_wgslsmith_index_u32(0u, 1u)], var_0.x)))), countOneBits(~(~9118u)), var_0.x, Struct_1(~59104u & ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)], ~reverseBits(u_input.b.yzw))), 7u)], ~(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(77318u, 7u)], 44851u)) ^ u_input.e);
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), 29135u), (global1[_wgslsmith_index_u32(reverseBits(4294967295u), 7u)] | firstTrailingBit(u_input.b.x)) | u_input.b.x), 1u)], Struct_1(~1u, _wgslsmith_mult_vec3_u32(~u_input.b.xzy, _wgslsmith_mod_vec3_u32(u_input.b.zwx, _wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73366u, 7u)], 7u)], 7u)], 0u), u_input.b.wwz)))), -max(reverseBits(select(vec4<i32>(2147483647i, 0i, u_input.d, -32092i), vec4<i32>(u_input.c.x, 4451i, u_input.d, -1i), true)), vec4<i32>(1i, -2147483647i, select(2147483647i, -1i, true), ~u_input.d)), _wgslsmith_mult_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(51634u, 0u), u_input.b.ww)), u_input.b.zy));
    return Struct_2(-1393f, var_2.b, Struct_1(func_4(false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, var_2.b.a) & _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global1[_wgslsmith_index_u32(var_2.b.b.x, 7u)], var_2.b.b.x, var_2.b.b.x, 4294967295u)), 7u)], var_2.a, Struct_1(abs(52488u), u_input.b.xxz)), ~u_input.b.xyw), var_0.zy);
}

fn func_1() -> vec2<bool> {
    let var_0 = ~(~(~4294967295u));
    global3 = array<vec4<f32>, 2>();
    let var_1 = func_2();
    global3 = array<vec4<f32>, 2>();
    let var_2 = select(vec3<bool>(func_3(Struct_4(-2634f, func_2().b, ~vec4<i32>(0i, u_input.c.x, -64955i, u_input.d), var_1.b.b.zx), func_2()), all(vec2<bool>(true, all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-var_1.d.x) < var_1.d.x), select(!vec3<bool>(true, var_0 == var_1.b.b.x, global0[_wgslsmith_index_u32(u_input.e, 1u)] != var_1.d.x), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, any(vec3<bool>(false, false, false))), vec3<bool>(u_input.d == -u_input.a, select(true, true, true), !any(vec4<bool>(true, false, false, false))), all(vec2<bool>(true, true)) || !any(vec4<bool>(false, true, true, false))));
    return !(!(!(!(!var_2.yy))));
}

fn func_5(arg_0: vec2<u32>) -> Struct_2 {
    global1 = array<u32, 7>();
    global0 = array<f32, 1>();
    global2 = countOneBits(_wgslsmith_div_u32(abs(arg_0.x), arg_0.x));
    let var_0 = arg_0.x;
    let var_1 = 1u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-1000f, Struct_1(u_input.b.x, ~vec3<u32>(~global1[_wgslsmith_index_u32(20949u, 7u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(11574u, 7u)], 44147u), u_input.e)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, i32(-1i) * -3456i, -u_input.a, _wgslsmith_clamp_i32(select(u_input.a, u_input.a, false), u_input.d, 1i)), -vec4<i32>(-u_input.d, -1i, u_input.c.x, min(u_input.d, 2147483647i))), abs(vec2<u32>(~u_input.e, 8665u) >> (_wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 46442u)) % vec2<u32>(32u))));
    global1 = array<u32, 7>();
    global2 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 7u)], 7u)], 7u)];
    var var_1 = _wgslsmith_f_op_f32(var_0.a * var_0.a) < -1000f;
    global3 = array<vec4<f32>, 2>();
    let var_2 = func_5(_wgslsmith_sub_vec2_u32(select(vec2<u32>(global1[_wgslsmith_index_u32(31278u, 7u)], firstLeadingBit(global1[_wgslsmith_index_u32(1u, 7u)])), var_0.d, func_1()), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(global1[_wgslsmith_index_u32(var_0.d.x, 7u)], 53160u), vec2<u32>(var_0.b.b.x, 4294967295u), false), var_0.b.b.yx), ~vec2<u32>(30193u, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_add_i32(-1i, -var_0.c.x)), var_0.c.x, firstTrailingBit(_wgslsmith_sub_i32(max(-2147483647i, var_0.c.x), 0i)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.d.x, ~(~u_input.b.x)), 7u)], 7u)], 1u)]);
}


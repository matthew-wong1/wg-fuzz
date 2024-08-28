struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(22672i, -58854i, i32(-2147483648), -1i), vec4<i32>(0i, -1i, -21652i, 2147483647i), vec4<i32>(61054i, -1i, 16678i, 2147483647i), vec4<i32>(35657i, 36725i, -22473i, 1i), vec4<i32>(i32(-2147483648), 36449i, i32(-2147483648), -1i), vec4<i32>(-24408i, -64978i, 2147483647i, i32(-2147483648)), vec4<i32>(12808i, 0i, 0i, 7995i), vec4<i32>(-38596i, -31250i, -1i, 0i), vec4<i32>(-177i, 0i, 40863i, -1i), vec4<i32>(-60835i, i32(-2147483648), -1i, 1i), vec4<i32>(18104i, i32(-2147483648), 16859i, 1i));

var<private> global1: array<f32, 25>;

var<private> global2: array<vec2<u32>, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 11>();
    let var_0 = vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(890f)))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -274f))), -1364f);
    let var_1 = firstLeadingBit(6646u);
    global2 = array<vec2<u32>, 4>();
    global1 = array<f32, 25>();
    return 289f;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(firstLeadingBit(arg_0), 25u)], _wgslsmith_f_op_f32(step(460f, -144f)))), 1120f)), _wgslsmith_f_op_f32(func_3()), 579f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1000f * global1[_wgslsmith_index_u32(arg_0, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 25u)]))))), select(false, arg_1.x, any(vec3<bool>(true, true, arg_1.x)))));
    global2 = array<vec2<u32>, 4>();
    let var_1 = Struct_2(Struct_1(~(firstTrailingBit(vec3<i32>(u_input.d, u_input.d, u_input.d)) | vec3<i32>(13051i, 6806i, u_input.a)), -1483f), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, arg_0), ~vec2<u32>(34598u, 22164u)), countOneBits(~global2[_wgslsmith_index_u32(15420u, 4u)]), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.e.x, 0u), vec4<u32>(4294967295u, 1u, arg_0, u_input.c.x)), min(35007u, 0u))), vec2<u32>(arg_0, arg_0)), Struct_1(-firstTrailingBit(select(vec3<i32>(u_input.d, u_input.a, 1i), vec3<i32>(u_input.a, -1i, -1i), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_mod_u32(~76618u, reverseBits(19105u)), var_0.x);
    global1 = array<f32, 25>();
    let var_2 = !(!select(vec4<bool>(any(vec4<bool>(arg_1.x, true, false, false)), true, false, arg_1.x), !vec4<bool>(arg_1.x, false, arg_1.x, true), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))));
    return Struct_1(~var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-488f))));
}

fn func_4(arg_0: Struct_2) -> bool {
    global1 = array<f32, 25>();
    global2 = array<vec2<u32>, 4>();
    let var_0 = vec4<bool>(all(!vec3<bool>(true, all(vec2<bool>(false, true)), u_input.e.x > u_input.e.x)), _wgslsmith_clamp_i32(i32(-1i) * -u_input.a, u_input.a, ~_wgslsmith_mult_i32(1i, u_input.a)) > _wgslsmith_add_i32(~(-44646i), arg_0.a.a.x), true, true);
    var var_1 = _wgslsmith_dot_vec4_u32(select(min(vec4<u32>(5149u, 0u, 0u, arg_0.b.x), vec4<u32>(1u, 1u, 0u, 4294967295u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 56976u, u_input.c.x, 4294967295u), vec4<u32>(0u, 7599u, 0u, 45028u)), max(~vec4<u32>(86350u, 1u, 4294967295u, 14909u), ~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 5540u)), var_0) | _wgslsmith_mult_vec4_u32(vec4<u32>(select(1583u, u_input.b.x, var_0.x), _wgslsmith_mult_u32(21374u, u_input.b.x), firstLeadingBit(58362u), ~31358u), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_0.d, 30771u, arg_0.d), vec4<u32>(1u, arg_0.b.x, arg_0.b.x, 77720u), vec4<u32>(arg_0.b.x, u_input.b.x, 0u, 4294967295u)), vec4<u32>(37629u, u_input.e.x, 8388u, u_input.b.x))), ~(~abs(vec4<u32>(u_input.b.x, u_input.c.x, 18832u, arg_0.b.x))) << (vec4<u32>(_wgslsmith_mod_u32(~u_input.c.x, abs(26218u)), max(~arg_0.b.x, countOneBits(u_input.b.x)), ~countOneBits(1u), ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(44855u, 0u, 33134u))) % vec4<u32>(32u)));
    var_1 = 0u;
    return !select(var_0.x, all(vec3<bool>(false, true, false)), !select(false, true, true) & (any(var_0.xzy) && var_0.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = reverseBits(u_input.d) >> (arg_2.x % 32u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 25u)] * arg_1));
    return Struct_2(func_2(4294967295u, select(!select(vec2<bool>(arg_3, arg_3), arg_0.xy, false), select(arg_0.zy, arg_0.yw, select(vec2<bool>(true, false), vec2<bool>(true, true), true)), arg_0.zy)), vec2<u32>(~_wgslsmith_div_u32(1u, u_input.e.x), 1u), func_2(_wgslsmith_div_u32(4294967295u << (countOneBits(arg_2.x) % 32u), ~(~arg_2.x)), !(!select(arg_0.xx, arg_0.zw, vec2<bool>(arg_3, arg_0.x)))), u_input.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(54335u, 25u)] + var_1) + -961f)))));
}

fn func_1() -> u32 {
    let var_0 = true;
    var var_1 = countOneBits(u_input.a >> (u_input.e.x % 32u));
    var var_2 = func_5(vec4<bool>(var_0, select(1u < abs(u_input.c.x), false, any(!vec3<bool>(true, var_0, var_0))), var_0 && true, func_4(Struct_2(func_2(4294967295u, vec2<bool>(false, var_0)), vec2<u32>(u_input.c.x, u_input.c.x), func_2(u_input.e.x, vec2<bool>(true, true)), u_input.c.x, 112f))), global1[_wgslsmith_index_u32(3157u, 25u)], ~(~vec3<u32>(u_input.e.x, u_input.e.x, 20237u)) ^ min(vec3<u32>(u_input.c.x, u_input.b.x, 13209u), vec3<u32>(abs(1u), countOneBits(4294967295u), ~122009u)), var_0);
    var var_3 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.d, 4294967295u, firstTrailingBit(20537u)), 11u)]);
    var var_4 = select(~u_input.b, firstLeadingBit(select(vec3<u32>(u_input.b.x, 1u, 27502u) | select(u_input.b, vec3<u32>(4294967295u, var_2.b.x, var_2.b.x), vec3<bool>(true, var_0, false)), u_input.b, vec3<bool>(all(vec3<bool>(false, false, var_0)), all(vec3<bool>(true, var_0, var_0)), !var_0))), false);
    return _wgslsmith_add_u32(countOneBits(u_input.e.x), abs(~var_2.b.x));
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_1.b.x, 25u)], -925f, true))) - -990f) + -769f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(-382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1685f)))), false));
    var var_1 = arg_1.c.b;
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 11>();
    var var_0 = _wgslsmith_clamp_i32(~(-8644i), -(~u_input.d), countOneBits(countOneBits(-11385i))) << (6918u % 32u);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1459f, global1[_wgslsmith_index_u32(24545u, 25u)])))))));
    let var_2 = Struct_1(vec3<i32>(-_wgslsmith_sub_i32(-34123i, countOneBits(-32811i)), ~u_input.d >> (~select(0u, u_input.e.x, false) % 32u), 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f))));
    let var_3 = -(~func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 176f), global1[_wgslsmith_index_u32(func_1(), 25u)]), Struct_2(func_2(0u, vec2<bool>(false, true)), ~global2[_wgslsmith_index_u32(9946u, 4u)], Struct_1(vec3<i32>(u_input.a, 2147483647i, 42534i), var_2.b), func_1(), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 25u)]))));
    let var_4 = var_2;
    global1 = array<f32, 25>();
    let var_5 = Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1102f)), _wgslsmith_f_op_f32(trunc(var_4.b))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2127f, -1000f))) * var_4.b));
    var var_6 = func_2(_wgslsmith_add_u32(u_input.b.x, 1u), vec2<bool>(_wgslsmith_div_i32(firstLeadingBit(u_input.a), _wgslsmith_div_i32(var_2.a.x, u_input.d)) >= (~9511i << (1u % 32u)), !(!any(vec3<bool>(true, true, true))))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(u_input.c.x, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -595f, 184f) * vec3<f32>(var_5.b, var_4.b, var_4.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, -445f, global1[_wgslsmith_index_u32(2586u, 25u)]) - vec3<f32>(1000f, -733f, -1019f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-479f)), _wgslsmith_f_op_f32(-var_4.b), global1[_wgslsmith_index_u32(1u, 25u)])) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, var_2.b, -631f) - vec3<f32>(505f, -594f, global1[_wgslsmith_index_u32(u_input.e.x, 25u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_5.b, -2850f, var_4.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(25798u, 25u)], var_2.b, var_2.b) * vec3<f32>(var_2.b, 562f, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(23376u, 52145u), 25u)]), 174f, -264f, var_5.b))), ~func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f * 138f)), -836f))));
}


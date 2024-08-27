struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: f32 = 189f;

var<private> global2: bool = false;

var<private> global3: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(15449i, -8724i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-61742i, -34466i), vec2<i32>(0i, -58987i), vec2<i32>(i32(-2147483648), 53044i), vec2<i32>(-37489i, 50222i), vec2<i32>(1i, -26935i), vec2<i32>(6255i, 1i), vec2<i32>(24540i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(39090i, i32(-2147483648)), vec2<i32>(1i, 33506i), vec2<i32>(40340i, i32(-2147483648)), vec2<i32>(-9638i, 63031i), vec2<i32>(0i, -57800i), vec2<i32>(21319i, 11579i), vec2<i32>(36642i, 1i), vec2<i32>(1i, -51226i), vec2<i32>(40888i, -1i), vec2<i32>(47577i, i32(-2147483648)), vec2<i32>(59241i, 2147483647i), vec2<i32>(4869i, 2147483647i), vec2<i32>(0i, -17728i), vec2<i32>(49834i, 0i), vec2<i32>(5446i, i32(-2147483648)), vec2<i32>(-76393i, i32(-2147483648)), vec2<i32>(-27265i, 4586i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.b.x >= 4294967295u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -103f)) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], 152f, -714f, -1494f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(783f, 1617f, -570f, global0[_wgslsmith_index_u32(4294967295u, 25u)]) + vec4<f32>(490f, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -827f, global0[_wgslsmith_index_u32(u_input.b.x, 25u)])))), vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(countOneBits(u_input.c), u_input.c)), -1i), false);
    global0 = array<f32, 25>();
    var var_2 = select(select(vec4<bool>(true & all(vec4<bool>(false, var_0, false, true)), var_1.c | true, true, all(select(vec4<bool>(var_1.c, true, var_1.c, true), vec4<bool>(var_1.c, true, var_0, false), vec4<bool>(false, var_0, false, var_0)))), select(vec4<bool>(any(vec2<bool>(false, var_0)), false, var_1.c, true), select(vec4<bool>(false, var_1.c, false, false), !vec4<bool>(false, var_0, var_0, true), true), true), select(!(!vec4<bool>(true, true, true, var_1.c)), vec4<bool>(true, u_input.b.x != u_input.b.x, true, !var_1.c), var_1.c)), select(!select(vec4<bool>(var_0, var_1.c, var_0, true), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(true, var_0, false, var_0), false), all(vec3<bool>(var_1.c, var_1.c, true))), select(vec4<bool>(all(vec3<bool>(var_0, var_1.c, var_0)), var_1.a.x >= var_1.a.x, false, all(vec4<bool>(var_1.c, true, var_0, var_0))), select(!vec4<bool>(true, var_1.c, var_0, var_1.c), select(vec4<bool>(true, var_1.c, false, false), vec4<bool>(true, false, true, var_1.c), vec4<bool>(true, var_1.c, false, true)), var_1.c), !vec4<bool>(false, var_0, true, true)), !(!vec4<bool>(true, true, var_1.c, true))), true);
    let var_3 = Struct_1(var_1.a, vec2<i32>(1i, ~u_input.c.x), false);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, -280f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2389f), _wgslsmith_div_f32(var_1.a.x, -488f), 1454f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(trunc(var_1.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 20752u), 25u)], -1249f))));
}

fn func_2() -> vec4<f32> {
    let var_0 = u_input.b.x;
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), select(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, 23799i), ~u_input.a), ~(-2147483647i)), firstLeadingBit(reverseBits(u_input.c.xz)), false), !((u_input.b.x > u_input.b.x) && true));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(404f, global0[_wgslsmith_index_u32(644u, 25u)], -986f, -169f), var_2.a))))), vec2<i32>(-37721i, var_2.b.x ^ var_2.b.x), !var_2.c);
    let var_3 = u_input.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * var_2.a) + var_2.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, -1000f, 1000f, 296f), var_2.a, vec4<bool>(var_2.c, var_2.c, false, var_2.c))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.x, 1856f, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))))), select(select(vec4<bool>(var_2.c, var_2.c, false, false), vec4<bool>(false, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, true, true, var_2.c)), vec4<bool>(false, var_2.c, var_2.c, true), !vec4<bool>(true, var_2.c, false, var_2.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 25u)] + 357f)))) + var_2.a);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-251f, -424f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)] * 250f)), global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 2076f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), vec2<i32>(max(~(i32(-1i) * -19743i), firstTrailingBit(24740i)), u_input.a), !((-1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 40969u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 64625u, 13393u)) % 32u)) != -u_input.c.x));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-465f, 1000f, var_1.c)) - -207f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(-859f + var_0.x))))), global0[_wgslsmith_index_u32(~max(0u, _wgslsmith_clamp_u32(16871u, abs(81647u), ~u_input.b.x)), 25u)]));
    var var_3 = vec4<u32>(max(u_input.b.x, 26662u << (1u % 32u)), _wgslsmith_div_u32(u_input.b.x, 34219u >> (_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~(~u_input.b.x), firstLeadingBit(~u_input.b.x), ~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zx)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(77528u, 102512u), ~110537u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 8500u), u_input.b.xz)), (u_input.b.x | 50806u) << (countOneBits(u_input.b.x) % 32u), 1u)), _wgslsmith_div_u32(~firstTrailingBit(0u), 28750u));
    global0 = array<f32, 25>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = any(!vec4<bool>(var_0.c, true, var_0.b.x == 0i, !select(var_0.c, var_0.c, true)));
    global1 = func_1().a.x;
    var var_1 = _wgslsmith_mult_vec2_i32(-(~global3[_wgslsmith_index_u32(u_input.b.x, 29u)] & firstTrailingBit(~vec2<i32>(u_input.a, 9278i))), u_input.c.yx);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(115f)), global0[_wgslsmith_index_u32(44780u, 25u)], _wgslsmith_div_f32(456f, var_0.a.x), var_0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(537f, 420f, 1696f, global0[_wgslsmith_index_u32(1u, 25u)]), var_0.a)))))), ~(~(~(-global3[_wgslsmith_index_u32(u_input.b.x, 29u)]))), !(!var_0.c));
    let var_3 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 20842i, var_0.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(20204i, 1i, var_1.x), u_input.c)), -979i)) & (u_input.a << (~abs(0u << (u_input.b.x % 32u)) % 32u));
    let var_4 = 778f;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_2.a.zz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_5.a.wz, _wgslsmith_f_op_vec2_f32(trunc(var_5.a.zx)))))), abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(40885u, 34107u, u_input.b.x, 0u), vec4<u32>(66552u, 4294967295u, u_input.b.x, u_input.b.x)), min(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), ~max(vec4<u32>(u_input.b.x, 15169u, 0u, 4294967295u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 78681u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 86879u, 50336u), vec4<u32>(61816u, 0u, u_input.b.x, 4375u), vec4<u32>(u_input.b.x, u_input.b.x, 85976u, u_input.b.x)), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)))));
}


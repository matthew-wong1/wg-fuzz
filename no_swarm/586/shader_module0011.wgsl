struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(2147483647i, -10699i), vec2<i32>(-7066i, i32(-2147483648)), vec2<i32>(-17618i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(25428i, -1i), vec2<i32>(10853i, 2147483647i), vec2<i32>(16952i, 0i), vec2<i32>(-1i, 12478i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(27935i, -46823i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-11202i, -1i), vec2<i32>(-20120i, 15765i), vec2<i32>(1627i, 30097i), vec2<i32>(-7779i, 49220i), vec2<i32>(-1i, 11086i), vec2<i32>(71170i, -14380i));

var<private> global1: array<vec3<bool>, 5>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_3), ~vec2<u32>(firstTrailingBit(arg_3), arg_3), select(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_3, 9035u), ~vec2<u32>(arg_3, 1257u)), ~(vec2<u32>(arg_3, arg_3) >> (vec2<u32>(4294967295u, 53916u) % vec2<u32>(32u)))), firstTrailingBit(~(~vec2<u32>(arg_3, 11395u))), select(vec2<bool>(true, false), vec2<bool>(true, true), !select(false, false, false))));
    global0 = array<vec2<i32>, 17>();
    let var_1 = arg_2;
    var var_2 = Struct_3(vec4<bool>(true & any(vec2<bool>(true, false)), ((4294967295u != arg_3) & true) == true, !(_wgslsmith_div_f32(121f, 699f) == _wgslsmith_f_op_f32(min(var_1.a, 594f))), false), var_1, vec4<i32>(u_input.c.x, 78597i, arg_0, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0, -2147483647i ^ arg_0), 1i | u_input.d.x, reverseBits(1i))), 43857i);
    let var_3 = _wgslsmith_f_op_f32(-var_2.b.a);
    return any(var_2.a.yy) || any(vec4<bool>(!(var_2.a.x | var_2.a.x), !var_2.a.x, true, false));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_3(select(select(vec4<bool>(arg_2.x | arg_2.x, true, arg_3.b.x == arg_1.a.x, select(arg_2.x, false, arg_2.x)), arg_1.a, any(select(arg_1.a.yz, vec2<bool>(arg_1.a.x, arg_3.c.x), true))), arg_3.c, true), Struct_2(global2.a), _wgslsmith_div_vec4_i32(vec4<i32>(~arg_1.c.x, -u_input.c.x, _wgslsmith_mult_i32(-1i, arg_1.c.x), arg_1.c.x), vec4<i32>(u_input.b, -arg_0, -2147483647i, i32(-1i) * -1i)) << (abs(firstLeadingBit(select(vec4<u32>(4294967295u, 6306u, 20624u, 0u), vec4<u32>(27036u, 17434u, 1u, 92076u), true))) % vec4<u32>(32u)), 2147483647i | arg_1.d);
    var var_1 = Struct_1(select(!var_0.a.xy, vec2<bool>(arg_1.a.x && false, arg_1.a.x), vec2<bool>(arg_3.b.x | var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1337f) > _wgslsmith_f_op_f32(max(1573f, arg_1.b.a)))), vec4<bool>(true, true, !(all(vec2<bool>(false, false)) || !var_0.a.x), false), select(!vec4<bool>(true & arg_2.x, all(vec3<bool>(true, false, true)), false, any(arg_3.b.zx)), !(!select(vec4<bool>(arg_2.x, true, arg_1.a.x, var_0.a.x), vec4<bool>(false, arg_1.a.x, arg_3.c.x, arg_2.x), vec4<bool>(false, arg_2.x, true, true))), true));
    global1 = array<vec3<bool>, 5>();
    global1 = array<vec3<bool>, 5>();
    global1 = array<vec3<bool>, 5>();
    return _wgslsmith_dot_vec3_i32(u_input.d.wyw >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), max(var_0.c.yyz, u_input.d.xyz));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    var var_0 = ~(~(~(~(vec2<u32>(arg_3, arg_3) & vec2<u32>(arg_3, arg_3)))));
    var var_1 = (~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.d.x, u_input.c.x, u_input.a), _wgslsmith_sub_i32(0i, -13459i)) & u_input.b) > _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), ~u_input.c.x), _wgslsmith_mod_i32(u_input.b | 15724i, -(i32(-1i) * -7644i)));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1306f)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) * global2.a);
    var_1 = ~1i == func_4(u_input.a, Struct_3(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), Struct_2(arg_2.a), u_input.d, arg_1.x), vec4<bool>(any(vec2<bool>(true, true)), func_3(min(18948i, -23821i), arg_2, Struct_2(arg_2.a), _wgslsmith_clamp_u32(var_0.x, var_0.x, arg_3)), false, false), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))));
    return select(vec4<u32>(arg_3, 12668u, arg_3, _wgslsmith_dot_vec2_u32(~vec2<u32>(50511u, 53035u), ~vec2<u32>(58707u, var_0.x))), reverseBits(vec4<u32>(1u, arg_3, max(21078u, arg_3), 0u)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, false, false, false))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> vec2<f32> {
    var var_0 = true;
    var var_1 = vec4<u32>(1u, reverseBits(12895u), max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(42740u, 22820u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45986u, 47561u, 4294967295u), vec4<u32>(0u, 1u, 0u, 58172u)), 40464u, 0u), vec4<u32>(1u, 1u, 1u, 1u) & func_2(vec3<f32>(global2.a, -643f, -386f), global0[_wgslsmith_index_u32(69742u, 17u)], Struct_2(-322f), 1u))), 25448u);
    var var_2 = arg_2;
    let var_3 = Struct_3(!vec4<bool>(!arg_1, arg_2, true, arg_0), Struct_2(569f), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d), _wgslsmith_mult_vec4_i32(u_input.d, select(u_input.d, ~u_input.d, !vec4<bool>(arg_2, arg_2, arg_1, false))), _wgslsmith_mult_vec4_i32(~u_input.d & -vec4<i32>(4219i, 14876i, 1i, u_input.a), countOneBits(-u_input.d))), u_input.c.x << (0u % 32u));
    var_2 = true;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.a, -899f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(356f, -1000f))))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a, var_3.b.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.a, var_3.b.a) * vec2<f32>(global2.a, global2.a)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(-580f * var_3.b.a))), !(_wgslsmith_f_op_f32(f32(-1f) * -390f) < _wgslsmith_f_op_f32(step(var_3.b.a, 256f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, var_3.b.a)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(157f, global2.a)))))));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f * -779f) + _wgslsmith_f_op_f32(global2.a + global2.a))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-229f, _wgslsmith_f_op_f32(-arg_3), false)), arg_3);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-171f)) + _wgslsmith_f_op_f32(-arg_2.a)) * 2001f));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(161f)))));
    var var_2 = u_input.d.zzx;
    global0 = array<vec2<i32>, 17>();
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.c.x;
    let var_1 = Struct_2(_wgslsmith_div_f32(global2.a, 1749f));
    var var_2 = !arg_2.b.ywz;
    var var_3 = ~u_input.d.zy;
    var var_4 = arg_0;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = func_6(func_5(0i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(true, true, true))))), Struct_2(1224f), -1000f), Struct_1(vec2<bool>(true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_3(6275i, Struct_2(global2.a), Struct_2(global2.a), 48665u), true)), vec4<bool>(true || func_3(-19158i, Struct_2(global2.a), Struct_2(-667f), 0u), _wgslsmith_mult_i32(u_input.b, u_input.d.x) > ~u_input.c.x, true, any(global1[_wgslsmith_index_u32(abs(1u), 5u)]))), Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, func_3(u_input.d.x, Struct_2(407f), Struct_2(global2.a), 8338u), true, all(vec4<bool>(false, false, false, true))), vec4<bool>(true, false, global2.a >= 459f, any(vec3<bool>(false, false, true)))), vec4<bool>(true, true, true, true)));
    global0 = array<vec2<i32>, 17>();
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(true, false, select(!any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true)))));
    var var_3 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-164f)))) > var_2.x, all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, abs(u_input.c.x) != (u_input.b & u_input.c.x), var_2.x == _wgslsmith_f_op_f32(-var_2.x), true), true), !vec4<bool>(true, _wgslsmith_mod_i32(u_input.c.x, u_input.d.x) < 1i, any(vec4<bool>(false, true, false, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(max(vec3<i32>(30297i, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-27402i, -2147483647i), global0[_wgslsmith_index_u32(14612u, 17u)])), ~vec3<i32>(19301i, u_input.b, u_input.d.x) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<i32>(-1i) * -(~vec3<i32>(-1i, -1i, 41836i))), 4131i, ~u_input.d);
}


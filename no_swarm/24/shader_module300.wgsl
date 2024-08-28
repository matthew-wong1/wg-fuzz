struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: array<i32, 21> = array<i32, 21>(0i, i32(-2147483648), 1i, -3831i, 0i, 34594i, 0i, 82867i, 21679i, 32208i, 30788i, -18015i, 52959i, i32(-2147483648), -37452i, 2147483647i, 0i, 13552i, 9392i, -32279i, -19833i);

var<private> global2: array<Struct_1, 6>;

var<private> global3: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32) -> u32 {
    global2 = array<Struct_1, 6>();
    global1 = array<i32, 21>();
    global3 = arg_0;
    return u_input.b;
}

fn func_3() -> u32 {
    var var_0 = !select(vec3<bool>(true, true, (global1[_wgslsmith_index_u32(u_input.d, 21u)] == u_input.c.x) || false), vec3<bool>(false, any(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true));
    var var_1 = firstLeadingBit(u_input.a);
    var var_2 = false || all(!select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.x, true), false)));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -622f);
    var_2 = any(select(vec4<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), var_0.x)), var_0.x, select(true, var_0.x, true) && false, any(vec3<bool>(false, var_0.x, var_0.x))), !vec4<bool>(true, true, any(var_0.zz), any(var_0.zy)), true));
    return firstTrailingBit(~u_input.b) & select(u_input.d, u_input.b, true);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = select(vec2<bool>(func_2(_wgslsmith_div_f32(arg_0.d, arg_0.b), -1459f, -arg_1.x) == func_3(), false), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), false)), !vec2<bool>(true, select(any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, false)))));
    let var_1 = true;
    global2 = array<Struct_1, 6>();
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_0.b)) <= _wgslsmith_f_op_f32(-391f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + -1929f)), arg_0.b));
    let var_3 = select(select(vec3<bool>(true, !all(vec4<bool>(var_1, var_1, false, var_2)), var_1), !vec3<bool>(var_1, true, select(true, var_1, true)), !(!vec3<bool>(var_1, var_0.x, false))), !(!vec3<bool>(var_2, all(vec3<bool>(var_1, var_1, var_1)), var_2 | var_1)), !(select(u_input.c.x, abs(9235i), var_1) <= reverseBits(arg_1.x)));
    return Struct_3(Struct_2(_wgslsmith_div_vec3_i32(firstTrailingBit(countOneBits(u_input.a.zxy)), u_input.a.wwy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(790f, 1999f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(794f, arg_0.d)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), 903f)), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, arg_0.a.x, -2147483647i), u_input.c), 1055f, u_input.b, -877f), u_input.a.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - 1896f), ~vec4<i32>(u_input.a.x, arg_1.x, abs(global1[_wgslsmith_index_u32(~u_input.b, 21u)]), -firstLeadingBit(-1i)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, arg_0.c, arg_0.c), ~vec3<u32>(u_input.b, 4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c, 4294967295u, u_input.b) | vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(80916u, arg_0.c, arg_0.c))), _wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(u_input.b, 4294967295u, 0u)), vec3<u32>(firstTrailingBit(19411u), _wgslsmith_add_u32(0u, 10745u), min(arg_0.c, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(firstTrailingBit(_wgslsmith_div_vec3_i32(select(vec3<i32>(-8597i, 2147483647i, u_input.a.x), vec3<i32>(-6104i, u_input.c.x, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec3<bool>(true, false, false)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(1071f - _wgslsmith_f_op_f32(-817f + 190f)), firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f + -1233f))), ~u_input.a);
    var var_1 = vec3<bool>(!all(vec3<bool>(true, true, true)), true, !all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false)));
    global0 = array<Struct_3, 30>();
    let var_2 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1192f), _wgslsmith_f_op_f32(step(var_0.a.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -354f))))), all(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false), true), var_1.x)))));
    var var_3 = func_1(func_1(Struct_1(var_0.a.a, var_0.b, ~_wgslsmith_dot_vec2_u32(var_0.d.zx, var_0.d.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 811f) * -440f)), vec4<i32>(-1i) * -abs(vec4<i32>(global1[_wgslsmith_index_u32(80695u, 21u)], u_input.c.x, var_0.a.a.x, -19596i))).a.c, abs(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(10669i, 0i)), vec2<i32>(-1i, -2147483647i)), -59735i, -firstTrailingBit(32344i), _wgslsmith_sub_i32(-54674i, select(-9195i, var_0.c.x, var_1.x))))).a.c;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f - 257f))))));
    var var_5 = func_1(func_1(func_1(func_1(Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), 1078f, var_3.c, -1457f), var_0.c ^ var_0.c).a.c, vec4<i32>(-var_0.c.x, -u_input.c.x, 0i, var_0.c.x)).a.c, select(var_0.c & (vec4<i32>(global1[_wgslsmith_index_u32(var_0.d.x, 21u)], var_0.a.d.x, 2147483647i, global1[_wgslsmith_index_u32(var_3.c, 21u)]) | u_input.a), -vec4<i32>(u_input.a.x, u_input.c.x, var_3.a.x, -22818i), vec4<bool>(false, var_0.b < var_0.b, var_1.x || false, all(vec3<bool>(var_1.x, var_1.x, false))))).a.c, _wgslsmith_mod_vec4_i32(~(-vec4<i32>(2147483647i, 133i, 5944i, -2147483647i)), ~(var_0.c & u_input.a))).a;
    var_3 = func_1(var_5.c, vec4<i32>(var_3.a.x, 1i, ~_wgslsmith_add_i32(var_0.c.x, -1i << (0u % 32u)), var_0.c.x)).a.c;
    let var_6 = _wgslsmith_mod_u32(~(~min(countOneBits(u_input.b), firstLeadingBit(var_0.a.c.c))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_i32(var_3.a << (var_0.d % vec3<u32>(32u)), var_5.c.a)), vec4<i32>(~0i, var_3.a.x, 62165i, _wgslsmith_dot_vec2_i32(var_5.c.a.xx, _wgslsmith_sub_vec2_i32(var_3.a.zy, vec2<i32>(u_input.a.x, u_input.c.x)))) << (abs(vec4<u32>(_wgslsmith_clamp_u32(0u, var_0.d.x, u_input.b), ~var_3.c, _wgslsmith_div_u32(var_5.c.c, var_3.c), u_input.b)) % vec4<u32>(32u)));
}


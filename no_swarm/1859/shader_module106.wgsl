struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2262f;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, -383i), vec2<i32>(-23825i, -1i), vec3<f32>(-1060f, -645f, -1000f));

var<private> global2: f32;

var<private> global3: array<u32, 20>;

var<private> global4: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(638f, -824f, 789f, -1000f), vec4<f32>(1039f, -143f, -673f, -980f), vec4<f32>(462f, 1979f, 398f, -1000f), vec4<f32>(-445f, -122f, -668f, 1060f), vec4<f32>(-715f, 634f, -1000f, 126f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 3678u), vec2<u32>(global3[_wgslsmith_index_u32(5244u, 20u)], u_input.a)), vec2<u32>(22398u, u_input.d) | vec2<u32>(0u, 1u)), ~global3[_wgslsmith_index_u32(32712u, 20u)]), max(4294967295u, abs(firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 20u)])))), 20u)] >> (_wgslsmith_mult_u32(u_input.e, _wgslsmith_sub_u32(4294967295u, 4294967295u) >> (_wgslsmith_mod_u32(u_input.d, 49006u) % 32u)) % 32u);
    global4 = array<vec4<f32>, 5>();
    global3 = array<u32, 20>();
    global2 = 3077f;
    var var_1 = select(any(arg_1.xx), any(vec2<bool>(arg_1.x, false)), true);
    return select(_wgslsmith_add_vec3_i32(-select(~vec3<i32>(global1.b.x, 1i, -7386i), _wgslsmith_div_vec3_i32(vec3<i32>(34529i, -60245i, global1.b.x), vec3<i32>(-61226i, u_input.c, u_input.c)), vec3<bool>(false, false, arg_1.x)), reverseBits(vec3<i32>(abs(0i), ~global1.b.x, countOneBits(u_input.c)))), vec3<i32>(-1i, u_input.c, 0i), arg_1.yxw);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    var var_0 = vec4<f32>(arg_2.b.c.x, _wgslsmith_div_f32(2207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-119f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-1566f - _wgslsmith_f_op_f32(select(125f, -1145f, false))))), global1.c.x);
    global4 = array<vec4<f32>, 5>();
    global1 = arg_0;
    var var_1 = 12084u;
    let var_2 = arg_2;
    return _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-global1.a.x, 1i, -arg_1), -firstLeadingBit(vec3<i32>(arg_0.b.x, -60371i, 30158i)), (-30097i == var_2.b.b.x) && all(vec3<bool>(false, false, false))), countOneBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, -2147483647i), vec3<i32>(arg_0.b.x, 0i, -4138i)))), func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -310f)))))), vec4<bool>(all(vec4<bool>(true, true, false, false)), (i32(-1i) * -1i) <= arg_0.b.x, false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32((-vec3<i32>(2147483647i, -13751i, 2147483647i) & func_2(arg_1.a, -1i, Struct_2(Struct_1(arg_1.b.b, global1.b, arg_0), arg_1.a), 4294967295u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1959u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53957u, 20u)], 20u)], 26730u), firstLeadingBit(vec3<u32>(u_input.e, 124321u, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(-vec3<i32>(global1.a.x, 13468i, -942i), ~vec3<i32>(22555i, arg_1.a.b.x, global1.b.x)) << (vec3<u32>(u_input.d, _wgslsmith_sub_u32(u_input.a, 16849u), u_input.e) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec3_i32(min(countOneBits(vec3<i32>(u_input.c, arg_1.b.a.x, 57205i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b.b.x, -2147483647i, arg_1.b.b.x), vec3<i32>(0i, global1.a.x, u_input.c))), vec3<i32>(global1.b.x, 0i, arg_1.a.b.x))));
    var var_1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(ceil(290f)))), global1.c.x) >= _wgslsmith_f_op_f32(f32(-1f) * -727f), select(any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, all(vec4<bool>(true, true, true, true))), select(true, all(vec2<bool>(global1.b.x != 108067i, true)), select(any(vec4<bool>(false, false, false, true)), (45187u >= global3[_wgslsmith_index_u32(96122u, 20u)]) & all(vec2<bool>(true, true)), ~global1.a.x >= abs(-1i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 5u)]) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(383f, global1.c.x, arg_0.x, -523f), vec4<f32>(arg_0.x, arg_1.b.c.x, arg_1.b.c.x, global1.c.x), var_1.x)))))));
    var var_3 = 38615u;
    var_0 = _wgslsmith_mod_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(global1.b.x, arg_1.a.b.x) >> (1u % 32u), _wgslsmith_clamp_i32(-u_input.c, reverseBits(18947i), 0i), ~(~arg_1.a.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(arg_1.b.b.x) << (23069u % 32u), ~var_0.x, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c.x, -1028f)), !vec4<bool>(true, var_1.x, var_1.x, false)).x), countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -15992i, -2147483647i), vec3<i32>(global1.a.x, 1i, arg_1.b.b.x)))));
    return _wgslsmith_div_u32(838u ^ (u_input.e ^ u_input.b), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, ~4294967295u), 20u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    global1 = Struct_1(vec2<i32>(global1.a.x, -1i), ~max(max(global1.b | vec2<i32>(1i, global1.b.x), _wgslsmith_div_vec2_i32(global1.a, global1.a)), ~vec2<i32>(global1.b.x, 1i)), global1.c);
    global3 = array<u32, 20>();
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(func_1(global1.c, Struct_2(Struct_1(vec2<i32>(1481i, -23127i), vec2<i32>(global1.a.x, u_input.c), global1.c), Struct_1(vec2<i32>(global1.b.x, -2147483647i), global1.a, vec3<f32>(global1.c.x, -131f, global1.c.x)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(54715u, 20300u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 16170u, 31869u, 1u), vec4<u32>(1u, 4294967295u, 56049u, 18153u)))), global3[_wgslsmith_index_u32(u_input.d, 20u)], global3[_wgslsmith_index_u32(~u_input.d, 20u)]);
    global3 = array<u32, 20>();
    global1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~global1.b.x, _wgslsmith_mult_i32(u_input.c, -31469i), global1.b.x, global1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-60448i, 13278i, global1.b.x, u_input.c), ~vec4<i32>(1i, -10632i, -2147483647i, global1.a.x))), _wgslsmith_mod_i32(u_input.c, min(~global1.a.x, 2147483647i))), ~(~(~(vec2<i32>(0i, 2147483647i) << (var_1.yz % vec2<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, global1.c.x, 663f) + global1.c)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, global1.c.x, -2023f), global1.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-532f, -375f, global1.c.x) * vec3<f32>(825f, global1.c.x, global1.c.x))) - vec3<f32>(_wgslsmith_f_op_f32(548f + global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(1130f))))));
    let var_2 = i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-24918i, global1.a.x, global1.b.x), vec3<i32>(29674i, u_input.c, -2147483647i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c, 17373i), vec3<i32>(global1.b.x, u_input.c, global1.a.x)), ~abs(vec3<i32>(44613i, 1i, u_input.c)));
    global2 = -757f;
    var var_3 = Struct_1(abs(global1.b), global1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x))), _wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(global1.c.x * 1261f)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(global3[_wgslsmith_index_u32(0u, 20u)], ~(u_input.d ^ 0u), firstTrailingBit(~global3[_wgslsmith_index_u32(var_1.x, 20u)])), vec3<u32>(~0u, min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 0u), 20u)], 20u)], _wgslsmith_dot_vec3_u32(vec3<u32>(47340u, var_1.x, global3[_wgslsmith_index_u32(82054u, 20u)]), vec3<u32>(0u, global3[_wgslsmith_index_u32(var_1.x, 20u)], 0u))), ~_wgslsmith_add_u32(var_1.x, 82985u)), all(vec3<bool>(true, true, true)) && !(var_3.a.x > var_2)), _wgslsmith_add_u32(u_input.e, abs(_wgslsmith_sub_u32(abs(var_1.x), ~1u))), u_input.c, -306f);
}


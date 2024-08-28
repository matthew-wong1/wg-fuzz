struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec4<bool>;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = abs(~(firstTrailingBit(select(arg_0.c, vec4<i32>(u_input.b, -12751i, 27907i, 0i), global2.x)) << (arg_2 % vec4<u32>(32u))));
    let var_1 = Struct_2(Struct_1(4294967295u, abs(1u ^ u_input.a) & (_wgslsmith_add_u32(10569u, arg_3.b) ^ (arg_3.b ^ 33571u)), any(!select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(arg_0.a.c, true))), arg_3.d), min(~(~(~arg_3.b)), ~(~arg_0.a.b >> (_wgslsmith_dot_vec2_u32(arg_2.yy, arg_2.xz) % 32u))), vec4<i32>(abs(arg_1), i32(-1i) * -min(u_input.b, var_0.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(12586i, -9045i), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -641i, arg_0.c.x), countOneBits(vec3<i32>(u_input.b, -2147483647i, arg_0.c.x)))), max(abs(~1i), _wgslsmith_clamp_i32(-u_input.b, 1i, ~arg_1))));
    return vec3<u32>(1u, ~(~0u), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, u_input.a) >> (~u_input.a % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_2, vec4<u32>(arg_3.a, 1u, var_1.b, 37358u)), _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(0u, 60390u, var_1.b, arg_3.a))))) | arg_2.zyz;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~func_3(Struct_2(Struct_1(0u, u_input.a, true, arg_1), 1u, abs(vec4<i32>(u_input.b, 0i, 0i, u_input.b))), -2147483647i, ~vec4<u32>(u_input.c, u_input.a, u_input.c, 7709u) & vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), global1[_wgslsmith_index_u32(~(u_input.a | 1u), 9u)]), select(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.a, 1u, 31621u)), ~vec3<u32>(u_input.c, u_input.a, u_input.c)) >> (~vec3<u32>(u_input.c, 45578u, 25243u) % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_mult_u32(0u, 5303u), 0u, func_3(Struct_2(global1[_wgslsmith_index_u32(0u, 9u)], u_input.a, vec4<i32>(-1i, u_input.b, -2147483647i, 1i)), 1i, vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.a), Struct_1(u_input.a, 4294967295u, global3.x, arg_1)).x & abs(4294967295u)), global3.x)), 9u)];
    var_0 = Struct_1(1030u & var_0.b, 4294967295u, false == all(vec4<bool>(all(global2.zwz), arg_0, !var_0.c, true)), _wgslsmith_f_op_f32(1f - var_0.d));
    global1 = array<Struct_1, 9>();
    global0 = -u_input.b;
    var var_1 = Struct_1(_wgslsmith_add_u32(5184u, var_0.a) | ~max(1u, ~u_input.a), ~(~firstLeadingBit(42730u)), !(select(false, true, global3.x) && select(var_0.c, true, true)), _wgslsmith_f_op_f32(-773f * 599f));
    return Struct_1(u_input.c ^ 4294967295u, var_1.b, true, arg_2.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = -52796i;
    global1 = array<Struct_1, 9>();
    var var_1 = Struct_2(func_2((30360u >= arg_1.a) && true, -933f, vec2<f32>(arg_1.d, arg_1.d)), ~0u, -firstLeadingBit(max(vec4<i32>(arg_0, -37238i, arg_0, var_0), vec4<i32>(-5177i, var_0, 0i, arg_0)) & (vec4<i32>(var_0, u_input.b, -14266i, -2147483647i) << (vec4<u32>(u_input.a, arg_1.a, arg_1.a, u_input.a) % vec4<u32>(32u)))));
    global1 = array<Struct_1, 9>();
    let var_2 = func_2(!global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d) - _wgslsmith_f_op_f32(floor(1670f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1176f, arg_1.d)))))));
    return select(vec4<bool>(_wgslsmith_clamp_i32(~var_0, 2147483647i | var_0, var_0) <= 26865i, global3.x, !arg_1.c, -797f >= var_1.a.d), select(!select(vec4<bool>(global3.x, false, false, arg_1.c), !vec4<bool>(false, false, global3.x, arg_1.c), vec4<bool>(var_2.c, global3.x, var_1.a.c, false)), !vec4<bool>(arg_1.c | false, false & global2.x, false && arg_1.c, var_2.c), vec4<bool>(global2.x, !(var_2.a <= u_input.c), false, !(global2.x & false))), true);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    global3 = select(!func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_2.c, vec4<i32>(arg_2.c.x, 21319i, -29646i, 7313i)), arg_2.c), func_2(all(vec3<bool>(true, true, global2.x)), _wgslsmith_f_op_f32(-arg_2.a.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.d, 1161f) * vec2<f32>(arg_2.a.d, -1000f)))).zxy, arg_3.xyz, select(vec3<bool>(select(arg_1.x, arg_1.x, all(arg_1)), any(arg_3.yy), global2.x), vec3<bool>(any(!vec4<bool>(global3.x, arg_2.a.c, arg_3.x, arg_3.x)), true, true), false));
    let var_0 = _wgslsmith_div_u32(arg_2.a.b, ~arg_2.a.b);
    let var_1 = func_2(true, arg_2.a.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-839f, 1000f), vec2<f32>(arg_2.a.d, 2442f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.d, 825f))) - vec2<f32>(-1351f, _wgslsmith_f_op_f32(-arg_2.a.d)))));
    global1 = array<Struct_1, 9>();
    global2 = vec4<bool>(all(!(!vec4<bool>(arg_1.x, global2.x, false, true))), -_wgslsmith_sub_i32(~1i, -55938i) >= _wgslsmith_clamp_i32(u_input.b, -_wgslsmith_add_i32(arg_2.c.x, arg_2.c.x), abs(countOneBits(-11539i))), arg_3.x, true);
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = vec4<bool>(!(1u <= abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1.b, 89361u, arg_0), vec4<u32>(arg_2.b, 0u, 4294967295u, 1u)))), false, !arg_3, arg_0 < countOneBits(~arg_2.b));
    let var_1 = arg_2.a.d;
    let var_2 = -396f;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f)), _wgslsmith_f_op_f32(-var_2), var_1) * vec3<f32>(884f, -896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1525f)))) - vec3<f32>(982f, -970f, _wgslsmith_f_op_f32(-var_1)));
    let var_4 = arg_1;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_2.c, abs(vec4<i32>(-34365i, u_input.b, u_input.b, u_input.b) ^ select(vec4<i32>(u_input.b, arg_2.c.x, arg_2.c.x, 1i), vec4<i32>(-1609i, arg_2.c.x, arg_2.c.x, 16544i), var_0))), vec4<i32>(0i, -u_input.b, 1i, _wgslsmith_sub_i32(u_input.b, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec4<bool>(false, u_input.c >= _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 117113u), vec3<u32>(u_input.a, u_input.c, 39935u) ^ vec3<u32>(u_input.c, 1u, u_input.a)), false == global2.x, select(false, true, _wgslsmith_clamp_u32(32991u, 96255u, 43916u) == ~4294967295u));
    var var_0 = ~vec4<i32>(-_wgslsmith_clamp_i32(u_input.b, _wgslsmith_add_i32(-33049i, u_input.b), ~12553i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b) & max(vec3<i32>(u_input.b, 1i, -11941i), vec3<i32>(82383i, u_input.b, u_input.b)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -1i), vec3<i32>(u_input.b, -9286i, u_input.b)), vec3<i32>(u_input.b, 8868i, -10058i) | vec3<i32>(79263i, 2147483647i, u_input.b))), func_5(u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u ^ u_input.c, max(u_input.c, 1u), ~u_input.c), 9u)], func_4(59197u, func_1(u_input.b, global1[_wgslsmith_index_u32(88284u, 9u)]), Struct_2(Struct_1(u_input.c, u_input.a, true, -206f), u_input.a, vec4<i32>(2147483647i, 53481i, u_input.b, u_input.b)), vec4<bool>(global2.x, true, global2.x, false)), min(u_input.b, u_input.b) == -7844i), firstLeadingBit(-2147483647i));
    let var_1 = func_4(1u, !(!vec4<bool>(any(vec4<bool>(global2.x, false, false, global2.x)), u_input.a == u_input.a, func_4(30152u, vec4<bool>(global2.x, false, true, true), Struct_2(Struct_1(u_input.c, 3753u, false, 120f), 46850u, vec4<i32>(var_0.x, 2147483647i, 43199i, var_0.x)), vec4<bool>(true, true, false, global3.x)).a.c, all(vec3<bool>(global2.x, global2.x, false)))), Struct_2(Struct_1(abs(~78771u), u_input.c, func_1(-1i, func_4(u_input.a, vec4<bool>(true, global2.x, false, false), Struct_2(Struct_1(u_input.a, u_input.c, global2.x, -840f), u_input.a, vec4<i32>(19822i, u_input.b, -1i, u_input.b)), vec4<bool>(global2.x, false, global3.x, true)).a).x, _wgslsmith_f_op_f32(-477f - -702f)), 24711u, ~(~vec4<i32>(var_0.x, u_input.b, -34367i, 2147483647i))), vec4<bool>(select(global2.x, global2.x, !(!global2.x)), true, global3.x, true)).a;
    global3 = global2.ywx;
    var var_2 = vec4<f32>(var_1.d, _wgslsmith_f_op_f32(1160f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2094f) + var_1.d))), _wgslsmith_f_op_f32(f32(-1f) * -374f), -1085f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wzy, vec4<i32>(14608i, ~(~(-var_0.x)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(20303i, i32(-1i) * -15701i, ~u_input.b), 686i, 0i), countOneBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-66348i, var_0.x)), -vec2<i32>(var_0.x, 43644i)))));
}


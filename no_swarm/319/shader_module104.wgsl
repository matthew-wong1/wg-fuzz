struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 20>;

var<private> global3: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = ~(~arg_0.e);
    var var_1 = global2[_wgslsmith_index_u32(64959u, 20u)];
    let var_2 = -global2[_wgslsmith_index_u32(arg_0.e, 20u)];
    var var_3 = Struct_2(arg_0.d.x);
    var var_4 = arg_0;
    return !arg_0.b.x | true;
}

fn func_4(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = countOneBits(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(33029i, u_input.c, u_input.b.x, 37457i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.c, 20615i, 36679i, 2147483647i), vec4<i32>(2147483647i, u_input.c, -15487i, 86620i) >> (vec4<u32>(68331u, u_input.d, 43306u, u_input.a.x) % vec4<u32>(32u))), abs(~vec4<i32>(-18838i, u_input.b.x, u_input.c, u_input.b.x))), min(vec4<i32>(~u_input.c, -1i, 2147483647i, u_input.b.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.c, -18225i), vec4<i32>(0i, -14144i, u_input.c, 51990i)))));
    let var_1 = Struct_1(!select(!vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(all(vec3<bool>(arg_1, arg_1, false)), all(vec4<bool>(false, arg_1, true, arg_1)), false, arg_1), !(!vec4<bool>(arg_1, false, arg_1, true))), !vec2<bool>(!select(arg_1, arg_1, false), firstLeadingBit(0i) < var_0.x), _wgslsmith_mod_i32(var_0.x, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f * arg_0) + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), all(vec3<bool>(true, arg_1, true)))))), ~(~(select(41470u, 1u, arg_1) ^ u_input.d)));
    let var_2 = ~(~(-2147483647i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.d.x, arg_0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-548f - -1784f), _wgslsmith_f_op_f32(383f - 2325f)))));
}

fn func_2() -> vec4<bool> {
    global3 = false;
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-834f * -1000f))), select(all(vec3<bool>(true, true, true)), !func_3(Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, false), u_input.c, vec2<f32>(781f, -615f), u_input.d)), false)))));
    global0 = array<vec4<f32>, 23>();
    var var_1 = vec2<bool>((countOneBits(u_input.a.x) > u_input.a.x) || false, false);
    let var_2 = false;
    return vec4<bool>(false, !var_2, var_1.x, 2806i == u_input.b.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(~(~1u)), 23u)];
    global2 = array<vec3<i32>, 20>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -288f), 1463f));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, arg_0.x), 23u)];
    var var_1 = Struct_1(func_2(), !vec2<bool>(true, min(0u, 4294967295u) == u_input.d), u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.zx))), min(~reverseBits(_wgslsmith_div_u32(u_input.d, 1u)), arg_0.x));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = func_1(_wgslsmith_mult_vec4_u32(firstLeadingBit(~reverseBits(vec4<u32>(u_input.d, u_input.a.x, 38713u, 4294967295u))), ~vec4<u32>(0u | u_input.a.x, ~u_input.d, ~29908u, min(0u, 5534u))), func_1(~(vec4<u32>(7355u, 33654u, u_input.a.x, 0u) << (vec4<u32>(1u, u_input.a.x, 37167u, 1u) % vec4<u32>(32u))) ^ vec4<u32>(51198u, u_input.d >> (4294967295u % 32u), ~0u, ~14726u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1545f - -351f)))));
    var var_1 = _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 28388i, 0i, arg_0), max(vec4<i32>(18923i, -1i, u_input.b.x, u_input.c), vec4<i32>(0i, u_input.c, 2023i, u_input.c))) & arg_0, 1i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(409f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-203f, arg_2.a))))));
    var var_3 = var_2;
    var_1 = abs(u_input.c);
    return u_input.b;
}

fn func_6(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(111f);
    let var_1 = Struct_1(!func_2(), select(vec2<bool>(true, any(vec4<bool>(true, false, true, false))), !select(vec2<bool>(true, true), func_2().wx, vec2<bool>(true, false)), vec2<bool>(true, any(vec3<bool>(false, true, false)))), _wgslsmith_mult_i32(~(-arg_0.x), _wgslsmith_mult_i32(countOneBits(9984i), 1i) >> (0u % 32u)), vec2<f32>(837f, -1060f), u_input.d);
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1311f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global2 = array<vec3<i32>, 20>();
    let var_1 = func_6(select(-func_5(~u_input.b.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1285f, -828f, 473f), vec3<f32>(950f, 180f, -626f))), func_1(vec4<u32>(15887u, u_input.d, 1u, 74271u), Struct_2(-114f))), vec2<i32>(-(i32(-1i) * -1i), 7178i), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_6(u_input.b).a, _wgslsmith_f_op_f32(-240f + var_1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, var_1.a), vec2<f32>(716f, var_1.a), vec2<bool>(false, true))) - vec2<f32>(var_1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 594f), vec2<f32>(1000f, var_1.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) * vec2<f32>(-471f, -1000f))))));
    let var_3 = _wgslsmith_f_op_f32(trunc(539f));
    let var_4 = Struct_1(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, select(true, true, false), true, true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, all(vec2<bool>(true, true)), true), func_2())), select(!func_2().xz, vec2<bool>(func_3(Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), 12587i, vec2<f32>(var_3, 743f), u_input.d)), true), all(vec2<bool>(true, true))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.c)), -1i) & -12708i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1651f, var_2.x)) - vec2<f32>(-226f, 820f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2592f, var_3) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)))), vec2<bool>(true, var_0 >= ~0u))), abs(var_0));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3))))) <= _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1809f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f))));
    global1 = _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -1156f)) + _wgslsmith_f_op_f32(-var_4.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(6240u, 30481u, var_4.e), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a)), ~(~vec3<u32>(39091u, 0u, 57737u))), vec3<u32>(reverseBits(abs(var_4.e)), u_input.d, ~_wgslsmith_add_u32(57473u, var_4.e))), var_0, ~(~_wgslsmith_sub_u32(var_4.e, var_0)));
}


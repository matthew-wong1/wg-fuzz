struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<i32> {
    global0 = array<bool, 21>();
    var var_0 = arg_0.b.b;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1283f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -1056f)))))), _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, true)) - 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1088f, arg_0.c.x)))))), arg_0.b.c.x, arg_0.c.x);
    var var_2 = arg_0.b;
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, max(~arg_1.x, 69458u), ~_wgslsmith_sub_u32(arg_1.x, arg_1.x), arg_1.x), ~firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(arg_1.x, 1447u), arg_1.x, _wgslsmith_div_u32(arg_1.x, 137333u), 1u)));
    return vec2<i32>(abs(firstTrailingBit(var_2.a.x) | firstLeadingBit(-arg_0.a.x)), u_input.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = 24814u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2)), -2168f);
    global0 = array<bool, 21>();
    var var_2 = Struct_2(min(vec2<i32>(max(arg_0, 1i), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, countOneBits(arg_0))), ~arg_3.yx ^ -arg_1.a.yy), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 982f, 131f, arg_1.c.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, arg_2, arg_2, -298f))))));
    let var_3 = _wgslsmith_sub_vec2_i32(~func_3(Struct_2(_wgslsmith_mod_vec2_i32(arg_1.a.zz, arg_1.a.zy), Struct_1(arg_3, var_2.b.b, arg_1.c), _wgslsmith_f_op_vec4_f32(step(var_2.c, var_2.c))), vec3<u32>(var_0, var_0, var_0) | vec3<u32>(4294967295u, 27269u, var_0)), firstLeadingBit(vec2<i32>(i32(-1i) * -14332i, countOneBits(arg_0))) >> ((select(vec2<u32>(var_0, var_0) ^ vec2<u32>(var_0, var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(94592u, var_0), vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, var_0)), vec2<bool>(false, false)) | _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_0), countOneBits(vec2<u32>(var_0, var_0)))) % vec2<u32>(32u)));
    return Struct_1(arg_1.a, select(select(vec2<bool>(true, true), !select(arg_1.b, vec2<bool>(true, false), var_2.b.b.x), select(!arg_1.b, !vec2<bool>(arg_1.b.x, arg_1.b.x), vec2<bool>(var_2.b.b.x, false))), var_2.b.b, select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 21u)]), select(arg_1.b, vec2<bool>(var_2.b.b.x, arg_1.b.x), var_2.b.b), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(var_2.b.b.x, arg_1.b.x)), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0, 21u)]))), var_2.b.b.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(951f, _wgslsmith_f_op_f32(var_1 + 1000f), arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.b.c, vec3<f32>(var_2.b.c.x, -1522f, var_2.b.c.x), false)))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    global0 = array<bool, 21>();
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, _wgslsmith_mult_u32(0u, 4294967295u)), abs(~vec2<u32>(45197u, 4294967295u))) >> (vec2<u32>(~(~0u), ~1u << (select(67887u, 4294967295u, true) % 32u)) % vec2<u32>(32u)), abs(~vec2<u32>(1u, 1u)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_mult_u32(firstTrailingBit(var_0.x) << ((var_0.x & var_0.x) % 32u), 43365u);
    global0 = array<bool, 21>();
    return vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, ~var_0.x >> (0u % 32u), var_0.x, 19629u), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2, 4294967295u, 0u), vec3<u32>(var_0.x, 4294967295u, 4294967295u)), vec3<u32>(0u, var_2, var_2)), ~(~var_2), var_0.x)), 1u, _wgslsmith_mult_u32(~(min(133541u, var_0.x) << (5531u % 32u)), 1u), abs(_wgslsmith_add_u32(~var_2 ^ ~1u, _wgslsmith_add_u32(countOneBits(var_0.x), ~0u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    return Struct_2(arg_0.a.yx, Struct_1(vec3<i32>(-1i) * -arg_0.a, select(vec2<bool>(-1115f != arg_0.c.x, false & global0[_wgslsmith_index_u32(arg_1.x, 21u)]), arg_0.b, vec2<bool>(arg_0.b.x & arg_0.b.x, true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1107f, _wgslsmith_f_op_f32(-arg_0.c.x), 588f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1549f, arg_0.c.x, 250f, -292f)), vec4<f32>(arg_0.c.x, -809f, 1307f, -1690f), false | global0[_wgslsmith_index_u32(arg_1.x, 21u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1814f, arg_0.c.x, 330f, -1000f)))));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    var var_0 = ~vec2<u32>(30479u, 1u);
    var var_1 = Struct_3(arg_0.b, false);
    return func_2(~8252i, Struct_1(arg_3.a.a, var_1.a.b, arg_0.b.c), 633f, _wgslsmith_mult_vec3_i32(-arg_3.a.a, arg_3.a.a));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_0 = 1i;
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -76158i, 1i), vec3<i32>(-50145i, var_0, 4449i)), vec3<i32>(_wgslsmith_mult_i32(-5381i, var_0) << (_wgslsmith_div_u32(0u, 1u) % 32u), u_input.a, -2147483647i)), !vec2<bool>(!(!global0[_wgslsmith_index_u32(20794u, 21u)]), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1843f, -573f, 208f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-197f, -536f, -507f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(849f, 675f, 2135f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-381f, 1000f, -1700f) - vec3<f32>(690f, 420f, -293f))))));
    global0 = array<bool, 21>();
    return func_6(func_5(Struct_1(var_1.a, vec2<bool>(global0[_wgslsmith_index_u32(10326u, 21u)] | global0[_wgslsmith_index_u32(29775u, 21u)], true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c * var_1.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1823f, 1446f, 1682f)))), func_4(Struct_3(Struct_1(var_1.a, vec2<bool>(global0[_wgslsmith_index_u32(76346u, 21u)], var_1.b.x), var_1.c), true), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_1.a.x, -8400i)), func_2(-1i, Struct_1(vec3<i32>(2147483647i, 1203i, var_1.a.x), vec2<bool>(global0[_wgslsmith_index_u32(5318u, 21u)], true), var_1.c), var_1.c.x, vec3<i32>(36682i, u_input.a, var_0)), vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, 546f)), Struct_3(func_2(u_input.a, Struct_1(vec3<i32>(40170i, u_input.a, 0i), vec2<bool>(var_1.b.x, var_1.b.x), vec3<f32>(1430f, 838f, -293f)), var_1.c.x, vec3<i32>(-1i, var_1.a.x, u_input.b)), !global0[_wgslsmith_index_u32(4294967295u, 21u)]))), -241f, global0[_wgslsmith_index_u32(~(~(~7978u)) & _wgslsmith_sub_u32(~abs(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(35010u, 1u, 4294967295u), vec3<u32>(1u, 27576u, 0u))), 21u)], Struct_3(func_2((var_1.a.x & -1i) >> (func_4(Struct_3(Struct_1(var_1.a, var_1.b, vec3<f32>(109f, var_1.c.x, -741f)), var_1.b.x), Struct_2(var_1.a.zx, Struct_1(var_1.a, var_1.b, var_1.c), vec4<f32>(var_1.c.x, 662f, -505f, var_1.c.x)), Struct_3(Struct_1(vec3<i32>(1i, -27947i, -1i), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 21u)]), var_1.c), var_1.b.x)).x % 32u), Struct_1(countOneBits(vec3<i32>(var_0, var_0, -2147483647i)), var_1.b, _wgslsmith_f_op_vec3_f32(floor(var_1.c))), var_1.c.x, firstTrailingBit(~var_1.a)), select(true, !(false && var_1.b.x), var_1.b.x)));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_mult_vec4_i32(~max(countOneBits(-vec4<i32>(0i, arg_1.a.x, u_input.a, 1i)), vec4<i32>(-1i, -2147483647i, arg_0.x, ~arg_1.a.x)), reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.b, 30208i, -1i, u_input.a)));
    var var_2 = Struct_3(Struct_1(firstLeadingBit(arg_3.a), func_2(var_1.x, func_1(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.c.x * arg_3.c.x))), select(firstLeadingBit(vec3<i32>(2147483647i, 34039i, var_1.x)), -vec3<i32>(2147483647i, -1i, 2147483647i), var_1.x < 1i)).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-466f, arg_3.c.x, -625f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-346f, -625f, arg_3.c.x))))), all(!vec4<bool>(true, true, true, any(vec4<bool>(true, arg_3.b.x, true, arg_3.b.x)))));
    let var_3 = func_6(Struct_2(-(~arg_3.a.yz | ~var_2.a.a.xy), func_5(Struct_1(vec3<i32>(var_2.a.a.x, -1i, arg_3.a.x) & arg_0, !arg_3.b, _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.c.x, 501f, arg_1.c.x), vec3<f32>(arg_3.c.x, arg_1.c.x, 316f))), vec4<u32>(_wgslsmith_mult_u32(arg_2.x, arg_2.x), firstLeadingBit(arg_2.x), ~arg_2.x, _wgslsmith_div_u32(0u, arg_2.x))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, -564f, -502f, var_2.a.c.x) * vec4<f32>(417f, arg_1.c.x, -106f, 123f))))), _wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.c.x)) + _wgslsmith_f_op_f32(-arg_3.c.x)))), (-816f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_2.a.c.x)), -323f, func_2(var_2.a.a.x, Struct_1(arg_1.a, vec2<bool>(false, arg_1.b.x), vec3<f32>(arg_1.c.x, -1000f, -1224f)), 1064f, vec3<i32>(var_2.a.a.x, -25786i, -37014i)).b.x))) | !(arg_3.b.x | all(vec3<bool>(false, arg_1.b.x, arg_3.b.x))), Struct_3(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-44042i, u_input.a, u_input.b), vec3<i32>(arg_0.x, -27245i, 1i)), select(vec2<bool>(var_2.b, true), select(arg_1.b, vec2<bool>(false, arg_1.b.x), arg_3.b.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 25037u), arg_2), 21u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_2.a.c, vec3<f32>(arg_3.c.x, 1635f, -837f)), _wgslsmith_f_op_vec3_f32(arg_1.c - var_2.a.c), all(arg_3.b)))), true));
    let var_4 = _wgslsmith_mult_vec2_i32(max(var_3.a.xz, vec2<i32>(-arg_0.x, 2147483647i)), ~(-(vec2<i32>(-1i, u_input.a) | vec2<i32>(-44076i, -4186i)) & vec2<i32>(var_1.x, ~(-2147483647i))));
    return Struct_2(func_3(func_5(arg_3, _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 37630u, arg_2.x, arg_2.x)), abs(vec4<u32>(arg_2.x, 4294967295u, 16265u, arg_2.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 4294967295u), vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 0u, 19971u), vec3<u32>(0u, arg_2.x, arg_2.x)), abs(vec3<u32>(4294967295u, 11333u, 31657u))), ~vec3<u32>(0u, arg_2.x, arg_2.x) & _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, arg_2.x), vec3<u32>(1u, arg_2.x, arg_2.x)))), func_6(func_5(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 18079i, -1i), vec3<i32>(-41497i, 6719i, var_1.x), arg_3.a), var_2.a.b, _wgslsmith_f_op_vec3_f32(-arg_3.c)), abs(~vec4<u32>(arg_2.x, 4294967295u, 1u, 67528u))), _wgslsmith_f_op_f32(func_1().c.x + 322f), all(vec2<bool>(true, false)), Struct_3(var_3, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.c.x))), _wgslsmith_f_op_f32(max(929f, var_2.a.c.x)), -1119f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-945f, 1912f, arg_1.c.x, -172f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, -250f, -442f, 1000f) * vec4<f32>(629f, 2300f, 1082f, arg_1.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(firstLeadingBit(select(~countOneBits(vec3<i32>(u_input.b, u_input.b, -2147483647i)), vec3<i32>(abs(u_input.a), _wgslsmith_clamp_i32(u_input.a, 81673i, -51072i), u_input.b), true)), func_1(), vec2<u32>(1u, 1u), Struct_1(select(vec3<i32>(select(1i, u_input.b, global0[_wgslsmith_index_u32(0u, 21u)]), func_2(u_input.a, Struct_1(vec3<i32>(u_input.a, 0i, 35052i), vec2<bool>(false, true), vec3<f32>(752f, 1272f, -909f)), 1449f, vec3<i32>(-56850i, u_input.b, u_input.a)).a.x, func_3(Struct_2(vec2<i32>(-48898i, u_input.b), Struct_1(vec3<i32>(u_input.a, 29531i, u_input.a), vec2<bool>(false, true), vec3<f32>(-1000f, -556f, 1112f)), vec4<f32>(-398f, 2142f, -131f, -159f)), vec3<u32>(80038u, 17161u, 1u)).x), ~(~vec3<i32>(u_input.a, u_input.b, 1i)), true), !vec2<bool>(global0[_wgslsmith_index_u32(93934u, 21u)], global0[_wgslsmith_index_u32(3994u, 21u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1425f, -319f)), _wgslsmith_f_op_f32(-662f + 2313f), _wgslsmith_f_op_f32(1286f + -730f)))));
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    var_0 = Struct_2(func_6(Struct_2(vec2<i32>(1i, -u_input.b), func_6(func_7(var_0.b.a, Struct_1(vec3<i32>(2147483647i, var_0.b.a.x, 0i), vec2<bool>(global0[_wgslsmith_index_u32(27872u, 21u)], true), var_0.b.c), vec2<u32>(1u, 46709u), var_0.b), _wgslsmith_f_op_f32(534f * var_0.c.x), global0[_wgslsmith_index_u32(4294967295u, 21u)] || global0[_wgslsmith_index_u32(0u, 21u)], Struct_3(var_0.b, var_0.b.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c))), _wgslsmith_div_f32(var_0.b.c.x, -492f), false, Struct_3(var_0.b, func_2(var_0.a.x, Struct_1(var_0.b.a, var_0.b.b, vec3<f32>(-1068f, var_0.c.x, 1003f)), var_0.b.c.x, vec3<i32>(-14546i, 1i, u_input.a)).b.x | true)).a.xy, var_0.b, _wgslsmith_f_op_vec4_f32(floor(var_0.c)));
    let var_1 = !(func_2(-u_input.a, Struct_1(~vec3<i32>(var_0.b.a.x, u_input.b, var_0.b.a.x), var_0.b.b, var_0.b.c), _wgslsmith_f_op_f32(ceil(116f)), var_0.b.a & vec3<i32>(22569i, u_input.b, u_input.b)).b.x & var_0.b.b.x);
    let var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) ^ vec4<u32>(countOneBits(~0u), 1u, ~firstLeadingBit(4650u), ~_wgslsmith_add_u32(0u, 73403u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(0u, 4294967295u, 4294967295u, 0u))), 60145u, _wgslsmith_mod_u32(~1u, 6357u), 4294967295u));
    var_0 = Struct_2(vec2<i32>(abs(~func_2(u_input.b, var_0.b, var_0.c.x, var_0.b.a).a.x), u_input.b), Struct_1(func_2(-25109i, Struct_1(vec3<i32>(1i, -54747i, var_0.b.a.x), vec2<bool>(var_1, true), vec3<f32>(266f, 276f, var_0.c.x)), _wgslsmith_div_f32(var_0.b.c.x, 511f), -vec3<i32>(55243i, -2147483647i, 1i)).a ^ (-vec3<i32>(u_input.a, 22103i, var_0.a.x) & vec3<i32>(var_0.a.x, -2147483647i, -37336i)), !func_1().b, vec3<f32>(222f, _wgslsmith_f_op_f32(-var_0.c.x), var_0.b.c.x)), var_0.c);
    var_0 = func_7(var_0.b.a, func_1(), vec2<u32>(1u, firstLeadingBit(4294967295u | var_2) >> (abs(var_2) % 32u)), func_7(vec3<i32>(~var_0.b.a.x & firstLeadingBit(-1i), var_0.b.a.x ^ -1i, u_input.a), func_5(Struct_1(firstLeadingBit(var_0.b.a), vec2<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.x, -1663f, 1000f), var_0.b.c))), ~vec4<u32>(4294967295u, var_2, 1u, var_2)).b, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, abs(var_2)), _wgslsmith_sub_vec2_u32(vec2<u32>(27365u, var_2) | vec2<u32>(var_2, 0u), firstLeadingBit(vec2<u32>(75926u, var_2))), reverseBits(vec2<u32>(1u, 40304u))), Struct_1(vec3<i32>(_wgslsmith_add_i32(u_input.b, var_0.b.a.x), abs(-2147483647i), var_0.b.a.x), vec2<bool>(!var_0.b.b.x, false), vec3<f32>(_wgslsmith_f_op_f32(-264f * var_0.b.c.x), -490f, _wgslsmith_f_op_f32(f32(-1f) * -1549f)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(var_0.a, abs(vec2<i32>(u_input.a, -12008i) ^ (vec2<i32>(var_0.b.a.x, u_input.a) | var_0.b.a.xy))), _wgslsmith_f_op_f32(-var_0.b.c.x), ~vec2<u32>(var_2, select(4294967295u, 0u, true)), 41295u, vec3<i32>(var_0.b.a.x, -53487i, -32026i));
}


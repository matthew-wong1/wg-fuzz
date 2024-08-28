struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = !arg_2.c;
    var_0 = !select(true, 1u <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(11229u, 22380u)), arg_2.a);
    var var_1 = ~min(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 35020u), vec2<u32>(1u, 1u)));
    return max(_wgslsmith_add_u32(8068u, select(abs(33683u), 4294967295u ^ var_1.x, all(vec4<bool>(false, arg_2.c, false, arg_2.c)))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.x, var_1.x, 37212u, 3135u) >> (vec4<u32>(4294967295u, 0u, var_1.x, var_1.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_1.x, var_1.x, 1u), vec4<bool>(false, true, arg_2.c, arg_2.c)), ~vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x))) > 44944u;
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global0 = true;
    global0 = false;
    global0 = func_3(u_input.a.x, i32(-1i) * -38558i, Struct_2(!any(vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.a.x, u_input.a.x, 29598i) ^ vec3<i32>(u_input.a.x, u_input.a.x, -12236i), -vec3<i32>(15627i, -27051i, -1i)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(arg_0, u_input.a.x, arg_0)))), true));
    global0 = u_input.a.x > reverseBits(-15604i >> (firstLeadingBit(firstTrailingBit(45119u)) % 32u));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(1360f + -2038f), _wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1304f * -803f), _wgslsmith_f_op_f32(f32(-1f) * -1478f))))));
    return vec3<f32>(1713f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(604f * 436f));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(!(34117u >= ~arg_2.b), vec3<i32>(u_input.a.x, ~min(~(-2147483647i), u_input.a.x), ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, -41289i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 54912i, 0i)), ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, -87807i))), arg_2.e);
    global0 = select(-2147483647i >= u_input.a.x, false, !(arg_1.x >= arg_1.x));
    global0 = var_0.a;
    global0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), 4294967295u, arg_2.c, -234f, !arg_2.e);
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global0 = all(vec2<bool>(any(select(vec2<bool>(arg_0.c, arg_0.a), vec2<bool>(arg_2.e, true), true)) && (_wgslsmith_f_op_f32(min(arg_1, 1293f)) <= _wgslsmith_f_op_f32(-237f + -388f)), (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -8339i), arg_0.b) & -1i) == _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.b.xy, arg_0.b.xy), max(vec2<i32>(21157i, arg_0.b.x), vec2<i32>(u_input.a.x, u_input.a.x)))));
    global0 = arg_0.c;
    global0 = arg_0.a;
    var var_0 = Struct_2(false, arg_0.b, arg_0.a);
    global0 = var_0.c;
    return arg_2;
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    let var_0 = ~firstTrailingBit(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_add_u32(0u, 12362u)), 4294967295u));
    let var_1 = func_5(Struct_2(true, _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.a.x, 2147483647i, -2147483647i), ~vec3<i32>(41691i, 2147483647i, 25619i), true), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, 0i, u_input.a.x))), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-708f + -734f)))), func_4(arg_0.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-938f, _wgslsmith_f_op_f32(ceil(-1340f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-810f, 853f), _wgslsmith_div_vec2_f32(vec2<f32>(-1254f, -365f), vec2<f32>(-791f, 1034f)), arg_0.zz))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1016f)) - -849f), 4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(363f, -610f, 635f) * _wgslsmith_f_op_vec3_f32(func_2(104335i))), 1194f, _wgslsmith_f_op_f32(sign(2117f)) <= -630f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))));
    return 25948u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(~func_1(vec3<bool>(false, false, true)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(47092u, 1u, 80707u, 1u))), ~_wgslsmith_add_u32(1u, 0u))), ~_wgslsmith_add_u32(1u, 1u));
    global0 = func_3(countOneBits(-18904i) | ~_wgslsmith_sub_i32(~u_input.a.x, -u_input.a.x), -2147483647i, Struct_2(true, vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(max(0i, u_input.a.x), u_input.a.x), -u_input.a.x), true));
    let var_1 = Struct_2(true, vec3<i32>(u_input.a.x, 14227i, ~u_input.a.x), true);
    global0 = !var_1.c & var_1.a;
    let var_2 = ~var_0.x;
    var var_3 = Struct_1(-1000f, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_0.x, var_2, 1u)), ~vec4<u32>(16087u, 15525u, var_0.x, var_2))), var_0.x, max(var_0.x, 31665u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), !(u_input.a.x >= _wgslsmith_mult_i32(~17924i, _wgslsmith_sub_i32(0i, u_input.a.x))));
    let var_4 = var_3.d;
    var var_5 = -25620i;
    let x = u_input.a;
    s_output = StorageBuffer(-951f, var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.c.x)) + _wgslsmith_f_op_f32(-130f - 603f)), var_3.c.x);
}


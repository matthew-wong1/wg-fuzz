struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global1: array<vec2<i32>, 15>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_3(-u_input.d);
    var var_1 = _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(-1i), firstTrailingBit(20683i)), u_input.e, u_input.d.x, -11364i)), ~select(max(vec4<i32>(u_input.e, 3149i, u_input.b, -2147483647i), vec4<i32>(9869i, u_input.e, u_input.e, global0.x)), vec4<i32>(-2147483647i, var_0.a.x, global0.x, 2147483647i), all(vec3<bool>(true, true, arg_0))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(29820u, u_input.a.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(16736u, 76192u)) >> (97095u % 32u), ~0u, ~u_input.c.x) % vec4<u32>(32u)));
    var_1 = 101966i;
    var_0 = Struct_3((select(_wgslsmith_mod_vec3_i32(var_0.a, u_input.d), ~var_0.a, vec3<bool>(arg_0, true, arg_0)) & _wgslsmith_clamp_vec3_i32(select(vec3<i32>(global0.x, -11361i, var_0.a.x), vec3<i32>(1i, u_input.b, u_input.d.x), vec3<bool>(false, arg_0, false)), vec3<i32>(-10007i, 25194i, -2147483647i), ~vec3<i32>(-2147483647i, 15156i, var_0.a.x))) ^ max(vec3<i32>(~var_0.a.x, select(29032i, global0.x, arg_0), max(u_input.b, var_0.a.x)), firstTrailingBit(-var_0.a)));
    var var_2 = ((abs(-vec4<i32>(global0.x, 2147483647i, -1i, u_input.e)) | (_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -2147483647i, 12967i), vec4<i32>(u_input.b, global0.x, global0.x, var_0.a.x)) & vec4<i32>(2147483647i, 1i, -57657i, 1i))) << (vec4<u32>(~4294967295u, u_input.c.x ^ abs(u_input.a.x), _wgslsmith_div_u32(firstTrailingBit(u_input.c.x), 1u), ~(~0u)) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, 23135u, u_input.a.x, u_input.a.x ^ u_input.c.x) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(1263f, 526f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, 302f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(871f, -1297f), vec2<f32>(-607f, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, 319f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: bool) -> vec3<bool> {
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_div_vec3_i32(-(u_input.d ^ ~vec3<i32>(u_input.d.x, arg_0.c, -32842i)) & u_input.d, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 2147483647i, 1i, 33924i), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, arg_0.c, global0.x, global0.x), select(vec4<i32>(global0.x, 9782i, u_input.e, -31537i), vec4<i32>(arg_0.c, u_input.e, arg_0.c, u_input.d.x), false))), arg_0.c, _wgslsmith_mod_i32(-arg_0.c, u_input.e)));
    let var_2 = Struct_4(min(_wgslsmith_div_i32(~(-20225i >> (u_input.c.x % 32u)), -1i), min(_wgslsmith_dot_vec3_i32(var_1, -vec3<i32>(u_input.d.x, -10322i, 39044i)), ~u_input.b << (~u_input.c.x % 32u))));
    global0 = u_input.d.yz;
    let var_3 = arg_0;
    return select(vec3<bool>(arg_2, true, select(true, false, any(vec2<bool>(true, true)))), select(var_3.b, var_3.b, true), vec3<bool>(false, !any(var_0.xx), true));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = vec2<i32>(1i, _wgslsmith_mult_i32(-28848i, global0.x));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1344f, arg_0), _wgslsmith_div_vec2_f32(vec2<f32>(-659f, arg_0), vec2<f32>(arg_0, arg_0)))))), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(652f, -162f)) + _wgslsmith_f_op_vec2_f32(func_3(true))), vec3<bool>(all(vec2<bool>(false, false)), true, true), 14351i), -1879f, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))), ((u_input.a.x ^ u_input.c.x) > _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) || true), _wgslsmith_mod_i32(global0.x, -2147483647i));
    var var_1 = !(!vec3<bool>(true, false, var_0.b.x));
    var var_2 = -_wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(-57102i, 2147483647i, var_0.c))) >> (select(_wgslsmith_add_vec3_u32(vec3<u32>(8064u, u_input.a.x, u_input.a.x), vec3<u32>(0u, 36977u, u_input.a.x)), vec3<u32>(u_input.a.x, 13980u, u_input.a.x) & vec3<u32>(4294967295u, u_input.a.x, 4294967295u), func_4(Struct_1(var_0.a, vec3<bool>(true, var_0.b.x, true), -900i), arg_0, var_0.b.x, false)) % vec3<u32>(32u)), u_input.d);
    var_1 = func_4(Struct_1(var_0.a, !(!var_0.b), _wgslsmith_mod_i32(-firstLeadingBit(var_2.x), abs(-1i))), var_0.a.x, true, true);
    return Struct_4(reverseBits(var_2.x));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_1) -> vec3<i32> {
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(-6148i), u_input.e), global1[_wgslsmith_index_u32(0u, 15u)]);
    var var_0 = !arg_3.b.x;
    var var_1 = ~36689i;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(sign(arg_1.x)), -1443f) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, 384f, _wgslsmith_f_op_f32(arg_1.x - arg_3.a.x))))));
    let var_3 = Struct_3(u_input.d);
    return countOneBits(~u_input.d);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    global1 = array<vec2<i32>, 15>();
    var var_0 = 2147483647i;
    var var_1 = vec4<bool>(true, any(vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), arg_1.x, select(any(vec2<bool>(arg_0.b.x, all(vec2<bool>(arg_1.x, true)))), !(true != arg_3), !all(vec4<bool>(arg_0.b.x, false, true, true)) | (any(arg_0.b.zx) | true)));
    let var_2 = _wgslsmith_f_op_f32(round(arg_0.a.x));
    var var_3 = u_input.d;
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = func_6(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 633f), vec3<bool>(true, true, true), 21084i), !vec2<bool>(true, true || any(vec4<bool>(true, true, false, false))), Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -2147483647i, _wgslsmith_mult_i32(u_input.b, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -4563i, u_input.d.x), -vec3<i32>(-4429i, 41141i, u_input.e), -u_input.d), func_5(4294967295u & u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-246f, -1525f, -2150f, -247f) * vec4<f32>(-884f, -1000f, 1131f, -1000f)), func_2(-620f), Struct_1(vec2<f32>(1338f, -1000f), vec3<bool>(false, true, true), global0.x)))), false);
    let var_1 = -2147483647i;
    global0 = firstTrailingBit(~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d.yx, _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), -u_input.d.xx));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))))) * var_0.a.x);
    var_2 = _wgslsmith_f_op_f32(var_0.a.x + -546f);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 15>();
    var var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_1()), 3831u, ~select(u_input.a, ~u_input.c, vec2<bool>(false, false)) & _wgslsmith_add_vec2_u32(~vec2<u32>(34517u, 1u), vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, 1u), vec3<u32>(45666u, 5126u, u_input.c.x)))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~51328u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c.x), vec3<u32>(u_input.a.x, 0u, 69397u)), 0u), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~u_input.c.x, firstLeadingBit(u_input.a.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x) << ((vec3<u32>(u_input.c.x, 4511u, u_input.c.x) & vec3<u32>(60015u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 42644u)))), ~u_input.a.x);
}


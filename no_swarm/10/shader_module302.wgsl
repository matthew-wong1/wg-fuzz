struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(1i, 60364i, 2147483647i, -1i), false), -65006i, -1i, vec4<u32>(1u, 31976u, 0u, 4294967295u)), 618f, Struct_1(vec4<i32>(i32(-2147483648), -44148i, 32468i, 1i), true), Struct_2(Struct_1(vec4<i32>(-83936i, -37972i, 13513i, -1i), false), 1i, -49574i, vec4<u32>(3386u, 80129u, 16439u, 4294967295u)), vec4<f32>(1000f, -2055f, 1959f, -1266f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = global1.a;
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var_0 = global1.a;
    global0 = ~25297i;
    return true;
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = ~u_input.c;
    let var_1 = true;
    global1 = Struct_3(global1.a, -395f, global1.c, global1.a, global1.e);
    let var_2 = vec4<i32>(-(~_wgslsmith_dot_vec3_i32(~global1.c.a.zxy, global1.d.a.a.xzy)), countOneBits(0i), global1.c.a.x, _wgslsmith_clamp_i32((i32(-1i) * -u_input.b) << (reverseBits(~50797u) % 32u), -2147483647i, -31272i));
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32((_wgslsmith_div_vec4_i32(global1.c.a, vec4<i32>(-41729i, global1.a.b, -2147483647i, global1.a.b)) ^ global1.d.a.a) ^ vec4<i32>(_wgslsmith_mod_i32(global1.d.c, var_2.x), 18153i, _wgslsmith_dot_vec3_i32(global1.d.a.a.yyx, vec3<i32>(1i, u_input.b, u_input.a)), -2147483647i), _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.c.a.x, 1i, u_input.a, -1i), vec4<i32>(-1i, var_2.x, var_2.x, global1.c.a.x)), min(vec4<i32>(1i, -2147483647i, 0i, u_input.a), vec4<i32>(u_input.b, 0i, global1.a.c, global1.a.c)) << (firstTrailingBit(vec4<u32>(u_input.c, 0u, 1u, 4294967295u)) % vec4<u32>(32u)))), var_1);
    return ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(max(var_2.x, var_3.a.x), _wgslsmith_mod_i32(25954i, -2147483647i)) << (var_0 % 32u), countOneBits(u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = vec3<f32>(270f, _wgslsmith_f_op_f32(-global1.e.x), -1018f);
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_clamp_vec2_u32(~arg_0.a.d.wz, ~_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d.d.x, 1u), vec2<u32>(arg_0.d.d.x, u_input.c)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a.d.yz, vec2<u32>(4294967295u, 1u)), global1.a.d.yx)), ~vec2<u32>(~12559u, u_input.c));
    var var_3 = arg_0.a.a.a;
    global1 = Struct_3(arg_0.a, _wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(f32(-1f) * -184f)))), Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(global1.c.a, vec4<i32>(1i, -11747i, -5334i, var_3.x)) >> (~arg_0.a.d % vec4<u32>(32u))), true), Struct_2(Struct_1(vec4<i32>(u_input.b, var_3.x, -var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.a.x, 0i, arg_2), global1.a.a.a.wwz)), false), _wgslsmith_add_i32(-75517i & ~var_3.x, arg_0.c.a.x), ~u_input.b, vec4<u32>(101521u, ~var_2.x | 14527u, 18493u, firstTrailingBit(~var_2.x))), _wgslsmith_f_op_vec4_f32(-global1.e));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> vec2<bool> {
    global1 = arg_1;
    let var_0 = func_4(arg_1, vec4<bool>(global1.a.a.b, func_2(!arg_1.c.b, select(-41605i, select(u_input.a, 13113i, true), global1.c.b)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)) <= global1.e.x), arg_1.a.a.a.x, _wgslsmith_add_vec3_i32(min(arg_1.a.a.a.xxy, arg_1.d.a.a.zyw), vec3<i32>(~func_3(u_input.c), global1.a.b, u_input.b)));
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -var_0.c.a.zyz, ~(-vec3<i32>(14885i, global1.c.a.x, var_0.a.b))) | ((_wgslsmith_div_i32(func_4(Struct_3(Struct_2(var_0.a.a, arg_1.a.b, 2147483647i, var_0.d.d), var_0.e.x, global1.a.a, Struct_2(arg_1.a.a, -8270i, arg_1.c.a.x, vec4<u32>(var_0.d.d.x, u_input.c, 0u, arg_1.d.d.x)), vec4<f32>(-123f, var_0.e.x, -674f, 1424f)), vec4<bool>(global1.a.a.b, false, var_0.a.a.b, true), arg_1.d.a.a.x, global1.d.a.a.xzz).a.a.a.x, u_input.b) ^ ~arg_1.a.a.a.x) << (_wgslsmith_div_u32(arg_1.a.d.x, firstTrailingBit(1u)) % 32u));
    global1 = Struct_3(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_1.e.x) * _wgslsmith_f_op_f32(floor(arg_0.x))))) * _wgslsmith_f_op_f32(global1.b + 554f)), global1.c, arg_1.d, vec4<f32>(-445f, _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(ceil(1737f))), _wgslsmith_f_op_f32(1000f + arg_1.b), -1000f));
    let var_2 = !select(select(vec2<bool>(true, true), !(!vec2<bool>(arg_1.a.a.b, var_0.c.b)), vec2<bool>(all(vec4<bool>(arg_1.a.a.b, true, true, false)), all(vec3<bool>(false, var_0.c.b, true)))), !vec2<bool>(!global1.d.a.b, false), func_2(true, u_input.b));
    return !var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(!func_1(vec2<f32>(global1.e.x, -1376f), Struct_3(global1.d, -437f, global1.a.a, global1.a, global1.e)), vec2<bool>(u_input.c == global1.a.d.x, !global1.a.a.b), !(true | global1.d.a.b)), vec2<bool>(global1.d.a.b, any(!vec3<bool>(global1.d.a.b, true, global1.c.b)) || func_2(func_1(global1.e.yx, Struct_3(Struct_2(global1.a.a, 2147483647i, 530i, global1.a.d), -1064f, Struct_1(global1.d.a.a, global1.c.b), Struct_2(global1.a.a, u_input.a, 2147483647i, global1.d.d), global1.e)).x, ~(-655i))), all(!vec4<bool>(true, true, true, select(true, global1.c.b, true))));
    let var_1 = global1.e;
    let var_2 = select(select(!(!(!vec3<bool>(global1.c.b, global1.a.a.b, global1.a.a.b))), vec3<bool>(true, func_1(_wgslsmith_f_op_vec2_f32(round(var_1.xx)), func_4(Struct_3(Struct_2(global1.c, u_input.a, u_input.b, global1.a.d), 365f, Struct_1(global1.d.a.a, false), Struct_2(global1.a.a, -4850i, -23075i, global1.d.d), global1.e), vec4<bool>(false, var_0.x, true, false), global1.d.c, global1.c.a.zxy)).x, any(select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x), true))), global1.a.a.b), !(!select(select(vec3<bool>(false, true, global1.c.b), vec3<bool>(false, var_0.x, global1.a.a.b), vec3<bool>(var_0.x, global1.c.b, global1.c.b)), select(vec3<bool>(global1.a.a.b, false, global1.c.b), vec3<bool>(true, global1.d.a.b, false), global1.a.a.b), !vec3<bool>(false, var_0.x, var_0.x))), !(var_0.x & var_0.x));
    var var_3 = Struct_1(~(~select(-vec4<i32>(-19714i, -4342i, global1.c.a.x, 2147483647i), _wgslsmith_mult_vec4_i32(global1.d.a.a, global1.a.a.a), !vec4<bool>(var_0.x, false, global1.a.a.b, false))), true);
    var var_4 = ~(~(~global1.d.d.xw & global1.a.d.wz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mod_u32(~(~36138u), 37449u), ~(~24922u)));
}


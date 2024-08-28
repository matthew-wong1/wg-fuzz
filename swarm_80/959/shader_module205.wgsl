struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true));

var<private> global1: Struct_1;

var<private> global2: u32 = 13617u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = firstTrailingBit(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, arg_2.c.x, 53226u, arg_2.c.x), vec4<u32>(38094u, global1.c.x, 1u, 31353u)) ^ 1u));
    return ((_wgslsmith_div_f32(-795f, _wgslsmith_f_op_f32(arg_1.a.x * 914f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) + _wgslsmith_f_op_f32(sign(arg_2.a.x)))) && true) || (global1.c.x < 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = global1.b;
    var var_1 = 53996i;
    var var_2 = arg_3;
    var var_3 = arg_2;
    global2 = _wgslsmith_dot_vec3_u32(max(global1.c, select(abs(arg_3.c), global1.c << (vec3<u32>(global1.c.x, arg_3.c.x, 46464u) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, true), vec3<bool>(true, false, arg_1)))), ~_wgslsmith_add_vec3_u32(global1.c, global1.c) & vec3<u32>(arg_3.c.x, ~0u, ~20311u)) ^ (~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 18085u, 0u, 0u), vec4<u32>(var_2.c.x, 1u, 2722u, global1.c.x)), ~global1.c.x) & arg_0.c.x);
    return (var_3.x >> (~max(~489u, arg_3.c.x) % 32u)) >> (_wgslsmith_dot_vec3_u32(reverseBits(~_wgslsmith_add_vec3_u32(arg_0.c, vec3<u32>(4294967295u, 3290u, 1u))), vec3<u32>(firstLeadingBit(0u) >> (var_2.c.x % 32u), ~0u, ~(~arg_0.c.x))) % 32u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<i32>(~abs(global1.b), func_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(f32(-1f) * -843f), -1000f), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 0i, 17280i, 12977i)), -vec4<i32>(global1.b, u_input.a.x, u_input.a.x, 11158i)), ~(~global1.c)), !arg_0, _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, -1i, -1i, u_input.a.x), vec4<i32>(-2147483647i, 26072i, u_input.a.x, -1i)), vec4<i32>(-60772i, global1.b, global1.b, global1.b) >> (firstTrailingBit(vec4<u32>(0u, 27259u, 18081u, 1u)) % vec4<u32>(32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(-798f)), -962f, -1000f), select(~(-1i), i32(-1i) * -2147483647i, true), ~(global1.c >> (global1.c % vec3<u32>(32u))))));
    let var_1 = min(15312i, global1.b);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 492f, global1.a.x) - global1.a), select(vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, arg_0), false))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.a.x)), global1.a.x, 1154f))), _wgslsmith_sub_i32(~(-_wgslsmith_mult_i32(-1i, 0i)), -var_0.x), global1.c);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(670f)), _wgslsmith_f_op_f32(trunc(global1.a.x)))), _wgslsmith_f_op_f32(-global1.a.x), global1.a.x) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(-1000f, -1236f, var_2.a.x)) + vec3<f32>(552f, -1000f, var_2.a.x)), global1.a))), 43390i, global1.c);
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a >> (vec2<u32>(28684u ^ var_3.c.x, 19858u) % vec2<u32>(32u)), u_input.a), firstTrailingBit(u_input.a));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(!func_1(Struct_1(global1.a, u_input.a.x, global1.c), Struct_1(vec3<f32>(global1.a.x, 1086f, global1.a.x), global1.b, global1.c), Struct_1(vec3<f32>(-603f, 129f, 1561f), u_input.a.x, global1.c), global1.c.x)), _wgslsmith_div_i32(-19324i, _wgslsmith_mod_i32(-1i, max(0i, global1.b))) <= -9093i, false);
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(global1.c.x ^ ~14324u, 1u), 1u), global1.c.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(global1.a.x, 727f, -182f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 695f, global1.a.x) - vec3<f32>(-1000f, 220f, 344f)))))), max(-1i, -reverseBits(u_input.a.x)), global1.c);
    var_2 = func_2(all(vec3<bool>(var_0.x, u_input.a.x < _wgslsmith_sub_i32(11374i, var_2.b), var_0.x)));
    let var_3 = func_2(false).a.x;
    let var_4 = Struct_1(var_2.a, reverseBits(_wgslsmith_clamp_i32(u_input.a.x, 1i, -38823i)), global1.c);
    var var_5 = -_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, _wgslsmith_mult_i32(~45740i, _wgslsmith_clamp_i32(var_4.b, var_2.b, u_input.a.x)), -2147483647i, -var_2.b), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a), var_2.b, global1.b, _wgslsmith_sub_i32(u_input.a.x ^ 2147483647i, func_2(false).b)));
    let var_6 = 0i;
    global0 = array<vec4<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(u_input.a.x << ((var_2.c.x << (15196u % 32u)) % 32u), _wgslsmith_add_i32(var_2.b >> (global1.c.x % 32u), -2147483647i), -29158i)));
}


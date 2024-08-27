struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-189f, -419f, 334f, -421f), vec4<f32>(-706f, -1685f, 2023f, 529f), vec4<f32>(-1972f, 943f, 1973f, 1000f), vec4<f32>(894f, 541f, -1413f, -781f), vec4<f32>(-160f, 442f, -1000f, -418f), vec4<f32>(162f, -1908f, 720f, -1123f), vec4<f32>(-318f, -504f, -1500f, 929f), vec4<f32>(215f, 1518f, -1486f, -743f), vec4<f32>(-2348f, 1905f, 1068f, 934f), vec4<f32>(1000f, -776f, 1212f, 2251f));

var<private> global1: bool = false;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: f32) -> u32 {
    var var_0 = !(u_input.b >= 0u);
    var var_1 = firstLeadingBit(_wgslsmith_mult_u32(firstLeadingBit(abs(4294967295u)) ^ _wgslsmith_add_u32(u_input.a.x, ~26809u), abs(~(~arg_2.b.x))));
    var var_2 = 4294967295u;
    global0 = array<vec4<f32>, 10>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~29513u, ~arg_2.b.x), vec2<u32>(45530u, (u_input.b ^ arg_2.b.x) | _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_2.b.x, 18587u)))), max(abs(select(abs(vec2<u32>(arg_2.b.x, 36373u)), arg_2.b.xz, false)), abs(firstLeadingBit(max(vec2<u32>(arg_2.b.x, arg_2.b.x), vec2<u32>(126467u, arg_2.b.x)))))), 10u)];
    return abs(select(~((0u & arg_2.b.x) ^ ~3792u), ~u_input.d.x, true));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = u_input.c.x;
    var var_1 = !(!vec3<bool>(false, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true));
    let var_2 = var_1.x;
    var var_3 = Struct_4(~countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(29715i, -65867i), u_input.c.xy), reverseBits(-6050i))), (~vec4<u32>(u_input.d.x, 5326u, arg_1, 1384u) ^ (~vec4<u32>(arg_2.x, 1u, arg_1, u_input.a.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(56258u, arg_1, arg_1, arg_2.x), vec4<u32>(arg_1, 53939u, 1u, arg_1)))) | ~vec4<u32>(firstLeadingBit(44972u), min(0u, 1u), select(arg_1, 70083u, true), ~arg_2.x));
    var var_4 = Struct_2(966f);
    return vec4<i32>(1i, -2147483647i, _wgslsmith_mod_i32(u_input.c.x, var_3.a), -112080i);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: f32) -> bool {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(exp2(arg_2.x))));
    var var_1 = Struct_1(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), true), ~10857u > (u_input.b >> (u_input.b % 32u))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true), true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), i32(-1i) * -_wgslsmith_mod_i32(countOneBits(arg_0.x), abs(u_input.c.x)), -max(_wgslsmith_add_i32(-22052i, -1i), arg_0.x) >> (u_input.b % 32u));
    global1 = var_1.a.x;
    var var_2 = false;
    global1 = 28432u > (firstTrailingBit(firstTrailingBit(_wgslsmith_mult_u32(u_input.d.x, u_input.a.x))) >> (u_input.a.x % 32u));
    return !var_1.a.x;
}

fn func_2(arg_0: f32) -> u32 {
    global0 = array<vec4<f32>, 10>();
    let var_0 = u_input.c.x | max(u_input.c.x, u_input.c.x);
    var var_1 = true;
    let var_2 = vec2<bool>(!(!any(vec2<bool>(true, true))), func_5(func_4(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(~u_input.d.x, 10u)])), func_3(u_input.c >> (vec4<u32>(u_input.a.x, u_input.b, 1u, 45602u) % vec4<u32>(32u)), vec3<f32>(arg_0, arg_0, arg_0), Struct_4(var_0, vec4<u32>(3959u, 34724u, u_input.b, u_input.b)), _wgslsmith_f_op_f32(trunc(248f))), ~vec3<u32>(0u, u_input.b, 17384u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1864f, 1000f, arg_0))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-360f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(trunc(arg_0))), vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0)))), 1000f));
    var var_3 = !var_2.x;
    return 1u ^ (u_input.d.x ^ ~(~(~u_input.b)));
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = u_input.c << (vec4<u32>(_wgslsmith_div_u32(select(~u_input.a.x, u_input.d.x, true), _wgslsmith_clamp_u32(u_input.a.x, func_2(112f), firstTrailingBit(4294967295u))), 0u, ~func_2(1123f), abs(17132u)) % vec4<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 10u)];
    let var_2 = (46817u ^ countOneBits(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(26760u, u_input.a.x)))) <= (~42856u >> (~u_input.a.x % 32u));
    let var_3 = true;
    let var_4 = var_3;
    return !(!all(vec2<bool>(false, true != var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(vec4<bool>(!(462f != _wgslsmith_f_op_f32(trunc(-230f))), func_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_i32(-u_input.c, ~vec4<i32>(-9263i, 25762i, u_input.c.x, -2147483647i))), false, true));
    var var_0 = i32(-1i) * -1i;
    let var_1 = Struct_1(!vec3<bool>(all(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), u_input.c.x, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(29849u, 10u)]) + global0[_wgslsmith_index_u32(u_input.b, 10u)]) - global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, u_input.d.x), 10u)]), ~u_input.d.x, ~vec3<u32>(_wgslsmith_add_u32(24611u, 53090u), u_input.d.x, u_input.d.x)).x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b) | u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1655f))), -234f)), 1f), u_input.c.xx, _wgslsmith_f_op_f32(abs(-1111f)));
}


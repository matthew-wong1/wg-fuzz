struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44052u;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(-1000f);
    var var_1 = arg_0.x;
    let var_2 = vec3<u32>(arg_3.x, 4294967295u, arg_0.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -1491f) + var_0.a)), 100f, (var_0.a < arg_1) == false)));
    let var_3 = vec2<bool>(true, true);
    return Struct_1(694f);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(arg_2, 35392i << (abs(~4294967295u) % 32u)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, _wgslsmith_div_f32(1000f, global1.a)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, arg_1.a)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(304f, global1.a)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-284f, arg_3))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-var_2.x)))));
    let var_4 = var_1;
    return var_3.a;
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_1(global1.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 10717u, 21493u, 4294967295u), vec4<u32>(35830u, 45915u, 4294967295u, 20308u)), -957f, firstLeadingBit(45284u), ~vec3<u32>(11390u, 6356u, 0u)), Struct_1(_wgslsmith_f_op_f32(1000f * var_0.a)), arg_0.x, 2259f)), -746f, global1.a) - _wgslsmith_div_vec4_f32(vec4<f32>(2380f, -1223f, var_0.a, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-global1.a))), vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global1.a)), var_0.a, _wgslsmith_f_op_f32(1012f * global1.a), -192f)));
    let var_2 = firstLeadingBit(vec2<i32>(abs(0i | u_input.a), -1i));
    var var_3 = 2147483647i;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(step(var_1.x, var_0.a))) + _wgslsmith_f_op_f32(-global1.a)), global1.a)), 1f, -1676f, global1.a);
    return countOneBits(vec3<u32>(_wgslsmith_mult_u32(countOneBits(min(0u, 446u)), 1u), 1u, countOneBits(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = ~(~abs(abs(~4294967295u)));
    let var_1 = vec3<u32>(min(~(~(~19817u)), ~24092u), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(4876u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)), func_1(vec4<i32>(-u_input.a, _wgslsmith_add_i32(-31247i, -1i), 1i, min(1i, u_input.a)))), min(min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(53640u, 59382u), 1u, 1u), 0u), 1u));
    let var_2 = func_2(min(reverseBits(~vec4<u32>(0u, 41463u, var_1.x, var_1.x)), max(abs(vec4<u32>(73908u, var_1.x, 20727u, var_1.x)), vec4<u32>(1u, 0u, 109792u, var_1.x))) & vec4<u32>(var_1.x ^ ~57485u, ~var_1.x ^ var_1.x, var_1.x, 50107u), 404f, 0u | var_1.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(45910u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), var_1)), ~(~0u)), firstTrailingBit(_wgslsmith_add_vec3_u32(var_1 << (vec3<u32>(59033u, 4294967295u, var_1.x) % vec3<u32>(32u)), ~vec3<u32>(1u, 14540u, 2499u))), vec3<u32>(min(1u, _wgslsmith_sub_u32(var_1.x, var_1.x)), ~reverseBits(var_1.x), _wgslsmith_add_u32(select(var_1.x, var_1.x, false), var_1.x))));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, 2147483647i) >> (var_1.x % 32u), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), ~var_1.yy), reverseBits(~14299u)), ~var_1.yx, true || (_wgslsmith_dot_vec2_i32(vec2<i32>(var_3, -2147483647i), vec2<i32>(u_input.a, -13417i)) >= 15605i)), 90916u, -337f, var_1);
}


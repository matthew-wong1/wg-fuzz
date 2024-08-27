struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(495f, -1000f, 1000f, -487f), 4294967295u);

var<private> global1: array<i32, 2>;

var<private> global2: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = vec3<i32>(~(51926i << (select(max(4294967295u, 45481u), u_input.a, false) % 32u)), -43340i, -arg_3.x);
    let var_1 = arg_1.a;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1133f, -638f)))))), -1143f, 479f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 583f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - arg_2.x)))), reverseBits(1u & select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 0u, arg_1.b), vec3<u32>(arg_1.b, 13329u, u_input.b.x)), countOneBits(1u), arg_0 && true)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(global0.a)))), _wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) - global0.a)), true)), 1u);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.a.x))));
    return vec3<u32>(~_wgslsmith_clamp_u32(55814u, 1u, 133644u), _wgslsmith_sub_u32(~3554u, arg_1.b ^ abs(arg_1.b)), ~reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_2.b, 4294967295u), vec4<u32>(var_2.b, 4294967295u, var_2.b, arg_1.b))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> vec4<bool> {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.a.x))))), -1048f, -746f, _wgslsmith_f_op_f32(max(global0.a.x, global0.a.x))), arg_1);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)));
    global1 = array<i32, 2>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * global0.a), 25188u);
    let var_0 = vec3<u32>(~1u, arg_1 << (arg_2 % 32u), 41631u);
    return vec4<bool>(true, true, max(_wgslsmith_mod_i32(abs(global1[_wgslsmith_index_u32(26952u, 2u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(42188i, global1[_wgslsmith_index_u32(arg_2, 2u)]), vec2<i32>(1i, global1[_wgslsmith_index_u32(arg_0.x, 2u)]))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(22786u, 2u)], -2147483647i, 1i, -23141i), vec4<i32>(global1[_wgslsmith_index_u32(21023u, 2u)], global1[_wgslsmith_index_u32(global0.b, 2u)], -1i, 2147483647i))) > _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_1, 2u)] >> (76498u % 32u), _wgslsmith_sub_i32(firstLeadingBit(1i), -25238i)), true && !(!any(vec3<bool>(true, false, false))));
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 2>();
    let var_0 = select(func_4(func_3(all(vec2<bool>(false, false)), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), global0.b), _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1909f, global0.a.x, global0.a.x, global0.a.x)))), abs(-vec4<i32>(53637i, global1[_wgslsmith_index_u32(global0.b, 2u)], 0i, global1[_wgslsmith_index_u32(3690u, 2u)]))), 36920u, 4294967295u), select(func_4(vec3<u32>(36140u, ~24025u, _wgslsmith_add_u32(52860u, 0u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.b, 4294967295u, u_input.a), vec4<u32>(u_input.a, 43773u, u_input.b.x, 16852u)), 1u), select(vec4<bool>(true, true, true, true), func_4(vec3<u32>(4294967295u, u_input.b.x, 1u), _wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_mult_u32(u_input.a, 36636u)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(true, true, true, true)), true);
    global2 = _wgslsmith_f_op_f32(-global0.a.x);
    let var_1 = global1[_wgslsmith_index_u32(39148u, 2u)];
    let var_2 = global0.b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), 1u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = u_input.b;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2393f) - _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(global0.a.x + arg_1.a.x)));
    let var_1 = func_2();
    global0 = var_1;
    var var_2 = 39415u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))))));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_5(Struct_1(global0.a, 8879u), func_2(), vec3<u32>(global0.b, u_input.b.x, 1u))), _wgslsmith_f_op_f32(-898f + _wgslsmith_f_op_f32(f32(-1f) * -539f)), _wgslsmith_f_op_f32(min(global0.a.x, -477f)), global0.a.x), global0.a)), func_2().b);
    var var_1 = var_0;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) - -1926f))));
    let var_2 = _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-44540i, global1[_wgslsmith_index_u32(global0.b, 2u)], 38013i, global1[_wgslsmith_index_u32(var_1.b, 2u)]), vec4<i32>(6775i, global1[_wgslsmith_index_u32(global0.b, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(25967u, 2u)])), -global1[_wgslsmith_index_u32(var_0.b, 2u)], -global1[_wgslsmith_index_u32(1514u, 2u)]), vec3<i32>(17096i, _wgslsmith_div_i32(-40430i, 10096i), -1i)), global1[_wgslsmith_index_u32(4248u, 2u)]);
    var_1 = func_2();
    return ~(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, 1i, 1i, reverseBits(-14559i)), vec4<i32>(-2147483647i, abs(1i), _wgslsmith_mod_i32(1i, var_2), global1[_wgslsmith_index_u32(u_input.a, 2u)])) ^ ~(abs(vec4<i32>(2147483647i, -79426i, -1i, global1[_wgslsmith_index_u32(1u, 2u)])) << ((vec4<u32>(96075u, var_1.b, 14163u, 4294967295u) | vec4<u32>(1u, 78910u, 0u, 0u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1();
    var_1 = max(vec4<i32>(var_1.x, -1i, _wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 4294967295u, 0u), ~vec4<u32>(4294967295u, global0.b, global0.b, u_input.b.x)), 2u)]), countOneBits(-var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(max(2147483647i, global1[_wgslsmith_index_u32(global0.b, 2u)]), var_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1.x, var_1.x, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], var_1.x, var_1.x, -1i)), ~vec4<i32>(4774i, global1[_wgslsmith_index_u32(global0.b, 2u)], -39313i, global1[_wgslsmith_index_u32(global0.b, 2u)])), var_1.x), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(~global0.b, 2u)], 2147483647i, 2147483647i))));
    var_1 = func_1();
    var var_2 = firstTrailingBit(~(~vec3<u32>(~4294967295u, ~global0.b, 1u ^ global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x) * global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(-func_2().a.x))));
}


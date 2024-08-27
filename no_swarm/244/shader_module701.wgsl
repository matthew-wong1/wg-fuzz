struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(1i, 1i, i32(-2147483648), 1i, 1i, -2444i, 0i, 0i, -1354i, 2147483647i, -1i, 31919i, -18657i, -33111i, -18480i, 26488i, -8742i, 1i, i32(-2147483648), 0i, 0i, 5421i, 1i, -4627i, -7891i, -37577i, -11806i, 18555i, -23489i, 2147483647i, 9034i, -1i);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: i32) -> vec4<f32> {
    let var_0 = min(~u_input.a.zx, u_input.a.yx);
    let var_1 = max(vec3<u32>(_wgslsmith_mult_u32(var_0.x, ~26221u | ~var_0.x), ~(~0u), 4294967295u), vec3<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.a.x), ~30748u, var_0.x));
    var var_2 = Struct_1(global1.a, global1.b);
    var var_3 = arg_0.x;
    var var_4 = all(vec2<bool>(!all(vec4<bool>(true, arg_0.x, false, arg_0.x)), !select(true, all(vec3<bool>(true, true, arg_0.x)), false & arg_0.x)));
    return _wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(980f, global1.b.x, global1.b.x, -106f) + vec4<f32>(-544f, 2715f, -851f, -1000f)))) * var_2.b));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(min(global1.a, -vec2<i32>(countOneBits(global1.a.x), global1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 1076f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, -916f, 369f) + vec4<f32>(global1.b.x, -1292f, 119f, global1.b.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))))))));
    var var_1 = Struct_1(global1.a ^ var_0.a, vec4<f32>(var_0.b.x, _wgslsmith_div_f32(-424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * 480f) + _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f - -628f)) * global1.b.x)));
    let var_2 = Struct_1(-reverseBits(~(-var_1.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), ~firstLeadingBit(u_input.a.x), abs(_wgslsmith_clamp_i32(global1.a.x, -40083i, var_1.a.x)), _wgslsmith_mod_i32(var_1.a.x, 0i) << (firstTrailingBit(50158u) % 32u))), global1.b)));
    global0 = array<i32, 32>();
    var var_3 = !(!vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), true));
    return global1.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> vec4<u32> {
    global1 = Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global1.a.x), _wgslsmith_f_op_vec4_f32(func_2()));
    return abs(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, ~0u));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = arg_1.b.x;
    global1 = arg_1;
    global1 = arg_1;
    var var_1 = arg_1.a;
    let var_2 = Struct_1(select(global1.a, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global0[_wgslsmith_index_u32(arg_2.x, 32u)], 2147483647i)), arg_1.a, ~arg_1.a), global1.a), vec2<bool>(false, arg_0.x)), arg_1.b);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(!vec2<bool>(!all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true))), Struct_1(-vec2<i32>(global1.a.x | 2147483647i, _wgslsmith_sub_i32(global1.a.x, 9640i)), vec4<f32>(751f, -105f, -603f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1449f, global1.b.x)))))), firstTrailingBit(~_wgslsmith_sub_vec4_u32(func_1(vec3<i32>(2147483647i, global1.a.x, global1.a.x), vec2<bool>(false, false)), ~vec4<u32>(45074u, u_input.a.x, 1u, 71312u))));
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.zw, global1.b.xz));
    var var_2 = countOneBits(countOneBits(~(1i << (func_1(vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), vec2<bool>(false, true)).x % 32u))));
    var var_3 = _wgslsmith_sub_vec3_u32(u_input.a, ~u_input.a);
    var_2 = ~(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_1(global1.a, vec4<f32>(398f, global1.b.x, var_1.x, global1.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, 0u, 348u, var_3.x), vec4<u32>(20258u, u_input.a.x, 1u, u_input.a.x))).a.x << (u_input.a.x % 32u)) >> (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global1.a.x, global1.a.x) & vec3<i32>(0i, -49001i, -21273i), vec3<i32>(-1i, global1.a.x, global1.a.x))), -18224i, _wgslsmith_mod_i32(-16614i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-40967i, 0i, global0[_wgslsmith_index_u32(2630u, 32u)]), vec3<i32>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(false, false, false)), vec3<i32>(global0[_wgslsmith_index_u32(54386u, 32u)], 12954i, 17392i))), ~(~(global0[_wgslsmith_index_u32(105058u, 32u)] | global0[_wgslsmith_index_u32(1u, 32u)]))), ~(i32(-1i) * -1i));
}


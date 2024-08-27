struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(24109i, -25860i, -31i, 2147483647i);

var<private> global1: array<vec4<f32>, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = min(~select(vec4<u32>(arg_0.a.x, 0u, 4294967295u, 27428u) ^ arg_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, 1u, u_input.a.x), arg_1.a), vec4<bool>(true, true, true, true)) << (arg_1.a % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_mult_u32(~arg_0.a.x, ~arg_0.a.x), _wgslsmith_add_u32(arg_2.a.x >> (arg_1.a.x % 32u), firstLeadingBit(4294967295u)), 79079u, ~(arg_0.b << (25857u % 32u))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_div_i32(-2147483647i, u_input.b.x) >> (_wgslsmith_add_u32(var_1.b, arg_2.b) % 32u);
    var var_3 = Struct_1(vec4<u32>(select(_wgslsmith_add_u32(~95724u, ~var_0.x), _wgslsmith_div_u32(min(50971u, 0u), ~arg_0.a.x), true), ~(_wgslsmith_div_u32(40632u, arg_2.b) | arg_1.b), arg_2.a.x, 0u), var_1.a.x);
    var_3 = arg_0;
    return firstTrailingBit(arg_2.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, countOneBits(45194u), abs(0u), u_input.a.x & u_input.a.x), arg_0.a), _wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(u_input.a.x, 2350u) & 11359u), ~0u, ~u_input.a.x));
    let var_1 = arg_0;
    global0 = vec4<i32>(-arg_1.x, 18394i, i32(-1i) * -41544i, abs(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(16179i, 0i, 0i), vec3<i32>(global0.x, u_input.b.x, arg_1.x)))));
    var_0 = var_1;
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.a.xx, ~(~vec2<u32>(firstTrailingBit(1u), 59667u)));
    return 935f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(10436u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(44247u, 14576u, u_input.a.x, 30023u) << (vec4<u32>(4294967295u, u_input.a.x, 25947u, 0u) % vec4<u32>(32u))), func_3(Struct_1(vec4<u32>(95887u, 0u, 1u, 31813u), u_input.a.x), Struct_1(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), 4294967295u), Struct_1(vec4<u32>(1u, 55094u, u_input.a.x, 46875u), 21230u))), _wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(arg_1.x, global0.x, -2147483647i)), -_wgslsmith_add_vec3_i32(vec3<i32>(0i, 12956i, arg_1.x), vec3<i32>(-8935i, 39871i, u_input.b.x)), global0.wyw)))));
}

fn func_1() -> i32 {
    var var_0 = !vec3<bool>(all(vec4<bool>(false, any(vec4<bool>(false, true, true, false)), true, false)), !(_wgslsmith_f_op_f32(sign(-506f)) <= _wgslsmith_f_op_f32(func_2(vec3<f32>(-400f, 849f, 852f), vec4<i32>(11009i, global0.x, 9862i, -2147483647i)))), !all(vec3<bool>(true, true, false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1907f - -493f), _wgslsmith_f_op_f32(1108f - 1156f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1133f, -449f, true)), _wgslsmith_f_op_f32(select(-855f, -1076f, false))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(~1u, 15u)])) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, 1444f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(func_2(vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i)))))), var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-868f - -1395f)), 1318f)), var_1.x));
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, select(56684u, 4294967295u, var_0.x)), _wgslsmith_div_u32(12474u, u_input.a.x | u_input.a.x), 0u, firstTrailingBit(abs(u_input.a.x))), vec4<u32>(_wgslsmith_add_u32(func_3(Struct_1(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), 0u), Struct_1(vec4<u32>(u_input.a.x, 42594u, 80502u, 34758u), u_input.a.x), Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), 1u)), 49758u), ~55733u, u_input.a.x, u_input.a.x), vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(min(u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x, select(1u, u_input.a.x | 1u, var_0.x))), _wgslsmith_sub_u32(62232u, 1u));
    var var_4 = Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(var_3.b, 41295u) << (var_3.b % 32u), _wgslsmith_clamp_u32(u_input.a.x, ~max(u_input.a.x, var_3.a.x), ~1u & (1u | u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_div_u32(var_3.a.x & var_3.b, 1u | u_input.a.x), 6868u)), firstLeadingBit(countOneBits(4294967295u)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-1i, -func_1())), _wgslsmith_add_i32(0i, ~(-2147483647i)), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -4697i, u_input.b.x) | vec3<i32>(46619i, 0i, global0.x), firstTrailingBit(global0.yxw)));
    let var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) << (abs(143u) % 32u), 114867u), ~vec4<u32>(min(4294967295u, 60037u), reverseBits(u_input.a.x), 0u, u_input.a.x >> (17132u % 32u)));
    let var_1 = var_0.x;
    var var_2 = 2147483647i;
    let var_3 = vec2<bool>(true, u_input.a.x > ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(7019u, 1u));
}


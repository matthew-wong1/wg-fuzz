struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4966u);

var<private> global1: array<bool, 32>;

var<private> global2: Struct_1 = Struct_1(false, 637f, 1i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    var var_1 = arg_0;
    var_1 = Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(-1944f * _wgslsmith_f_op_f32(var_1.b - arg_0.b))))), -(~select(-2147483647i, abs(var_0.c), 1u > global0.x)));
    global1 = array<bool, 32>();
    let var_2 = Struct_1(select(!all(!vec4<bool>(false, var_1.a, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), true, global2.a), _wgslsmith_div_f32(arg_2.b, arg_1.x), var_1.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.b)), var_2.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = -907f;
    let var_1 = -select(countOneBits(vec4<i32>(u_input.d.x, arg_1.c, 0i, arg_1.c) << (vec4<u32>(u_input.b.x, u_input.a.x, 51918u, u_input.e.x) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)), countOneBits(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.c, -51597i, -1i, global2.c), vec4<i32>(34884i, u_input.c, arg_1.c, 2147483647i)))), (!global1[_wgslsmith_index_u32(global0.x, 32u)] | global1[_wgslsmith_index_u32(18605u | global0.x, 32u)]) & true);
    var var_2 = !select(vec3<bool>(!any(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], arg_0)), global2.a, select(false, true, !arg_0)), !select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true, true), vec3<bool>(global2.a, global2.a, true), false), select(vec3<bool>(arg_0, false, global2.a), vec3<bool>(false, arg_1.a, true), true), global1[_wgslsmith_index_u32(~0u, 32u)]), vec3<bool>(true, false, !arg_1.a));
    var var_3 = global0.x & 13454u;
    var var_4 = Struct_1(var_2.x, 296f, ~(-2147483647i >> (_wgslsmith_add_u32(46152u & global0.x, 1u) % 32u)));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, global0.x), 16826u, _wgslsmith_div_u32(0u, 82216u))), global0.x);
    let var_1 = arg_0;
    let var_2 = ~func_4(global2.a, Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, vec3<f32>(1247f, var_1.b, -145f), Struct_1(false, 163f, -1i)))), firstTrailingBit(_wgslsmith_clamp_i32(var_1.c, 42411i, global2.c))));
    let var_3 = abs(vec4<u32>(~(~(~4294967295u)), 11498u, countOneBits(_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u & global0.x)), global0.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-992f, -898f)))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.b, 119f), vec2<f32>(2465f, -1000f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.b, global2.b), vec2<f32>(-1000f, 452f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b, 381f)))))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(927f * 422f))), -290f));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global0 = ~(~(u_input.a.yy ^ ~(u_input.e.xx ^ vec2<u32>(global0.x, 32389u))));
    global0 = vec2<u32>(min(func_2(Struct_1(false, _wgslsmith_f_op_f32(global2.b + arg_1.x), -7364i), arg_0), _wgslsmith_clamp_u32(global0.x, u_input.a.x, _wgslsmith_mod_u32(4294967295u, global0.x) >> (global0.x % 32u))), _wgslsmith_mod_u32(u_input.e.x, u_input.b.x));
    let var_0 = Struct_1(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x * global2.b), _wgslsmith_div_f32(616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-794f, arg_1.x)) + _wgslsmith_f_op_f32(sign(300f)))))), -(~2147483647i) << (u_input.b.x % 32u));
    global1 = array<bool, 32>();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global2.b, _wgslsmith_f_op_f32(min(global2.b, -690f)), -338f, global2.b);
    var var_1 = vec3<u32>(global0.x, ~func_1(Struct_1(true, _wgslsmith_f_op_f32(min(-589f, var_0.x)), i32(-1i) * -6202i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b, 330f, -1309f, -243f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -911f, 374f, global2.b) - vec4<f32>(global2.b, var_0.x, global2.b, global2.b)))), u_input.e.x);
    let var_2 = Struct_1(!global2.a, -520f, _wgslsmith_sub_i32(0i, ~(-2147483647i)));
    var var_3 = global2.c << (min(select(~global0.x, abs(466u) >> (1u % 32u), 15441u > ~var_1.x), 0u) % 32u);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(var_0.x + global2.b), all(vec3<bool>(var_2.a, global1[_wgslsmith_index_u32(17988u, 32u)], global2.a))))), var_2.b, _wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1496f)), -859f, !(!var_2.a)))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b * var_2.b)))), 1f, var_2.b));
    let var_4 = Struct_1(true, _wgslsmith_div_f32(_wgslsmith_div_f32(-1500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.x, 249f, false)), _wgslsmith_f_op_f32(step(1095f, -858f)))), _wgslsmith_f_op_f32(round(var_0.x)))), i32(-1i) * -max(-42336i, ~var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1208u, 1u)) | ~var_1.yz, countOneBits(~vec2<i32>(-16657i, var_2.c)), u_input.d, -60112i, max(vec3<i32>(-22390i, _wgslsmith_mod_i32(-1i, -var_4.c), -20023i | global2.c), u_input.d & vec3<i32>(1i, _wgslsmith_mult_i32(-2147483647i, 1i), global2.c)));
}


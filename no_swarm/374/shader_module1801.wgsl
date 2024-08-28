struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: f32 = 1000f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = ~(u_input.c | u_input.c);
    let var_1 = arg_1;
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_0.wz, firstTrailingBit(vec2<u32>(u_input.c.x, 0u))) | (var_0.x ^ 1u), 14u)], _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_add_i32(arg_0.b, -u_input.a)), -select(firstTrailingBit(vec2<i32>(-1i, u_input.a)), vec2<i32>(arg_0.b, -641i), !vec2<bool>(arg_1, arg_1))), Struct_3(vec4<u32>(abs(arg_0.a << (u_input.d % 32u)), var_0.x, ~abs(1u), _wgslsmith_dot_vec3_u32(u_input.c.zww, vec3<u32>(arg_0.a, 4294967295u, 4294967295u))), _wgslsmith_mult_i32(u_input.a, u_input.a)), ~vec2<i32>(2147483647i, max(~2147483647i, _wgslsmith_sub_i32(u_input.a, arg_0.b))), select(vec2<bool>(var_1 != any(vec3<bool>(false, true, arg_1)), any(vec2<bool>(true, true))), !select(select(vec2<bool>(false, arg_1), vec2<bool>(false, false), vec2<bool>(true, var_1)), !vec2<bool>(arg_1, var_1), !vec2<bool>(arg_1, arg_1)), !vec2<bool>(arg_0.a < 39302u, var_1)));
    var var_3 = Struct_3(vec4<u32>(~select(abs(u_input.b), var_0.x, any(vec4<bool>(true, var_1, var_1, var_2.a.c))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.x, 68577u), ~var_2.a.a.x, 4294967295u), reverseBits(_wgslsmith_mod_u32(u_input.c.x, 29325u)) | ~(~1u), 4294967295u), arg_0.b << (var_2.c.a.x % 32u));
    var var_4 = var_2.a.a.x;
    return var_2.e;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_5 {
    var var_0 = !(!func_3(Struct_5(u_input.b, u_input.a & 21959i), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(global0.x, 841f))));
    var var_1 = vec4<i32>(29957i << (_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.b, u_input.d), 23892u) % 32u), firstLeadingBit(_wgslsmith_div_i32(-firstTrailingBit(u_input.a), -1i)), _wgslsmith_mod_i32(~u_input.a, ~(-(~arg_0))), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(-4710i, 0i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(u_input.a, arg_0)), max(vec2<i32>(2147483647i, arg_0), vec2<i32>(-1i, u_input.a)), vec2<i32>(arg_0, 11907i) ^ vec2<i32>(u_input.a, arg_0)))));
    var var_2 = -vec4<i32>(u_input.a, -8007i, u_input.a, ~(~_wgslsmith_mod_i32(46519i, var_1.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_1.ywz + arg_1.yxx);
    let var_4 = ~u_input.c;
    return Struct_5(select(1u << (abs(u_input.c.x) % 32u), ~u_input.d << (_wgslsmith_add_u32(u_input.d, 6256u) % 32u), select(-1i, u_input.a, var_0.x) >= _wgslsmith_dot_vec2_i32(var_1.xx, var_1.yw)) ^ _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(select(var_4.x, u_input.d, var_0.x), 83748u ^ var_4.x)), u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = func_2(-_wgslsmith_mod_i32(-u_input.a, _wgslsmith_add_i32(arg_1.x, 5781i)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f * _wgslsmith_div_f32(global0.x, global0.x)))));
    let var_1 = vec2<bool>(any(vec3<bool>(true, !arg_0.c || arg_0.c, !(!arg_0.c))), arg_0.d);
    let var_2 = min(var_0.b, u_input.a) << (var_0.a % 32u);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(arg_0.b, arg_0.b))))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.b, -631f))))), 1038f);
    return Struct_3(u_input.c | vec4<u32>(_wgslsmith_div_u32(~var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 22944u, arg_0.a.x), vec4<u32>(4294967295u, var_0.a, 0u, u_input.c.x))), _wgslsmith_add_u32(u_input.b | arg_0.a.x, 0u ^ var_0.a), _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(u_input.d, 12009u)), arg_0.a.x), i32(-1i) * -35987i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    var var_0 = -207f;
    let var_1 = func_1(global1[_wgslsmith_index_u32(~61528u, 14u)], firstTrailingBit(-vec4<i32>(1i, u_input.a, u_input.a, -1i)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-431f, 1088f) + 1834f), 169f), global0.x, 359f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1150f)), global0.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1824f);
    var_2 = global0.x;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(22963i, var_1.b), i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(49105i, countOneBits(-1i), -u_input.a)), -vec3<i32>(0i, -18401i, 20869i) & (reverseBits(vec3<i32>(40088i, var_1.b, 20956i)) ^ countOneBits(vec3<i32>(u_input.a, var_1.b, -1i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2446f * 1000f), global0.x)), global0.x, var_1.a);
}


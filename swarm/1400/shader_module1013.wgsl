struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1559f, 458f, 653f);

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, i32(-2147483648), 20627u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), Struct_1(true, i32(-2147483648), 0u, vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_1(true, -17578i, 4294967295u, vec4<u32>(1u, 22402u, 29109u, 0u)));

var<private> global2: Struct_2 = Struct_2(false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = false;
    let var_1 = arg_3.x;
    global1 = array<Struct_1, 3>();
    var var_2 = vec3<bool>(arg_2.a, 2147483647i > _wgslsmith_div_i32(u_input.b.x, -1i), global2.a);
    var var_3 = false;
    return arg_2.d.wy;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = global0.x;
    var var_2 = ~13098u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.d.xw, ~arg_0.d.zz, ~var_0.d.xz) ^ func_3(Struct_2(var_0.a), Struct_2(global2.a), Struct_1(var_0.a, -1i, 6420u, vec4<u32>(u_input.d, arg_0.d.x, 26533u, arg_0.d.x)), -vec4<i32>(var_0.b, arg_0.b, arg_0.b, -41876i)), countOneBits(var_0.d.wz)) % 32u);
    let var_3 = var_0;
    let var_4 = u_input.d;
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_div_f32(1590f, global0.x), _wgslsmith_f_op_f32(sign(500f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 282f, -531f))))))));
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -184f) + vec3<f32>(577f, 1514f, 1529f)) * _wgslsmith_f_op_vec3_f32(func_2(Struct_1(global2.a, -56502i, 50863u, vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)))))) * vec3<f32>(-1341f, _wgslsmith_f_op_f32(floor(-1702f)), _wgslsmith_div_f32(-1273f, _wgslsmith_f_op_vec3_f32(func_2(Struct_1(global2.a, u_input.a.x, 49360u, vec4<u32>(0u, u_input.d, u_input.d, u_input.d)))).x))));
    let var_1 = Struct_1(true, i32(-1i) * -1i, u_input.d, vec4<u32>(49571u, func_3(Struct_2(!global2.a), Struct_2(false), global1[_wgslsmith_index_u32(u_input.d, 3u)], select(vec4<i32>(u_input.b.x, -2147483647i, 28108i, 1i), vec4<i32>(u_input.b.x, u_input.b.x, 6219i, 2147483647i), !vec4<bool>(global2.a, false, false, true))).x, u_input.d, 1u));
    var var_2 = ((~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.x, 10534u, var_1.c), vec3<u32>(var_1.d.x, u_input.d, var_1.d.x)) ^ vec3<u32>(4294967295u | var_1.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 89731u, u_input.d, u_input.d), vec4<u32>(u_input.d, 23561u, u_input.d, u_input.d)), 1u)) | ~countOneBits(var_1.d.xzz ^ vec3<u32>(u_input.d, 6713u, var_1.d.x))) & vec3<u32>(90007u, ~(~0u) | ~_wgslsmith_div_u32(var_1.c, var_1.d.x), ~(~(~u_input.d)));
    global1 = array<Struct_1, 3>();
    return ~(~(~max(vec4<i32>(-2147483647i, u_input.c, -36151i, var_1.b), vec4<i32>(u_input.a.x, var_1.b, -71436i, u_input.c)))) ^ countOneBits(select(~vec4<i32>(2849i, var_1.b, u_input.a.x, -18979i), -vec4<i32>(var_1.b, u_input.b.x, u_input.c, u_input.b.x), select(vec4<bool>(var_1.a, global2.a, global2.a, true), vec4<bool>(var_1.a, true, false, var_1.a), var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-24425i, u_input.c), u_input.b.xy)), u_input.a.x, -48424i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~42804i, u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, i32(-1i) * -15427i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(1500i, -2147483647i))))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.b.x, 2147483647i), vec4<i32>(-50706i, 75390i, 42275i, u_input.b.x)), max(u_input.a.x, u_input.c), 2147483647i, 2147483647i), func_1()), vec4<bool>(global2.a, true, true, any(select(vec3<bool>(global2.a, global2.a, false), vec3<bool>(true, global2.a, false), global2.a)) & global2.a));
    let var_1 = select(select(vec2<bool>(false, true), vec2<bool>(true, true | global2.a), true), vec2<bool>(any(vec4<bool>(true, all(vec2<bool>(global2.a, global2.a)), global2.a, true)), true), select(vec2<bool>(false, !select(true, true, false)), !vec2<bool>(all(vec4<bool>(true, global2.a, global2.a, global2.a)), true), !vec2<bool>(all(vec2<bool>(global2.a, global2.a)), -1274f > global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1000f, 685f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 260f, global0.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-633f, global0.x, global0.x), vec3<f32>(148f, 567f, -177f))))))));
    var var_2 = select(var_0.wyx, ~u_input.b, vec3<bool>(true, global2.a, true));
    let var_3 = !(((i32(-1i) * -var_2.x) >= 1i) || global2.a);
    global1 = array<Struct_1, 3>();
    var var_4 = vec3<bool>(var_3, var_3, var_1.x);
    var var_5 = ~countOneBits(var_0.zw);
    let var_6 = Struct_2(!(global0.x <= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(firstLeadingBit(u_input.d)), 16651u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(73278u, u_input.d), vec2<u32>(u_input.d, 11923u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.d), vec3<u32>(1u, 32847u, 4294967295u)))), vec3<u32>(~firstTrailingBit(1u), _wgslsmith_mult_u32(u_input.d, 8007u), ~min(u_input.d, 25178u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.yx)) - vec2<f32>(global0.x, -1295f)), vec2<i32>(~(~0i), reverseBits(-47230i)));
}


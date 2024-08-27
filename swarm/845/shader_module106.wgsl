struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(0u, 31251u);

var<private> global2: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = 1u;
    var var_1 = Struct_1(vec3<u32>(~(~_wgslsmith_mult_u32(u_input.e, 19575u)), u_input.e & _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, 66380u, global1.x) | vec4<u32>(17544u, global1.x, u_input.e, 38676u), vec4<u32>(4294967295u, global1.x, 0u, 5448u) ^ vec4<u32>(1u, global1.x, global1.x, u_input.e)), ~(_wgslsmith_clamp_u32(u_input.e, 0u, 0u) ^ 36885u)), ~(2147483647i | u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 3762i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(u_input.a, -108578i, u_input.a))) ^ firstTrailingBit(vec4<i32>(-1i, 1i, u_input.d, -6607i) | vec4<i32>(u_input.d, 2147483647i, -2147483647i, 2147483647i)), countOneBits(vec4<i32>(u_input.c, 0i, u_input.c, 1i) & (vec4<i32>(u_input.b, 4364i, u_input.d, 27510i) | vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)))));
    let var_2 = Struct_3(global0.a, Struct_2(global0.b.a, false, all(vec4<bool>(all(vec3<bool>(arg_0.a.c, arg_0.a.c, false)), u_input.b >= u_input.a, true, any(vec2<bool>(global0.a.b, global0.a.b))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)) < _wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(floor(500f)));
    var var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 0i) ^ vec2<i32>(-28850i, u_input.b)), abs(vec2<i32>(u_input.a, var_1.b))), vec2<i32>(var_1.b, -(~u_input.a))), reverseBits(abs(reverseBits(~vec2<i32>(var_1.b, -1i)))));
    return arg_0.a.c & false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    global1 = arg_0.a.xy;
    var var_0 = select(!(!arg_2.zx), !vec2<bool>(func_3(Struct_4(global0.a)), true), true);
    var_0 = vec2<bool>(var_0.x, ~(~_wgslsmith_mod_i32(u_input.a, 1i)) > abs(min(-arg_0.b, -2147483647i)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-arg_1.a.a)) * 1f) * -198f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.a)) - -132f));
    global1 = ~(~_wgslsmith_clamp_vec2_u32(arg_0.a.yy, select(~arg_0.a.zy, vec2<u32>(0u, 1u), !vec2<bool>(global0.a.b, arg_2.x)), vec2<u32>(global1.x, firstTrailingBit(39534u))));
    return arg_0.c;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = Struct_4(global0.b);
    var var_1 = abs(vec2<i32>(firstLeadingBit(-func_2(Struct_1(vec3<u32>(19490u, arg_0.a.x, arg_0.a.x), arg_1, 2147483647i), Struct_3(global0.a, var_0.a), vec3<bool>(false, global0.a.c, global0.a.b), false)), max(-min(u_input.b, -38934i), u_input.c)));
    let var_2 = true;
    let var_3 = Struct_4(Struct_2(-1000f, global0.b.c, any(!vec3<bool>(var_2, var_0.a.c, var_2)) == true));
    let var_4 = select(!(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, var_2), vec4<bool>(var_3.a.b, false, false, false)), !vec4<bool>(var_0.a.c, var_2, true, true), var_2)), select(vec4<bool>(global0.b.b, all(vec4<bool>(false, var_3.a.c, true, false)), (var_1.x < -1i) & (4294967295u != u_input.e), !any(vec2<bool>(false, true))), select(!select(vec4<bool>(false, var_0.a.b, true, true), vec4<bool>(true, false, var_0.a.c, global0.b.b), var_3.a.b), vec4<bool>(true, all(vec3<bool>(false, global0.b.c, var_2)), any(vec2<bool>(global0.b.b, false)), false || var_3.a.c), true), !select(select(vec4<bool>(false, var_2, global0.a.c, var_0.a.c), vec4<bool>(var_3.a.b, true, true, var_2), vec4<bool>(false, var_3.a.b, true, global0.b.c)), select(vec4<bool>(global0.a.c, var_0.a.b, var_0.a.c, var_3.a.b), vec4<bool>(var_3.a.b, false, var_3.a.b, true), vec4<bool>(var_3.a.c, true, var_0.a.b, false)), vec4<bool>(true, var_0.a.c, true, var_3.a.b))), vec4<bool>(true, !(1i < (1i & u_input.a)), global0.b.b, !(~u_input.e >= _wgslsmith_add_u32(68537u, 10858u))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = ~((vec2<u32>(~51263u, u_input.e) & vec2<u32>(countOneBits(u_input.e), global1.x)) | vec2<u32>(33119u, max(_wgslsmith_clamp_u32(16136u, 1u, u_input.e), global1.x | 43840u)));
    global1 = ~firstTrailingBit(select(vec2<u32>(1u, 62607u), _wgslsmith_add_vec2_u32(vec2<u32>(2446u, var_0.x), vec2<u32>(var_0.x, 3909u)), arg_1)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, 6317u, 1u, u_input.e), ~vec4<u32>(4294967295u, global1.x, global1.x, 1u)), vec4<u32>(1u, u_input.e, ~global1.x, abs(1u))), 20810u) % vec2<u32>(32u));
    var var_1 = -_wgslsmith_mod_vec2_i32(-reverseBits(vec2<i32>(-41505i, u_input.d) ^ vec2<i32>(u_input.a, -15049i)), ~(-abs(vec2<i32>(-1i, u_input.d))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -882f))))));
    let var_3 = Struct_2(133f, true, var_2.x != var_2.x);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a * 490f) * 222f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f), var_3.a)), true, !all(arg_1)), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(u_input.e, u_input.e, _wgslsmith_div_u32(1u, u_input.e)) << (vec3<u32>(_wgslsmith_mod_u32(32282u, 4409u), 4294967295u, _wgslsmith_add_u32(global1.x, u_input.e)) % vec3<u32>(32u)), u_input.a, u_input.a);
    var var_1 = global0.b.a;
    global0 = func_4(any(select(vec4<bool>(var_0.a.x < 4294967295u, func_1(var_0, -48769i), !global0.a.b, false & global0.b.c), select(vec4<bool>(global0.a.c, global0.b.b, false, true), vec4<bool>(false, global0.b.c, global0.b.b, global0.b.c), all(vec4<bool>(global0.b.c, false, true, false))), !vec4<bool>(false, global0.b.c, true, true))), vec2<bool>(!(~82513u < var_0.a.x), true));
    var var_2 = !global0.b.b;
    global0 = Struct_3(Struct_2(421f, select(global0.b.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 7261i), vec2<i32>(-1i, 30917i)) > 1i, global0.a.c), true), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.a)) - global0.b.a), -807f)), false, (-1907f != global0.a.a) || (_wgslsmith_dot_vec4_u32(vec4<u32>(11997u, 1u, 29816u, 0u), vec4<u32>(0u, 4294967295u, var_0.a.x, u_input.e)) < ~15600u)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 1000f)))) * _wgslsmith_f_op_f32(-global0.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_div_i32(-51769i, -24304i)), var_0.a, 0u, _wgslsmith_mod_vec3_u32(vec3<u32>(~global1.x, ~global1.x | global1.x, ~0u), _wgslsmith_mult_vec3_u32(var_0.a >> (~var_0.a % vec3<u32>(32u)), firstLeadingBit(max(vec3<u32>(u_input.e, u_input.e, global1.x), var_0.a)))), ~(~firstTrailingBit(~vec4<u32>(41697u, 13781u, 25206u, u_input.e))));
}


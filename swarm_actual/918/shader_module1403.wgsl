struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.b, 1272f))), Struct_1(global0.b.a, -1097f, (max(vec3<i32>(u_input.b.x, 0i, arg_0), u_input.b) >> (~u_input.a.zwz % vec3<u32>(32u))) ^ firstLeadingBit(-u_input.b)), global0.c);
    var var_0 = global0.a;
    var_0 = global0.c;
    var var_1 = vec2<bool>(((u_input.a.x <= abs(u_input.a.x)) | ((u_input.a.x == u_input.a.x) & global0.b.a.x)) & any(select(vec4<bool>(global0.b.a.x, false, false, true), select(vec4<bool>(true, global0.b.a.x, true, true), vec4<bool>(true, true, global0.b.a.x, true), vec4<bool>(true, true, true, global0.b.a.x)), !global0.b.a.x)), false);
    var_0 = global0.a;
    return Struct_3(Struct_2(global0.a.a), global0.b, Struct_2(vec2<f32>(-1517f, var_0.a.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = func_2(select(global0.b.c.x, -2147483647i >> (((u_input.a.x | 36627u) ^ reverseBits(377u)) % 32u), u_input.a.x == (4294967295u ^ (arg_3.x << (12004u % 32u)))));
    global0 = func_2(min(u_input.b.x, -43763i >> (~abs(u_input.a.x) % 32u)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.c.a.x) - arg_2.zy))));
    global0 = func_2(global0.b.c.x);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-502f, _wgslsmith_f_op_f32(-var_0.x)))));
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    global0 = func_2(20245i);
    let var_0 = Struct_2(vec2<f32>(1f, func_2(33679i).b.b));
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.c.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1025f, arg_2.b.b))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a.a.x, 1254f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-920f, arg_1.b.b)))))), global0.b, func_2(arg_2.b.c.x ^ _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, global0.b.c.x), select(u_input.b.x, -50117i, arg_1.b.a.x))).c);
    var var_1 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.a) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_2.a.a.x), global0.a.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.a.x, -1000f))))))), _wgslsmith_add_vec3_i32(func_3(Struct_2(vec2<f32>(arg_2.c.a.x, 136f)), firstLeadingBit(u_input.b) & vec3<i32>(7311i, 10728i, u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-781f, -373f, 273f)))), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(0u, 0u), arg_3, _wgslsmith_clamp_u32(arg_3, 27202u, u_input.a.x))).c, ~u_input.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -890f, 171f) - vec3<f32>(536f, var_0.a.x, -1000f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.b, -420f, global0.b.b)))))))), ~abs(u_input.a));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.a.xwy), vec3<u32>(reverseBits(140386u), arg_3, ~arg_3 & 1u)), 1u, ~arg_3 << (arg_3 % 32u), arg_3);
    return func_3(var_0, _wgslsmith_add_vec3_i32(arg_2.b.c, _wgslsmith_div_vec3_i32(~(~arg_1.b.c), vec3<i32>(arg_0.c.x & 63208i, 2147483647i, global0.b.c.x))), vec3<f32>(var_0.a.x, func_2(1i).a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a.x, _wgslsmith_f_op_f32(select(global0.b.b, 1000f, arg_2.b.a.x)), all(vec4<bool>(false, arg_0.a.x, arg_0.a.x, global0.b.a.x)))))), firstLeadingBit(abs(vec4<u32>(108881u, countOneBits(82778u), firstTrailingBit(var_2.x), _wgslsmith_mod_u32(1u, var_2.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global0 = func_2(-1i);
    global0 = Struct_3(func_2(~(20002i << (~arg_3.x % 32u))).c, arg_1, global0.a);
    let var_0 = ~global0.b.c;
    var var_1 = vec3<u32>(1u, ~92530u, 123u);
    global0 = Struct_3(func_2(~(-25115i)).a, func_2(_wgslsmith_div_i32(global0.b.c.x, u_input.c.x ^ arg_2.c.x)).b, Struct_2(global0.a.a));
    return func_2(-13607i).a;
}

fn func_1() -> Struct_1 {
    let var_0 = -u_input.b;
    global0 = Struct_3(func_5(global0.b.c.xz, Struct_1(vec2<bool>(global0.b.a.x, global0.b.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1603f + global0.b.b), _wgslsmith_f_op_f32(global0.b.b - global0.c.a.x))), firstLeadingBit(-u_input.b)), func_4(global0.b, func_2(select(11660i, var_0.x, global0.b.a.x)), Struct_3(global0.a, func_3(Struct_2(global0.c.a), var_0, vec3<f32>(global0.b.b, -924f, 261f), u_input.a), global0.a), (u_input.a.x << (0u % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u)) % 32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xx)), global0.b, global0.a);
    let var_1 = Struct_1(!global0.b.a, global0.c.a.x, ~countOneBits(vec3<i32>(var_0.x, -19098i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global0.b.c.x, 3415i, -8280i)))));
    global0 = func_2(-1i);
    global0 = func_2(~2147483647i);
    return func_2(global0.b.c.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = Struct_3(global0.c, global0.b, global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(var_0.c.x, -u_input.c.x), vec2<i32>(_wgslsmith_div_i32(1i, global0.b.c.x), -u_input.b.x), ~u_input.a.x == 3451u) | _wgslsmith_clamp_vec2_i32(func_1().c.xx, var_0.c.zy, _wgslsmith_mult_vec2_i32(~var_0.c.yx, func_4(var_0, Struct_3(global0.c, Struct_1(global0.b.a, global0.c.a.x, vec3<i32>(-26944i, u_input.c.x, 17367i)), global0.c), Struct_3(global0.c, Struct_1(vec2<bool>(global0.b.a.x, true), 173f, vec3<i32>(-14972i, var_0.c.x, 1i)), global0.c), 29437u).c.yx)), _wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(~u_input.a.x, u_input.a.x)), vec2<i32>(-_wgslsmith_add_i32(2147483647i, u_input.b.x), u_input.c.x) & func_3(func_5(u_input.c, var_0, Struct_1(var_0.a, 281f, vec3<i32>(global0.b.c.x, 1i, -1i)), u_input.a.zz | vec2<u32>(0u, 547u)), func_2(-u_input.b.x).b.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1137f, 1532f, global0.b.b) + vec3<f32>(var_0.b, -1069f, 371f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b, var_0.b, -1381f))), min(abs(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)), u_input.a)).c.zz);
}


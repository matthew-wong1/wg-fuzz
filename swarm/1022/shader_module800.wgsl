struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    return Struct_1(vec3<i32>(-1i) * -select(arg_0.c.b, select(vec3<i32>(arg_0.c.b.x, arg_0.c.a.x, -3287i), vec3<i32>(arg_2.c.b.x, arg_2.c.b.x, -40923i), true), vec3<bool>(false, true, true)), ~(~(-vec3<i32>(35214i, arg_2.c.c.x, 0i))) << (vec3<u32>(abs(~4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6101u, 0u, 4487u, arg_1), vec4<u32>(60605u, arg_2.b, 1u, 0u)), 42627u), ~u_input.a.x) % vec3<u32>(32u)), _wgslsmith_sub_vec2_i32(arg_2.c.b.yy, (firstTrailingBit(arg_0.c.b.zz) ^ arg_2.c.a.zy) >> (vec2<u32>(_wgslsmith_mod_u32(4294967295u, arg_2.a), arg_2.a) % vec2<u32>(32u))), -1330f);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    return ~0u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = true;
    let var_1 = vec4<u32>(37296u, u_input.a.x, ~14402u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(func_3(false, arg_0), select(u_input.a.x, u_input.a.x, var_0), ~33963u) & 4294967295u, ~_wgslsmith_div_u32(u_input.a.x, 0u), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.a.x, 0u, 0u), u_input.a), vec3<u32>(4294967295u, u_input.a.x, ~4294967295u))));
    var var_2 = vec4<u32>(var_1.x | abs(1u), u_input.a.x, ~_wgslsmith_div_u32(var_1.x, u_input.a.x) >> (u_input.a.x % 32u), var_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, 1418f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(690f, 1052f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1402f, _wgslsmith_f_op_f32(max(422f, arg_0.d))) - vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.d)), arg_0.d)))));
    var_2 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-(vec3<i32>(~(-2335i), firstTrailingBit(2147483647i), -1i) & ~select(vec3<i32>(-1i, 0i, -2147483647i), vec3<i32>(31612i, 32537i, 12600i), vec3<bool>(false, false, true))), countOneBits(vec3<i32>(1i, min(0i << (u_input.a.x % 32u), -56261i), 0i)), abs(~max(vec2<i32>(-1i, -24847i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-2147483647i, 36493i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    var var_1 = vec4<u32>(~0u, ~u_input.a.x, ~(~1u), u_input.a.x);
    var_0 = Struct_1(var_0.b, -vec3<i32>(countOneBits(2147483647i), -1i, var_0.b.x), var_0.b.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-720f)), var_0.d)))) * -819f));
    var_1 = (_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_1.x, 4294967295u, 9174u), vec4<u32>(7925u, 43788u, u_input.a.x, var_1.x)), max(~vec4<u32>(var_1.x, u_input.a.x, 1u, u_input.a.x), select(vec4<u32>(45049u, 4294967295u, var_1.x, var_1.x), vec4<u32>(46290u, 20921u, u_input.a.x, u_input.a.x), false))) ^ vec4<u32>(13147u, ~u_input.a.x, u_input.a.x, var_1.x)) >> (min(firstLeadingBit(~vec4<u32>(u_input.a.x, 1u, 0u, 0u)), ~vec4<u32>(~4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u));
    var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>((52363u ^ var_1.x) ^ 78722u, 43106u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) | var_1.yw, ~vec2<u32>(u_input.a.x, 1u))), select(func_2(func_1(Struct_2(29731u, var_1.x, Struct_1(var_0.a, vec3<i32>(var_0.a.x, 18907i, var_0.a.x), vec2<i32>(0i, var_0.a.x), var_0.d)), u_input.a.x, Struct_2(var_1.x, var_1.x, Struct_1(var_0.a, vec3<i32>(var_0.c.x, 50499i, -2147483647i), var_0.b.zz, var_0.d))), ~var_0.b, -var_0.b.yz), select(reverseBits(vec4<u32>(4294967295u, var_1.x, 1884u, 4139u)), select(vec4<u32>(0u, 8630u, 24577u, 4294967295u), vec4<u32>(1u, u_input.a.x, 12997u, 1u), false), vec4<bool>(true, true, true, true)), true));
    var var_2 = func_1(Struct_2(func_3(true, func_1(Struct_2(4294967295u, var_1.x, Struct_1(var_0.a, vec3<i32>(-2147483647i, -1i, var_0.b.x), vec2<i32>(1i, var_0.c.x), 685f)), 13283u, Struct_2(u_input.a.x, u_input.a.x, Struct_1(vec3<i32>(-29226i, 26296i, -30036i), vec3<i32>(1i, var_0.b.x, 15583i), var_0.b.xz, 555f)))), 3134u, func_1(Struct_2(~34549u, _wgslsmith_div_u32(78103u, 9044u), func_1(Struct_2(4294967295u, var_1.x, Struct_1(vec3<i32>(34193i, var_0.a.x, var_0.a.x), var_0.a, var_0.c, var_0.d)), 31184u, Struct_2(u_input.a.x, var_1.x, Struct_1(var_0.b, var_0.b, vec2<i32>(var_0.b.x, var_0.b.x), 1732f)))), 90081u, Struct_2(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), vec2<u32>(0u, 1u)), func_1(Struct_2(4294967295u, var_1.x, Struct_1(vec3<i32>(376i, -2147483647i, 6714i), vec3<i32>(var_0.c.x, var_0.b.x, 38830i), vec2<i32>(var_0.b.x, var_0.b.x), -300f)), 0u, Struct_2(u_input.a.x, 4294967295u, Struct_1(var_0.a, vec3<i32>(var_0.a.x, -41113i, 0i), vec2<i32>(var_0.b.x, -22998i), var_0.d)))))), ~var_1.x, Struct_2(var_1.x, u_input.a.x, func_1(Struct_2(min(1u, var_1.x), abs(var_1.x), func_1(Struct_2(var_1.x, 1u, Struct_1(var_0.b, vec3<i32>(-23935i, -3223i, -788i), var_0.b.yy, -134f)), var_1.x, Struct_2(1u, var_1.x, Struct_1(var_0.a, var_0.a, vec2<i32>(36218i, var_0.a.x), var_0.d)))), var_1.x, Struct_2(~u_input.a.x, ~22521u, Struct_1(var_0.a, vec3<i32>(-5186i, var_0.c.x, -1i), vec2<i32>(var_0.a.x, -2147483647i), 1315f)))));
    var_1 = countOneBits(abs(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(var_1.x << (u_input.a.x % 32u), ~0u), max(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(25111u, 11603u), vec2<u32>(var_1.x, u_input.a.x))), max(1u, u_input.a.x >> (var_1.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 62443u), var_1.xy), var_2.d, reverseBits(_wgslsmith_sub_i32(var_0.a.x, var_0.c.x)));
}


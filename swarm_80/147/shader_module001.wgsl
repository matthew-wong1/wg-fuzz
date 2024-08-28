struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 138573u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_0.a, select(arg_0.b, select(vec2<bool>(arg_0.b.x, any(vec3<bool>(arg_0.b.x, true, false))), select(arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b), arg_0.b), any(vec4<bool>(!arg_0.b.x, arg_0.b.x, -1i >= u_input.d, true))), _wgslsmith_mod_vec2_u32(countOneBits(arg_0.d & vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.e.x, 4294967295u)) << (~arg_0.d % vec2<u32>(32u)), vec2<u32>(21272u, countOneBits(reverseBits(arg_0.d.x) ^ abs(arg_0.d.x))));
    global0 = abs(vec3<u32>(u_input.c.x, 4294967295u, _wgslsmith_dot_vec2_u32(var_0.d & vec2<u32>(1u, 117433u), var_0.d)));
    let var_1 = vec2<u32>(4294967295u, ~min(1u, 1u)) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_0.c.x, global0.x)), firstLeadingBit(vec2<u32>(u_input.e.x, u_input.a))) & arg_0.d, vec2<u32>(arg_0.d.x, 37186u)) % vec2<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_clamp_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.d.x, 52662u, var_0.c.x), vec4<u32>(4294967295u, 31187u, 4294967295u, 39737u), vec4<u32>(global0.x, arg_0.c.x, arg_0.c.x, arg_0.d.x))), firstLeadingBit(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, arg_0.c.x, 18498u, 32865u), vec4<u32>(1u, 74122u, 4294967295u, u_input.c.x)))), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 0u, 94426u, global0.x) ^ vec4<u32>(var_0.d.x, arg_0.d.x, var_1.x, u_input.e.x), _wgslsmith_mult_vec4_u32(vec4<u32>(30612u, 4294967295u, 0u, 17186u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, u_input.e.x, 2778u), vec4<u32>(4294967295u, var_0.c.x, arg_0.d.x, 4294967295u))))), any(select(arg_0.b, var_0.b, select(!var_0.b, vec2<bool>(var_0.b.x, true), var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-652f, 745f)), _wgslsmith_div_f32(1333f, -984f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1684f, -1371f)), 358f)))), firstLeadingBit(vec4<i32>(~17386i, var_0.a, arg_0.a, 2147483647i)), arg_0.d & firstTrailingBit(_wgslsmith_sub_vec2_u32(~global0.zx, _wgslsmith_mult_vec2_u32(var_1, u_input.e.yx))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1864f, _wgslsmith_f_op_f32(ceil(var_2.c))), vec2<f32>(_wgslsmith_f_op_f32(step(var_2.c, 807f)), -546f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(988f, var_2.c))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, 764f) + vec2<f32>(-1463f, var_2.c))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, _wgslsmith_f_op_f32(var_2.c - 1726f))), true)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, arg_0.d.x) | ((var_1 >> (~vec2<u32>(var_1.x, global0.x) % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(~var_1, vec2<u32>(var_0.d.x, var_2.a.x))), var_1);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    global0 = abs(~vec3<u32>(~arg_0.a.x, ~arg_0.e.x, ~35713u) | vec3<u32>(func_3(Struct_1(u_input.b, vec2<bool>(false, false), global0.xz, global0.yx)), u_input.e.x, global0.x));
    global0 = countOneBits(vec3<u32>(arg_0.a.x, 2838u, u_input.c.x));
    var var_0 = u_input.e;
    global0 = ~(u_input.c | vec3<u32>(min(78723u | var_0.x, ~arg_0.e.x), ~(var_0.x | global0.x), arg_0.a.x));
    let var_1 = arg_0.d.x;
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = vec2<u32>(~_wgslsmith_sub_u32(~(arg_2.a ^ 0u), max(func_2(arg_3, vec2<bool>(arg_3.b, arg_3.b), -2147483647i), u_input.a)), 1u);
    global0 = ~(~u_input.c);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)))) * -621f)));
    var var_3 = ~u_input.d;
    return vec3<u32>(~_wgslsmith_div_u32(u_input.c.x, ~(~26992u)), arg_2.a, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(4294967295u, 32642u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), u_input.c)) >> (abs(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1319f, 1461f)), _wgslsmith_f_op_f32(round(160f))), vec4<u32>(~u_input.c.x, 1u, global0.x, 0u), Struct_2(u_input.c.x, 1f), Struct_3(vec4<u32>(global0.x, 1u, u_input.c.x, 4294967295u) >> (vec4<u32>(global0.x, global0.x, u_input.a, 0u) % vec4<u32>(32u)), any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(424f - 544f), vec4<i32>(u_input.b, u_input.d, u_input.b, 1i), vec2<u32>(global0.x, 1u)))) % vec3<u32>(32u));
    global0 = vec3<u32>(max(~u_input.e.x | global0.x, 2312u), ~(~(0u & global0.x) << (~global0.x % 32u)), max(69498u, global0.x));
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.e, u_input.c), u_input.e);
    let var_0 = Struct_1(u_input.b, !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<u32>(1637u, ~22032u), _wgslsmith_add_vec2_u32(select(global0.zz, global0.yz, all(vec4<bool>(true, true, true, true))), u_input.e.zy ^ vec2<u32>(func_2(Struct_3(vec4<u32>(88230u, 826u, global0.x, 4294967295u), false, 162f, vec4<i32>(2147483647i, 1i, 2147483647i, u_input.d), vec2<u32>(u_input.e.x, u_input.e.x)), vec2<bool>(true, true), u_input.d), global0.x)));
    global0 = u_input.c;
    var var_1 = Struct_3(max(~abs(vec4<u32>(var_0.d.x, 4294967295u, 54937u, 46753u)), ~(~firstLeadingBit(vec4<u32>(global0.x, var_0.c.x, 0u, 1u)))), (~firstLeadingBit(u_input.c.x) | 4294967295u) < var_0.c.x, -397f, reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, u_input.d), vec3<i32>(var_0.a, var_0.a, u_input.d)), min(0i, 47591i), ~u_input.d, _wgslsmith_mod_i32(35451i, u_input.d)) >> (reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.x, 1u, 4294967295u, 4477u), vec4<u32>(4294967295u, 4294967295u, 29490u, 1u))) % vec4<u32>(32u))), vec2<u32>(~11761u, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, var_0.c.x))) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 99034u), var_0.c) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(ceil(-1216f))) - _wgslsmith_f_op_f32(abs(var_1.c))) <= 406f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(~vec3<i32>(-1i, 7383i, var_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.c, -830f)))) * var_1.c), vec2<i32>(u_input.d << (_wgslsmith_sub_u32(40084u, var_0.d.x) % 32u), select(40418i, _wgslsmith_dot_vec3_i32(var_1.d.yzx ^ vec3<i32>(13908i, 0i, -45918i), firstTrailingBit(vec3<i32>(-86088i, var_1.d.x, -1i))), !all(var_0.b))), -10698i);
}


struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.a;
    global0 = arg_2;
    let var_1 = i32(-1i) * -51053i;
    global1 = ~arg_2.b;
    return max(((-2147483647i | ~u_input.c.x) ^ 57053i) | arg_2.b, _wgslsmith_sub_i32(select(~var_1, _wgslsmith_clamp_i32(2147483647i, arg_2.d.x, 0i), false) >> (u_input.a % 32u), ~arg_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<i32>) -> i32 {
    global0 = Struct_1(global0.a, ~abs(func_3(arg_1, vec4<bool>(false, false, arg_0.c, true), arg_0)) ^ firstLeadingBit(select(i32(-1i) * -4516i, firstLeadingBit(26197i), true)), true, global0.d);
    let var_0 = _wgslsmith_sub_vec4_i32(global0.d & (-global0.d | (vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -15665i, arg_0.b, -1i))), -(~(_wgslsmith_clamp_vec4_i32(arg_0.d, vec4<i32>(2147483647i, -2147483647i, arg_2.x, u_input.c.x), vec4<i32>(u_input.c.x, -65187i, u_input.c.x, arg_0.d.x)) | arg_0.d)));
    let var_1 = arg_0;
    var var_2 = global0.c;
    global1 = -firstLeadingBit(_wgslsmith_add_i32(0i, var_1.b));
    return _wgslsmith_dot_vec3_i32(abs(arg_0.d.xwx), ~vec3<i32>(~arg_2.x, -1i, 0i));
}

fn func_2(arg_0: f32) -> i32 {
    global1 = -2147483647i;
    global1 = func_4(Struct_1(any(!vec4<bool>(false, global0.a, global0.c, false)), u_input.b, true, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, global0.b, 3982i, global0.b), vec4<i32>(-2147483647i, 0i, global0.d.x, 0i), vec4<i32>(u_input.b, -1i, 2147483647i, u_input.b)), vec4<i32>(global0.d.x, 36093i, 6193i, u_input.c.x) | vec4<i32>(53394i, u_input.b, u_input.c.x, 2567i), any(vec3<bool>(global0.c, true, true)))), vec4<i32>(0i, firstLeadingBit(8594i), -firstTrailingBit(-1930i), reverseBits(1i)), vec2<i32>(_wgslsmith_sub_i32(func_3(vec4<i32>(-2650i, 1i, 45568i, u_input.b), vec4<bool>(global0.a, true, true, true), Struct_1(global0.a, u_input.c.x, false, global0.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(-30076i, u_input.c.x, -1i), global0.d.wwx)), -6919i)) | -_wgslsmith_mod_i32(-func_4(Struct_1(global0.a, -11198i, global0.a, vec4<i32>(u_input.c.x, 12719i, u_input.b, -20638i)), global0.d, u_input.c.yz), min(global0.d.x, -20004i));
    global0 = Struct_1(global0.c, select(max(-2147483647i, countOneBits(-11129i)), _wgslsmith_clamp_i32(global0.b, -u_input.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), global0.d.xw)), global0.b >= ~(-68092i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) * -147f)) >= arg_0, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 4309i, global0.b)), -select(global0.d, vec4<i32>(global0.b, global0.b, u_input.c.x, 12664i), vec4<bool>(global0.a, false, false, global0.c))), -_wgslsmith_sub_vec4_i32(-global0.d, _wgslsmith_mod_vec4_i32(global0.d, vec4<i32>(global0.b, global0.d.x, 0i, global0.d.x)))));
    global0 = Struct_1(global0.a, -(~1i), global0.a, vec4<i32>(_wgslsmith_div_i32(func_4(Struct_1(false, global0.b, global0.c, vec4<i32>(u_input.b, 16634i, global0.d.x, -55540i)), vec4<i32>(u_input.b, global0.b, u_input.b, global0.b), vec2<i32>(u_input.b, u_input.b)), u_input.c.x), ~(~2147483647i), i32(-1i) * -68341i, reverseBits(10172i)) ^ (-(global0.d & global0.d) | global0.d));
    global1 = global0.d.x;
    return global0.b;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = -arg_2.b;
    let var_2 = arg_1;
    var var_3 = firstTrailingBit(vec4<i32>(max(74420i, _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, 5183i), u_input.c.x)), _wgslsmith_dot_vec3_i32(global0.d.xxx, vec3<i32>(global0.d.x, _wgslsmith_sub_i32(21174i, 2147483647i), 1i)), 2147483647i, _wgslsmith_mult_i32(func_2(arg_0), 43518i)));
    var_3 = vec4<i32>(_wgslsmith_add_i32(-firstLeadingBit(var_0.d.x) ^ 14372i, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.d.x, _wgslsmith_div_i32(global0.d.x, -2147483647i)), var_0.d.x)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-max(1i, 1i), var_2.b, 2147483647i), _wgslsmith_dot_vec2_i32(arg_1.d.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(62064i, var_3.x), vec2<i32>(-2147483647i, var_2.d.x))) >> (firstLeadingBit(1u) % 32u)), -func_2(arg_0), arg_1.d.x);
    return StorageBuffer((_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 0u), arg_3) << (arg_3 % vec3<u32>(32u))) & ~arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 465f, 1087f, arg_0)))), ~arg_3.x ^ _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, u_input.a), vec2<u32>(u_input.a, 114050u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec2<bool>(true, false)), countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.d.zz, select(global0.d.xy, global0.d.ww, global0.a)), ~global0.b)), any(!(!vec4<bool>(true, true, global0.a, global0.c))), global0.d);
    let var_1 = Struct_1(true, var_0.d.x, true, abs(var_0.d | (min(vec4<i32>(u_input.b, -2285i, var_0.b, 2147483647i), vec4<i32>(global0.b, 4830i, u_input.c.x, -40034i)) >> (~vec4<u32>(0u, 3264u, 59151u, 563u) % vec4<u32>(32u)))));
    let var_2 = var_1;
    var var_3 = reverseBits(_wgslsmith_mult_i32(~_wgslsmith_add_i32(var_0.b, var_2.b ^ -31949i), u_input.b));
    global0 = var_1;
    global0 = var_2;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(f32(-1f) * -2041f), var_1, Struct_1(false, _wgslsmith_sub_i32(var_2.d.x, u_input.c.x), false, vec4<i32>(var_1.d.x, 1i, _wgslsmith_add_i32(var_1.d.x, var_0.b), 0i >> (0u % 32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 59110u, 1u, 3938u), vec4<u32>(~0u, reverseBits(25314u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), abs(u_input.a))), 25131u, _wgslsmith_mult_u32(~(42786u << (u_input.a % 32u)), _wgslsmith_clamp_u32(~u_input.a, ~u_input.a, ~1u))));
}


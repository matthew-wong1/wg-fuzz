struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<u32> = vec2<u32>(3149u, 23544u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(-(abs(_wgslsmith_div_vec2_i32(arg_1.a, global0.yy)) | vec2<i32>(u_input.b, 10925i)), -(~(~global0.zx)));
    let var_1 = arg_1;
    global1 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(global1.x, 0u) >> (vec2<u32>(u_input.a, global1.x) % vec2<u32>(32u))) << (vec2<u32>(1u, _wgslsmith_sub_u32(u_input.a, 30327u)) % vec2<u32>(32u))) >> (countOneBits(~(~(~vec2<u32>(u_input.a, global1.x)))) % vec2<u32>(32u));
    var var_2 = countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, u_input.a, global1.x) << (vec3<u32>(16190u, global1.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(27357u, 32730u, global1.x), arg_0.x), vec3<u32>(~u_input.a, ~53930u, u_input.a << (0u % 32u))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 84152u, 73568u, 4570u), vec4<u32>(1u, global1.x, 4294967295u, 10874u)), ~0u, global1.x)));
    let var_3 = Struct_1(_wgslsmith_div_i32(arg_1.a.x ^ ~(-global0.x), 0i));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> bool {
    let var_0 = Struct_2(firstTrailingBit(arg_3));
    var var_1 = vec4<u32>(~(~u_input.a), ~(~global1.x), 8239u, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.a), 4294967295u)) | firstTrailingBit(vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(4294967295u, 39285u)), 1u, abs(4294967295u)) | vec4<u32>(global1.x, 50979u, 4294967295u, 1u));
    let var_2 = Struct_1(arg_0.a);
    global1 = vec2<u32>(39756u, 1u);
    return !(~select(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, global0.x), global0.xx), func_3(vec2<bool>(true, true), var_0, u_input.b, var_0)) >= ~arg_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -1530f, arg_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1612f, arg_2, arg_2, 495f) - vec4<f32>(-1641f, 1000f, -764f, arg_2))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 1054f, arg_2, 1633f), vec4<f32>(arg_2, arg_2, arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, 1000f, 1313f, arg_2))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -589f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1000f, 1147f, 397f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, arg_2, arg_2, -578f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, -333f, arg_2, arg_2), vec4<f32>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, true, true, true))))), select(!vec4<bool>(!arg_1, arg_1, true, arg_1), vec4<bool>(!any(vec2<bool>(true, true)), true, !arg_1, func_3(!vec2<bool>(true, arg_1), arg_0, u_input.b, Struct_2(arg_0.a))), func_3(vec2<bool>(func_2(Struct_1(30765i), -2477f, vec2<f32>(arg_2, 1752f), vec2<i32>(-1i, arg_0.a.x)), true), Struct_2(vec2<i32>(u_input.b, -19678i) << (vec2<u32>(global1.x, u_input.a) % vec2<u32>(32u))), -var_0.a.x, arg_0))));
    global0 = vec3<i32>(_wgslsmith_mult_i32(abs((var_0.a.x >> (global1.x % 32u)) >> (10428u % 32u)), -1i), u_input.b, -22893i);
    let var_2 = !all(vec4<bool>(all(select(vec3<bool>(arg_1, false, false), vec3<bool>(false, arg_1, true), arg_1)), all(select(vec2<bool>(false, arg_1), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec4<bool>(true, arg_1, true, false)) || true, func_2(Struct_1(var_0.a.x), -483f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_2) - var_1.xz), vec2<i32>(var_0.a.x, var_0.a.x) | vec2<i32>(u_input.b, arg_0.a.x))));
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_dot_vec4_i32(~abs(firstTrailingBit(vec4<i32>(var_3.a.x, var_0.a.x, var_3.a.x, 2584i))), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, var_3.a.x, 1i, global0.x)), -vec4<i32>(u_input.b, var_3.a.x, 1i, -1i))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = ~vec3<i32>(arg_0.a, 16094i, ~(~arg_0.a | arg_0.a));
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = -870f;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - 1671f)));
    return Struct_2(select(global0.yx, min(-vec2<i32>(u_input.b, var_0.a), vec2<i32>(0i, 21527i)), select(vec2<bool>(false, true), vec2<bool>(false, true), true)) | vec2<i32>(_wgslsmith_mod_i32(select(-7917i, global0.x, false), var_1.a), -3124i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = countOneBits(_wgslsmith_add_vec3_i32(firstTrailingBit(-select(vec3<i32>(arg_0.a.x, 1i, arg_0.a.x), vec3<i32>(-35473i, -19601i, var_0.a), true)), -reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, arg_1.a, -451i), vec3<i32>(arg_0.a.x, global0.x, 16767i)))));
    let var_2 = Struct_2(_wgslsmith_mult_vec2_i32(var_1.xz, abs(var_1.xz)));
    var var_3 = Struct_1(select(firstLeadingBit(var_2.a.x), 36918i, !(1u > global1.x)));
    let var_4 = Struct_2(min(vec2<i32>(arg_1.a, 1i), vec2<i32>(i32(-1i) * -2147483647i, ~(~(-6123i)))));
    return func_5(func_4(var_2, select(true, true, true) || func_2(Struct_1(u_input.b), 127f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(533f, 1000f))), abs(vec2<i32>(4070i, var_1.x))), -510f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(global0.xy), Struct_1(u_input.b));
    var_0 = Struct_2(countOneBits(vec2<i32>(global0.x, var_0.a.x)));
    var_0 = func_1(func_1(func_1(func_1(Struct_2(global0.xz), func_4(Struct_2(global0.yz), true, -644f)), Struct_1(_wgslsmith_clamp_i32(global0.x, -33901i, 2147483647i))), func_4(func_1(Struct_2(vec2<i32>(var_0.a.x, var_0.a.x)), func_4(Struct_2(vec2<i32>(var_0.a.x, u_input.b)), true, 1000f)), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -576f))))), func_4(Struct_2(global0.zx), true, _wgslsmith_f_op_f32(370f - 266f)));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~0i, ~func_5(Struct_1(1i)).a.x), 5180i, ~abs(global0.x) >> (u_input.a % 32u), abs(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a.x, global0.x, global0.x), -2147483647i))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, u_input.b, var_0.a.x, var_0.a.x) & ~vec4<i32>(29390i, global0.x, global0.x, u_input.b), -vec4<i32>(u_input.b, 0i, 0i, -39125i))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.a.x >> (global1.x % 32u), ~2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-18200i, global0.x) & global0.zx, vec2<i32>(1i, 2147483647i)), _wgslsmith_add_i32(func_1(Struct_2(vec2<i32>(global0.x, var_0.a.x)), Struct_1(-6829i)).a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, 31949i, var_0.a.x), vec4<i32>(global0.x, var_0.a.x, 15051i, -31624i)))), ~(-select(vec4<i32>(var_0.a.x, -2147483647i, -67474i, u_input.b), vec4<i32>(var_0.a.x, -29263i, -2147483647i, u_input.b), true))));
    let var_2 = Struct_1(~(~(-firstLeadingBit(-1i))));
    global0 = ~var_1.zyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1723f - -1597f) + _wgslsmith_f_op_f32(1000f * -412f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-114f)), _wgslsmith_f_op_f32(148f * 1094f), true))), 1f), 753f, -16699i, 262f, -863f);
}


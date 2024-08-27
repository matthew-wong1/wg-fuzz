struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = false;
    var var_1 = 561f;
    var var_2 = arg_0;
    var var_3 = arg_0;
    let var_4 = true;
    return var_2.a.wxy;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    global0 = u_input.b.x;
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(~(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, -1i), vec4<i32>(-1i, -1i, u_input.b.x, -13624i)) & vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x))), vec4<i32>(u_input.b.x, ~(u_input.b.x ^ u_input.b.x) << (select(arg_2, 4294967295u, true) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, -33354i | u_input.b.x), u_input.b.xy), ~u_input.b.x));
    var var_1 = vec3<f32>(-1000f, -504f, _wgslsmith_f_op_f32(406f - -1421f));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 102643u, arg_0.x, abs(u_input.a.x)), ~vec4<u32>(arg_2, arg_2, 4294967295u, 41843u)) ^ _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(4294967295u, 59759u, 55577u, arg_0.x)), ~vec4<u32>(u_input.a.x, 8813u, arg_0.x, 1u)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec2<i32>(~countOneBits(var_0.x), _wgslsmith_add_i32(-9424i, var_0.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(1236i, u_input.b.x, var_0.x, 1i), vec4<i32>(-1i, 30601i, u_input.b.x, u_input.b.x))) & -(~u_input.b.yz));
    let var_3 = Struct_1(~vec4<u32>(countOneBits(4294967295u), _wgslsmith_add_u32(4294967295u, max(u_input.a.x, 17819u)), ~4294967295u, arg_2), !(!select(!var_2.b, !var_2.b, vec3<bool>(var_2.b.x, true, var_2.b.x))), vec2<i32>(var_0.x, -(~(-u_input.b.x))));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = func_3(_wgslsmith_add_vec3_u32(func_2(arg_0), vec3<u32>(u_input.a.x, u_input.a.x | arg_1.a.x, _wgslsmith_sub_u32(~arg_1.a.x, _wgslsmith_add_u32(4294967295u, arg_1.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), arg_0.a.x);
    var var_1 = !select(vec2<bool>(!(!arg_3), !arg_3), vec2<bool>(true, true), select(arg_1.b.zz, vec2<bool>(var_0.b.x, !var_0.b.x), select(var_0.b.x != false, all(vec2<bool>(arg_0.b.x, var_0.b.x)), select(arg_0.b.x, arg_0.b.x, arg_3))));
    var var_2 = -381f;
    let var_3 = true;
    let var_4 = ~vec2<i32>(arg_2 << (7700u % 32u), min(var_0.c.x & u_input.b.x, ~(-14464i) << (~arg_0.a.x % 32u)));
    return u_input.a.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> vec3<bool> {
    global0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.x >> (arg_1 % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, -29707i, -33168i, 1i), vec4<i32>(1i, u_input.b.x, 9104i, arg_2), vec4<i32>(8506i, 0i, 1i, u_input.b.x)), vec4<i32>(-43466i, -46582i, -2147483647i, 0i), vec4<i32>(u_input.b.x, -1i, -1i, arg_0.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, arg_2, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, arg_2, -30755i), vec4<i32>(0i, u_input.b.x, arg_0.x, u_input.b.x))), _wgslsmith_mult_i32(max(2147483647i, arg_2), countOneBits(i32(-1i) * -2147483647i))), max(u_input.b.x, 1i));
    var var_0 = _wgslsmith_add_u32(firstTrailingBit((4294967295u & arg_1) & 60534u), arg_1);
    let var_1 = _wgslsmith_sub_vec2_u32((_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, arg_1), ~vec2<u32>(arg_1, arg_1)) & _wgslsmith_mult_vec2_u32(~u_input.a.zy, _wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(0u, arg_1)))) & u_input.a.wy, firstLeadingBit(u_input.a.yx));
    var_0 = ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(firstLeadingBit(arg_1), arg_1, arg_1), 4294967295u);
    global0 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(-16967i, abs(-1i)), -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-46770i, arg_2), vec2<i32>(u_input.b.x, arg_0.x)), vec2<i32>(0i, 1i))), u_input.b.yx);
    return select(vec3<bool>(func_3(_wgslsmith_sub_vec3_u32(u_input.a.wwz, u_input.a.xyz), 686f, ~u_input.a.x).b.x, any(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), !(_wgslsmith_f_op_f32(select(885f, 1164f, false)) < 1240f)), vec3<bool>(true, true, false), any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    global0 = u_input.b.x;
    var var_0 = select(any(func_4(vec2<i32>(u_input.b.x, 20624i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), func_1(Struct_1(vec4<u32>(27809u, u_input.a.x, 59873u, u_input.a.x), vec3<bool>(true, false, true), u_input.b.yx), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u), vec3<bool>(true, true, false), u_input.b.xy), u_input.b.x, true) & 1u, -u_input.b.x)), true, !((0u == (u_input.a.x & u_input.a.x)) & true));
    let var_1 = 3337u;
    var_0 = false;
    var var_2 = true;
    var_0 = select(true | all(vec2<bool>(all(vec3<bool>(true, false, false)), true)), !(!select(true, false, false)) & true, func_4(_wgslsmith_div_vec2_i32(max(u_input.b.yx, vec2<i32>(-11369i, 1i)), u_input.b.xz), var_1, _wgslsmith_mod_i32(u_input.b.x, min(firstLeadingBit(u_input.b.x), -99007i))).x);
    let x = u_input.a;
    s_output = StorageBuffer(-489f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(sign(532f)), 1732f, 100f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, 396f, 681f, -198f) + vec4<f32>(762f, 1005f, 733f, -1590f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1547f, 371f, 453f, -221f) - vec4<f32>(385f, -1225f, 229f, 1947f))))))), u_input.b.x);
}


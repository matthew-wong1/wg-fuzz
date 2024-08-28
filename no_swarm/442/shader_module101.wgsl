struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1455f, 769f, -1000f), 0u, vec4<u32>(67078u, 31164u, 11975u, 3823u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: f32) -> vec4<f32> {
    var var_0 = 78390u;
    var_0 = 4220u;
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, abs(-u_input.c), arg_0), vec3<i32>(-35696i, firstLeadingBit(2487i), u_input.c) << (_wgslsmith_mult_vec3_u32(u_input.b, (u_input.b >> (global0.c.yyx % vec3<u32>(32u))) | vec3<u32>(arg_1.x, 22268u, 13279u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, _wgslsmith_div_i32(reverseBits(5766i), 25400i)), ~var_1.xz);
    let var_3 = _wgslsmith_sub_i32(var_2.x, -34510i);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), 554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -801f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    global0 = Struct_1(global0.a, _wgslsmith_mult_u32(arg_1.x, reverseBits(countOneBits(arg_1.x)) ^ u_input.d.x), u_input.d);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a, ~vec2<u32>(arg_1.x, arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(floor(256f)), _wgslsmith_f_op_f32(-496f - 1347f), 918f), -1144f))));
    var var_1 = firstTrailingBit(min(reverseBits(min(~u_input.b.yz, max(arg_1.zx, global0.c.wx))), arg_1.xy));
    var var_2 = vec3<bool>(true, true, true);
    var_1 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.x), global0.c.xw) & vec2<u32>(_wgslsmith_mult_u32(abs(29565u), _wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.d.xz)), global0.c.x));
    return 1000f;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec3<bool> {
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -166f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(select(global0.a.yy, global0.a.yx, false)), select(global0.c.yww, u_input.b, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(select(-774f, 622f, arg_1.a.x))))), global0.c.x, ~firstTrailingBit(u_input.d));
    var var_0 = vec3<i32>(countOneBits(u_input.c), _wgslsmith_sub_i32(reverseBits(-11169i), countOneBits(u_input.a)), u_input.a);
    var_0 = vec3<i32>(-1i) * -vec3<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.c >> (4294967295u % 32u), -41923i), -(u_input.a << (global0.c.x % 32u)));
    let var_1 = firstTrailingBit(vec4<u32>(firstLeadingBit(u_input.b.x ^ 0u) << (0u % 32u), global0.b, ~10148u, 4294967295u));
    let var_2 = u_input.a;
    return vec3<bool>(true, arg_2, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(select(vec3<bool>(false, true, true), func_1(-363f, Struct_3(vec3<bool>(false, false, true), vec3<u32>(43447u, 35867u, global0.b)), any(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true)), !vec3<bool>(false, all(vec2<bool>(true, false)), all(vec2<bool>(true, true))), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.d), ~u_input.d), global0.c.x, ~u_input.d.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1113f, global0.a.x, -1258f)) * vec3<f32>(_wgslsmith_f_op_f32(1000f + -282f), 1000f, global0.a.x)) * global0.a), 25430u, ~select(u_input.d, firstTrailingBit(vec4<u32>(4294967295u, var_0.b.x, global0.c.x, 4294967295u)), vec4<bool>(true, true, true, false)));
    global0 = var_1;
    global0 = Struct_1(global0.a, global0.b, var_1.c);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1777f))))), countOneBits(u_input.b.x), ~var_1.c);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(func_3(u_input.c, var_1.c.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a, var_1.a))), -1000f)).wz, global0.c.zyx)), _wgslsmith_f_op_f32(abs(-712f)), -1011f);
    let var_3 = var_0;
    var var_4 = Struct_1(var_2, ~global0.b, vec4<u32>(~(~65763u) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1547u, var_3.b.x, var_3.b.x), u_input.d)) % 32u), global0.c.x, 0u, ~firstLeadingBit(~u_input.b.x)));
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, 31821i, 0i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a), vec4<i32>(u_input.a, u_input.c, -5244i, u_input.c))) | -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-41235i, u_input.a)), var_4.c.wy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1121f + var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1350f), global0.a.x)), _wgslsmith_f_op_f32(ceil(-1937f)))).yyy, ~(~(~(var_3.b.x ^ 28207u))), ~var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(435f, -reverseBits(-(~(-8018i))), ~var_3.b, _wgslsmith_sub_vec2_u32(select(var_4.c.xw, vec2<u32>(firstLeadingBit(97221u), _wgslsmith_mult_u32(var_3.b.x, var_0.b.x)), vec2<bool>(!var_0.a.x, !var_0.a.x)), ~var_0.b.xy));
}


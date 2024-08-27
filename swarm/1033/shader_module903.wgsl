struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    var var_0 = vec3<f32>(750f, arg_2.c, arg_2.c);
    let var_1 = vec3<bool>(arg_2.b && arg_2.b, any(vec4<bool>(arg_2.b, all(!vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b)), all(select(vec4<bool>(true, true, arg_2.b, arg_2.b), vec4<bool>(false, false, true, false), vec4<bool>(true, false, arg_2.b, arg_2.b))), true)), !(!(!(!arg_2.b))));
    let var_2 = false;
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(1431f, -1509f)), _wgslsmith_f_op_f32(sign(2193f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_2.c, -296f))))))));
    var var_3 = 1152u;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1938f)) - _wgslsmith_f_op_f32(-1000f + var_0.x)))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec4<bool> {
    var var_0 = true;
    let var_1 = Struct_3(max(arg_0.x, abs(-_wgslsmith_sub_i32(u_input.b, -1i))), Struct_2(Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 16421u, 4294967295u)), vec4<u32>(0u, 0u, 54613u, 13727u)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(568f)), _wgslsmith_f_op_f32(f32(-1f) * -2129f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, arg_0, Struct_1(vec4<u32>(0u, 4294967295u, 1u, 9146u), true, -1140f), vec3<i32>(16326i, u_input.a, -57217i))) - _wgslsmith_f_op_f32(round(-488f))) - _wgslsmith_f_op_f32(f32(-1f) * -1538f)), select(!(!vec2<bool>(arg_1, true)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1), !(20103i > u_input.b)), arg_1, -max(_wgslsmith_sub_vec3_i32(arg_0, arg_0), reverseBits(arg_0))));
    return vec4<bool>((false && (var_1.b.a.b || var_1.b.c.x)) && false, all(!vec4<bool>(!var_1.b.a.b, arg_1, true, var_1.b.a.a.x == var_1.b.a.a.x)), arg_1, all(!vec4<bool>(var_1.a > var_1.a, var_1.b.c.x, var_1.b.d != true, var_1.b.a.c < 752f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(984f, -1484f))))));
    let var_1 = Struct_1(vec4<u32>(firstTrailingBit(~4294967295u), _wgslsmith_dot_vec4_u32(min(max(vec4<u32>(4294967295u, 14430u, 10801u, 0u), vec4<u32>(1u, 46219u, 74110u, 1u)), vec4<u32>(13854u, 1u, 2353u, 4294967295u)), ~reverseBits(vec4<u32>(0u, 3324u, 4294967295u, 51245u))), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(103469u, 4294967295u, 40352u), 0u), ~24915u), ~(~_wgslsmith_add_u32(0u, 1u))), true, -809f);
    let var_2 = vec2<bool>(func_2(~vec3<i32>(arg_0.x, u_input.b, abs(arg_0.x)), arg_1.x).x, true);
    let var_3 = Struct_4(arg_1.x, vec2<bool>(true, all(vec3<bool>(true, arg_3, var_2.x && arg_1.x))), Struct_3(reverseBits(_wgslsmith_dot_vec3_i32(min(arg_0.yyz, arg_0.yzy), countOneBits(arg_0.zxw))), Struct_2(Struct_1(vec4<u32>(0u, var_1.a.x, var_1.a.x, var_1.a.x), false, -1820f), _wgslsmith_f_op_f32(exp2(var_1.c)), var_2, true, abs(arg_2 & arg_2))));
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1055f - -2105f)))), 1446f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(step(var_0, 805f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.b.b, -1000f, -565f, var_0) * vec4<f32>(-1110f, 396f, var_3.c.b.b, 519f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.b.a.c, var_3.c.b.b, var_0, var_1.c))))))));
    return _wgslsmith_add_vec3_i32(select(abs(abs(select(arg_0.zwy, arg_0.xwx, arg_3))), ~(~select(var_3.c.b.e, arg_2, arg_1.zxx)), vec3<bool>(arg_3, var_3.c.b.d, var_2.x)), vec3<i32>(-2147483647i, 5364i, -54278i) | abs(vec3<i32>(min(0i, arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.b.e.x, arg_0.x, arg_2.x, -1i), vec4<i32>(35181i, u_input.b, -1i, arg_2.x)), 0i)));
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = any(select(!select(select(vec4<bool>(arg_0.b.c.x, arg_0.b.d, arg_0.b.a.b, arg_0.b.c.x), vec4<bool>(false, true, true, false), vec4<bool>(false, false, arg_0.b.a.b, true)), !vec4<bool>(false, arg_0.b.d, true, false), false), select(vec4<bool>(arg_0.b.c.x != arg_0.b.a.b, any(vec3<bool>(false, arg_0.b.a.b, arg_0.b.a.b)), true, any(arg_0.b.c)), select(!vec4<bool>(true, false, true, arg_0.b.d), !vec4<bool>(arg_0.b.d, false, arg_0.b.d, arg_0.b.a.b), true), true), arg_0.b.a.b));
    let var_1 = vec4<u32>(arg_0.b.a.a.x, arg_0.b.a.a.x, 22879u, select(0u, 62767u, arg_0.b.d));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(select(-(~vec3<i32>(u_input.a, 1i, arg_0.b.e.x)), func_4(vec4<i32>(0i, -29349i, -2147483647i, arg_0.a) >> (arg_0.b.a.a % vec4<u32>(32u)), func_2(vec3<i32>(u_input.b, 1i, arg_0.b.e.x), false), arg_0.b.e << (var_1.zwx % vec3<u32>(32u)), any(vec4<bool>(true, arg_0.b.a.b, var_0, var_0))), select(!vec3<bool>(arg_0.b.d, false, false), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(arg_0.b.a.b, arg_0.b.c.x, false)), true)), vec3<i32>(arg_0.a, u_input.a, arg_0.a)), arg_0.b);
    let var_3 = Struct_4(!var_2.b.d, vec2<bool>(any(select(vec2<bool>(var_2.b.c.x, var_0), !var_2.b.c, arg_0.b.a.a.x >= var_2.b.a.a.x)), any(select(!arg_0.b.c, vec2<bool>(var_0, var_0), true))), Struct_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~arg_0.b.e.yy, arg_0.b.e.yy), min(-9390i, -17838i), ~(0i >> (var_1.x % 32u))), var_2.b));
    let var_4 = vec2<i32>(-2147483647i, u_input.a);
    return vec2<bool>(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, var_4.x, 28612i) & arg_0.b.e, abs(var_3.c.b.e), reverseBits(vec3<i32>(var_3.c.b.e.x, var_4.x, var_3.c.b.e.x))) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(var_4.x, var_3.c.a, -2147483647i), ~vec3<i32>(arg_0.a, arg_0.a, -1i)), select(arg_0.b.d, all(arg_0.b.c), false)).x, any(vec4<bool>(!(var_2.a != arg_0.a), true, !(var_2.b.a.c <= 482f), var_2.b.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(15477i, Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), true, -212f), 361f, vec2<bool>(true, true), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_sub_i32(-21361i, u_input.a), 2147483647i, i32(-1i) * -67822i))));
    var var_1 = func_1(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1216f, -1066f))), 164f)), 1i, var_0.b.e.x, max(_wgslsmith_mod_vec4_u32(min(var_0.b.a.a, vec4<u32>(var_0.b.a.a.x, 37320u, var_0.b.a.a.x, var_0.b.a.a.x)) ^ select(var_0.b.a.a, var_0.b.a.a, var_1.x), vec4<u32>(var_0.b.a.a.x, var_0.b.a.a.x, ~var_0.b.a.a.x, ~111158u)), vec4<u32>(var_0.b.a.a.x, 31092u | ~var_0.b.a.a.x, ~var_0.b.a.a.x, ~(~var_0.b.a.a.x))), -u_input.a);
}


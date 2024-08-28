struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17119u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1006f)))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = ~(arg_0.b.x << (abs(u_input.a.x) % 32u));
    global0 = u_input.a.x;
    let var_1 = true;
    let var_2 = vec3<bool>(arg_3.x, all(vec3<bool>(arg_3.x, !(!var_1), all(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_3.x)))), arg_0.a.x);
    var var_3 = _wgslsmith_f_op_f32(func_3(u_input.a.x)) == arg_2;
    return (_wgslsmith_mult_vec3_u32(~(~u_input.a.zyz), select(_wgslsmith_div_vec3_u32(u_input.a.xwz, u_input.a.xzw), vec3<u32>(u_input.a.x, 38882u, u_input.a.x), !vec3<bool>(true, false, var_1))) << (~(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) % vec3<u32>(32u))) >> (max(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 20523u, 7195u), firstTrailingBit(vec3<u32>(30883u, 57467u, u_input.a.x))), reverseBits(select(vec3<u32>(u_input.a.x, 43101u, u_input.a.x), vec3<u32>(9392u, 13171u, 1u), var_2.x))), u_input.a.wxw) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~func_2(Struct_1(vec4<bool>(false, true, true, true), u_input.b.zyz, vec3<bool>(true, true, true)), -1365f, -1068f, vec3<bool>(true, false, true)), u_input.a.yxy), min(u_input.a.x, ~countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, arg_0.x) << (vec3<u32>(u_input.a.x, arg_0.x, u_input.a.x) % vec3<u32>(32u)), u_input.a.zwx ^ vec3<u32>(4294967295u, arg_0.x, 0u)), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x & 1u, _wgslsmith_clamp_u32(arg_0.x, 1u, 271u))));
    var var_1 = !select(vec2<bool>(true, any(vec3<bool>(true, true, false)) & any(vec2<bool>(true, false))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), true);
    let var_2 = Struct_1(!vec4<bool>(var_1.x, !var_1.x, all(select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), true)), !var_1.x), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(u_input.b.yxx, vec3<i32>(u_input.c, 0i, u_input.b.x)), u_input.b.xwx, false), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, -2147483647i), ~u_input.b.x, 0i)), vec3<i32>(-1994i, i32(-1i) * -u_input.c, 1i)), vec3<bool>(all(!vec4<bool>(true, var_1.x, var_1.x, false)), var_1.x, all(select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(var_1.x, false, var_1.x, true)), false))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1476f) - 459f), -767f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(870f + 775f), _wgslsmith_f_op_f32(select(-604f, 420f, false)), var_2.c.x & false)) + -1000f) * _wgslsmith_f_op_f32(995f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1054f + 759f) - _wgslsmith_f_op_f32(151f - 1743f))))));
    var_1 = vec2<bool>(var_2.c.x != any(var_2.a.zx), var_1.x);
    return Struct_1(vec4<bool>(_wgslsmith_f_op_f32(round(var_3)) > -1377f, false, true, var_2.a.x), _wgslsmith_div_vec3_i32(u_input.b.xzy, select(var_2.b, var_2.b, select(var_2.a.wxx, vec3<bool>(var_1.x, var_1.x, false), var_2.a.xzy)) ^ u_input.b.zzw), var_2.a.zyz);
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global0 = 65529u;
    global0 = _wgslsmith_clamp_u32(~_wgslsmith_add_u32(44764u, ~u_input.a.x), 0u, firstLeadingBit(~u_input.a.x));
    let var_0 = arg_0;
    global0 = _wgslsmith_div_u32(reverseBits(u_input.a.x), firstTrailingBit(u_input.a.x));
    global0 = u_input.a.x;
    return ~_wgslsmith_mult_vec4_i32(-u_input.b, ~(~vec4<i32>(var_0.b.x, 32365i, arg_0.b.x, 5299i)));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = min(max(u_input.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 96759u, u_input.a.x), _wgslsmith_div_vec4_u32(u_input.a, select(vec4<u32>(u_input.a.x, u_input.a.x, 32975u, u_input.a.x), u_input.a, arg_0.x)))), u_input.a);
    var var_1 = ~1u;
    var_1 = ~(~(~u_input.a.x));
    global0 = ~(0u ^ max(_wgslsmith_clamp_u32(2212u, _wgslsmith_sub_u32(u_input.a.x, var_0.x), var_0.x), 56452u));
    var var_2 = Struct_1(!vec4<bool>(!all(vec4<bool>(arg_0.x, true, arg_2.x, true)), arg_2.x, false, true || any(vec2<bool>(true, arg_2.x))), -vec3<i32>(_wgslsmith_clamp_i32(arg_1, -arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(10648i, arg_1, -2147483647i, arg_3.x), u_input.b)), 9024i, reverseBits(_wgslsmith_mod_i32(-2147483647i, 22689i))), arg_0);
    return Struct_1(var_2.a, u_input.b.xzz, select(!arg_0, select(select(arg_0, select(arg_0, arg_0, vec3<bool>(arg_0.x, var_2.a.x, false)), !arg_0.x), vec3<bool>(var_2.a.x, true && arg_0.x, arg_2.x), !(!vec3<bool>(arg_2.x, var_2.a.x, var_2.c.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<bool>(true, true, false), ~(-_wgslsmith_div_i32(-u_input.c, _wgslsmith_mult_i32(56028i, u_input.b.x))), vec2<bool>(all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))))), func_4(func_1(~(~u_input.a))));
    let var_1 = var_0;
    var var_2 = 4294967295u == _wgslsmith_mod_u32(~u_input.a.x, 1u);
    var_2 = var_1.a.x | (u_input.c < _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -7205i, -34315i, 2147483647i), u_input.b & u_input.b), var_0.b.x));
    let var_3 = 1084f;
    global0 = 1u;
    let var_4 = !var_0.a.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}


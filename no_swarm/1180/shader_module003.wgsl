struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    return max(52575u, (1u | _wgslsmith_mod_u32(1u, u_input.a)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c, vec3<u32>(u_input.a, 57801u, 1722u)), firstTrailingBit(u_input.c)) % 32u));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = -arg_1;
    let var_2 = vec3<u32>(4294967295u, _wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(func_2(), u_input.c.x)), 7613u);
    var var_3 = Struct_3(arg_2, arg_2, firstTrailingBit(~(-21268i)) == var_0, arg_2.d, -arg_2.d ^ u_input.b);
    var var_4 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.zx >> (min(vec2<u32>(69238u, 1063u), vec2<u32>(var_3.a.a, 0u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a, 10376u), vec2<u32>(68035u, 4294967295u) >> (vec2<u32>(u_input.c.x, var_3.b.a) % vec2<u32>(32u)))) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(max(u_input.c.yz, vec2<u32>(79105u, var_3.b.a)), vec2<u32>(var_3.b.b, u_input.c.x)), 0u), ~(~(~vec2<u32>(var_3.b.b, arg_2.b))));
    return var_3.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = max(_wgslsmith_dot_vec2_i32(-(reverseBits(arg_0.d) << (u_input.c.yz % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(abs(u_input.b), arg_0.d) & countOneBits(u_input.b)), 0i);
    let var_1 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_2.x, -1i)), arg_0.d);
    let var_2 = Struct_2(arg_0, Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(9154u, u_input.a, 0u), countOneBits(vec3<u32>(arg_0.a, 4294967295u, arg_0.b))), u_input.c.x, vec4<f32>(-1686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) * _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_1.x - arg_0.c.x))), _wgslsmith_f_op_f32(-321f - 337f)), ~select(vec2<i32>(-1i, 34191i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1), arg_2.xy), any(vec3<bool>(true, true, true)))), 89435u, !any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true)), ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.a, u_input.c.x), firstLeadingBit(57540u)), _wgslsmith_mod_u32(~u_input.c.x, ~arg_0.a)));
    var_0 = var_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_1);
    return firstLeadingBit(vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(0u, arg_0.b))) & vec2<u32>((u_input.c.x ^ arg_0.a) & ~u_input.a, _wgslsmith_mod_u32(~var_2.c, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u & _wgslsmith_dot_vec2_u32(~u_input.c.zz, u_input.c.yx);
    let var_1 = _wgslsmith_div_f32(1310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f * 1f)));
    var var_2 = firstLeadingBit(~countOneBits(vec2<u32>(90208u, 114616u) << (u_input.c.xx % vec2<u32>(32u))));
    var_2 = _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.zx, func_3(func_1(-5239i, 25656i, Struct_1(1u, u_input.a, vec4<f32>(-1000f, var_1, var_1, var_1), vec2<i32>(-1i, 0i)), vec2<f32>(-1403f, var_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1830f, -622f), vec2<f32>(var_1, -807f), vec2<bool>(true, false))), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 44098i))), _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.yx)), func_3(Struct_1(17923u, func_3(Struct_1(54551u, 0u, vec4<f32>(var_1, var_1, 276f, var_1), vec2<i32>(-2147483647i, u_input.b.x)), vec2<f32>(var_1, var_1), vec4<i32>(51087i, u_input.b.x, u_input.b.x, u_input.b.x)).x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1236f, -1000f, var_1, var_1)), countOneBits(vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1008f, -892f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, 348f))), abs(vec4<i32>(-8019i, 0i, -1i, u_input.b.x) >> (vec4<u32>(var_0, 0u, 49675u, var_2.x) % vec4<u32>(32u)))), u_input.c.xx));
    var var_3 = Struct_2(Struct_1(var_2.x, 1u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, var_1, var_1, 480f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -376f, 334f, 781f), vec4<f32>(var_1, var_1, var_1, var_1), false))))), func_1(abs(_wgslsmith_add_i32(38528i, u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, firstLeadingBit(2147483647i)), func_1(u_input.b.x, ~u_input.b.x, Struct_1(var_0, var_0, vec4<f32>(var_1, -884f, var_1, 619f), u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-343f, 683f) + vec2<f32>(1953f, 1033f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) - vec2<f32>(var_1, -154f))).d), Struct_1(u_input.c.x, func_1(-46027i, ~u_input.b.x ^ u_input.b.x, func_1(-10236i, -2147483647i, Struct_1(u_input.c.x, 2434u, vec4<f32>(var_1, var_1, 1091f, 1060f), vec2<i32>(-12920i, -59195i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, var_1))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1)), var_1)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1483f, var_1, var_1, var_1), vec4<f32>(var_1, -1078f, var_1, var_1))))), vec2<i32>(-(0i >> (u_input.a % 32u)), ~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), ~1u, func_2() > ~(~(~var_0)), u_input.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(-3703i, ~_wgslsmith_mod_vec3_u32(vec3<u32>(select(24424u, 30482u, true), var_0, ~0u), ~abs(vec3<u32>(u_input.c.x, var_3.a.b, var_0))), ~_wgslsmith_add_vec4_i32(-vec4<i32>(23834i, -43486i, u_input.b.x, u_input.b.x) & select(vec4<i32>(17915i, u_input.b.x, 6719i, 11456i), vec4<i32>(1278i, 28247i, var_3.a.d.x, u_input.b.x), false), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_3.a.d.x, u_input.b.x, 15468i), vec4<i32>(u_input.b.x, 2147483647i, 34541i, 99950i))), ~(~var_0));
}


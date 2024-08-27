struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> bool {
    let var_0 = vec4<u32>(12905u, firstTrailingBit(~84022u), ~(u_input.e.x ^ ~u_input.b), countOneBits(0u) >> (u_input.e.x % 32u));
    let var_1 = _wgslsmith_dot_vec2_u32(~global0.b.zx, _wgslsmith_div_vec2_u32(var_0.yz, ~u_input.d.zx));
    let var_2 = Struct_1(~u_input.a, (vec3<u32>(~50409u, 14966u, 8502u) >> (var_0.xwz % vec3<u32>(32u))) << (select(var_0.wwz, firstLeadingBit(firstTrailingBit(vec3<u32>(var_1, var_1, 1u))), any(vec4<bool>(arg_2, true, true, global0.d.x))) % vec3<u32>(32u)), global0.d.yz, global0.d);
    var var_3 = ~u_input.d.x;
    let var_4 = false;
    return !(arg_2 || global0.d.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.x)))) + _wgslsmith_f_op_f32(round(arg_0.x))) + _wgslsmith_f_op_f32(ceil(-263f))));
    global0 = Struct_1(vec4<i32>(select(_wgslsmith_clamp_i32(min(u_input.a.x, u_input.a.x), u_input.a.x ^ 1i, _wgslsmith_clamp_i32(-28032i, u_input.a.x, u_input.a.x)), ~(-global0.a.x), func_3(var_1, ~u_input.a.wy, 0i < u_input.a.x)), firstLeadingBit(-2147483647i), _wgslsmith_add_i32(-47449i ^ (u_input.a.x | global0.a.x), -global0.a.x ^ (i32(-1i) * -1i)), firstTrailingBit(-40946i)), vec3<u32>(reverseBits(~u_input.d.x) & ~select(global0.b.x, 4294967295u, arg_1), ((45486u << (global0.b.x % 32u)) & _wgslsmith_add_u32(global0.b.x, u_input.d.x)) ^ u_input.b, ~0u), !(!global0.c), global0.d);
    global0 = Struct_1(u_input.a, max(select(u_input.d, ~select(global0.b, vec3<u32>(1u, 34375u, u_input.c.x), vec3<bool>(global0.d.x, global0.c.x, true)), vec3<bool>(true, global0.d.x, 890f >= var_1)), ~(~vec3<u32>(4294967295u, global0.b.x, 0u))), global0.c, global0.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, arg_0.x, _wgslsmith_f_op_f32(round(288f))));
    return ~(~firstTrailingBit(global0.b.x));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = select(vec4<u32>(u_input.c.x, 4294967295u, arg_0, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(14326u, 41430u, u_input.c.x, arg_0), vec4<u32>(arg_0, global0.b.x, arg_0, arg_0)))), ~(~countOneBits(vec4<u32>(global0.b.x, 4843u, 51389u, global0.b.x))), global0.c.x);
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(global0.b.x, 50166u) << (~arg_0 % 32u), global0.b.x), firstLeadingBit(min(_wgslsmith_add_u32(1u, 49u), select(1u, 4294967295u, global0.d.x))), ~_wgslsmith_mult_u32(func_2(arg_1.zy, global0.c.x), 0u)), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, arg_0, 73154u, 55612u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global0.b.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(u_input.b, 1247u, global0.b.x, global0.b.x), global0.d), vec4<u32>(30610u, u_input.b, global0.b.x, var_0.x)), ~vec4<u32>(global0.b.x, 4294967295u, 1u, 1u)));
    let var_1 = Struct_1(-u_input.a, abs(~vec3<u32>(4294967295u, 4294967295u, var_0.x) << (select(global0.b, min(vec3<u32>(0u, arg_0, 0u), u_input.d), true) % vec3<u32>(32u))), global0.d.zw, global0.d);
    let var_2 = u_input.a.zx;
    global0 = Struct_1(u_input.a, vec3<u32>(_wgslsmith_dot_vec3_u32(abs(~var_0.zzy), vec3<u32>(arg_0 | u_input.c.x, var_1.b.x, 1u)), _wgslsmith_add_u32(var_1.b.x, _wgslsmith_mult_u32(4294967295u << (var_0.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(43722u, var_0.x, 17067u, u_input.b), vec4<u32>(global0.b.x, var_0.x, global0.b.x, u_input.d.x)))), u_input.e.x), vec2<bool>(true, all(vec3<bool>(global0.c.x, true, false)) || any(var_1.d)), var_1.d);
    return Struct_1(min(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -6591i, select(-2147483647i, 40910i, global0.d.x), 43185i, reverseBits(1i)), vec4<i32>(var_2.x, -3516i, 11106i, -1i) & abs(vec4<i32>(u_input.a.x, 52061i, 1i, var_1.a.x))), _wgslsmith_mult_vec4_i32(-u_input.a, global0.a << (vec4<u32>(global0.b.x, var_1.b.x, var_1.b.x, u_input.b) % vec4<u32>(32u))) & -(vec4<i32>(u_input.a.x, global0.a.x, 0i, 0i) >> (vec4<u32>(var_0.x, 0u, var_0.x, 0u) % vec4<u32>(32u)))), vec3<u32>(arg_0, var_0.x, ~firstLeadingBit(_wgslsmith_mult_u32(0u, 0u))), vec2<bool>(global0.d.x, !func_3(-1122f, max(vec2<i32>(-1i, u_input.a.x), var_1.a.xy), arg_0 <= 0u)), select(var_1.d, !(!var_1.d), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_mod_u32(~(~global0.b.x & 39337u), u_input.e.x), vec3<f32>(1f, 1f, 1f));
    let var_0 = abs(abs(-min(select(vec4<i32>(-50772i, u_input.a.x, 57668i, -17495i), global0.a, false), vec4<i32>(17106i, -2147483647i, -2147483647i, global0.a.x))));
    global0 = Struct_1(_wgslsmith_div_vec4_i32(u_input.a, ~max(vec4<i32>(var_0.x, 2147483647i, -1i, 2147483647i) & vec4<i32>(1i, var_0.x, var_0.x, 0i), -vec4<i32>(28549i, 45338i, 86722i, var_0.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(global0.b.x, _wgslsmith_mult_u32(u_input.c.x, 1u), ~global0.b.x), ~firstTrailingBit(vec3<u32>(global0.b.x, 1u, 1u)) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(global0.b.zz, u_input.d.zx), func_1(global0.b.x, vec3<f32>(-1000f, -823f, -1455f)).b.x, global0.b.x)), global0.c, select(select(!(!vec4<bool>(true, global0.d.x, false, global0.c.x)), select(global0.d, func_1(global0.b.x, vec3<f32>(1231f, 1472f, -190f)).d, vec4<bool>(true, global0.d.x, true, false)), !(!global0.d)), global0.d, global0.d));
    global0 = Struct_1(_wgslsmith_mult_vec4_i32(global0.a, u_input.a >> (min(vec4<u32>(u_input.b, 34373u, 36272u, global0.b.x) >> (vec4<u32>(global0.b.x, global0.b.x, global0.b.x, u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, global0.b.x, 4294967295u, 0u) & vec4<u32>(u_input.e.x, u_input.d.x, global0.b.x, 0u)) % vec4<u32>(32u))), select(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 1u, global0.b.x), vec3<u32>(25291u, 4294967295u, 1u)), global0.b, true) >> (vec3<u32>(45741u, ~_wgslsmith_add_u32(36397u, u_input.c.x), global0.b.x) % vec3<u32>(32u)), select(global0.c, !global0.d.wz, vec2<bool>(true, func_3(-695f, firstLeadingBit(u_input.a.zy), func_1(1u, vec3<f32>(-255f, 1317f, 394f)).c.x))), func_1(u_input.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-724f, 1196f, -502f), vec3<f32>(270f, 1710f, 341f)))) * vec3<f32>(-923f, _wgslsmith_f_op_f32(ceil(-1000f)), -719f))).d);
    var var_1 = vec2<bool>(all(global0.c), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(global0.a.wwx, -_wgslsmith_clamp_vec3_i32(var_0.wyy, global0.a.xyy, global0.a.yyx)), -12858i));
}


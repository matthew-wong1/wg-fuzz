struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_3) -> bool {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a * global0.a)))) * 518f), global0.b, global0.c, 51848i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-u_input.a.x, -1i), u_input.a.x));
    return true;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<bool>) -> u32 {
    let var_0 = global0.c;
    global0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))))), ~var_0.d, arg_1, ~(arg_1.e >> (abs(abs(arg_1.c.x)) % 32u)), u_input.a.x);
    global0 = Struct_2(940f, _wgslsmith_mod_vec2_u32(~(min(var_0.d, global0.c.d) ^ firstLeadingBit(var_0.d)), var_0.d >> (arg_1.d % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -642f), u_input.a.x ^ -2147483647i, ~((vec3<u32>(global0.c.d.x, arg_1.d.x, global0.c.d.x) >> (vec3<u32>(30397u, 1u, arg_1.d.x) % vec3<u32>(32u))) << (~vec3<u32>(arg_1.c.x, 145130u, var_0.c.x) % vec3<u32>(32u))), var_0.c.xz, arg_1.b), min(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, -arg_1.b, u_input.a.x << (0u % 32u))), _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_1.e, arg_1.e, u_input.a.x, global0.d), vec4<i32>(42193i, 1i, global0.c.b, 2147483647i) >> (vec4<u32>(arg_1.d.x, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(1i, -2147483647i, ~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, 16881i, -1i), vec3<i32>(u_input.a.x, 0i, -1i))))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(1i, u_input.a.x, -2147483647i)), vec3<i32>(min(_wgslsmith_div_i32(1i, var_0.e), -33127i), _wgslsmith_mult_i32(2963i, u_input.a.x), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a))));
    global0 = Struct_2(_wgslsmith_f_op_f32(min(-651f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-943f, arg_1.a)))))), ~vec2<u32>(4294967295u, max(1u, 42693u)), arg_1, var_0.b, arg_1.b);
    var var_1 = !select(arg_3.ywx, vec3<bool>(arg_0.a, all(!arg_3.xxy), true), vec3<bool>(true, false, true));
    return 20292u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_2(global0.a, select(~min(_wgslsmith_add_vec2_u32(arg_0.zz, vec2<u32>(arg_3.c.x, 0u)), vec2<u32>(45463u, arg_2.x) << (vec2<u32>(global0.b.x, 30627u) % vec2<u32>(32u))), ~vec2<u32>(37926u >> (arg_0.x % 32u), min(arg_3.d.x, 4294967295u)), !(!(!arg_1.yy))), arg_3, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -32998i), -2147483647i ^ u_input.a.x)), _wgslsmith_mult_i32(firstLeadingBit(-1i), _wgslsmith_mod_i32(~global0.c.b, arg_3.e))), -firstLeadingBit(global0.c.e) >> (58640u % 32u));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(172f)), global0.e, vec3<u32>(~(~1u | select(1u, 1u, arg_1.x)), 0u, ~(~reverseBits(73138u))), ~(~global0.c.d), 2904i);
    let var_1 = _wgslsmith_sub_vec4_u32(abs(~_wgslsmith_mult_vec4_u32(arg_2, countOneBits(vec4<u32>(121927u, 37103u, 20749u, arg_2.x)))), _wgslsmith_mod_vec4_u32(~(~(arg_0 >> (arg_2 % vec4<u32>(32u)))), firstTrailingBit(arg_0)));
    var var_2 = vec4<f32>(-384f, _wgslsmith_f_op_f32(trunc(-1122f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(1005f, global0.c.a))), 326f);
    var var_3 = arg_0;
    return Struct_2(771f, select(global0.b, ~countOneBits(_wgslsmith_div_vec2_u32(var_3.zy, vec2<u32>(29534u, 5431u))), select(vec2<bool>(false, true), arg_1.yx, select(!arg_1.xz, vec2<bool>(false, false), all(arg_1.yy)))), arg_3, u_input.a.x, firstLeadingBit(~(-70748i)));
}

fn func_1() -> u32 {
    global0 = func_4(~(~(~vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 0u))) | ~(~firstTrailingBit(vec4<u32>(0u, global0.c.c.x, global0.b.x, 4294967295u))), vec3<bool>(true, func_2(Struct_3(false)), true), ~vec4<u32>(func_3(Struct_3(true), Struct_1(global0.a, global0.e, vec3<u32>(global0.b.x, global0.c.c.x, global0.b.x), vec2<u32>(87146u, global0.b.x), u_input.a.x), vec2<bool>(false, false), vec4<bool>(true, false, false, true)), _wgslsmith_mod_u32(global0.b.x, 1u), 0u, global0.b.x), Struct_1(-858f, i32(-1i) * -22030i, ~vec3<u32>(global0.c.c.x, global0.c.c.x, global0.b.x) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.b.x, global0.c.d.x, 0u), ~vec3<u32>(22965u, 1u, global0.b.x)) % vec3<u32>(32u)), global0.c.d, u_input.a.x & max(-1i, u_input.a.x)));
    let var_0 = vec2<i32>(select(global0.d, abs(-1i), true), u_input.a.x | -89994i);
    global0 = func_4(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(12762u, global0.c.c.x, global0.c.c.x, global0.c.d.x)), vec4<u32>(firstLeadingBit(1616u), 1891u ^ global0.c.c.x, ~4294967295u, ~global0.b.x)), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, global0.c.c.x, global0.b.x, global0.b.x) << (vec4<u32>(4294967295u, 0u, global0.c.c.x, global0.b.x) % vec4<u32>(32u))), ~firstLeadingBit(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.b.x, global0.b.x, 14067u, global0.b.x)) | ~vec4<u32>(global0.b.x, global0.c.d.x, global0.c.c.x, 4294967295u), ~(~vec4<u32>(39376u, global0.b.x, global0.b.x, global0.b.x)))), global0.c);
    let var_1 = firstTrailingBit(-u_input.a);
    var var_2 = Struct_2(global0.c.a, ~select(vec2<u32>(global0.b.x << (global0.b.x % 32u), _wgslsmith_sub_u32(4294967295u, 1u)), select(global0.b & vec2<u32>(23797u, 0u), firstTrailingBit(global0.b), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), func_4(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.d.x, 109527u, global0.b.x, global0.c.d.x), vec4<u32>(global0.c.c.x, global0.b.x, 0u, global0.c.c.x)) & vec4<u32>(global0.c.c.x, ~2339u, global0.c.d.x, 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, 1586f <= global0.a, global0.d > -3478i), false), vec4<u32>(global0.c.d.x, 67246u, 4294967295u, _wgslsmith_clamp_u32(global0.b.x, max(global0.c.c.x, 4294967295u), global0.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(step(global0.a, -307f))), global0.d, abs(abs(global0.c.c)), ~vec2<u32>(0u, 75200u), var_1.x)).c, ~(-17145i), abs(u_input.a.x));
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-651f - global0.c.a) + _wgslsmith_div_f32(-1987f, 1000f)), max(vec2<u32>(global0.c.c.x, func_1()), ~(~global0.b)), global0.c, global0.e, abs(~func_4(~vec4<u32>(global0.b.x, 14951u, global0.b.x, global0.b.x), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), countOneBits(vec4<u32>(global0.c.d.x, global0.c.d.x, 13758u, 0u)), global0.c).e));
    let var_0 = Struct_3(_wgslsmith_mod_u32(~(global0.b.x | 15994u), 1u) != 4294967295u);
    var var_1 = global0.c.b;
    var_1 = u_input.a.x;
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_dot_vec2_u32(global0.b, func_4(vec4<u32>(1u, global0.c.d.x, global0.b.x, 126385u), vec3<bool>(var_0.a, var_0.a, var_0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.c.x, global0.b.x, global0.b.x, global0.b.x), vec4<u32>(global0.c.c.x, global0.b.x, global0.c.d.x, 32469u)), global0.c).b), global0.c.d.x), global0.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(305f, -978f)))), 4294967295u);
}


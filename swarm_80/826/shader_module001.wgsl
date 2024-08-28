struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<i32>(-28346i, i32(-2147483648)), vec2<i32>(1i, 9635i), vec4<u32>(23836u, 53325u, 38683u, 4294967295u), vec3<bool>(false, false, false)), Struct_3(vec2<i32>(0i, -1i), vec2<i32>(-8765i, 56310i), vec4<u32>(0u, 102283u, 43570u, 44114u), vec3<bool>(false, false, true)), Struct_3(vec2<i32>(41175i, 2147483647i), vec2<i32>(-8i, 16319i), vec4<u32>(35188u, 62818u, 107546u, 1u), vec3<bool>(true, true, false)), Struct_3(vec2<i32>(-34315i, i32(-2147483648)), vec2<i32>(7615i, 51874i), vec4<u32>(4294967295u, 0u, 0u, 54798u), vec3<bool>(true, false, true)), Struct_3(vec2<i32>(24381i, 60131i), vec2<i32>(2449i, 1i), vec4<u32>(16926u, 0u, 28671u, 43682u), vec3<bool>(true, true, false)), Struct_3(vec2<i32>(32540i, 39239i), vec2<i32>(0i, i32(-2147483648)), vec4<u32>(18116u, 95260u, 8031u, 0u), vec3<bool>(true, true, false)), Struct_3(vec2<i32>(-40087i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec4<u32>(0u, 0u, 25123u, 4294967295u), vec3<bool>(false, true, false)), Struct_3(vec2<i32>(-19195i, 35484i), vec2<i32>(2147483647i, 18046i), vec4<u32>(4773u, 0u, 69169u, 17474u), vec3<bool>(true, false, false)), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 38734i), vec4<u32>(0u, 0u, 25296u, 62960u), vec3<bool>(true, true, false)), Struct_3(vec2<i32>(8514i, 15776i), vec2<i32>(-57263i, 0i), vec4<u32>(87112u, 45521u, 8443u, 1u), vec3<bool>(true, false, true)), Struct_3(vec2<i32>(2147483647i, 1i), vec2<i32>(-38311i, 90626i), vec4<u32>(0u, 25058u, 1u, 1340u), vec3<bool>(false, false, true)), Struct_3(vec2<i32>(1i, -12787i), vec2<i32>(1i, -13538i), vec4<u32>(102210u, 1u, 0u, 4121u), vec3<bool>(true, false, true)), Struct_3(vec2<i32>(2147483647i, 21831i), vec2<i32>(-31019i, 0i), vec4<u32>(5991u, 1u, 28803u, 109001u), vec3<bool>(true, true, false)), Struct_3(vec2<i32>(-34523i, -1i), vec2<i32>(0i, 43240i), vec4<u32>(65870u, 4294967295u, 23436u, 4294967295u), vec3<bool>(false, true, true)), Struct_3(vec2<i32>(1i, -46887i), vec2<i32>(0i, -1i), vec4<u32>(0u, 92827u, 4294967295u, 4294967295u), vec3<bool>(true, true, true)), Struct_3(vec2<i32>(-24192i, 44490i), vec2<i32>(-1i, 42862i), vec4<u32>(169077u, 55626u, 64084u, 64473u), vec3<bool>(true, false, true)), Struct_3(vec2<i32>(1i, 57734i), vec2<i32>(-41607i, -14257i), vec4<u32>(127401u, 4294967295u, 43022u, 66618u), vec3<bool>(false, false, false)), Struct_3(vec2<i32>(-11959i, -1i), vec2<i32>(2147483647i, 23624i), vec4<u32>(1u, 1u, 26582u, 48983u), vec3<bool>(false, true, false)), Struct_3(vec2<i32>(0i, 0i), vec2<i32>(73975i, i32(-2147483648)), vec4<u32>(9398u, 0u, 6258u, 37553u), vec3<bool>(false, false, false)), Struct_3(vec2<i32>(-23522i, i32(-2147483648)), vec2<i32>(-18674i, 2147483647i), vec4<u32>(1u, 0u, 13038u, 1u), vec3<bool>(false, false, true)), Struct_3(vec2<i32>(-1i, 1i), vec2<i32>(1i, 1i), vec4<u32>(0u, 1u, 0u, 6017u), vec3<bool>(false, true, false)), Struct_3(vec2<i32>(15618i, -20370i), vec2<i32>(-33112i, 0i), vec4<u32>(0u, 40224u, 1u, 8413u), vec3<bool>(true, true, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_3(max(select(vec2<i32>(1i, 1i), -firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), select(_wgslsmith_div_vec2_i32(-vec2<i32>(49697i, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -38908i), vec2<i32>(-47393i, u_input.a))), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1533i), vec2<i32>(-23953i, u_input.a)), vec2<bool>(false, true))), -(~max(_wgslsmith_div_vec2_i32(vec2<i32>(-35327i, u_input.a), vec2<i32>(u_input.a, 3298i)), vec2<i32>(u_input.a, 21376i))), arg_0, select(vec3<bool>(true, false && any(vec4<bool>(false, true, true, true)), abs(6227i) >= ~u_input.a), vec3<bool>(!any(vec2<bool>(true, true)), true, -u_input.a > u_input.a), true));
    let var_1 = vec2<i32>(u_input.a, -2147483647i);
    global0 = array<Struct_3, 22>();
    let var_2 = _wgslsmith_mod_u32(17451u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 26225u, var_0.c.x, var_0.c.x), select(reverseBits(var_0.c), _wgslsmith_add_vec4_u32(arg_0, arg_0), true)) ^ 0u);
    let var_3 = Struct_2(var_0.c.x);
    return var_1;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec2_i32(select(abs(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a)), select(~vec2<i32>(-1i, u_input.a), min(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, 7176i)), any(vec2<bool>(false, false))), vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, false)))), _wgslsmith_sub_vec2_i32(func_3(vec4<u32>(24293u, 1u, 26433u, 0u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -42236i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-9295i, u_input.a), vec2<i32>(-12348i, 1i))), ~countOneBits(vec2<i32>(u_input.a, -1i) & vec2<i32>(-52806i, u_input.a))));
    global0 = array<Struct_3, 22>();
    let var_1 = !(!vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), false));
    let var_2 = !var_1.x;
    let var_3 = 1u;
    return var_3;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = ~vec4<u32>(reverseBits(~(~0u)), 19502u, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 1u), max(reverseBits(1u), 1u)), 6655u);
    let var_1 = Struct_4(abs(_wgslsmith_mult_u32(4294967295u, arg_2.a)), i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, 1i), ~arg_1.b));
    var_0 = vec4<u32>(arg_2.a, arg_1.a, 58919u, countOneBits(arg_1.a)) & min(firstLeadingBit(~vec4<u32>(42573u, 0u, arg_0, arg_1.a) & vec4<u32>(27034u, 0u, 36748u, arg_1.a)), vec4<u32>(func_2(_wgslsmith_div_f32(-771f, -490f)), 0u, ~_wgslsmith_sub_u32(arg_0, arg_2.a), 107867u));
    var var_2 = Struct_2((_wgslsmith_dot_vec2_u32(~vec2<u32>(89909u, 17062u), min(var_0.zz, var_0.wx)) ^ ~var_1.a) | (_wgslsmith_mult_u32(22036u, arg_2.a) ^ _wgslsmith_add_u32(arg_0, 6130u)));
    global0 = array<Struct_3, 22>();
    return vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_2.b << (arg_1.a % 32u), arg_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.b, 1i, u_input.a), vec4<i32>(arg_2.b, -3310i, arg_2.b, var_1.b))), arg_2.b) & var_1.b, var_1.b, arg_1.b, _wgslsmith_mult_i32(i32(-1i) * -(~1i), 0i >> (var_0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(67049u);
    global0 = array<Struct_3, 22>();
    let var_1 = reverseBits(abs(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)), func_1(14235u, Struct_4(69174u, -1i), Struct_4(0u, -1i))))));
    let var_2 = Struct_2(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(0u, 4294967295u, 16161u, 1u)), func_2(1f)));
    var var_3 = vec3<u32>(var_2.a | ~57480u, var_2.a, var_2.a);
    var var_4 = _wgslsmith_f_op_f32(min(-1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-726f, -120f)))) * 705f))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(firstLeadingBit(reverseBits(abs(vec4<u32>(var_3.x, 32432u, 33042u, 0u))))).x);
}


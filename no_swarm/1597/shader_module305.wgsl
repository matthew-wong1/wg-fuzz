struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = false;
    let var_1 = 4294967295u;
    var_0 = true;
    var_0 = false;
    var var_2 = arg_1.b;
    return Struct_2(arg_1.b.c.wyy);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_u32((vec4<u32>(6140u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 0u, 1u, u_input.a)) | ~vec4<u32>(89630u, u_input.a, 4294967295u, 1u), ~min(vec4<u32>(u_input.a, u_input.a, 0u, 96546u), vec4<u32>(u_input.a, 69602u, u_input.a, u_input.a)))), _wgslsmith_sub_vec2_i32(-vec2<i32>(~0i, _wgslsmith_mod_i32(arg_1, -1i)), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, -502i), vec3<i32>(arg_1, arg_1, 2147483647i))) | select(vec2<i32>(0i, arg_1) << (vec2<u32>(1u, 40954u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, 1i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), true)), ~func_1(vec2<u32>(u_input.a, 4294967295u), Struct_4(_wgslsmith_f_op_f32(round(arg_0.x)), Struct_3(21973u, vec2<u32>(u_input.a, 53112u), vec4<u32>(0u, u_input.a, 28165u, 0u), Struct_1(1u, vec2<i32>(arg_1, arg_1), vec2<u32>(24152u, u_input.a))))).a.xy);
    var var_1 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(470f * -260f))), _wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = vec3<f32>(var_1.x, var_1.x, var_1.x);
    let var_3 = vec2<f32>(803f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    return select(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, ~(~u_input.a), (0u | u_input.a) ^ ~1u, ~(~u_input.a)), ~vec4<u32>(50567u, u_input.a & 29986u, ~64688u, 1u)), vec4<u32>(82800u, max(48703u, var_0.c.x), u_input.a, max(~(~var_0.c.x), max(_wgslsmith_mod_u32(u_input.a, u_input.a), 35734u))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, true)), true))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = Struct_3(abs(57043u), _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(56495u, arg_0), arg_1.a.xy) << (vec2<u32>(arg_1.a.x, reverseBits(13364u)) % vec2<u32>(32u)), func_1(~(arg_1.a.zz >> (vec2<u32>(30549u, arg_1.a.x) % vec2<u32>(32u))), Struct_4(-1499f, Struct_3(72578u, vec2<u32>(4294967295u, 1u), vec4<u32>(arg_0, 148877u, arg_1.a.x, arg_1.a.x), Struct_1(0u, vec2<i32>(-1i, 18745i), vec2<u32>(0u, u_input.a))))).a.yz), func_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(-281f * -1111f), -188f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-732f, 972f, -2935f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1339f, -247f, 894f)))), -1i), Struct_1((_wgslsmith_clamp_u32(10184u, 74951u, 1u) ^ 64363u) & _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(arg_1.a.x, 52302u)), ~(-reverseBits(vec2<i32>(19936i, 32660i))), arg_1.a.yz & reverseBits(arg_1.a.zy ^ arg_1.a.zx)));
    var var_1 = ~firstLeadingBit(~(-46446i & var_0.d.b.x) >> (~12410u % 32u));
    let var_2 = !vec2<bool>(!(!(true || arg_2.x)), true);
    return ~select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(31715u, u_input.a)), ~vec2<u32>(arg_1.a.x, var_0.a)), var_0.c.wx & func_1(vec2<u32>(u_input.a, 1u), Struct_4(-431f, var_0)).a.yx, _wgslsmith_mod_vec2_u32(var_0.c.yx, ~vec2<u32>(0u, var_0.c.x))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(arg_0, 6436u, u_input.a))), vec2<u32>(0u, firstTrailingBit(arg_1.a.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(max(abs(firstLeadingBit(u_input.a)), abs(u_input.a)), func_2(~(u_input.a >> (u_input.a % 32u)), func_1(~vec2<u32>(1u, u_input.a), Struct_4(774f, Struct_3(1u, vec2<u32>(u_input.a, 1u), vec4<u32>(38030u, u_input.a, u_input.a, u_input.a), Struct_1(1u, vec2<i32>(-1i, -4917i), vec2<u32>(u_input.a, 54017u))))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true)) & ~(~(~vec2<u32>(u_input.a, 0u))), ~(select(~vec4<u32>(u_input.a, u_input.a, u_input.a, 43358u), ~vec4<u32>(u_input.a, 0u, 1838u, 1u), vec4<bool>(true, true, true, true)) >> ((vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) >> ((vec4<u32>(u_input.a, u_input.a, 40200u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(u_input.a, vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-31925i, 2147483647i), vec2<i32>(31016i, 0i)), _wgslsmith_mult_i32(1i, 1i)), select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 63006u), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4068u), vec2<u32>(u_input.a, u_input.a)), vec2<bool>(true, true)) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    var_0 = Struct_3(1u | var_0.d.c.x, vec2<u32>(var_0.c.x, var_0.c.x), vec4<u32>(u_input.a, ~u_input.a, var_0.b.x, u_input.a), var_0.d);
    let var_1 = -402f;
    let var_2 = Struct_1(~var_0.d.a, var_0.d.b, select(vec2<u32>(~3220u, _wgslsmith_mult_u32(u_input.a, 0u)) >> (countOneBits(vec2<u32>(19098u, 1u)) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c.zxx, var_0.c.xzx), 0u), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), var_0.d.b.x <= 5776i))));
    let var_3 = ~(abs(vec2<i32>(abs(9752i), ~(-24113i))) ^ vec2<i32>(countOneBits(var_0.d.b.x) << (~u_input.a % 32u), -_wgslsmith_clamp_i32(31072i, var_2.b.x, -1i)));
    var var_4 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec2<bool>(false, false)), select(true, false, true)), vec3<bool>(false, true, true), true), !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true)));
    var_4 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1928f)), var_1)))) < _wgslsmith_f_op_f32(f32(-1f) * -920f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(max(2147483647i, var_0.d.b.x), ~var_2.b.x & var_3.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-var_2.b.x << (~1u % 32u), -2147483647i, abs(~0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, var_3.x), -var_0.d.b.x, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.d.b.x, var_2.b.x), vec3<i32>(48111i, var_2.b.x, var_3.x)) | vec3<i32>(var_2.b.x, var_3.x, var_2.b.x))));
}


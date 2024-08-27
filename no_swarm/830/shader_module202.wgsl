struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    var var_0 = -(~firstTrailingBit(max(firstTrailingBit(arg_3.x), -u_input.c.x)));
    var_0 = i32(-1i) * -13620i;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~arg_3.zwy, ~vec3<i32>(arg_2.a, abs(0i), -16376i)), max(arg_3.x >> (~(~9951u) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.c, vec2<i32>(16914i, -2147483647i) >> (vec2<u32>(arg_2.b.x, u_input.b) % vec2<u32>(32u))), ~countOneBits(arg_3.zy))), 1i);
    var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_2.d);
    return arg_2.a;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 814i;
    var var_1 = i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0, _wgslsmith_add_i32(arg_0, -2928i)), _wgslsmith_sub_i32(abs(arg_0), 5720i), ~func_3(1103f, vec2<bool>(true, true), Struct_3(u_input.c.x, vec4<u32>(u_input.b, 38727u, u_input.b, 0u), 55793u, vec4<f32>(-448f, -1277f, 1217f, -352f), 0u), vec4<i32>(73550i, -8913i, arg_0, arg_0)));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, ~14922u, 16999u) ^ vec3<u32>(_wgslsmith_sub_u32(arg_1.a, arg_1.a), 29732u, abs(1u)), vec3<u32>(max(arg_1.a, 0u), 66282u, ~(~arg_1.a))));
    var_0 = ~(-func_3(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(779f))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_3(-arg_0, abs(vec4<u32>(arg_1.a, u_input.b, 1u, arg_1.a)), u_input.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1109f, 878f, 509f, 1644f))), 1u), vec4<i32>(u_input.a.x, -arg_0, -u_input.e, 0i)));
    let var_3 = var_2;
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = func_2(-1i, Struct_1(~94394u));
    var var_1 = _wgslsmith_mod_i32(u_input.e, 0i);
    var_1 = _wgslsmith_mult_i32(1i, max(51547i, u_input.a.x ^ u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(floor(-873f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -171f) + 476f) + _wgslsmith_f_op_f32(f32(-1f) * -367f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1406f))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.d, -52165i, func_1(), max(u_input.d, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.c.x), vec2<i32>(-45524i, u_input.c.x)))));
    let var_1 = !vec2<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), false)), select(!any(vec2<bool>(true, true)), (u_input.b ^ u_input.b) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(50471u, u_input.b, 19406u, u_input.b)), !all(vec2<bool>(false, false))));
    var var_2 = var_1.x;
    let var_3 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(55109i, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.e, var_0.x, -29290i, u_input.a.x))), select(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, -13723i, u_input.e)), vec4<i32>(11737i, 2147483647i, 103143i, 0i), -24675i > u_input.d)), select(firstLeadingBit(vec4<i32>(u_input.e, 14483i, 33957i, u_input.d)), _wgslsmith_div_vec4_i32(vec4<i32>(16227i, u_input.a.x, u_input.c.x, var_0.x), vec4<i32>(var_0.x, var_0.x, 2147483647i, 42210i)), select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, false, true, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x))) ^ vec4<i32>(-u_input.d, firstLeadingBit(2147483647i), -2147483647i, 42722i)), _wgslsmith_mod_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 41283u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 36848u, u_input.b)) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 73742u, 5473u, 33663u), vec4<u32>(4294967295u, 11137u, 7626u, 4294967295u)), true), select(abs(vec4<u32>(4294967295u, 1u, u_input.b, u_input.b)) >> ((vec4<u32>(u_input.b, 4294967295u, 45712u, u_input.b) << (vec4<u32>(u_input.b, 18580u, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), ~select(vec4<u32>(0u, 10572u, 43926u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<bool>(var_1.x, true, false, true)), any(select(var_1, var_1, true)))), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-2285f, 1725f, 630f, 287f), vec4<f32>(832f, -845f, -100f, 117f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1540f, 889f, -479f, -2277f))), !(!var_1.x)))), min(firstTrailingBit(~(~1u)), _wgslsmith_clamp_u32(reverseBits(4294967295u), ~8566u, 1u) >> (u_input.b % 32u)));
    var_0 = -_wgslsmith_mult_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(var_3.a, u_input.d, -5333i, u_input.d))) << (_wgslsmith_add_vec4_u32(var_3.b, max(var_3.b, vec4<u32>(1u, 0u, 1u, u_input.b))) % vec4<u32>(32u)), abs(-vec4<i32>(var_3.a, var_0.x, 2147483647i, -9521i)));
    var_0 = vec4<i32>(func_1(), func_1(), ~(~(-u_input.a.x)), 91649i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b & var_3.b, -5453i, vec4<i32>(_wgslsmith_add_i32(9977i, min(i32(-1i) * -1i, abs(-8020i))), u_input.a.x, 1i, -firstLeadingBit(min(var_3.a, -2147483647i))), ~var_3.b.zz, _wgslsmith_f_op_vec4_f32(var_3.d * _wgslsmith_f_op_vec4_f32(-var_3.d)));
}


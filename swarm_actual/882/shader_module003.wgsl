struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(23857u, 1u, 0u, u_input.b), vec4<u32>(40256u, u_input.b, 1u, u_input.b) | vec4<u32>(u_input.b, 1u, u_input.b, 26450u)) ^ _wgslsmith_div_u32(4294967295u, u_input.b), ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(45908u, u_input.b)), _wgslsmith_sub_u32(select(u_input.b, 2862u, any(vec3<bool>(false, true, true))), u_input.b), 48379u), _wgslsmith_mod_vec4_u32(countOneBits(abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.b, 80951u), vec4<u32>(1u, 1u, u_input.b, u_input.b)))), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, u_input.b), ~vec3<u32>(49710u, u_input.b, u_input.b)), ~(0u & u_input.b), u_input.b, u_input.b)));
    return vec4<i32>(min(u_input.a.x, reverseBits(u_input.a.x >> (4294967295u % 32u)) | -u_input.a.x), -abs(abs(~u_input.a.x)), u_input.a.x, _wgslsmith_div_i32(~2147483647i, i32(-1i) * -firstTrailingBit(-1i)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = vec4<i32>(i32(-1i) * -1i, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i), vec4<i32>(arg_0.a.x, -24917i, 20332i, 2147483647i))), -1i, 0i) | _wgslsmith_mult_vec4_i32(func_3(), vec4<i32>(~0i, ~(-1i << (u_input.b % 32u)), 10111i, -101244i));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(select(-2147483647i, -1i, true)), _wgslsmith_dot_vec2_i32(var_0.zz, abs(vec2<i32>(u_input.a.x, 1i))), 41939i, 1i), select(vec4<i32>(2147483647i, arg_0.a.x, var_0.x, var_0.x) | (vec4<i32>(-44293i, u_input.a.x, var_0.x, 35007i) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), reverseBits(vec4<i32>(arg_0.a.x, var_0.x, u_input.a.x, -2150i) >> (vec4<u32>(u_input.b, 0u, 0u, 10992u) % vec4<u32>(32u))), select(select(vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c), false), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), vec4<bool>(false, true, arg_0.c, arg_0.c)), !arg_0.c))) | (_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0i, arg_0.a.x, u_input.a.x), vec4<i32>(-2147483647i, -29559i, 1i, -2147483647i)) | ~vec4<i32>(u_input.a.x, -39559i, 2147483647i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, var_0.x, -2147483647i) & vec4<i32>(-2147483647i, 8318i, var_0.x, u_input.a.x), firstLeadingBit(vec4<i32>(var_0.x, 2147483647i, u_input.a.x, arg_0.a.x)))) | func_3());
    let var_2 = ~vec4<u32>(~_wgslsmith_mult_u32(u_input.b, ~30565u), u_input.b, 77218u, reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 47846u), select(vec2<u32>(u_input.b, 29827u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(arg_0.c, arg_0.c)))));
    var var_3 = 1u;
    var_0 = -vec4<i32>(var_1.x, -firstLeadingBit(1i), -30731i, var_1.x);
    return any(!select(!select(vec4<bool>(arg_0.c, arg_0.c, true, true), vec4<bool>(true, false, false, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true)), vec4<bool>(true, !arg_0.c, true, arg_0.c), true));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = -1407f;
    let var_1 = u_input.a;
    var var_2 = vec4<bool>(false, arg_1, true, func_2(Struct_1(vec2<i32>(14551i << (u_input.b % 32u), _wgslsmith_div_i32(u_input.a.x, -40881i)), var_0, true)));
    let var_3 = _wgslsmith_mult_i32(firstLeadingBit(select(i32(-1i) * -1i, 4530i, true)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 53308u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b)), u_input.b ^ u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u))) % 32u), 12708i);
    let var_4 = Struct_1(vec2<i32>(arg_0, firstTrailingBit(firstLeadingBit(34326i & var_1.x))), var_0, all(select(vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x), select(vec2<bool>(var_2.x, arg_1), var_2.xz, false))) || any(!var_2.zwz));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.b - _wgslsmith_f_op_f32(-var_0)))), -1009f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1190f, -496f)))))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(arg_0.d, 0i), vec2<i32>(arg_0.d, 2147483647i) >> (arg_0.a.zy % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -14637i), _wgslsmith_mod_i32(6212i, u_input.a.x)) | abs(vec2<i32>(arg_0.d, u_input.a.x) << (arg_0.a.zy % vec2<u32>(32u))), firstLeadingBit(-reverseBits(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.b.x)))))), true || any(select(!vec4<bool>(true, true, arg_0.c, arg_0.c), select(vec4<bool>(true, false, false, arg_0.c), vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(88142u, u_input.b, u_input.b) << (vec3<u32>(u_input.b, 70678u, u_input.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 44112u, u_input.b), vec3<u32>(u_input.b, u_input.b, 37540u)), min(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(28971u, 12313u, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-1i, false)) + _wgslsmith_div_vec2_f32(vec2<f32>(-963f, 886f), vec2<f32>(962f, -268f)))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)))), -u_input.a.x));
    var var_1 = Struct_2(select(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(57u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, 49020u))), vec3<u32>(_wgslsmith_mod_u32(~10274u, u_input.b), u_input.b, 0u), !(_wgslsmith_f_op_f32(-var_0.b) > var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1835f, -109f)))), true, 0i);
    var var_2 = vec2<i32>(var_0.a.x, u_input.a.x);
    var_1 = Struct_2(reverseBits(var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, var_0.b), var_1.b)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1603f, -779f)))))) * vec2<f32>(-107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-216f - 1151f) + _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)))), any(select(!select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_1.c, true), vec2<bool>(var_0.c, true)), select(!vec2<bool>(var_1.c, true), !vec2<bool>(var_0.c, false), vec2<bool>(true, true)), var_0.c)), 22363i);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(926f, _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(var_0.a.x, true)).x), 737f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(max(~min(vec4<i32>(u_input.a.x, var_0.a.x, var_1.d, -2147483647i), vec4<i32>(4824i, u_input.a.x, var_0.a.x, var_2.x)), ~(~vec4<i32>(13686i, var_1.d, var_0.a.x, 24074i))), select(vec4<i32>(firstLeadingBit(17562i), -var_2.x, reverseBits(11480i), 2147483647i), abs(vec4<i32>(2147483647i, var_0.a.x, -26413i, -41374i) & vec4<i32>(2147483647i, var_0.a.x, 1i, var_2.x)), var_0.c), _wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(16415i, -1i, u_input.a.x, 0i)), ~(-vec4<i32>(u_input.a.x, var_1.d, var_2.x, var_2.x)))), ~(var_1.a.x | (_wgslsmith_mult_u32(84747u, u_input.b) >> (reverseBits(62596u) % 32u))));
}


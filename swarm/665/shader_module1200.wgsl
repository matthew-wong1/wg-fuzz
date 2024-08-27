struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> vec2<i32> {
    let var_0 = vec3<u32>(~0u, ~_wgslsmith_clamp_u32(max(~30731u, _wgslsmith_add_u32(0u, 0u)), ~4294967295u, arg_1), firstTrailingBit(abs(_wgslsmith_div_u32(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(79262u, arg_1, arg_1, arg_1), vec4<u32>(0u, arg_1, arg_1, arg_1))))));
    var var_1 = ~_wgslsmith_clamp_u32(var_0.x, 1u | ~(14577u << (var_0.x % 32u)), _wgslsmith_add_u32(firstTrailingBit(9505u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 109917u, 16937u), vec4<u32>(23536u, arg_1, arg_1, arg_1))) >> (var_0.x % 32u));
    let var_2 = Struct_4(-1772f, Struct_2(Struct_1(abs(1i))), Struct_2(Struct_1(-2685i)), select(-(i32(-1i) * -1i), ~(-(~u_input.b.x)), !all(select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(false, arg_2, true, arg_2)))));
    let var_3 = _wgslsmith_sub_u32(var_0.x, countOneBits(~1u));
    let var_4 = _wgslsmith_sub_u32(arg_1, 4761u);
    return vec2<i32>(u_input.a ^ abs(0i), abs(-18445i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(~4294967295u, 82298u, _wgslsmith_mod_u32(1u, 27017u))), vec3<u32>(~1u, _wgslsmith_add_u32(3878u, 1u), firstLeadingBit(~63791u)), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(42895u), _wgslsmith_dot_vec4_u32(vec4<u32>(12390u, 18133u, 23292u, 29328u), vec4<u32>(15597u, 0u, 12718u, 42611u)), 66642u), ~vec3<u32>(1u, 1u, 1u))), select(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(4516u, 15911u, 55952u), vec3<u32>(38980u, 0u, 58890u), vec3<bool>(true, true, false)), vec3<u32>(_wgslsmith_mult_u32(1u, 0u), 0u, 1u)), vec3<u32>(~(~0u), _wgslsmith_clamp_u32(countOneBits(4294967295u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(53196u, 5207u), vec2<u32>(4294967295u, 4294967295u))), 39759u), false));
    let var_1 = Struct_2(Struct_1(func_3(_wgslsmith_f_op_f32(step(1073f, -1378f)), var_0.x, false & any(vec2<bool>(true, true))).x));
    var_0 = ~(~(~(~vec3<u32>(21415u, 68509u, var_0.x)) | min(vec3<u32>(0u, 1u, 3200u), vec3<u32>(24153u, var_0.x, 1u))));
    var var_2 = vec4<i32>(-firstTrailingBit(func_3(-1287f, var_0.x, false).x), 0i, ~(select(-1i, arg_1.a.a, true) >> (~var_0.x % 32u)) ^ u_input.b.x, -(_wgslsmith_clamp_i32(min(var_1.a.a, -16996i), -2147483647i, _wgslsmith_mod_i32(0i, u_input.a)) << (~14066u % 32u)));
    var_0 = (select(vec3<u32>(_wgslsmith_div_u32(var_0.x, 49870u), _wgslsmith_add_u32(var_0.x, 8071u), var_0.x ^ 1u), ~abs(vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<bool>(false, false, true)) | _wgslsmith_add_vec3_u32(select(~vec3<u32>(0u, 0u, var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(var_0.x, 0u, var_0.x)), vec3<bool>(true, true, true)), firstTrailingBit(~vec3<u32>(47443u, var_0.x, 435u)))) << (vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u));
    return any(vec2<bool>(false, true));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>) -> bool {
    let var_0 = !(!func_4(func_3(-1440f, 1u, arg_0.x), Struct_2(Struct_1(u_input.b.x)), _wgslsmith_dot_vec2_i32(~u_input.b.wy, u_input.b.xy)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -788f))), Struct_2(Struct_1(countOneBits(reverseBits(u_input.a)))), Struct_2(Struct_1(firstTrailingBit(u_input.b.x | u_input.a))), _wgslsmith_dot_vec3_i32(-select(u_input.b.yzw, vec3<i32>(1i, -3261i, 0i), !arg_1), -reverseBits(~u_input.b.zzz)));
    var var_2 = Struct_3(!arg_0.x, vec2<i32>(-u_input.b.x, abs(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, 2147483647i))), firstLeadingBit(vec2<i32>(-35341i, -44610i)), Struct_2(Struct_1(_wgslsmith_div_i32(var_1.b.a.a, i32(-1i) * -1i))));
    let var_3 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.b.a.a, u_input.b.x, var_1.c.a.a), abs(u_input.b.wxz), u_input.b.zxw), -u_input.b.xyz), -(-var_2.d.a.a >> (39109u % 32u))));
    let var_4 = 0u;
    return var_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> bool {
    let var_0 = !(func_3(arg_0.x, ~(~40680u), true).x <= (u_input.a >> (21621u % 32u)));
    return true | any(select(vec4<bool>(!arg_2.x, true, arg_2.x, arg_0.x > -706f), !(!vec4<bool>(var_0, true, arg_2.x, false)), all(!vec4<bool>(var_0, false, var_0, true))));
}

fn func_1() -> bool {
    let var_0 = Struct_3(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(894f, 1000f, -628f) + vec3<f32>(1f, 1f, 1f)), vec2<i32>(max(u_input.a, -26627i) ^ (u_input.a >> (0u % 32u)), firstLeadingBit(u_input.a)), select(vec3<bool>(func_2(vec4<bool>(false, true, true, true), vec3<bool>(true, true, false)), all(vec4<bool>(false, true, true, false)), true), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, all(vec3<bool>(true, true, false))), all(vec2<bool>(true, true)))), abs(u_input.b.xz), _wgslsmith_mult_vec2_i32(select(u_input.b.wx | vec2<i32>(2147483647i, u_input.b.x), abs(vec2<i32>(-2147483647i, 33645i)), true), u_input.b.xx << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 79904u), vec2<u32>(25206u, 1u)) % vec2<u32>(32u))) << (min(~vec2<u32>(1u, 1u), max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))) % vec2<u32>(32u)), Struct_2(Struct_1(i32(-1i) * -u_input.a)));
    var var_1 = !var_0.a;
    var_1 = var_0.a;
    let var_2 = abs(_wgslsmith_mod_u32(select(1u, 24464u, var_0.a), 4942u));
    let var_3 = vec2<bool>(var_0.a, !(_wgslsmith_f_op_f32(ceil(-1382f)) == _wgslsmith_div_f32(-1364f, _wgslsmith_f_op_f32(773f - -301f))));
    return !var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-24837i);
    var var_1 = vec2<bool>(!(func_1() == all(vec3<bool>(true, true, true))), true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-302f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1514f, _wgslsmith_f_op_f32(round(434f))))))), 1768f, -1000f, _wgslsmith_f_op_f32(select(-386f, _wgslsmith_div_f32(1433f, 1048f), true)));
    let var_3 = select(-50132i, 1i, true);
    var var_4 = 57632u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yw, var_0.a, var_2.x);
}


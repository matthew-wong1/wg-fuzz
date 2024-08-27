struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(14956i, 54423i, -618i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = vec2<i32>(i32(-1i) * -(~(u_input.a << (81038u % 32u))), abs(global0.x));
    var var_2 = !arg_2 & arg_2;
    let var_3 = firstLeadingBit(countOneBits(vec2<i32>(-_wgslsmith_sub_i32(48550i, u_input.a), _wgslsmith_add_i32(abs(0i), 0i))));
    var_1 = abs(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_1, var_1.x), -(~u_input.a), ~(~(-1i))), 2147483647i));
    return ~abs(select(_wgslsmith_mod_vec3_u32(vec3<u32>(68142u, u_input.c, 10943u), ~vec3<u32>(11061u, 38270u, 130380u)), vec3<u32>(firstTrailingBit(4300u), u_input.c, ~85414u), vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = vec2<i32>(~u_input.a, global0.x);
    let var_1 = abs(select(~func_3(arg_3, -8675i, false), ~vec3<u32>(u_input.c << (1u % 32u), _wgslsmith_mod_u32(97220u, arg_0.x), u_input.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(36i, var_0.x, u_input.a))), vec3<i32>(global0.x >> (1u % 32u), global0.x, abs(u_input.a))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~firstTrailingBit(vec2<i32>(-1i, 19010i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), var_0)), ~(-global0.yz) ^ vec2<i32>(_wgslsmith_mod_i32(u_input.a, -25056i), -37679i)), ~u_input.a);
    let var_2 = any(vec3<bool>(false, true, true));
    global0 = vec3<i32>(1808i, -1i, ~10344i);
    return select(vec3<i32>(_wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(global0.x, var_0.x, 6699i)), -firstTrailingBit(vec3<i32>(var_0.x, -30993i, 1i))), min(-2147483647i, -(-52093i | global0.x)), -(u_input.a & (i32(-1i) * -1i))), -(~abs(abs(vec3<i32>(1i, global0.x, -2147483647i)))), select(vec3<bool>(var_2 & var_2, global0.x >= var_0.x, arg_3.a < 64755u), select(vec3<bool>(true, var_2, true), !vec3<bool>(var_2, false, var_2), !any(vec3<bool>(false, var_2, var_2))), any(!vec4<bool>(true, true, var_2, true))));
}

fn func_1() -> Struct_1 {
    global0 = vec3<i32>(global0.x, 2147483647i, reverseBits(_wgslsmith_dot_vec2_i32(global0.zy, abs(global0.yx)))) & min(~vec3<i32>(u_input.a, global0.x, global0.x), abs(~func_2(vec4<u32>(57082u, u_input.b.x, 47616u, 1u), Struct_1(u_input.b.x), Struct_1(u_input.c), Struct_1(43469u))));
    let var_0 = Struct_1(select(1u, u_input.b.x, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false))));
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), max(var_0.a, 4294967295u)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_1(~abs(1u));
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.x, u_input.a), global0.x, -u_input.a) ^ (~vec3<i32>(global0.x, -2147483647i, global0.x) ^ ~vec3<i32>(-40377i, -24274i, global0.x)), (reverseBits(vec3<i32>(-1i, 1i, u_input.a)) >> (~vec3<u32>(u_input.b.x, u_input.c, arg_0.a) % vec3<u32>(32u))) << (~select(vec3<u32>(var_0.a, 48865u, var_0.a), vec3<u32>(4294967295u, var_0.a, 44343u), true) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -2147483647i) ^ abs(vec3<i32>(0i, 106161i, 13389i)), _wgslsmith_add_vec3_i32(vec3<i32>(13870i, -41251i, 24447i), vec3<i32>(2147483647i, 0i, u_input.a)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(~85829u, arg_0.a, select(u_input.b.x, var_0.a, false)), ~(~vec3<u32>(49055u, u_input.b.x, var_0.a)), vec3<u32>(abs(arg_0.a), max(50132u, 18424u), 1u)) | vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(8068u, var_0.a, 0u), vec3<u32>(61438u, 0u, 57522u)), 1u, _wgslsmith_sub_u32(u_input.c, u_input.b.x)), var_0.a, 30284u)) % vec3<u32>(32u));
    var var_1 = min(vec3<u32>(arg_0.a, max(4328u, arg_0.a) << (52096u % 32u), _wgslsmith_mod_u32(~0u, var_0.a)), _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_0.a, 1u, u_input.c)), vec3<u32>(u_input.c & 4294967295u, 1u, ~u_input.c))) >> (vec3<u32>(~arg_0.a ^ var_0.a, 1u, ~arg_0.a) % vec3<u32>(32u));
    var_0 = arg_0;
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = Struct_1(0u);
    var var_2 = vec3<bool>(true, false, true);
    var var_3 = select(countOneBits(~abs(vec4<u32>(var_0.a, arg_1.a, arg_1.a, var_0.a))) >> (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 7551u), vec4<u32>(arg_1.a, var_0.a, var_0.a, var_1.a)) << (~vec4<u32>(14326u, u_input.c, 14889u, var_0.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~(vec4<u32>(var_0.a, var_1.a, u_input.c, 1u) << (vec4<u32>(arg_1.a, 24280u, 67964u, var_1.a) % vec4<u32>(32u))))), select(!vec4<bool>(!var_2.x, true, true, true), !select(select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, false), var_2.x), select(vec4<bool>(var_2.x, true, false, true), vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true)), !vec4<bool>(true, true, var_2.x, true)), any(vec3<bool>(arg_3 <= -243f, var_2.x | var_2.x, select(true, var_2.x, var_2.x)))));
    return ~firstLeadingBit(select(12362u, 1u, !any(vec3<bool>(var_2.x, true, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1117f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-305f * -846f) + -487f), _wgslsmith_f_op_f32(1f - 179f))));
    var var_1 = vec2<i32>(min(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2729i, u_input.a), vec3<i32>(-2147483647i, -2147483647i, -1i)), vec3<i32>(global0.x, 2147483647i, 4985i)), abs(global0.x)), global0.x | 1i) >> (_wgslsmith_mult_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), firstTrailingBit(vec2<u32>(7868u, 4294967295u))), firstTrailingBit(~u_input.b), all(vec2<bool>(true, false)) || true), abs(~(~vec2<u32>(4294967295u, 4294967295u)))) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -859f);
    let var_2 = ~1i;
    let var_3 = _wgslsmith_sub_u32(~func_5(var_2, func_4(func_1()), 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -104f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_add_u32(4294967295u, u_input.c), abs(u_input.c)) | _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.c, 1u)), firstLeadingBit(vec3<u32>(29728u, u_input.b.x, 46874u))), ~(abs(vec3<u32>(1u, 1u, 4294967295u)) | _wgslsmith_div_vec3_u32(vec3<u32>(20212u, 90392u, u_input.c), vec3<u32>(0u, 1u, 1u)))));
    var var_4 = Struct_1(func_4(Struct_1(~_wgslsmith_sub_u32(u_input.c, u_input.c))).a);
    var var_5 = Struct_1(62188u);
    let var_6 = ~_wgslsmith_dot_vec3_i32(~(~(vec3<i32>(global0.x, 2147483647i, var_2) & vec3<i32>(var_2, var_2, var_1.x))), vec3<i32>(15915i, global0.x | 6512i, _wgslsmith_mod_i32(i32(-1i) * -16299i, reverseBits(1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-304f, 469f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1591f) + -683f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-905f)), _wgslsmith_f_op_f32(f32(-1f) * -700f)), -1000f)), ~vec3<i32>(-2147483647i, -_wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(u_input.a, 28190i)), i32(-1i) * -2147483647i));
}


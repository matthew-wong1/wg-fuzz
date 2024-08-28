struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(false, true))), false), !select(true, true, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, -1675f, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, -216f, -2930f))), vec3<f32>(1886f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1408f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))))));
    var var_1 = Struct_1(!vec3<bool>(true, var_0.a.x, true), var_0.b);
    var_1 = Struct_1(!var_0.a, var_0.b);
    var var_2 = vec4<bool>(all(select(select(var_1.a.yx, var_0.a.yy, !var_1.a.x), vec2<bool>(true, false), true)), var_1.a.x, ~arg_0.x > _wgslsmith_mod_i32(36314i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.x, arg_0.x), -1i)), var_1.a.x);
    var var_3 = Struct_1(!select(!vec3<bool>(true, false, var_2.x), select(vec3<bool>(var_0.a.x, var_1.a.x, var_2.x), !var_1.a, true), !(!vec3<bool>(var_1.a.x, true, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-var_0.b));
    return (arg_1 ^ arg_1) ^ ~firstTrailingBit(40816u);
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_1(!(!(!vec3<bool>(true, arg_0, false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(abs(1014f))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-331f, -241f), 1136f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1721f, _wgslsmith_f_op_f32(f32(-1f) * -887f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-687f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -689f))))));
    var_0 = Struct_1(select(vec3<bool>(func_3(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -2147483647i), 0u) > ~arg_1, (var_0.b.x != -187f) || true, arg_0), vec3<bool>(true, !select(arg_0, false, arg_0), var_0.a.x), arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1635f, var_0.b.x, -1797f) * vec3<f32>(-1000f, 286f, var_0.b.x)), arg_0 & true)))));
    let var_1 = _wgslsmith_div_u32(~arg_1, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, ~abs(u_input.a)), 4294967295u));
    var var_2 = -44111i;
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(15191i, -3114i, ~_wgslsmith_div_i32(-1i, 118219i), _wgslsmith_mod_i32(28119i, -1i)) >> (vec4<u32>(select(~44770u, 27387u, any(var_0.a.yx)), _wgslsmith_mult_u32(arg_1, 4294967295u) << (firstLeadingBit(1u) % 32u), select(41391u, u_input.b, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 43749u, 51945u, 11437u), vec4<u32>(arg_1, u_input.a, arg_1, 34515u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, -2147483647i, -2147483647i, 0i)) >> (vec4<u32>(2756u, u_input.a, arg_1, var_1) % vec4<u32>(32u)), vec4<i32>(~(-2147483647i), abs(-10342i), firstLeadingBit(-24070i), ~0i)) << ((abs(vec4<u32>(53347u, u_input.a, arg_1, u_input.b) << (vec4<u32>(var_1, arg_1, 4294967295u, arg_1) % vec4<u32>(32u))) << (vec4<u32>(arg_1, var_1, ~var_1, var_1) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return vec4<bool>(any(vec4<bool>(any(vec4<bool>(arg_0, var_0.a.x, var_0.a.x, arg_0)), any(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), true || arg_0, !var_0.a.x)), any(var_0.a.xx) && !(!(!arg_0)), true, all(!(!var_0.a.zx)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, any(vec4<bool>(!arg_0.a.x, true, any(arg_0.a.yx), arg_0.a.x))), vec2<bool>(arg_0.a.x | (!arg_0.a.x && true), all(func_2(arg_0.a.x, u_input.b))), false);
    var_0 = !(!vec2<bool>(true, var_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1502f, arg_0.b.x)), -1067f, 398f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) * -997f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, -1390f) + _wgslsmith_f_op_f32(f32(-1f) * -1192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b))));
    let var_2 = vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-48084i, arg_1, 49700i));
    var var_3 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = func_1(func_1(Struct_1(vec3<bool>(!arg_0.a.x, true, !arg_0.a.x), arg_0.b), ~_wgslsmith_div_i32(countOneBits(arg_1), ~1i)), ((arg_1 | min(arg_1, arg_1)) << (37018u % 32u)) ^ arg_1);
    let var_1 = func_1(arg_0, firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, arg_1, arg_1)));
    var_0 = Struct_1(select(!select(var_1.a, var_1.a, !arg_0.a), arg_0.a, var_1.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.xxz, var_1.b) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-771f, arg_2.x, var_0.b.x), vec3<f32>(var_0.b.x, arg_2.x, var_0.b.x), arg_0.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, 603f, var_1.b.x), arg_2.yzy), !vec3<bool>(true, var_0.a.x, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -928f, 481f) - arg_0.b)), arg_2.zzw)), all(var_0.a))));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(arg_1, -2147483647i, -10420i), -1i, -2316i ^ ~arg_1), vec3<i32>(50043i, arg_1, 2147483647i));
    var var_3 = !vec2<bool>(countOneBits(~u_input.a) <= u_input.a, any(!func_2(false, 0u).ww));
    return vec2<u32>(~(~max(u_input.b, 0u)), countOneBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, 45827i), 1i, countOneBits(2147483647i));
    var var_1 = ~max(54839u, max(_wgslsmith_clamp_u32(u_input.b, ~4294967295u, ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 7785u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 24202u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.a, 24996u)))));
    var var_2 = _wgslsmith_div_vec2_u32(func_4(func_1(Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, -1370f, -332f))), -(2147483647i & var_0.x)), var_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(func_1(Struct_1(vec3<bool>(true, true, true), vec3<f32>(1667f, -1176f, -1664f)), var_0.x).b.x, -516f, -1700f, 181f), vec4<f32>(1f, 1f, 1f, 1f))), ~vec2<u32>(min(10945u, u_input.b), _wgslsmith_mult_u32(37909u, 1u)) << (~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(18138u, u_input.a)), ~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)));
    var_2 = vec2<u32>(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 26333u, var_2.x, var_2.x), vec4<u32>(4294967295u, u_input.b, var_2.x, 1u))) >> (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 4294967295u, 47851u, 92396u), vec4<u32>(1u, 4294967295u, u_input.b, var_2.x), true), vec4<u32>(u_input.b, 42871u, _wgslsmith_dot_vec4_u32(vec4<u32>(41699u, 4294967295u, 18896u, u_input.a), vec4<u32>(var_2.x, var_2.x, 4294967295u, 32103u)), 1u)) % 32u), ~(var_2.x & u_input.a));
    var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, 1u)), ~vec2<u32>(u_input.b, 5738u), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_2.x, 0u), vec2<u32>(1u, u_input.a))), select(~(~vec2<u32>(39934u, 108575u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 0u)), true)), reverseBits(~(~countOneBits(vec2<u32>(0u, 42620u)))), ~_wgslsmith_clamp_vec2_u32(min(abs(vec2<u32>(49912u, 32708u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 39810u), vec2<u32>(1u, var_2.x))), vec2<u32>(u_input.a, var_2.x) | select(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, var_2.x), true), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(18344u, 0u), vec2<u32>(var_2.x, var_2.x), vec2<u32>(40673u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_vec2_u32(select(vec2<u32>(44705u, var_2.x), vec2<u32>(17855u, 1u), false), ~vec2<u32>(u_input.b, var_2.x)) | firstTrailingBit(min(vec2<u32>(96726u, u_input.a), vec2<u32>(var_2.x, u_input.b)))), 22505u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -871f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1180f, 403f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-438f, 521f)), _wgslsmith_f_op_f32(min(295f, -1000f)))), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))), ~1408u);
}


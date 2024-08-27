struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_1(~vec4<u32>(arg_0.x << (5671u % 32u), u_input.a, arg_0.x, ~u_input.a) >> (vec4<u32>(firstTrailingBit(4294967295u), ~(38u << (u_input.a % 32u)), arg_0.x, arg_0.x) % vec4<u32>(32u)));
    let var_1 = true;
    var_0 = Struct_1(vec4<u32>(1148u, reverseBits(~(~1u)), _wgslsmith_add_u32(0u, 4294967295u), ~_wgslsmith_div_u32(1u, 1u) ^ u_input.a));
    var var_2 = Struct_1(var_0.a);
    let var_3 = Struct_1(firstLeadingBit(_wgslsmith_add_vec4_u32(var_0.a, ~vec4<u32>(u_input.a, 1u, var_2.a.x, 1u))));
    return !select(select(vec3<bool>(var_1, var_1, false), !select(vec3<bool>(var_1, true, false), vec3<bool>(false, var_1, true), vec3<bool>(true, var_1, true)), (false | var_1) & (2147483647i >= u_input.b)), !(!select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, true, var_1))), vec3<bool>(any(!vec4<bool>(false, false, var_1, var_1)), true, true));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1024f);
    let var_1 = select(!(!(!(!vec3<bool>(true, true, arg_2.x)))), !vec3<bool>(!(u_input.a >= 4294967295u), all(func_3(vec3<u32>(0u, u_input.a, u_input.a))), true), vec3<bool>(arg_0, (-1i & _wgslsmith_sub_i32(u_input.b, 1i)) != (u_input.b & 1i), any(!vec4<bool>(arg_0, arg_1, false, arg_3))));
    var var_2 = vec2<bool>(var_1.x, !arg_0 & !any(vec2<bool>(true, true)));
    let var_3 = Struct_1(~(~firstLeadingBit(abs(vec4<u32>(0u, 83137u, u_input.a, 0u)))));
    var_2 = func_3(var_3.a.xyy).xz;
    return Struct_2(var_3, vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, u_input.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-773f, var_0))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1324f), _wgslsmith_f_op_f32(ceil(var_0))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(sign(var_0))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, var_0)))))))));
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = func_2(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26017u, u_input.a, 38692u), _wgslsmith_mod_vec4_u32(vec4<u32>(8436u, 27724u, u_input.a, 1u), vec4<u32>(u_input.a, 22710u, u_input.a, 17506u))), max(max(u_input.a, 0u), _wgslsmith_sub_u32(u_input.a, u_input.a)), any(vec2<bool>(true, false))) != (_wgslsmith_add_u32(u_input.a, u_input.a) << (u_input.a % 32u)), any(!vec2<bool>(all(vec2<bool>(true, false)), true)), vec2<bool>(~u_input.b == 8943i, any(vec2<bool>(true, true)) | false), true);
    let var_1 = -2147483647i;
    var var_2 = func_2(!all(func_3(~var_0.a.a.xwx)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), !func_3(abs(abs(var_0.a.a.zzz))).zz, false).a;
    var var_3 = func_2(false, true, vec2<bool>(any(func_3(select(vec3<u32>(u_input.a, 0u, var_0.a.a.x), vec3<u32>(u_input.a, var_2.a.x, 33835u), false))), ~_wgslsmith_dot_vec2_u32(var_2.a.xz, vec2<u32>(4294967295u, var_0.a.a.x)) > 0u), !((_wgslsmith_mod_u32(u_input.a, var_0.a.a.x) > firstLeadingBit(var_2.a.x)) | !func_3(vec3<u32>(u_input.a, 58754u, u_input.a)).x));
    var var_4 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, all(vec3<bool>(true, false, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), func_3(vec3<u32>(var_0.a.a.x, 38193u, 14558u)).x)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)), true)), false);
    return ~(~countOneBits(reverseBits(~vec4<i32>(-1i, 12324i, var_0.b.x, 1817i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, -44257i) & vec4<i32>(u_input.b, -8807i, u_input.b, u_input.b)), -1i, (i32(-1i) * -30808i) | ~u_input.b, ~u_input.b), select(~func_1(vec2<f32>(-718f, 1433f)), firstTrailingBit(-vec4<i32>(40895i, -11449i, 19866i, u_input.b)), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, all(vec2<bool>(true, false)))), ~abs(vec4<i32>(1i, -2147483647i, u_input.b, -1i) >> (vec4<u32>(u_input.a, 138193u, u_input.a, 76020u) % vec4<u32>(32u)))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(-8820i, -3765i, u_input.b, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-18955i, 98936i, 1662i, -1i), vec4<i32>(1i, u_input.b, -22439i, u_input.b)))));
    var_0 = vec4<i32>((~28369i << (u_input.a % 32u)) << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(var_0.x, u_input.b, var_0.x, -26761i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, var_0.x, u_input.b), vec4<i32>(40150i, -1i, 1i, u_input.b)))), var_0.x, min(-1i, -88881i)) | _wgslsmith_add_vec4_i32(reverseBits(abs(firstTrailingBit(vec4<i32>(-22977i, 12756i, u_input.b, u_input.b)))), vec4<i32>(-2147483647i, ~_wgslsmith_sub_i32(u_input.b, 0i), select(-53701i, u_input.b, true), ~1i >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u)));
    let var_1 = Struct_2(Struct_1(min(vec4<u32>(0u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), select(vec4<u32>(u_input.a, 62725u, u_input.a, 65405u), vec4<u32>(u_input.a, 63524u, u_input.a, 1u), true)) >> (abs(vec4<u32>(1u, 1u, 0u, 11594u)) % vec4<u32>(32u))), var_0.zxz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f - -816f))), _wgslsmith_f_op_f32(func_2(false, true, vec2<bool>(true, true), true).c.x - 232f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-434f + 2614f), _wgslsmith_div_f32(688f, 1080f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-988f, -143f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1816f)))))));
    var_0 = vec4<i32>(~var_0.x, func_2(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)), vec2<bool>(any(vec2<bool>(true, false)), false), false).b.x, 0i, ~abs(var_0.x >> (var_1.a.a.x % 32u))) ^ -(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, var_1.b.x, 1i)), vec4<i32>(0i, -13576i, var_0.x, 53969i) >> (vec4<u32>(4294967295u, 1u, 40771u, 45247u) % vec4<u32>(32u))) >> (var_1.a.a % vec4<u32>(32u)));
    var_0 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(-773i, -1i, -var_1.b.x)), _wgslsmith_div_i32(var_0.x, -(~9737i)), _wgslsmith_sub_i32(var_1.b.x, countOneBits(1i))), -reverseBits(func_1(var_1.d).x), -75745i | -reverseBits(u_input.b & 11697i), select(reverseBits(-11744i), -2147483647i, !(262f != var_1.c.x)) >> (~var_1.a.a.x % 32u));
    var var_2 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(-6886i, u_input.b, ~12126i), vec3<i32>(var_1.b.x, -1i, u_input.b));
    let var_3 = Struct_2(var_1.a, select(_wgslsmith_add_vec3_i32(var_1.b, var_0.xwx), -func_1(vec2<f32>(var_1.c.x, -453f)).wwx, select(vec3<bool>(false, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -2733f)), false)), var_1.d))), _wgslsmith_f_op_vec2_f32(var_1.d - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1217f)), 420f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, 315f) - func_2(true, false, vec2<bool>(false, true), false).d))));
    var_2 = _wgslsmith_div_vec3_i32(-(vec3<i32>(var_2.x, -58736i, -48233i) ^ -select(var_3.b, vec3<i32>(var_0.x, 3504i, 0i), false)), max(var_0.wwx, func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, var_3.c.x))))).wyw));
    var_0 = vec4<i32>(var_1.b.x, ~_wgslsmith_add_i32(u_input.b, i32(-1i) * -1i), ~1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, var_2.x >> (var_1.a.a.x % 32u)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(6323i, -var_0.x) << (0u % 32u));
}


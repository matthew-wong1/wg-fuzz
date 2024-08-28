struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_i32(arg_0.x, -35147i);
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_i32(abs(~(-vec2<i32>(u_input.a.x, arg_0.x))), ~u_input.a.xy, vec2<i32>(select(-590i, ~arg_0.x, true), -2147483647i)), !(any(vec4<bool>(false, true, true, true)) && all(vec3<bool>(true, true, true))), !select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), max(u_input.b.x, 4294967295u) == (u_input.b.x & 19352u)), Struct_1(u_input.b.x & 0u, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(1f))));
    var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, -2147483647i), ~u_input.a.x), u_input.a.x);
    var_1 = Struct_2(_wgslsmith_mod_vec2_i32(arg_0, min(arg_0, ~max(vec2<i32>(var_1.a.x, 0i), var_1.a))), var_1.d.b.x, select(vec4<bool>(false, all(var_1.c.xzz), true || (true || var_1.c.x), false), select(!vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.b), !select(var_1.c, var_1.c, var_1.c), !(!vec4<bool>(false, var_1.d.b.x, var_1.d.b.x, false))), !select(vec4<bool>(false, false, var_1.c.x, true), var_1.c, true)), var_1.d);
    var_1 = Struct_2(vec2<i32>(_wgslsmith_add_i32(-(~(-1i)), ~(-u_input.a.x)), -max(arg_0.x << (3523u % 32u), arg_0.x)), all(var_1.c.wwy), !vec4<bool>(any(var_1.d.b.xy), var_1.d.b.x, false, all(var_1.c)), var_1.d);
    return select(var_1.c.ww, var_1.d.b.xy, any(var_1.c));
}

fn func_2() -> Struct_1 {
    var var_0 = select(true, all(select(vec2<bool>(false, true), func_3(vec2<i32>(-1i, u_input.a.x)), vec2<bool>(true, true))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 32688i), abs(u_input.a.x)) < -(~u_input.a.x)) && !all(vec3<bool>(true, true, true));
    var var_1 = ~(~_wgslsmith_sub_i32(max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 34666i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i)))) << (~50392u % 32u);
    let var_2 = !(!vec2<bool>(any(vec2<bool>(true, true)), false));
    var_0 = all(!var_2);
    var_1 = firstLeadingBit(-27000i);
    return Struct_1(select(u_input.b.x, u_input.b.x, func_3(vec2<i32>(u_input.a.x, u_input.a.x ^ 21378i)).x), vec3<bool>(false, !all(!vec4<bool>(var_2.x, false, var_2.x, true)), var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-264f)), 384f));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = func_2();
    var var_1 = arg_0.c.xyz;
    let var_2 = ~_wgslsmith_mod_vec4_u32(firstLeadingBit(~select(u_input.b, vec4<u32>(1u, 76831u, 0u, 11992u), arg_0.d.b.x)), vec4<u32>(~countOneBits(var_0.a), select(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(19883u, 1u, 74958u, u_input.c), vec4<u32>(arg_0.d.a, u_input.b.x, u_input.c, var_0.a)), !var_0.b.x), reverseBits(~4294967295u), _wgslsmith_sub_u32(37116u, ~var_0.a)));
    var var_3 = 1264f;
    var_0 = Struct_1(_wgslsmith_sub_u32(func_2().a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.wxx, u_input.b.zxw), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0.a, 1u), vec3<u32>(12563u, 58292u, u_input.b.x)), _wgslsmith_add_u32(73822u, u_input.c))) >> (_wgslsmith_clamp_u32(var_0.a, 77189u, (arg_0.d.a << (arg_0.d.a % 32u)) << (~120373u % 32u)) % 32u), func_2().b, arg_0.d.c);
    return all(select(select(vec4<bool>(!var_0.b.x, var_0.b.x || var_1.x, true, arg_0.c.x | var_0.b.x), !arg_0.c, false), !arg_0.c, vec4<bool>((1u >> (var_0.a % 32u)) >= var_0.a, false, !var_1.x, any(func_2().b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, 1u)), vec2<u32>(~1u, ~1u) & u_input.b.xy), 7138u);
    var var_1 = ~_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, ~(-1i), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, -2147483647i)), u_input.a.x), (vec4<i32>(u_input.a.x, u_input.a.x, -510i, 0i) << (vec4<u32>(1u, var_0.x, var_0.x, 5208u) % vec4<u32>(32u))) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(24749i, u_input.a.x, -20270i, -52849i), -vec4<i32>(u_input.a.x, 27207i, u_input.a.x, u_input.a.x)), min(~vec4<i32>(u_input.a.x, 0i, 12207i, 2147483647i), ~vec4<i32>(-1i, u_input.a.x, u_input.a.x, -16604i)), firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, -23527i, u_input.a.x))));
    let var_2 = 1473f;
    var var_3 = u_input.a.x;
    let var_4 = vec2<bool>(all(vec4<bool>(true && any(vec4<bool>(false, false, true, false)), true, false, true)), any(!vec3<bool>(true, true, 105627u < u_input.c)));
    let var_5 = Struct_2(vec2<i32>(u_input.a.x, firstLeadingBit(-1i)), var_4.x, !select(vec4<bool>(false, var_4.x | true, true, true), vec4<bool>(any(vec4<bool>(var_4.x, false, var_4.x, var_4.x)), !var_4.x, true, true), !func_1(Struct_2(u_input.a.zy, true, vec4<bool>(false, true, true, var_4.x), Struct_1(22026u, vec3<bool>(var_4.x, var_4.x, false), -275f)))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(1088f + var_5.d.c)))), vec4<i32>(var_5.a.x, i32(-1i) * -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), abs(~_wgslsmith_mult_i32(var_1.x, var_1.x)), ~u_input.a.x), _wgslsmith_dot_vec2_u32(~(~u_input.b.xw), countOneBits(u_input.b.zx & vec2<u32>(7955u, 16844u)) | ~(~u_input.b.zw)), -2752i);
}


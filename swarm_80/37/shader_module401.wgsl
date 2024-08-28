struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    return -95112i;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = ~abs(_wgslsmith_mod_i32(-2147483647i, -14818i));
    var var_1 = reverseBits(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 46143u, 4294967295u, 31665u), ~vec4<u32>(arg_1.x, 0u, arg_0, arg_2.x)), abs(_wgslsmith_sub_u32(u_input.a.x, arg_2.x)), 67326u));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(select(_wgslsmith_div_u32(1u, arg_0), ~arg_1.x, true)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(564u, u_input.c.x)), firstLeadingBit(var_1.xy)), var_1.x), _wgslsmith_mod_vec3_u32(u_input.a, arg_2), ~_wgslsmith_add_vec3_u32(~u_input.a, ~vec3<u32>(arg_1.x, arg_0, arg_1.x) << (arg_2 % vec3<u32>(32u))));
    var_0 = ~(-27196i);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 630f) - arg_3.xz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.yz))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(arg_3.x * arg_3.x)) - arg_3.xy))));
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~107675u) << (u_input.a.x % 32u);
    let var_1 = vec4<bool>(!any(vec2<bool>(true, true)), true, !(var_0 < ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 21090u, 1u), vec4<u32>(1u, 0u, 1u, u_input.a.x))), false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) * _wgslsmith_f_op_f32(ceil(-1367f)))))));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(1324u, var_0 | func_3(firstTrailingBit(u_input.c.x), u_input.a.yx & vec2<u32>(1u, var_0), u_input.a, vec3<f32>(var_2, var_2, 2100f))), ~u_input.c.x);
    var var_4 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.b.x, 1i, reverseBits(u_input.b.x)), max(~u_input.b.zzw, _wgslsmith_add_vec3_i32(vec3<i32>(-40625i, 0i, u_input.b.x), u_input.b.xyy))) >> (~(~vec3<u32>(u_input.c.x, 4294967295u, 1404u)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(countOneBits(1702i), u_input.b.x, max(u_input.b.x, u_input.b.x))), u_input.a, select(select(var_1.x, var_1.x, 774f >= _wgslsmith_f_op_f32(trunc(var_2))), !var_1.x, !any(vec3<bool>(var_1.x, var_1.x, true)) || true));
    return Struct_1(abs(var_4.a), -vec3<i32>(u_input.b.x, min(-2147483647i, -17210i) & var_4.b.x, max(~var_4.b.x, ~var_4.b.x)), vec3<u32>(~36788u, var_0, _wgslsmith_clamp_u32(56908u, 37828u, ~(var_4.c.x & u_input.c.x))), var_4.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = func_1(arg_1, Struct_1(max(abs(arg_1.a), u_input.b.zxx), vec3<i32>(17714i, -1i, -countOneBits(u_input.b.x)), ~arg_1.c, false), vec3<f32>(515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1021f - 968f))) - _wgslsmith_f_op_f32(min(525f, _wgslsmith_f_op_f32(sign(-505f))))), _wgslsmith_f_op_f32(910f + _wgslsmith_f_op_f32(abs(-400f)))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -56428i, _wgslsmith_mult_i32(arg_1.b.x, arg_1.a.x), u_input.b.x | u_input.b.x), max(vec3<i32>(u_input.b.x, -2147483647i, arg_1.a.x), -vec3<i32>(u_input.b.x, u_input.b.x, -26323i)), vec3<i32>(1i, 3580i, -2147483647i)));
    let var_1 = arg_1;
    let var_2 = max(u_input.b | u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(select(u_input.b, abs(u_input.b), var_1.d), ~u_input.b), u_input.b));
    var var_3 = select(~select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(var_1.c.x, arg_1.c.x)), ~vec2<u32>(var_1.c.x, u_input.a.x), _wgslsmith_add_vec2_u32(arg_1.c.xy, arg_0)), reverseBits(u_input.a.zx >> (arg_0 % vec2<u32>(32u))), select(!vec2<bool>(false, var_1.d), select(vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(false, false), true), true)), _wgslsmith_div_vec2_u32(abs(_wgslsmith_add_vec2_u32(arg_0 << (vec2<u32>(arg_1.c.x, 0u) % vec2<u32>(32u)), vec2<u32>(78917u, arg_1.c.x) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(var_1.c.x, var_1.c.x) | arg_0), max(arg_1.c.zx >> (vec2<u32>(var_1.c.x, 442u) % vec2<u32>(32u)), var_1.c.zx))), select(vec2<bool>(select(all(vec2<bool>(arg_1.d, arg_1.d)), false, arg_1.d), true), select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(arg_1.d, !var_1.d), select(vec2<bool>(var_1.d, false), vec2<bool>(true, true), !vec2<bool>(var_1.d, arg_1.d))), all(vec3<bool>(false, var_1.d, !arg_1.d))));
    let var_4 = Struct_1(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, var_1.b.x, arg_1.b.x), select(u_input.b.www << (var_1.c % vec3<u32>(32u)), min(var_2.xwz, arg_1.a), vec3<bool>(var_1.d, var_1.d, true)), vec3<bool>(!arg_1.d, false, var_1.d)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, 32443i, arg_1.b.x) ^ vec3<i32>(var_2.x, var_0, var_1.b.x), var_1.b)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(0i, var_1.a.x, -1i)), ~reverseBits(u_input.b.www) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(var_0, countOneBits(min(44557i, arg_1.b.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i), var_1.b.xy), min(arg_1.b.xy, u_input.b.ww)))), (_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(4294967295u, var_1.c.x, arg_0.x)) << (~var_1.c % vec3<u32>(32u))) ^ min(~_wgslsmith_sub_vec3_u32(arg_1.c, vec3<u32>(4294967295u, var_1.c.x, 4299u)), vec3<u32>(u_input.a.x, 0u, 95036u)), 19178i > abs(~(-var_2.x)));
    return ~func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-698f)))))) * 997f);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(u_input.c.x, u_input.a.x)), 25580u, u_input.a.x), firstLeadingBit(vec3<u32>(~u_input.a.x, u_input.c.x, ~1u)));
    var_0 = -409f;
    var var_2 = Struct_1(-(~(-u_input.b.zyy)), countOneBits(vec3<i32>(abs(func_1(Struct_1(u_input.b.zyx, u_input.b.zzw, u_input.a, true), Struct_1(u_input.b.wzy, vec3<i32>(u_input.b.x, -60518i, 22823i), u_input.a, true), vec3<f32>(141f, 2138f, 324f), u_input.b.wyy)), ~u_input.b.x, u_input.b.x)), ~(~func_4(vec2<u32>(4294967295u, 0u), func_2())), true);
    var_2 = func_2();
    var var_3 = func_2();
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(u_input.a, vec3<u32>(3776u, var_4.c.x, u_input.c.x), var_4.d))), -472f, 39804u);
}


struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> u32 {
    let var_0 = 0u;
    var var_1 = Struct_1(27479u, ~20928i, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -2285f, 610f))) - vec3<f32>(1f, 1f, 1f))), reverseBits((-u_input.b.ywz << (vec3<u32>(1u, 1u, 15320u) % vec3<u32>(32u))) >> ((vec3<u32>(32u, var_0, var_0) | (vec3<u32>(var_0, 62522u, 67523u) & vec3<u32>(var_0, var_0, 87851u))) % vec3<u32>(32u))));
    var var_2 = firstTrailingBit(3004i);
    var var_3 = Struct_1(~(~var_1.a), u_input.c, var_1.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1534f, _wgslsmith_div_f32(-1418f, -1372f)) + var_1.d.x), var_1.d.x, 319f), ~_wgslsmith_add_vec3_i32(countOneBits(u_input.b.ywx), firstLeadingBit(vec3<i32>(-13390i, var_1.b, u_input.a.x))));
    var_2 = -39652i;
    return 3u;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    return vec4<u32>(0u, ~firstTrailingBit(4294967295u), func_2(), ~(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(215u, 6853u, 1u), vec3<u32>(69039u, 558u, 55065u)))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-352f, -512f), vec2<f32>(-780f, -1242f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 883f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, -190f) * vec2<f32>(1000f, -1778f))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -118f), 558f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-224f, -371f) * _wgslsmith_f_op_f32(659f * -408f)))));
    var var_1 = ~firstLeadingBit(1u);
    var var_2 = _wgslsmith_clamp_i32(select(u_input.c, u_input.b.x, true), ~(~5577i), u_input.c >> (~1u % 32u));
    var_2 = u_input.a.x;
    var_1 = ~(~67857u);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(vec3<i32>(1i | arg_2, u_input.b.x, -max(0i >> (arg_1.a % 32u), _wgslsmith_add_i32(u_input.b.x, arg_3.x))), -(vec3<i32>(~arg_2, 1i, arg_3.x) ^ -abs(vec3<i32>(arg_1.e.x, u_input.b.x, u_input.a.x))), vec4<bool>(true, !(!arg_1.c.x), !(-910f >= _wgslsmith_f_op_f32(min(arg_1.d.x, arg_1.d.x))), arg_1.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.d * vec3<f32>(arg_1.d.x, -585f, arg_1.d.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d.x, -1528f, arg_1.d.x), vec3<f32>(arg_1.d.x, -903f, arg_1.d.x), false))))), _wgslsmith_clamp_vec3_i32(-arg_1.e, u_input.b.zxx, select(~vec3<i32>(arg_1.e.x, arg_2, -5548i), _wgslsmith_div_vec3_i32(vec3<i32>(-107i, arg_2, arg_3.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-40480i, 1i, u_input.a.x), u_input.b.zyz)), true)));
    let var_1 = Struct_2(arg_1.e, var_0.a, !(!vec4<bool>(var_0.c.x, var_0.c.x, any(vec3<bool>(arg_1.c.x, true, arg_1.c.x)), var_0.c.x & true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.d.x, -906f, arg_1.d.x)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(374f, var_0.d.x, -1000f) + vec3<f32>(arg_1.d.x, var_0.d.x, -734f)), vec3<f32>(_wgslsmith_f_op_f32(-1645f - -972f), _wgslsmith_f_op_f32(-582f - 444f), var_0.d.x)))), reverseBits(-(~arg_1.e)) >> (func_1(arg_1.c.x).zwy % vec3<u32>(32u)));
    let var_2 = select(select(var_1.c.yxz, vec3<bool>(!all(vec2<bool>(true, var_1.c.x)), true, false), select(select(!vec3<bool>(true, var_0.c.x, arg_1.c.x), var_1.c.zzx, all(vec2<bool>(var_0.c.x, var_0.c.x))), select(select(var_1.c.wxy, var_1.c.xzy, true), vec3<bool>(false, false, var_1.c.x), var_0.c.x), !(!arg_1.c.x))), select(!vec3<bool>(all(var_0.c.zxz), var_1.c.x, true), !select(var_0.c.yxx, select(vec3<bool>(false, false, arg_1.c.x), var_1.c.xyw, var_0.c.x), select(var_0.c.wyy, var_0.c.wxw, var_0.c.x)), var_0.c.x), !var_1.c.wyz);
    var_0 = var_1;
    var_0 = Struct_2(firstTrailingBit(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.e, vec3<i32>(0i, var_0.a.x, -16503i)), u_input.a.xxy)), u_input.b.yyz, select(!(!(!vec4<bool>(true, true, var_1.c.x, false))), var_0.c, select(select(select(var_1.c, vec4<bool>(var_2.x, var_1.c.x, true, var_1.c.x), false), vec4<bool>(true, var_0.c.x, true, true), var_0.c), select(var_1.c, vec4<bool>(true, var_2.x, arg_1.c.x, true), var_1.c), var_1.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.x, arg_1.d.x, arg_1.d.x), vec3<f32>(-815f, 2961f, -155f)))))), -reverseBits(~var_0.b));
    return Struct_1(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec3_u32(arg_0, abs(~arg_0))), reverseBits(5055i) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.e.zy, vec2<i32>(var_1.a.x, -11972i)) ^ (arg_3 << (arg_0.yx % vec2<u32>(32u))), var_0.a.yy), !var_1.c.yx, var_0.d, firstTrailingBit(vec3<i32>(arg_1.b >> (0u % 32u), -arg_1.e.x, ~1i) << (~arg_0 % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 76546u, 1u, 27779u) << (func_1(true) % vec4<u32>(32u)), vec4<u32>(~18569u, ~4294967295u, 1u, _wgslsmith_clamp_u32(4294967295u, 28053u, 4294967295u))), 2416u, 0u), Struct_1(~abs(4294967295u), abs(u_input.c ^ u_input.a.x), !vec2<bool>(true, all(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1227f, -1097f, -1197f) + vec3<f32>(-1000f, -161f, -1527f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -488f, -708f))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(true)), 1205f, _wgslsmith_f_op_f32(f32(-1f) * -1152f))), vec3<i32>(-_wgslsmith_add_i32(u_input.b.x, 1i), 0i, _wgslsmith_mult_i32(u_input.b.x, -2147483647i))), -1i, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, i32(-1i) * -58223i), firstLeadingBit(u_input.a.x >> (44671u % 32u))), reverseBits(~u_input.b.x)));
    var var_1 = func_4(~countOneBits(vec3<u32>(firstLeadingBit(1u), 32738u & var_0.a, ~1u)), Struct_1(~(~1u) << (var_0.a % 32u), -_wgslsmith_add_i32(-2147483647i, i32(-1i) * -18864i), func_4(func_1(!var_0.c.x).zxw, func_4(vec3<u32>(var_0.a, var_0.a, 51932u), func_4(vec3<u32>(var_0.a, var_0.a, var_0.a), Struct_1(4294967295u, u_input.b.x, var_0.c, vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), u_input.b.wzy), 4687i, vec2<i32>(2147483647i, 1i)), 2147483647i, vec2<i32>(u_input.b.x, 2147483647i)), _wgslsmith_mult_i32(0i >> (var_0.a % 32u), min(5624i, u_input.a.x)), ~u_input.a.wy).c, var_0.d, -vec3<i32>(-24797i, -38432i, 38416i) << (abs(vec3<u32>(var_0.a, var_0.a, 79734u)) % vec3<u32>(32u))), 0i, u_input.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_0.d.x))))), vec3<u32>(67428u, reverseBits(max(_wgslsmith_add_u32(var_0.a, 45737u), var_0.a)), 1u), _wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(max(-64044i, -2147483647i), -var_0.b, abs(1i), var_0.b ^ 1i), vec4<i32>(var_1.e.x, _wgslsmith_mult_i32(-9446i, 19388i), _wgslsmith_add_i32(28506i, -2147483647i), 2147483647i))), -var_0.e.x, -25658i);
}


struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(!select(arg_1.a, select(!arg_1.a, !vec2<bool>(arg_0, false), u_input.b.x == -2147483647i), arg_0));
    let var_1 = false;
    var var_2 = !select(select(!select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, true, false, true), vec4<bool>(true, var_1, arg_0, true)), !select(vec4<bool>(var_0, var_1, true, false), vec4<bool>(true, true, var_1, true), arg_0), select(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_1, true, arg_0, var_1), vec4<bool>(arg_1.a.x, false, var_1, arg_0)), !vec4<bool>(true, false, false, var_0), !vec4<bool>(false, var_1, true, false))), !select(!vec4<bool>(false, var_1, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_0, arg_1.a.x, var_0, false)), !arg_1.a.x);
    var var_3 = true;
    var_3 = any(select(!vec3<bool>(var_1, false, var_1), vec3<bool>(select(false, false, arg_1.a.x), 2147483647i < u_input.b.x, true), arg_1.b > 0u)) | false;
    return arg_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_2(!select(!(!vec4<bool>(arg_0.x, false, false, true)), !select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_1.a.x, arg_1.a.x, false), vec4<bool>(arg_0.x, false, arg_1.a.x, false)), vec4<bool>(true, false, select(arg_1.a.x, arg_0.x, arg_1.a.x), true)));
    var var_1 = max(firstTrailingBit(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(47552u, arg_1.b, 3006u), vec3<u32>(14552u, arg_1.b, arg_1.b)), arg_1.b, ~1u, countOneBits(35320u))), ~(~(~max(vec4<u32>(1u, arg_1.b, 0u, arg_1.b), vec4<u32>(arg_1.b, arg_1.b, 18680u, 4294967295u)))));
    var_1 = vec4<u32>(4294967295u, arg_1.b, ~_wgslsmith_clamp_u32(arg_1.b, var_1.x, _wgslsmith_mod_u32(~arg_1.b, 1u)), ~1u);
    var_1 = _wgslsmith_mult_vec4_u32(~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, arg_1.b, arg_1.b, 4294967295u), firstLeadingBit(vec4<u32>(15507u, 36095u, arg_1.b, 19069u)), _wgslsmith_add_vec4_u32(vec4<u32>(53831u, var_1.x, 13755u, 9331u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 12990u, arg_1.b, var_1.x), min(vec4<u32>(arg_1.b, 61604u, arg_1.b, 35123u), vec4<u32>(var_1.x, var_1.x, 13206u, arg_1.b))) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(countOneBits(~max(vec4<u32>(arg_1.b, var_1.x, var_1.x, var_1.x), vec4<u32>(arg_1.b, arg_1.b, var_1.x, 1u))), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, 59583u, 33605u)), ~vec4<u32>(34298u, var_1.x, arg_1.b, var_1.x))));
    var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_1.x, arg_1.b, var_1.x, 75837u), select(vec4<u32>(arg_1.b, 0u, arg_1.b, 14163u), vec4<u32>(var_1.x, arg_1.b, var_1.x, var_1.x), vec4<bool>(arg_0.x, arg_0.x, true, var_0.a.x))), vec4<u32>(arg_1.b, ~1u, ~1u, arg_1.b)), _wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(36605u, arg_1.b, 9796u, 1u)) << (vec4<u32>(1u, 4294967295u, var_1.x, ~4294967295u) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(86231u, arg_1.b, arg_1.b, arg_1.b), vec4<u32>(var_1.x, 0u, 4294967295u, 0u)))));
    return arg_3.x;
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = Struct_2(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false)), select(vec4<bool>(any(vec3<bool>(false, false, true)), func_1(false, Struct_1(vec2<bool>(true, true), 4294967295u)).a.x, true, all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), true), true));
    var var_1 = max(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.b.yy, u_input.b.xy ^ u_input.b.zz), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.a), u_input.b.zx), abs(-1i))), countOneBits(u_input.b.yx)) << (~select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(81895u, 4294967295u))), ~vec2<u32>(1u, 1u), true) % vec2<u32>(32u));
    let var_2 = Struct_1(!var_0.a.yx, 31623u);
    var var_3 = Struct_2(!select(vec4<bool>(any(var_0.a.wzw), true, !var_0.a.x, var_1.x != -9477i), select(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), var_0.a, true), vec4<bool>(var_2.a.x, var_0.a.x & true, all(vec3<bool>(var_2.a.x, false, false)), all(vec3<bool>(false, var_2.a.x, var_2.a.x)))));
    var var_4 = func_1(!any(!vec4<bool>(var_0.a.x, false, var_3.a.x, var_0.a.x)), Struct_1(vec2<bool>(~2147483647i > (-36735i << (var_2.b % 32u)), var_2.b <= _wgslsmith_div_u32(1u, var_2.b)), reverseBits(var_2.b)));
    return 0u;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_1(all(!select(!vec4<bool>(true, arg_0.d, true, false), !vec4<bool>(arg_0.d, true, arg_0.d, false), vec4<bool>(false, false, arg_0.b.a.x, arg_0.d))), func_1(func_4(func_3(vec3<bool>(arg_0.d, arg_0.d, false), arg_0.b, 481f, u_input.b)) != _wgslsmith_add_u32(~4294967295u, ~arg_0.c.x), Struct_1(select(!arg_0.b.a, vec2<bool>(arg_0.b.a.x, false), any(vec3<bool>(arg_0.d, true, arg_0.d))), _wgslsmith_mult_u32(arg_0.b.b, arg_0.b.b))));
    var_0 = Struct_1(select(vec2<bool>(arg_0.b.a.x, true), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 4294967295u, arg_0.b.b), vec3<u32>(0u, arg_0.b.b, arg_0.b.b)) <= ~91498u, var_0.a.x), select(func_1(var_0.a.x, func_1(arg_0.d, arg_0.b)).a, !arg_0.b.a, arg_0.b.a)), 0u);
    let var_1 = abs(~(~arg_0.a));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(var_0.b, var_0.b), 69749u, ~arg_0.b.b), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(arg_0.b.b, 1u, 1u)), firstTrailingBit(~vec3<u32>(1u, arg_0.c.x, 4294967295u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1007u, arg_0.b.b, arg_0.c.x)), reverseBits(vec3<u32>(var_0.b, 40122u, var_0.b))))), vec3<u32>(~reverseBits(~11917u), func_1(true, Struct_1(select(arg_0.b.a, arg_0.b.a, vec2<bool>(var_0.a.x, false)), arg_0.c.x)).b, 86789u));
    var_2 = ~var_0.b;
    return Struct_1(select(vec2<bool>(var_0.a.x, true), arg_0.b.a, func_1(any(vec4<bool>(var_0.a.x, false, arg_0.d, var_0.a.x)) & true, func_1(var_0.a.x, arg_0.b)).a), ~arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 28058i, u_input.a, 18449i), abs(vec4<i32>(u_input.b.x, -1i, 1i, 0i)))), func_2(Struct_3(reverseBits(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x)), func_1(false, Struct_1(vec2<bool>(true, true), 1u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(58799u, 73656u), vec2<u32>(0u, 43668u), vec2<u32>(0u, 23226u)), func_1(false, func_1(false, Struct_1(vec2<bool>(false, true), 79197u))).a.x)), ~(select(firstTrailingBit(vec2<u32>(1u, 18012u)), vec2<u32>(1u, 95946u), vec2<bool>(true, true)) & abs(vec2<u32>(13630u, 66047u))), true);
    var var_1 = Struct_2(select(select(!vec4<bool>(var_0.d, false, var_0.b.a.x, var_0.b.a.x), !vec4<bool>(true, var_0.b.a.x, var_0.d, var_0.b.a.x), var_0.b.a.x | true), !(!(!vec4<bool>(var_0.d, var_0.b.a.x, false, var_0.d))), true));
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.c.x, var_0.b.b, var_0.b.b, 0u), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(5058u, 42938u, var_0.c.x) << (vec3<u32>(var_0.c.x, 0u, var_0.c.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.b, 4294967295u, var_0.c.x), vec3<u32>(45011u, var_0.b.b, var_0.b.b))), 1u, 1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.b.b) | vec3<u32>(var_0.c.x, 1024u, var_0.c.x), vec3<u32>(var_0.b.b, 16889u, 4294967295u)))));
    var_1 = Struct_2(var_1.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-901f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(abs(-355f))), -2505f, _wgslsmith_f_op_f32(-563f - -165f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, 1000f, 381f, -1761f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(686f, 1364f, -1000f, -641f))))) - vec4<f32>(411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-2570f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-904f)), 1f, u_input.a > var_0.a.x)))), 524f));
    let var_4 = var_3.x;
    var var_5 = var_2.zx;
    var var_6 = !all(!var_1.a.zwy);
    var var_7 = !all(!(!vec2<bool>(var_1.a.x, var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1129f, _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.c.x, _wgslsmith_mod_u32(46593u, var_0.c.x), 1u), ~(~var_2.zwy & ~var_2.wwy)));
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_5) -> bool {
    let var_0 = _wgslsmith_div_i32(firstLeadingBit(u_input.c >> (~_wgslsmith_mod_u32(arg_1.x, arg_1.x) % 32u)), _wgslsmith_div_i32(u_input.b, (51211i << (arg_1.x % 32u)) ^ select(u_input.b, u_input.d.x, true)) & 1i);
    var var_1 = !all(vec2<bool>(arg_3.a.x, true));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec2_f32(select(arg_0.a, arg_0.a, false))) * vec2<f32>(_wgslsmith_f_op_f32(round(-730f)), -602f)));
    let var_3 = Struct_2(any(select(arg_3.a.yx, select(vec2<bool>(arg_3.a.x, arg_3.a.x), select(arg_3.a.yy, arg_3.a.xy, arg_2), vec2<bool>(true, true)), false)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(799f, arg_0.a.x) + vec2<f32>(609f, 1916f)))), !(!vec2<bool>(arg_2, arg_3.a.x)))), vec3<u32>(arg_1.x, select(arg_1.x, ~arg_1.x, true), max(arg_1.x & 4294967295u, firstTrailingBit(24110u))), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    var var_4 = var_3.b;
    return any(select(select(select(arg_3.a, !vec4<bool>(arg_2, true, false, arg_3.a.x), false), arg_3.a, !select(vec4<bool>(arg_3.a.x, true, arg_2, true), vec4<bool>(true, arg_3.a.x, false, true), true)), !select(vec4<bool>(arg_3.a.x, var_3.a, arg_2, var_3.a), vec4<bool>(true, arg_2, false, false), vec4<bool>(arg_2, false, false, false)), !select(true, arg_2, any(arg_3.a.xx))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_5) -> Struct_2 {
    let var_0 = (-(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, u_input.d) & ~u_input.d) ^ (_wgslsmith_clamp_vec4_i32(-u_input.d, -vec4<i32>(u_input.a, -2147483647i, u_input.c, u_input.c), u_input.d) | select(vec4<i32>(u_input.b, -2147483647i, u_input.a, u_input.a) & vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.c), u_input.d << (vec4<u32>(arg_0, arg_0, arg_0, 24453u) % vec4<u32>(32u)), arg_3.a))) & (u_input.d << (min(~(~vec4<u32>(46044u, 23669u, 66602u, arg_0)), vec4<u32>(_wgslsmith_sub_u32(1u, 1u), ~6034u, _wgslsmith_add_u32(arg_0, arg_0), ~4294967295u)) % vec4<u32>(32u)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(622f, -915f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1302f, -306f))) * vec2<f32>(_wgslsmith_div_f32(1941f, 2055f), 2997f))));
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_1.a));
    var var_2 = 1u;
    var var_3 = Struct_2(select(!select(false, !arg_1.x, func_3(Struct_4(var_1.a), vec4<u32>(97291u, 33568u, 11373u, arg_0), false, Struct_5(vec4<bool>(arg_2.x, arg_1.x, arg_2.x, false)))), arg_3.a.x || (any(arg_1) && true), arg_3.a.x), Struct_1(var_1.a, select(vec3<u32>(arg_0, _wgslsmith_sub_u32(arg_0, 1u), 1u), abs(vec3<u32>(96867u, arg_0, arg_0)) | (vec3<u32>(arg_0, arg_0, arg_0) | vec3<u32>(0u, 4294967295u, 1u)), !vec3<bool>(arg_1.x, arg_2.x, true)), _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(323f - -2073f))))));
    return Struct_2(arg_2.x, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(var_3.b.a)))), countOneBits(firstLeadingBit(~var_3.b.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))), var_3.b.d, false)), _wgslsmith_div_f32(var_1.a.x, 1912f)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = arg_0.b.b.x;
    let var_1 = u_input.c;
    var var_2 = true;
    var var_3 = abs(arg_0.b.b);
    var var_4 = vec3<bool>(all(select(vec3<bool>(true, true, true), !(!vec3<bool>(false, arg_0.a, arg_0.a)), vec3<bool>(arg_1 || true, arg_0.b.d == arg_0.b.a.x, arg_1 | false))), !arg_1, arg_1);
    return Struct_3(~u_input.d.xy, func_2(var_3.x, vec4<bool>(false, all(vec2<bool>(arg_1, false)), false, var_4.x), var_4.xy, Struct_5(select(!vec4<bool>(arg_0.a, false, arg_1, var_4.x), vec4<bool>(true, false, arg_1, false), var_4.x))), select(vec3<bool>(arg_0.a, true, select(arg_0.a, arg_0.b.d >= -1164f, true)), vec3<bool>(_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(26684u, arg_0.b.b.x, arg_0.b.b.x, var_3.x)) != 1u, true & all(vec3<bool>(true, true, false)), arg_0.a), select(vec3<bool>(true, false, arg_1), !vec3<bool>(var_4.x, true, var_4.x), true)), u_input.d);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = func_4(func_2(_wgslsmith_div_u32(arg_0.b.b.x, 10316u), select(!vec4<bool>(arg_1, arg_1, arg_0.a, arg_1), select(vec4<bool>(true, arg_1, false, arg_0.a), !vec4<bool>(true, false, arg_1, arg_0.a), select(vec4<bool>(false, false, false, arg_1), vec4<bool>(arg_1, true, true, arg_0.a), vec4<bool>(false, arg_1, false, arg_1))), vec4<bool>(false, 0i <= u_input.b, true, true)), vec2<bool>(arg_0.b.c > arg_2.a.x, arg_1 && (arg_0.a | true)), Struct_5(vec4<bool>(!arg_0.a, true || arg_1, true || arg_0.a, arg_1))), all(select(vec2<bool>(true, arg_1), select(select(vec2<bool>(false, true), vec2<bool>(arg_1, true), vec2<bool>(arg_0.a, arg_1)), select(vec2<bool>(arg_1, arg_0.a), vec2<bool>(arg_1, true), true), select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_0.a), arg_0.a)), vec2<bool>(arg_0.a, true))), abs(select(vec3<u32>(~8983u, ~arg_2.b.x, arg_0.b.b.x), ~(~arg_0.b.b), true)), ~(~max(vec4<u32>(arg_0.b.b.x, arg_2.b.x, arg_0.b.b.x, 0u) ^ vec4<u32>(1u, arg_0.b.b.x, 61880u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 0u), vec4<u32>(arg_0.b.b.x, 4294967295u, arg_0.b.b.x, 1u)))));
    let var_1 = arg_0.b.a;
    let var_2 = select(func_2(var_0.b.b.b.x, vec4<bool>(true, func_3(Struct_4(vec2<f32>(var_1.x, 2185f)), vec4<u32>(var_0.b.b.b.x, 4294967295u, var_0.b.b.b.x, arg_2.b.x), false, Struct_5(vec4<bool>(arg_0.a, true, arg_1, var_0.b.a))), var_0.c.x, arg_1), func_4(arg_0, arg_0.a, ~vec3<u32>(arg_2.b.x, arg_2.b.x, 1u), vec4<u32>(4294967295u, 0u, arg_2.b.x, arg_0.b.b.x)).c.xy, Struct_5(!vec4<bool>(var_0.b.a, true, false, arg_1))).b.b.zx >> (~arg_0.b.b.yy % vec2<u32>(32u)), vec2<u32>(~(~0u), 1u), false);
    return 29054u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(_wgslsmith_mod_u32(~4728u, func_1(Struct_2(true, Struct_1(vec2<f32>(2560f, -1960f), vec3<u32>(1u, 0u, 36508u), -202f, -717f)), true, Struct_1(vec2<f32>(-1507f, 534f), vec3<u32>(0u, 17214u, 0u), -1893f, -330f), -861f)), select(26553u, abs(1u), true)));
    var_0 = ~vec2<u32>(_wgslsmith_mod_u32(var_0.x, reverseBits(var_0.x)) >> (1u % 32u), ~66445u);
    var_0 = vec2<u32>(reverseBits(1u), _wgslsmith_add_u32(min(var_0.x, abs(var_0.x)), ~(~var_0.x)) | var_0.x);
    var var_1 = ~min(vec2<u32>(var_0.x, 1u), ~func_2(var_0.x, vec4<bool>(true, true, true, true), vec2<bool>(true, true), Struct_5(vec4<bool>(false, false, false, true))).b.b.zz);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, _wgslsmith_f_op_f32(804f - _wgslsmith_f_op_f32(f32(-1f) * -1315f)), _wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1981f - 349f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.d.zz), firstLeadingBit(~(~max(vec3<u32>(var_1.x, var_0.x, var_0.x), vec3<u32>(var_1.x, var_1.x, 31258u)))), (11477i | max(u_input.c, u_input.d.x >> (1u % 32u))) | -_wgslsmith_add_i32(-u_input.c, _wgslsmith_mult_i32(25564i, 0i)), _wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(-func_2(27282u, select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec2<bool>(true, true), Struct_5(vec4<bool>(true, false, false, true))).b.a.x)));
}


struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    let var_0 = Struct_4(vec4<bool>(arg_0.x > 1360f, any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), !all(vec2<bool>(false, true)), all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -697f), 721f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1235f, arg_0.x) + -805f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(select(arg_0.x, 435f, var_0.a.x)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), var_0.a.x))), _wgslsmith_f_op_f32(arg_0.x - arg_0.x) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(793f - 832f), -405f)))), arg_0.zxz, all(var_0.a.zw)));
    var var_2 = _wgslsmith_mult_u32(abs(~(~_wgslsmith_mult_u32(u_input.c, arg_1.x))), ~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -581f))))));
    return 0u & countOneBits(~(0u ^ ~arg_1.x));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(u_input.c), ~u_input.c, min(u_input.c, 23621u), func_3(vec4<f32>(-320f, 2061f, arg_0, arg_0), vec2<u32>(42575u, u_input.c), -2147483647i)), ~vec4<u32>(u_input.c, u_input.c, 22562u, u_input.c) >> (~vec4<u32>(1792u, u_input.c, 0u, 1u) % vec4<u32>(32u))), ~vec4<u32>(14426u, 0u, u_input.c, 35688u) ^ _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(29129u, 4294967295u, u_input.c, u_input.c)), vec4<u32>(31192u, 27716u, 0u, u_input.c)), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    var_0 = ~_wgslsmith_sub_vec4_u32(~reverseBits(~vec4<u32>(37590u, var_0.x, var_0.x, u_input.c)), vec4<u32>(_wgslsmith_dot_vec3_u32(min(var_0.yxy, var_0.www), vec3<u32>(0u, 15312u, var_0.x)), ~u_input.c >> (_wgslsmith_mult_u32(1u, u_input.c) % 32u), _wgslsmith_mod_u32(u_input.c, 1u) << (1u % 32u), var_0.x));
    var var_1 = -_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x & u_input.b, u_input.a.x, u_input.b), abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, 16037i), vec3<i32>(u_input.b, -13945i, u_input.b)), vec3<i32>(55224i, u_input.a.x, u_input.b))));
    var_0 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(7767u, u_input.c, var_0.x, 4294967295u)), vec4<u32>(17845u, abs(4294967295u), select(~1u, firstTrailingBit(var_0.x), all(vec2<bool>(false, false))), u_input.c));
    var var_2 = select(var_1.xz, reverseBits(var_1.zx), 0u == select(~abs(u_input.c), ~38801u, any(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(-165f * _wgslsmith_f_op_f32(1794f - arg_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(select(vec3<u32>(abs(_wgslsmith_mult_u32(1u, 96577u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 54468u), ~vec2<u32>(u_input.c, u_input.c)), u_input.c), max(vec3<u32>(12425u, u_input.c, 21827u) >> (vec3<u32>(2501u, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.c, u_input.c)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 7725u, u_input.c), vec3<u32>(u_input.c, 8843u, u_input.c) >> (vec3<u32>(8659u, u_input.c, u_input.c) % vec3<u32>(32u))), select(!select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, false, arg_1.x), vec3<bool>(false, true, true)), !select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), vec3<bool>(arg_1.x, false, true))));
    var var_1 = var_0.a.yx;
    var_1 = firstLeadingBit(_wgslsmith_mult_vec2_u32(~countOneBits(firstTrailingBit(vec2<u32>(4294967295u, var_1.x))), ~(~(~var_0.a.xy))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.xz * arg_0.a.wy) * arg_0.a.zw);
    var_1 = firstLeadingBit(var_0.a.zy);
    return Struct_2(vec3<u32>(_wgslsmith_clamp_u32(func_3(vec4<f32>(arg_0.b.x, 1187f, -746f, -903f), vec2<u32>(var_0.a.x, var_0.a.x), _wgslsmith_sub_i32(6383i, u_input.a.x)), 0u, ~1u & u_input.c), ~abs(29314u), 1u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_2 {
    return func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-244f, 357f, -265f, 2000f) - vec4<f32>(-144f, 1699f, -671f, -1316f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1231f, 243f, -995f, 1242f), vec4<f32>(1692f, 357f, 498f, -1440f))))) + vec4<f32>(-438f, _wgslsmith_f_op_f32(func_2(-534f)), -375f, _wgslsmith_f_op_f32(181f + 1034f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, 995f, -862f)), vec3<f32>(1f, 1f, 1f))))), vec2<bool>(arg_1.x, !arg_1.x || true));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1483f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-955f, arg_0.x))))), Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(189f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, -1615f))))), select(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, select(true, true, true)))), func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)))));
    let var_1 = vec4<u32>(abs(54690u), ~arg_3.a.x, arg_3.a.x << (_wgslsmith_mod_u32(_wgslsmith_add_u32(~27916u, 1u), 4294967295u) % 32u), arg_3.a.x);
    var var_2 = Struct_3(arg_2.x, var_0.b, var_0.c, func_4(var_0.b, select(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, false), vec2<bool>(true, var_0.c.x)), !var_0.c, all(vec4<bool>(true, false, var_0.c.x, false)))));
    let var_3 = _wgslsmith_mod_vec2_u32(~var_2.d.a.xz, vec2<u32>(_wgslsmith_sub_u32(1u >> ((var_1.x << (u_input.c % 32u)) % 32u), var_0.d.a.x), var_0.d.a.x));
    let var_4 = Struct_4(select(vec4<bool>(var_0.c.x, true, var_2.c.x, var_2.c.x), vec4<bool>(any(select(var_0.c, var_0.c, var_0.c)), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(ceil(var_2.a)), true, var_0.c.x), vec4<bool>(var_0.c.x, all(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, true), var_2.c)), _wgslsmith_mod_u32(0u, var_0.d.a.x) < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 28547u, var_1.x), vec3<u32>(var_0.d.a.x, var_3.x, 14280u)), !any(vec2<bool>(var_2.c.x, var_2.c.x)))));
    return min(-u_input.a.x, u_input.b);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = vec3<i32>(firstLeadingBit(u_input.b), ~(i32(-1i) * -27478i) << (1u % 32u), 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-952f * -231f), _wgslsmith_f_op_f32(round(-2307f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(108f)) + -580f))) + -763f);
    var var_2 = false;
    let var_3 = Struct_4(!(!vec4<bool>(true, 0u != arg_1.a.x, true, any(vec4<bool>(false, false, false, false)))));
    let var_4 = select(select(select(!vec4<bool>(true, true, var_3.a.x, var_3.a.x), select(!vec4<bool>(true, var_3.a.x, true, var_3.a.x), !var_3.a, !var_3.a), all(var_3.a.zxz)), select(var_3.a, vec4<bool>(true, true, false, true), true), _wgslsmith_mult_i32(1i, -29773i) <= -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, 46233i, arg_2), vec4<i32>(12616i, 11573i, 0i, 47726i))), !vec4<bool>(true, !var_3.a.x, true, any(select(var_3.a.xwx, var_3.a.yww, var_3.a.xww))), select(vec4<bool>(any(!var_3.a.xy), !var_3.a.x, var_3.a.x, false), select(var_3.a, vec4<bool>(true, !var_3.a.x, true, u_input.c <= arg_0), !var_3.a), var_3.a.x));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1150f * -649f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1119f)))), 573f, -266f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(min(-562f, 411f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1013f))), _wgslsmith_f_op_f32(f32(-1f) * -1624f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = func_6(u_input.c, Struct_2(firstTrailingBit(vec3<u32>(4294967295u, u_input.c, 32028u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(51453u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 46681u, 1u)) % vec3<u32>(32u)))), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-13707i, u_input.b, u_input.a.x), -vec3<i32>(1i, 0i, u_input.b)), firstLeadingBit(u_input.a.x), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(528f, -421f, 471f, -557f) - vec4<f32>(275f, 712f, 876f, -1082f))), u_input.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(443f, -705f) * vec2<f32>(-639f, 1000f)))), func_1(vec3<bool>(true, true, true), vec2<bool>(true, false)))));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 11005u, 0u, 29619u), vec4<u32>(4294967295u, 28797u, 95974u, 60165u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), ~21242u), 16344u), 102489u | u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)) - _wgslsmith_f_op_vec4_f32(-var_1.a)), vec2<f32>(-235f, func_6(~_wgslsmith_mod_u32(10976u, 4294967295u), Struct_2(vec3<u32>(u_input.c, u_input.c, 1u) & vec3<u32>(121407u, 1u, u_input.c)), abs(min(u_input.b, u_input.b))).a.x), ~((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(68347u, 0u)) << (vec2<u32>(1202u, u_input.c) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 28500u) | vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c))));
}


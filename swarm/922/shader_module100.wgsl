struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = array<i32, 28>();
    var var_0 = ~((vec4<u32>(1u >> (u_input.a % 32u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_div_u32(1u, u_input.a)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 6395u, 1u), max(vec4<u32>(u_input.a, 104851u, 21030u, u_input.a), vec4<u32>(u_input.a, 57427u, 31078u, 39679u)))) ^ ~(~vec4<u32>(u_input.a, u_input.a, 25640u, 0u) | select(vec4<u32>(u_input.a, 4294967295u, 50755u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, true, false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1030f, -179f, -604f, 360f), vec4<f32>(1f, 1f, 1f, 1f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -581f)), 1117f, -568f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 922f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1280f, -557f)), _wgslsmith_f_op_f32(ceil(1000f)), true)) + -180f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-403f, -756f), _wgslsmith_f_op_f32(f32(-1f) * -636f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1258f, -580f, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1000f)))), 4294967295u >= var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(530f, -917f)))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = !all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) && any(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, true, true)), true), !(0u < var_0.x)));
    return select(!(!(!(!vec3<bool>(var_3, true, true)))), !(!select(!vec3<bool>(var_3, var_3, false), vec3<bool>(var_3, var_3, false), select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, var_3, true), vec3<bool>(var_3, var_3, var_3)))), all(select(!vec3<bool>(true, var_3, false), vec3<bool>(true, true, select(var_3, var_3, true)), select(!vec3<bool>(var_3, var_3, true), vec3<bool>(true, true, true), select(vec3<bool>(var_3, true, true), vec3<bool>(var_3, true, var_3), vec3<bool>(false, true, var_3))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> vec4<bool> {
    global0 = array<i32, 28>();
    let var_0 = Struct_2(Struct_1(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(19280u, 28u)]), vec2<i32>(global0[_wgslsmith_index_u32(arg_3, 28u)], 4481i))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3, 4294967295u) & vec2<u32>(96304u, arg_3), vec2<u32>(0u, arg_3) << (vec2<u32>(arg_3, 41858u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u) >> (vec2<u32>(0u, 38004u) % vec2<u32>(32u)), vec2<u32>(1u, u_input.a) >> (vec2<u32>(33280u, 1u) % vec2<u32>(32u)))), ~(~max(1u, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2221f, 1316f)))));
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    return vec4<bool>(true, any(func_3().yz), arg_0.x, arg_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_2.d.xx * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(arg_2.d.x, _wgslsmith_f_op_f32(floor(-796f))), -856f))));
    global0 = array<i32, 28>();
    var var_1 = arg_3;
    var var_2 = Struct_3(vec2<u32>(arg_1.a.c, ~(~arg_0.a.b.x | (var_1.a.c ^ 1u))), var_1.a, arg_2, u_input.a);
    var var_3 = -19158i;
    return func_4(!select(func_3(), vec3<bool>(false, any(vec2<bool>(false, true)), true), any(vec2<bool>(true, true))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.b.x, 0u, arg_0.a.b.x), vec3<u32>(33901u, 56920u, 75983u)), ~vec3<u32>(1u, 0u, 16218u)), select(vec3<u32>(4294967295u, arg_1.a.b.x, u_input.a), select(vec3<u32>(4294967295u, arg_0.a.c, 330u), vec3<u32>(1u, arg_3.a.c, 32782u), true), any(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1386f + var_0.x)), _wgslsmith_div_f32(-761f, 2406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.d.x)))))), ~_wgslsmith_dot_vec2_u32(var_1.a.b, arg_1.a.b));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<i32, 28>();
    let var_0 = select(vec2<bool>(true, (select(0i, global0[_wgslsmith_index_u32(87u, 28u)], arg_0.x) >> (u_input.a % 32u)) < 0i), arg_0.xw, !(!(!func_3().zx)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_3.b.d.x, arg_1.x)))) - arg_1.x))));
    let var_2 = 0u ^ arg_2.x;
    var var_3 = Struct_3(vec2<u32>(4294967295u, ~(~max(arg_3.b.c, var_2))), Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-14256i, 0i)), ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(23997u, 28u)]))), _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, select(var_2, var_2, true)), arg_3.c.b), 4294967295u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))))), arg_3.b, _wgslsmith_dot_vec2_u32(arg_2, select(arg_2, _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 52270u), vec2<u32>(var_2, arg_2.x), abs(arg_3.c.b)), _wgslsmith_div_u32(var_2, var_2) >= u_input.a)));
    return Struct_1(abs(_wgslsmith_mod_i32(countOneBits(arg_3.c.a), var_3.b.a)), ~var_3.c.b, _wgslsmith_div_u32(19869u, var_3.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(var_3.b.d.x * -873f))), arg_1.x), _wgslsmith_div_vec3_f32(arg_1.yyz, _wgslsmith_f_op_vec3_f32(-arg_3.b.d))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    let var_0 = func_5(!(!select(func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 28u)], vec2<u32>(1u, u_input.a), 48380u, vec3<f32>(arg_0.x, 935f, arg_0.x))), Struct_2(Struct_1(15733i, vec2<u32>(u_input.a, u_input.a), u_input.a, vec3<f32>(arg_0.x, 191f, arg_0.x))), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<u32>(u_input.a, 1u), 4294967295u, vec3<f32>(arg_0.x, arg_0.x, 478f)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<u32>(13587u, 41935u), 0u, vec3<f32>(arg_0.x, -1616f, arg_0.x)))), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, false), false), !vec4<bool>(arg_1, false, arg_1, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1448f, arg_0.x, arg_0.x, -905f))))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a << (0u % 32u), _wgslsmith_sub_u32(u_input.a, u_input.a)) ^ ~(vec2<u32>(0u, u_input.a) | vec2<u32>(4294967295u, 23569u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(4294967295u, u_input.a)) | vec2<u32>(max(0u, u_input.a), 15422u)), Struct_3(select(~(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(19757u, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, 69572u))), true & (arg_0.x == arg_0.x)), Struct_1(global0[_wgslsmith_index_u32(0u, 28u)], ~vec2<u32>(1u, 46194u), max(_wgslsmith_add_u32(u_input.a, 1u), abs(4294967295u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1383f, arg_0.x, -1000f))))), Struct_1(0i, vec2<u32>(~0u, u_input.a), ~u_input.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-264f, 1322f, arg_0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_0.x, 1054f)))))), 1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.d);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1389f + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 1f, any(vec2<bool>(arg_1, arg_1))))) - _wgslsmith_f_op_f32(abs(848f)))));
    global0 = array<i32, 28>();
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(sign(322f)))))));
    return var_0.b.x << (~var_0.c % 32u);
}

fn func_6(arg_0: vec4<u32>) -> u32 {
    global0 = array<i32, 28>();
    var var_0 = reverseBits(reverseBits((_wgslsmith_add_vec4_i32(vec4<i32>(35798i, global0[_wgslsmith_index_u32(arg_0.x, 28u)], -1i, global0[_wgslsmith_index_u32(1u, 28u)]), vec4<i32>(-2147483647i, 62691i, global0[_wgslsmith_index_u32(10598u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)])) ^ vec4<i32>(32673i, global0[_wgslsmith_index_u32(arg_0.x, 28u)], -1i, 4808i)) | -(~vec4<i32>(global0[_wgslsmith_index_u32(20308u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)], 435i, 0i))));
    var var_1 = Struct_3(reverseBits(vec2<u32>(4294967295u, u_input.a)), Struct_1(-(~16536i >> (1u % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a, u_input.a << (u_input.a % 32u)), vec2<u32>(u_input.a, ~1u)), arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1869f), -310f, _wgslsmith_f_op_f32(trunc(-1181f)))), Struct_1(~(~(~var_0.x)), max(~arg_0.zz, arg_0.yz >> ((vec2<u32>(1u, 4294967295u) << (arg_0.yw % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1882f, 129f, -222f))))), min(0u, ~(~(~1u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, var_1.c.d.x, -239f, 1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1246f, var_1.b.d.x, 472f, var_1.b.d.x)))))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.c.d.x, var_1.c.d.x, true)), _wgslsmith_f_op_f32(-2323f - -237f), -1639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.d.x * var_1.b.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -1767f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.d.x, var_1.c.d.x, var_1.b.d.x, 554f))))));
    let var_3 = 4294967295u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    var var_0 = func_6(vec4<u32>(u_input.a ^ 4294967295u, u_input.a, func_1(vec2<f32>(735f, -1152f), true), 0u) << (((~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (firstLeadingBit(vec4<u32>(31769u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))) | firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 32985u, u_input.a, 21588u), vec4<u32>(62278u, u_input.a, u_input.a, 1u)))) % vec4<u32>(32u)));
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    let var_1 = vec2<bool>(true, (~u_input.a > ~abs(0u)) | !(global0[_wgslsmith_index_u32(min(u_input.a, u_input.a), 28u)] > ~(-2147483647i)));
    var var_2 = func_5(func_4(func_4(select(func_4(vec3<bool>(var_1.x, var_1.x, true), u_input.a, vec4<f32>(532f, 1000f, 641f, -684f), 53748u).xzy, vec3<bool>(var_1.x, false, var_1.x), true), firstLeadingBit(countOneBits(4207u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(622f, -1911f, 1803f, -230f))))), firstLeadingBit(8651u)).yyx, select(1u & firstLeadingBit(u_input.a), 4294967295u, any(func_2(Struct_2(Struct_1(38076i, vec2<u32>(1u, u_input.a), u_input.a, vec3<f32>(1001f, -321f, -299f))), Struct_2(Struct_1(0i, vec2<u32>(u_input.a, u_input.a), u_input.a, vec3<f32>(-729f, -888f, 1000f))), Struct_1(-24464i, vec2<u32>(u_input.a, u_input.a), u_input.a, vec3<f32>(494f, -1567f, 115f)), Struct_2(Struct_1(2391i, vec2<u32>(57119u, u_input.a), 0u, vec3<f32>(-602f, 104f, 653f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(720f, 822f, 621f, 483f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1488f, -348f, -317f, -194f))))), ~abs(33076u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1477f)), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-638f)), _wgslsmith_f_op_f32(f32(-1f) * -712f))), -153f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(382f, 1057f, -2055f, -1310f) + vec4<f32>(265f, 692f, 794f, 852f))))))), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 0u), var_1), ~vec2<u32>(u_input.a, 27090u), vec2<u32>(~6708u, _wgslsmith_add_u32(4498u, u_input.a))) ^ ~(~vec2<u32>(57034u, u_input.a)), Struct_3(_wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 59002u), vec2<u32>(0u, u_input.a))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 21526u)), vec2<u32>(u_input.a, u_input.a))), func_5(!(!vec4<bool>(false, false, var_1.x, false)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1644f, -1000f, -567f, 1000f) + vec4<f32>(-176f, -1173f, 1991f, -425f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1291f, 222f, 467f, -1977f) + vec4<f32>(346f, 424f, -629f, -1062f)))), vec2<u32>(_wgslsmith_add_u32(89539u, 97014u), 4294967295u), Struct_3(abs(vec2<u32>(24866u, u_input.a)), func_5(vec4<bool>(false, false, var_1.x, var_1.x), vec4<f32>(-285f, -212f, 687f, -1498f), vec2<u32>(9286u, u_input.a), Struct_3(vec2<u32>(46122u, u_input.a), Struct_1(-115051i, vec2<u32>(u_input.a, 1u), u_input.a, vec3<f32>(-681f, -212f, -450f)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<u32>(u_input.a, u_input.a), u_input.a, vec3<f32>(2251f, -2648f, 670f)), u_input.a)), Struct_1(22231i, vec2<u32>(12834u, u_input.a), 38488u, vec3<f32>(1264f, -1000f, 1217f)), 26531u)), Struct_1(~0i, ~(~vec2<u32>(u_input.a, 51269u)), 120537u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(160f, -165f, 808f))))), ~42176u)).c;
    var var_3 = Struct_2(func_5(!vec4<bool>(true, any(vec2<bool>(var_1.x, var_1.x)), true, func_2(Struct_2(Struct_1(-2147483647i, vec2<u32>(1u, 3848u), u_input.a, vec3<f32>(655f, -1000f, 463f))), Struct_2(Struct_1(-1i, vec2<u32>(u_input.a, 1u), 61651u, vec3<f32>(679f, 385f, -873f))), Struct_1(-1i, vec2<u32>(u_input.a, u_input.a), 16549u, vec3<f32>(683f, 198f, -1452f)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 28u)], vec2<u32>(u_input.a, u_input.a), 4294967295u, vec3<f32>(-269f, 1063f, -561f)))).x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, 1455f, -777f, -1000f) - vec4<f32>(1573f, -340f, -494f, -184f))), vec4<f32>(_wgslsmith_f_op_f32(min(-1491f, 835f)), _wgslsmith_f_op_f32(f32(-1f) * -1276f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1285f)))), vec2<u32>(1u, 1u), Struct_3(vec2<u32>(74485u, _wgslsmith_mod_u32(u_input.a, u_input.a)), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 28u)] ^ global0[_wgslsmith_index_u32(u_input.a, 28u)], firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)), select(u_input.a, u_input.a, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(599f, 346f, -483f) * vec3<f32>(371f, -867f, 1967f))), Struct_1(~2147483647i, ~vec2<u32>(1u, u_input.a), firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1590f, 1000f, 767f))), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(6056i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-34797i, 0i, -1i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 2147483647i, 33955i)) ^ (52982i ^ global0[_wgslsmith_index_u32(var_3.a.b.x, 28u)]), -24012i), global0[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)), _wgslsmith_f_op_f32(-func_5(vec4<bool>(var_1.x, false, true, true), vec4<f32>(var_3.a.d.x, 395f, var_3.a.d.x, var_3.a.d.x), var_3.a.b, Struct_3(var_3.a.b, var_3.a, Struct_1(56616i, vec2<u32>(26171u, 1u), var_3.a.b.x, var_3.a.d), var_3.a.c)).d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -459f)), -143f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.d.x, 319f, -1348f, var_3.a.d.x) + vec4<f32>(-637f, var_3.a.d.x, -514f, -126f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_3.a.d.x, var_3.a.d.x, -186f)), var_1.x))), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, 465f, -237f, 227f)));
}


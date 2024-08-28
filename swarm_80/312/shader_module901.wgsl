struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-891f, 437f)), Struct_1(vec2<f32>(-924f, 273f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a.a));
    let var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, abs(-1i)), abs(firstTrailingBit(~(-vec2<i32>(u_input.d, u_input.b)))));
    global0 = Struct_2(global0.b, Struct_1(var_0.a));
    let var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(15209i, u_input.c.x, _wgslsmith_sub_i32(-1i << (arg_1 % 32u), -39342i << (arg_1 % 32u)), -2147483647i), vec4<i32>(var_1, var_1 ^ var_1, reverseBits(_wgslsmith_clamp_i32(u_input.c.x, -var_1, u_input.b)), -1i));
    global0 = arg_0;
    return Struct_1(arg_0.b.a);
}

fn func_3() -> Struct_1 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.a.a), _wgslsmith_f_op_vec2_f32(select(global0.b.a, global0.b.a, vec2<bool>(false, true))))), global0.a.a))), func_2(Struct_2(global0.a, func_2(Struct_2(global0.a, Struct_1(global0.a.a)), _wgslsmith_div_u32(u_input.a.x, u_input.e.x))), ~u_input.a.x));
    global0 = Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec2<f32>(-1783f, -1931f)), Struct_1(vec2<f32>(881f, global0.b.a.x))), ~u_input.a.x), func_2(Struct_2(global0.b, Struct_1(global0.b.a)), countOneBits(u_input.e.x))), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(select(u_input.e.x, u_input.e.x, true), u_input.a.x))), global0.b);
    global0 = Struct_2(global0.b, global0.b);
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.c.zx, u_input.c.xz);
    global0 = Struct_2(Struct_1(global0.a.a), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.a.x, global0.b.a.x)))));
    return global0.a;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1057f, -911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-1212f + _wgslsmith_f_op_f32(floor(arg_0)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, arg_2.x, arg_0, arg_2.x) * vec4<f32>(-458f, arg_2.x, global0.b.a.x, -542f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(983f, arg_2.x, arg_0, -255f) + vec4<f32>(1000f, arg_2.x, arg_2.x, -674f))), vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(arg_0 + global0.b.a.x), arg_0, _wgslsmith_f_op_f32(step(-493f, global0.b.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(-1000f))), arg_2.x, 1000f));
    let var_1 = abs(select(_wgslsmith_add_i32(u_input.b, 1i), u_input.c.x, (4294967295u == (25773u & u_input.a.x)) | true));
    global0 = Struct_2(func_2(Struct_2(Struct_1(var_0.zz), global0.b), ~max(4294967295u, ~5559u)), func_2(Struct_2(func_2(Struct_2(Struct_1(arg_2), Struct_1(global0.b.a)), _wgslsmith_mult_u32(u_input.a.x, u_input.e.x)), global0.a), ~27681u));
    var var_2 = Struct_2(func_2(Struct_2(func_3(), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.zy))), reverseBits(~51995u)), func_2(Struct_2(Struct_1(vec2<f32>(-916f, var_0.x)), Struct_1(arg_2)), ~1u));
    var var_3 = !arg_1.xxw;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(arg_0 * 863f), -1367f, -296f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -2086f), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec2<f32>(272f, -1098f), vec2<bool>(true, true))) - vec4<f32>(_wgslsmith_f_op_f32(179f - global0.b.a.x), _wgslsmith_f_op_f32(-748f + global0.b.a.x), global0.a.a.x, _wgslsmith_div_f32(118f, 368f)))))));
    let var_1 = Struct_1(func_2(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.a.x, var_0.x)))), func_2(Struct_2(Struct_1(vec2<f32>(var_0.x, global0.b.a.x)), global0.a), u_input.e.x ^ u_input.e.x)), ~4346u).a);
    var var_2 = u_input.a;
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(false, false, false)), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, select(true, true, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), vec4<bool>(any(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(all(vec2<bool>(false, true)) | true, var_2.x <= 4294967295u, firstTrailingBit(var_2.x) < 1u, false), vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), true, true, _wgslsmith_f_op_f32(2900f + var_0.x) != -2169f)), select(true, any(vec4<bool>(select(true, true, false), u_input.e.x >= 24929u, false, all(vec2<bool>(false, false)))), true));
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_vec4_f32(func_1(654f, vec4<bool>(true, true, false, var_3.x), vec2<f32>(259f, -282f), var_3.xy)).x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1201f, func_2(Struct_2(Struct_1(vec2<f32>(var_1.a.x, var_1.a.x)), func_3()), ~1u).a.x) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x + 442f), -1395f, _wgslsmith_f_op_f32(-1174f - 714f))))));
    var var_5 = ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(min(1u, ~30799u), 1u, min(u_input.a.x, _wgslsmith_sub_u32(var_2.x, 67923u))), 4294967295u >> (~_wgslsmith_dot_vec3_u32(var_2.xzz, vec3<u32>(u_input.a.x, u_input.e.x, u_input.e.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wyw);
}


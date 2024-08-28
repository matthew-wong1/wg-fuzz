struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = true;
    var var_1 = true;
    var_0 = true;
    var var_2 = ~4294967295u;
    var var_3 = Struct_1(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 36925u, 17262u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 33528u, u_input.b.x), vec4<bool>(false, false, false, true)), ~vec4<u32>(u_input.b.x, 0u, 17461u, 0u)), ~countOneBits(vec4<u32>(0u, 24299u, u_input.b.x, u_input.b.x))), !select(vec2<bool>(any(vec3<bool>(false, true, true)), any(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(0u, 1u)), vec2<u32>(0u, 7875u) >> ((vec2<u32>(4294967295u, u_input.b.x) << (u_input.b.yz % vec2<u32>(32u))) % vec2<u32>(32u))), vec3<bool>(true, true, true), ~u_input.a.x);
    return var_3.e;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = abs(~(~vec4<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(11818u, 4294967295u), u_input.b.xz), ~u_input.b.x)));
    let var_1 = ~vec3<i32>(arg_0, 2147483647i, -(u_input.a.x | arg_0) ^ func_3());
    let var_2 = func_3();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2134f, arg_1.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_div_f32(-1239f, _wgslsmith_f_op_f32(round(var_3)))))));
    return Struct_1(firstTrailingBit(~(var_0 << (var_0 % vec4<u32>(32u))) ^ (vec4<u32>(var_0.x, var_0.x, 48945u, 4294967295u) << (max(var_0, var_0) % vec4<u32>(32u)))), !vec2<bool>(true, !all(vec4<bool>(false, false, true, false))), u_input.b.yx, select(vec3<bool>(all(vec3<bool>(false, true, false)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_f_op_f32(trunc(var_4.x)) > -1000f), select(vec3<bool>(-46380i > var_1.x, all(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(func_3(), ~u_input.a.x, var_2 | -2147483647i)), -_wgslsmith_mult_vec3_i32(var_1, vec3<i32>(var_2, 17115i, -43782i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = select(!all(vec3<bool>(false, arg_1.d.x | arg_2, arg_2)), firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.a.xw), u_input.b.xx)) > 34753u, true);
    var var_1 = Struct_2(min(vec3<i32>(-1i, u_input.a.x, 2147483647i), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 0i), _wgslsmith_add_i32(-42493i, 0i), firstTrailingBit(arg_1.e)) << (countOneBits(u_input.b) % vec3<u32>(32u))));
    var_0 = !arg_2;
    var_1 = Struct_2(min(vec3<i32>(_wgslsmith_div_i32(abs(1i), -79167i), 0i, u_input.a.x), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(10659i, 2147483647i, 41134i), vec3<i32>(var_1.a.x, 1i, u_input.a.x)))));
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -623f);
}

fn func_1() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(209f, 274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(-1000f - -572f)))), 1065f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_2(-vec3<i32>(9006i, 0i, u_input.a.x)), func_2(~2147483647i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(457f, 783f, -1000f, -471f), vec4<f32>(1000f, 875f, -119f, -865f)))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))))));
    var var_1 = Struct_2(abs(vec3<i32>(u_input.a.x, 0i, ~u_input.a.x)) << (u_input.b % vec3<u32>(32u)));
    let var_2 = var_0;
    var var_3 = !func_2(min(~(-16427i), func_2(_wgslsmith_add_i32(34426i, -22049i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, var_2.x, 1153f, var_2.x)))).e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(-507f, -618f, var_2.x, 1011f)) * var_0)).d.xy;
    var_1 = Struct_2(var_1.a);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_1()), vec2<bool>(select(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), func_1(), true), false), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), func_2(-2147483647i, vec4<f32>(354f, 354f, 862f, -358f)).d)) != func_1());
    var_0 = vec2<bool>(!var_0.x, true);
    var_0 = !select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), false), func_2(u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(575f * -378f), 249f, -1557f, _wgslsmith_f_op_f32(min(964f, -299f)))).d.yy, !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), false)));
    var var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(max(-1000f, 828f)))))), _wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(floor(1000f)));
    let var_2 = select(select(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), false), vec4<bool>(any(func_2(u_input.a.x, vec4<f32>(var_1.x, var_1.x, var_1.x, 1589f)).d), _wgslsmith_f_op_f32(-323f - var_1.x) <= -752f, !func_1(), all(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, false, var_0.x, false), true))), true), vec4<bool>(true, !var_0.x, true, true), vec4<bool>(all(!(!vec4<bool>(var_0.x, false, var_0.x, false))), all(!(!vec3<bool>(false, var_0.x, false))), var_0.x, reverseBits(-u_input.a.x) != ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.x ^ ~u_input.b.x), -vec4<i32>(54082i, -16710i, 1i, _wgslsmith_dot_vec2_i32(u_input.a, abs(u_input.a))), u_input.b.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.x)))), var_1.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(-var_1.x)));
}


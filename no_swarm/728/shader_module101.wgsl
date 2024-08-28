struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(vec3<u32>(4294967295u, 10652u, 53617u), 1i), Struct_5(vec3<u32>(4294967295u, 51883u, 1u), -58961i));

var<private> global1: Struct_4;

var<private> global2: Struct_1 = Struct_1(34374u);

var<private> global3: f32;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    global4 = arg_3.x;
    global4 = -2147483647i | arg_0.b;
    global1 = Struct_4(1u, _wgslsmith_f_op_f32(step(-369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f - 874f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(919f)) - _wgslsmith_f_op_f32(sign(global1.b)))))), -1582f);
    var var_0 = true;
    var var_1 = Struct_4(reverseBits(max(~(~1u), ~(global1.a & 1u))), arg_2.b.x, global1.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2.b.x))))) - arg_1));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> bool {
    let var_0 = arg_0;
    global4 = u_input.a.x;
    let var_1 = _wgslsmith_div_f32(1360f, _wgslsmith_f_op_f32(-var_0.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1144f) + vec2<f32>(-644f, global1.c)))), vec2<f32>(global1.b, var_1)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b, 1582f), vec2<f32>(var_0.c, arg_0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-535f, -2070f))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global1.c)))), vec2<f32>(var_1, -1000f)))));
    global0 = array<Struct_5, 2>();
    return any(vec3<bool>(false, !(_wgslsmith_f_op_f32(func_3(Struct_3(u_input.a.yx, 0i), -1000f, Struct_2(vec2<u32>(global1.a, var_0.a), vec4<f32>(global1.b, 1591f, -379f, global1.c), Struct_1(arg_0.a)), vec2<i32>(2147483647i, -2147483647i))) <= -1511f), !(!arg_1.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_4 {
    var var_0 = Struct_2(arg_2.a.xz, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(144f, 395f, -801f, 468f) - vec4<f32>(-237f, global1.c, global1.c, -1090f)))) - vec4<f32>(223f, 409f, global1.b, -1766f)))), Struct_1(arg_2.a.x));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -639f))))));
    var var_1 = Struct_1(_wgslsmith_mult_u32(var_0.a.x, global2.a));
    let var_2 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.c.a, 45974u) | vec2<u32>(var_1.a, var_0.c.a)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(global1.a, 6981u)), abs(arg_2.a.xz)))), 2u)];
    let var_3 = 64400u;
    return Struct_4(3480u, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -255f))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec2<i32>) -> f32 {
    global3 = 1146f;
    let var_0 = arg_1;
    let var_1 = Struct_1(global1.a);
    let var_2 = firstTrailingBit(u_input.a);
    var var_3 = vec2<bool>((any(vec4<bool>(true, true, true, true)) & any(vec3<bool>(true, true, true))) | false, all(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(trunc(arg_1.c))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b + -435f)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_mult_u32(_wgslsmith_add_u32(global1.a, ~global2.a), global2.a >> (arg_1.a.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(func_5(~(~vec4<u32>(arg_1.a.x, 36706u, global2.a, 28971u) ^ ~vec4<u32>(global1.a, 1294u, arg_1.a.x, 0u)), func_4(vec2<bool>(func_2(Struct_4(9771u, -1000f, -374f), vec3<bool>(true, true, false)), false), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_5(firstLeadingBit(arg_1.a), firstTrailingBit(20957i))), vec2<i32>(arg_0, u_input.a.x))));
    let var_1 = 2001f;
    let var_2 = Struct_2(arg_1.a.xy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(577f * var_0.c), global1.b, global1.c, 1933f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_2)))), Struct_1(_wgslsmith_clamp_u32(abs(global2.a << (var_0.a % 32u)), global1.a, ~global1.a)));
    var var_3 = ~countOneBits(u_input.a);
    let var_4 = max(arg_1.a.x, 26846u);
    return global0[_wgslsmith_index_u32(~(~(func_4(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), arg_1).a ^ var_2.a.x)), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(abs(-u_input.a.xy));
    var var_1 = global0[_wgslsmith_index_u32(global2.a, 2u)];
    let var_2 = func_1(var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a.x, var_1.a.x | 19287u), 2u)], vec4<f32>(global1.c, global1.b, 485f, global1.b));
    let var_3 = Struct_1(firstLeadingBit(~(~(~var_2.a.x))));
    var var_4 = Struct_4(_wgslsmith_dot_vec4_u32((~vec4<u32>(global2.a, var_3.a, var_2.a.x, var_3.a) & reverseBits(vec4<u32>(15172u, 13572u, var_2.a.x, 88397u))) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(11541u, global2.a, 20570u, 85046u), vec4<u32>(4294967295u, 1u, var_1.a.x, 50990u)), vec4<u32>(0u, global1.a, 4294967295u, global2.a) ^ vec4<u32>(var_2.a.x, 4282u, 65090u, var_3.a), true) % vec4<u32>(32u)), ~vec4<u32>(var_1.a.x, global1.a, 1u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(-func_4(vec2<bool>(true, true), vec2<bool>(true, true), Struct_5(vec3<u32>(4294967295u, 73998u, global1.a) & vec3<u32>(var_3.a, global1.a, 4294967295u), -12909i)).b));
    let var_5 = vec4<bool>(any(vec4<bool>(any(vec2<bool>(false, false)) && true, true | (-1i >= var_2.b), select(-6610i <= var_2.b, false, true), any(vec2<bool>(false, false)))), true & all(vec4<bool>(true, true, true, true)), func_2(Struct_4(var_3.a, var_4.b, _wgslsmith_f_op_f32(var_4.c + var_4.b)), vec3<bool>(true, true, true)) || true, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, global1.b, 1u);
}


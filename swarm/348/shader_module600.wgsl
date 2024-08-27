struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(74214u, vec4<f32>(-1175f, -579f, -1425f, -535f), vec3<u32>(29753u, 99022u, 0u), Struct_1(vec4<f32>(437f, 441f, -1000f, -583f), 1358f, 1u, 1i)), Struct_2(0u, vec4<f32>(1000f, 864f, -405f, -622f), vec3<u32>(0u, 0u, 1u), Struct_1(vec4<f32>(-381f, 464f, 336f, -1000f), -1944f, 71617u, i32(-2147483648))), Struct_2(4294967295u, vec4<f32>(296f, -1000f, -1905f, -583f), vec3<u32>(12840u, 4608u, 29881u), Struct_1(vec4<f32>(1492f, -535f, 1622f, -820f), -1137f, 4294967295u, -41123i)));

var<private> global1: vec3<f32> = vec3<f32>(-1148f, -280f, -405f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1095f, global1.x, global1.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, 892f, -745f), vec3<f32>(global1.x, global1.x, 118f))))))));
    global0 = array<Struct_2, 3>();
    global1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-819f, -168f, global1.x) + vec3<f32>(global1.x, 641f, -192f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, 1144f, global1.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-548f + global1.x), 1755f) * vec3<f32>(_wgslsmith_f_op_f32(abs(816f)), global1.x, global1.x)))));
    return true;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<bool>(select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1i > u_input.a.x)), func_3(vec3<i32>(499i ^ arg_0, -u_input.e.x, -2147483647i)), true), true);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1783f, global1.x, !var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(239f * global1.x), _wgslsmith_f_op_f32(-global1.x), var_0.x)), _wgslsmith_f_op_f32(-global1.x)) + vec3<f32>(-2527f, 1484f, global1.x));
    let var_1 = true;
    let var_2 = vec2<bool>(var_0.x || (_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, u_input.c), u_input.b.x) <= ~(~u_input.b.x)), true);
    var_0 = select(!var_2, select(vec2<bool>(!var_1, any(select(var_2, vec2<bool>(true, var_0.x), false))), !select(var_2, vec2<bool>(false, var_2.x), select(vec2<bool>(var_0.x, var_2.x), var_2, vec2<bool>(true, var_1))), !func_3(u_input.e.wzz)), var_2);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-438f * _wgslsmith_f_op_f32(global1.x * -1063f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(196f, _wgslsmith_f_op_f32(round(global1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 744f))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(-1456f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(149f)), _wgslsmith_f_op_f32(global1.x * global1.x))) + global1.x)), 0u, arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = arg_1;
    return func_2(2147483647i, 1u);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.a.xxy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.zwy) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, 1163f, arg_0.a.x) - vec3<f32>(-460f, arg_0.b, -854f))), arg_0.a.zxx, vec3<bool>(true, true, select(false, false, true)))), !any(vec4<bool>(true, true, true, true)))));
    var var_0 = ~select(~abs(vec4<i32>(1i, -1i, -1i, u_input.d.x)), abs(~vec4<i32>(30406i, 8340i, 30609i, arg_0.d) | vec4<i32>(arg_0.d, u_input.d.x, 698i, 15192i)), vec4<bool>(_wgslsmith_f_op_f32(1053f * global1.x) == 1000f, true, false == (arg_0.b == arg_0.b), false));
    let var_1 = _wgslsmith_f_op_f32(max(-712f, _wgslsmith_f_op_f32(global1.x * 825f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1303f, 1249f, 102f, var_1) * arg_0.a))), _wgslsmith_f_op_vec4_f32(sign(arg_0.a))));
    var var_3 = Struct_1(vec4<f32>(var_1, func_1(vec3<u32>(u_input.b.x, 0u, 4294967295u) << (~vec3<u32>(1u, 159290u, 4294967295u) % vec3<u32>(32u)), 1f).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1394f, -2350f, 122186u != u_input.b.x)) - _wgslsmith_f_op_f32(-arg_0.a.x)), global1.x), 458f, ~(28204u & _wgslsmith_dot_vec4_u32(~vec4<u32>(25703u, 1u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u))), arg_0.d);
    return vec4<bool>(true, !all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 3>();
    let var_0 = all(func_4(func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), vec3<u32>(59289u, 4294967295u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1345f)))) == !func_3(u_input.d);
    let var_1 = global1.x;
    var var_2 = global1.x;
    global0 = array<Struct_2, 3>();
    var var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1248f + _wgslsmith_f_op_f32(434f - global1.x))), -2023f)));
    global0 = array<Struct_2, 3>();
    var_3 = abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(~14755u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), u_input.b)), vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(4294967295u), var_3.x), ~func_1(vec3<u32>(var_3.x, 64966u, 18974u), -436f).c)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstLeadingBit(u_input.b.x), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, 1u, u_input.b.x, 49789u), vec4<u32>(var_3.x, 1u, u_input.b.x, 25721u)) << (~vec4<u32>(0u, 15581u, var_3.x, 11776u) % vec4<u32>(32u))) << (~(~(~vec4<u32>(u_input.b.x, 1u, var_3.x, u_input.b.x))) % vec4<u32>(32u)), vec3<f32>(1096f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), -1155f), _wgslsmith_f_op_f32(global1.x * global1.x))), 593f), _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.e, u_input.e)), u_input.e));
}


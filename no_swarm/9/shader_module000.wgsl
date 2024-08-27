struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(57340u, 19159u, 4294967295u, 4294967295u), true, 0u, 11348i), i32(-2147483648));

var<private> global2: array<i32, 8>;

var<private> global3: vec4<u32> = vec4<u32>(15624u, 1u, 20713u, 58894u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = global1.a;
    var var_1 = Struct_2(Struct_1(vec4<u32>(~global1.a.c, arg_0.x ^ 4294967295u, ~var_0.c, ~global1.a.a.x) & arg_0, global1.a.b, 1u, u_input.a.x), _wgslsmith_add_i32(min(1i, 1i), ~global1.a.d));
    global2 = array<i32, 8>();
    return Struct_2(global1.a, -1i);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = array<i32, 8>();
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~global1.a.a, ~max(vec4<u32>(arg_0.c, 45642u, 4294967295u, 4294967295u) & global1.a.a, arg_0.a)));
    global2 = array<i32, 8>();
    let var_1 = func_2(global1.a.a).a;
    var var_2 = var_1.c;
    return 347f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(~arg_1.a, global2[_wgslsmith_index_u32(global1.a.c, 8u)] > u_input.a.x, ~global3.x, select(arg_1.d, -1i, arg_1.b)))))));
    var var_1 = !vec3<bool>(arg_0.a.b, true, false);
    var var_2 = u_input.a;
    global1 = func_2(global1.a.a);
    let var_3 = global1.a.c;
    return Struct_2(func_2(max(max(vec4<u32>(8017u, global1.a.a.x, 0u, 13299u), global1.a.a), arg_1.a) & select(max(arg_1.a, vec4<u32>(arg_1.c, 4294967295u, arg_1.c, global1.a.c)), arg_1.a, select(vec4<bool>(var_1.x, arg_0.a.b, true, arg_1.b), vec4<bool>(arg_1.b, false, arg_0.a.b, true), true))).a, global1.a.d);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec4<f32> {
    let var_0 = global1.a.b;
    var var_1 = global1.a.b;
    var var_2 = arg_0.a;
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(1u, 1u, arg_1.x, arg_0.a.c)), global1.a.a), !all(vec4<bool>(arg_0.a.b, arg_0.a.b, true, global1.a.b)), var_2.a.x, 10197i);
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(589f)), 1555f)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1111f + -1273f) + 342f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1154f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(func_2(global1.a.a).a)))), -1527f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, 317f, 462f, -1889f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, 1032f, 386f, 620f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, -408f, 1610f, -1000f)), false))))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec4<bool>(false, all(!select(vec2<bool>(false, global1.a.b), !vec2<bool>(global1.a.b, false), vec2<bool>(true, global1.a.b))), true, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-588f, 811f, false)), -1506f, 1f, 1658f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1344f, 723f, 100f, 758f))) * _wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(vec4<u32>(39627u, 6224u, global1.a.a.x, arg_0)), func_2(vec4<u32>(global3.x, global1.a.c, 0u, 1u)).a, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(14888u, global3.x, 1224u, arg_0), true, 0u, global1.b))), -973f), global3.yy, -1i | _wgslsmith_clamp_i32(u_input.a.x, global1.b, u_input.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2941f, 1008f, 1695f, 476f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(global1.a)), -115f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -275f)), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1242f, -214f, 323f, 184f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-430f, -484f, -808f, 990f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(234f, -481f, 543f, -1000f) - vec4<f32>(-1236f, 334f, -417f, 397f)))))));
    global3 = vec4<u32>(global3.x, ~(select(~19948u, ~0u, var_0.x) ^ 0u), 0u, _wgslsmith_dot_vec4_u32(global1.a.a, ~reverseBits(vec4<u32>(global1.a.a.x, arg_0, 4294967295u, 9678u) << (global1.a.a % vec4<u32>(32u)))));
    var var_2 = global1.a;
    let var_3 = true | any(vec4<bool>(!all(var_0.xz), _wgslsmith_dot_vec2_u32(global1.a.a.zz, vec2<u32>(22917u, arg_0)) < ~0u, func_2(vec4<u32>(arg_0, 54000u, global1.a.c, 89635u)).a.b, !var_2.b));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.a.c);
    var_0 = func_1(select(_wgslsmith_mult_u32(~func_4(Struct_2(Struct_1(global1.a.a, true, 67034u, 0i), -7261i), global1.a, -222f, -1082f).a.a.x, global1.a.c), ~(~var_0.c), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, 138f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(123f, 309f) * vec2<f32>(1046f, 1016f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2313f, 2061f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1247f, 331f), vec2<f32>(-474f, 1230f), vec2<bool>(global1.a.b, true)))))), i32(-1i) * -func_1(~global1.a.a.x).d);
}


struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(68580i, 2147483647i, 35126i, 1i), vec4<i32>(36956i, -58565i, 4420i, -2835i), vec4<i32>(61104i, -27161i, 2147483647i, 6778i), vec4<i32>(1i, 1420i, 0i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -9624i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 20619i, 2147483647i), vec4<i32>(-51817i, -39847i, 2147483647i, 4712i), vec4<i32>(4811i, -39150i, 42844i, 1i));

var<private> global1: Struct_2 = Struct_2(vec4<f32>(612f, -642f, 1000f, 299f));

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(false, vec2<i32>(-18143i, 2147483647i), vec4<u32>(6023u, 0u, 1u, 4294967295u), vec4<i32>(35505i, 1i, -1i, -7144i), vec2<u32>(8947u, 59807u));

var<private> global4: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_1(global3.a, abs(global3.d.zy), vec4<u32>(~max(global3.e.x ^ arg_1, ~arg_1), arg_1, countOneBits(~arg_1), 0u), ~(~(vec4<i32>(0i, u_input.a, -20010i, -2147483647i) & global0[_wgslsmith_index_u32(35622u, 8u)])), vec2<u32>(global3.e.x, _wgslsmith_add_u32(1u, ~(global3.e.x & arg_1))));
    var var_1 = arg_1 ^ var_0.e.x;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.x, 152f, 1346f, 1670f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, global1.a.x, -1208f, -840f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(global1.a.x, global1.a.x, -1776f, global2.a.x))))))));
    var_0 = Struct_1(false, vec2<i32>(max(2147483647i, (2147483647i & u_input.a) << ((global3.c.x | var_0.e.x) % 32u)), i32(-1i) * -2147483647i), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, var_0.e.x, 91068u, 1u)), global3.c, var_0.c), reverseBits(vec4<u32>(var_0.e.x | 30925u, 56304u, select(arg_1, 4294967295u, false), abs(var_0.e.x))), ~var_0.c), global3.d, ~global3.c.xz);
    global2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-278f)), -484f, global2.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + global1.a)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(231f, 1229f, 888f, global1.a.x))), global2.a) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.x, arg_2.x, arg_2.x, 362f)))), vec4<f32>(-684f, global1.a.x, 366f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, 306f, 633f, global2.a.x), _wgslsmith_f_op_vec4_f32(-global1.a)) + _wgslsmith_f_op_vec4_f32(ceil(global2.a)))));
    var var_1 = 0u;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(global3.a, global3.a, global3.a), 4294967295u, _wgslsmith_f_op_vec2_f32(-global1.a.zx)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, 546f, global1.a.x, 886f), var_0.a))))));
    let var_3 = vec2<bool>(false, global3.a);
    var var_4 = !select(vec4<bool>(!all(vec3<bool>(true, var_3.x, false)), var_3.x, false, 25378i >= ~global3.d.x), vec4<bool>(!(!global3.a), false, global3.a, global3.a), true);
    return Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, global1.a.x)) + _wgslsmith_f_op_f32(-1000f - -400f)), _wgslsmith_div_f32(-1274f, _wgslsmith_f_op_f32(global1.a.x - 151f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * -1717f) + _wgslsmith_f_op_f32(1137f * -967f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1502f - 1281f))))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    global2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), global1.a.x, arg_0.a.x, -179f));
    global4 = _wgslsmith_f_op_f32(select(global2.a.x, arg_0.a.x, (true | all(vec4<bool>(false, false, arg_1, false))) & (!(u_input.b.x != -8481i) || true)));
    let var_0 = func_2();
    global1 = arg_0;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)), func_2().a)));
    return _wgslsmith_f_op_f32(global2.a.x * var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_sub_u32(1u, firstLeadingBit(min(global3.c.x << (4294967295u % 32u), _wgslsmith_mod_u32(global3.e.x, 11926u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.zxz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-781f, 138f, 1000f), global2.a.yyx)))) - vec3<f32>(1f, _wgslsmith_f_op_f32(func_1(Struct_2(global2.a), global3.a)), -1728f)));
}


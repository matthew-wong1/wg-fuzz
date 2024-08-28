struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec3<u32>(0u, 96935u, 8159u), vec3<i32>(1i, 0i, 77147i))), Struct_2(Struct_1(vec3<u32>(340u, 1u, 15369u), vec3<i32>(-13451i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(27788u, 22515u, 42500u), vec3<i32>(-10538i, 17278i, i32(-2147483648)))), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<i32>(0i, 16306i, 2147483647i))), Struct_2(Struct_1(vec3<u32>(7295u, 1u, 13648u), vec3<i32>(4063i, -18129i, 16419i))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 34406u), vec3<i32>(-13228i, 2147483647i, 0i))), Struct_2(Struct_1(vec3<u32>(56429u, 0u, 41072u), vec3<i32>(17238i, -32595i, -22027i))), Struct_2(Struct_1(vec3<u32>(37651u, 1u, 67445u), vec3<i32>(1i, i32(-2147483648), -7115i))));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(54804u, 34210u, 19116u), vec3<i32>(2147483647i, -1i, 37176i)), Struct_1(vec3<u32>(4304u, 1u, 60857u), vec3<i32>(-6002i, 4940i, -1i)), Struct_1(vec3<u32>(0u, 0u, 893u), vec3<i32>(0i, 31481i, 2147483647i)), Struct_1(vec3<u32>(0u, 16912u, 79108u), vec3<i32>(0i, -1i, 0i)), Struct_1(vec3<u32>(1u, 33540u, 0u), vec3<i32>(2147483647i, -28146i, 1i)), Struct_1(vec3<u32>(35486u, 1u, 21419u), vec3<i32>(-41975i, 31448i, -56758i)), Struct_1(vec3<u32>(55265u, 0u, 1u), vec3<i32>(11844i, 1i, 22976i)), Struct_1(vec3<u32>(1u, 24727u, 5401u), vec3<i32>(2147483647i, i32(-2147483648), -25592i)), Struct_1(vec3<u32>(20239u, 0u, 4768u), vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_1(vec3<u32>(0u, 1u, 24475u), vec3<i32>(6523i, 13222i, 1i)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<i32>(59i, -1i, 16863i)), Struct_1(vec3<u32>(4294967295u, 1u, 56230u), vec3<i32>(1i, -46724i, -30203i)));

var<private> global4: array<f32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    return select(all(vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))))), true, all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_1.a.b.x <= 43896i), _wgslsmith_f_op_f32(f32(-1f) * -1039f) <= _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 24u)]))));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = !any(!vec3<bool>(true, func_3(27964i, global2[_wgslsmith_index_u32(arg_0, 8u)], Struct_3(global2[_wgslsmith_index_u32(4294967295u, 8u)], Struct_2(global3[_wgslsmith_index_u32(0u, 12u)]), global2[_wgslsmith_index_u32(36995u, 8u)]), vec2<f32>(global4[_wgslsmith_index_u32(arg_0, 24u)], -1460f)), all(vec2<bool>(false, true))));
    global1 = array<vec4<u32>, 20>();
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(47161u << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, 1u), vec2<u32>(38809u, 4294967295u), true), select(vec2<u32>(0u, 380u), vec2<u32>(0u, 1u), vec2<bool>(false, true))), ~vec2<u32>(105560u, 1u)) % 32u), 12u)]);
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    return 1u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    var var_0 = true;
    global0 = false;
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global4[_wgslsmith_index_u32(arg_2.b.a.a.x, 24u)], 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-142f, global4[_wgslsmith_index_u32(arg_1.x, 24u)], global4[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<f32>(-1000f, 1000f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(global4[_wgslsmith_index_u32(1u, 24u)], 1062f, global4[_wgslsmith_index_u32(1u, 24u)]))) + arg_0) + arg_0), true));
    return _wgslsmith_mod_u32(func_2(arg_2.b.a.a.x), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(94618u, func_1(vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(4294967295u, 24u)], -843f), ~vec3<u32>(42526u, 41356u, 84472u), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 8u)], Struct_2(global3[_wgslsmith_index_u32(u_input.a, 12u)]), global2[_wgslsmith_index_u32(u_input.a, 8u)])) ^ ~firstTrailingBit(u_input.a)), 8u)], global2[_wgslsmith_index_u32(56995u ^ u_input.a, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)]);
    let var_1 = vec3<i32>(-(~var_0.c.a.b.x & max(-3111i, _wgslsmith_mult_i32(48656i, 4678i))), ~var_0.b.a.b.x, var_0.c.a.b.x);
    global4 = array<f32, 24>();
    var var_2 = -vec3<i32>(1i, (-1744i | -var_0.c.a.b.x) << (~(~var_0.a.a.a.x) % 32u), -_wgslsmith_dot_vec2_i32(var_0.a.a.b.xz ^ vec2<i32>(var_1.x, var_1.x), ~var_1.zy));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 24u)] - global4[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0.b.a.a.x, 24u)] - global4[_wgslsmith_index_u32(var_0.c.a.a.x, 24u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.a, 24u)], global4[_wgslsmith_index_u32(38483u, 24u)])))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0.b.a.a.x, 24u)] * -794f), -1601f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.a.x, _wgslsmith_div_f32(1765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(0u, 24u)], 918f)))))), ~1u);
}


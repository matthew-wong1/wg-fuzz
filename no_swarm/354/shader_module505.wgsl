struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true));

var<private> global1: Struct_3;

var<private> global2: array<bool, 2> = array<bool, 2>(false, false);

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    global3 = 4294967295u;
    let var_0 = !vec4<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(22830u, 0u, 1u, 1u), u_input.a, u_input.a), countOneBits(vec4<u32>(1u, u_input.a.x, 5591u, u_input.a.x))), 2u)], false, arg_2.b.b.x, true | arg_1);
    var var_1 = Struct_2(_wgslsmith_add_i32(1i, (min(arg_2.a, 15066i) & ~u_input.b) << (u_input.a.x % 32u)), Struct_1(0i, select(!select(arg_0.d.b, arg_2.c.b, vec3<bool>(true, false, false)), arg_0.d.b, !vec3<bool>(arg_2.b.b.x, true, arg_1))), arg_2.b, Struct_1(~reverseBits(-global1.c.a), !global1.b), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(round(-595f)), _wgslsmith_f_op_f32(-arg_2.e.x), -608f));
    global0 = array<vec4<bool>, 4>();
    let var_2 = false;
    return ~(i32(-1i) * -47040i);
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(select(all(vec2<bool>(global1.a, true)), global2[_wgslsmith_index_u32(64549u, 2u)], all(vec2<bool>(global1.b.x, true))), !global1.c.b.b, global1.c, _wgslsmith_dot_vec2_i32(reverseBits(~(vec2<i32>(u_input.b, 18699i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), vec2<i32>(global1.c.b.a, -1i ^ _wgslsmith_clamp_i32(u_input.b, -16991i, -25912i))));
    var var_0 = Struct_4(select(global1.c.b.b, global1.b, global1.d >= (~u_input.b << ((u_input.a.x ^ u_input.a.x) % 32u))), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.e.x, -150f))) + _wgslsmith_f_op_f32(trunc(global1.c.e.x))), global1.c);
    let var_1 = Struct_5(~13110u, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) >> (_wgslsmith_div_u32(min(78053u, u_input.a.x), abs(1u)) % 32u), 97051u), ~firstLeadingBit(vec2<i32>(~28084i, -36142i)), Struct_3(false, vec3<bool>(true, !(global1.c.e.x >= var_0.c), any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(false, true, global1.b.x), global1.b))), Struct_2((i32(-1i) * -12343i) & (global1.c.d.a >> (4294967295u % 32u)), Struct_1(global1.d, var_0.a), Struct_1(_wgslsmith_div_i32(-21970i, var_0.b.b.a), global1.c.d.b), Struct_1(max(global1.d, 1i), !vec3<bool>(var_0.d.d.b.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.e.x, -1009f, global1.c.e.x, -779f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-594f, -1339f, 215f, -892f)))), func_3(Struct_2(1i, global1.c.c, Struct_1(2147483647i, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true, false)), global1.c.c, global1.c.e), !any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true, false, global2[_wgslsmith_index_u32(13174u, 2u)])), var_0.b, 1f)));
    var var_2 = Struct_4(vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], var_1.d.a, all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 2u)], var_1.d.b.x)))), global2[_wgslsmith_index_u32(0u, 2u)], false), Struct_2(_wgslsmith_mod_i32(reverseBits(var_1.c.x), -1i) ^ ~0i, Struct_1(~var_1.d.d, vec3<bool>(true, var_1.d.b.x, true)), var_0.b.b, global1.c.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e.x, global1.c.e.x, 118f, global1.c.e.x))))), _wgslsmith_div_f32(1496f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(376f, _wgslsmith_f_op_f32(f32(-1f) * -767f)))), var_1.d.c);
    let var_3 = vec4<i32>(-13294i, var_0.d.a, -1i, -(~var_1.c.x));
    return var_1.d;
}

fn func_1() -> vec2<bool> {
    global1 = func_2();
    let var_0 = func_2().c.e.zzy;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.e.x * _wgslsmith_f_op_f32(sign(var_0.x))) * _wgslsmith_f_op_f32(abs(1436f))))));
    return func_2().c.c.b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1686f, _wgslsmith_f_op_f32(f32(-1f) * -946f), 991f, _wgslsmith_f_op_f32(-481f * global1.c.e.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, global1.c.e.x, global1.c.e.x))))));
    global2 = array<bool, 2>();
    let var_1 = vec2<u32>(~reverseBits(u_input.a.x), abs(reverseBits(~abs(u_input.a.x))));
    let var_2 = func_1();
    global3 = 75375u;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-(vec2<i32>(41141i, 0i) & vec2<i32>(u_input.b, u_input.b))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(14082i, 1i), global1.c.a), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.d, global1.c.c.a), vec2<i32>(u_input.b, -2147483647i), vec2<i32>(0i, -28478i)))), !vec2<bool>(var_1.x <= u_input.a.x, any(global1.c.d.b))), -697f);
}


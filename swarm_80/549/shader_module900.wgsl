struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -529f;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<bool, 2> = array<bool, 2>(true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = u_input.e.x;
    let var_1 = -_wgslsmith_sub_i32(-7669i, var_0);
    return countOneBits(0u);
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<bool, 2>();
    var var_0 = !select(!select(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(40521u, 2u)], global2[_wgslsmith_index_u32(u_input.d, 2u)], true), false), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], false, global2[_wgslsmith_index_u32(arg_0, 2u)])), select(vec4<bool>(false || global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(~0u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], false), !vec4<bool>(false, global2[_wgslsmith_index_u32(26396u, 2u)], true, global2[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 2u)] && false, true, u_input.c.x > u_input.c.x, true & global2[_wgslsmith_index_u32(57135u, 2u)])), select(select(vec4<bool>(global2[_wgslsmith_index_u32(106199u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], true, global2[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false, false), !vec4<bool>(false, global2[_wgslsmith_index_u32(32558u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)])), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0, 2u)], false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(31112u, 2u)], true, global2[_wgslsmith_index_u32(11865u, 2u)], false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 2u)], false, global2[_wgslsmith_index_u32(9746u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)])), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(22911u, 2u)], global2[_wgslsmith_index_u32(90806u, 2u)])), vec4<bool>(all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), !global2[_wgslsmith_index_u32(u_input.b.x, 2u)], true, all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(9365u, 2u)])))));
    let var_1 = !vec4<bool>(-1i > u_input.e.x, var_0.x, false, var_0.x);
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f + 502f)), -240f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-284f)))));
}

fn func_2() -> bool {
    var var_0 = u_input.c.x;
    let var_1 = Struct_1(firstLeadingBit(u_input.b));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(724f, 501f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(881f)) - _wgslsmith_f_op_f32(min(-168f, -538f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1147f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f * 1938f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~1u))));
    var var_2 = Struct_4(u_input.c.zw, var_1, Struct_3(-vec3<i32>(max(-39984i, -10378i), -2147483647i, ~0i)), Struct_3(u_input.c.yyz));
    let var_3 = Struct_3(u_input.e);
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30202u, 4354u, var_1.a.x, _wgslsmith_mod_u32(1u, 1u)), ~abs(firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 20750u, var_2.b.a.x, var_1.a.x))))), 2u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = -587f;
    return StorageBuffer(u_input.b.x, _wgslsmith_mod_vec4_i32(u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-284f, -1000f)), -443f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-798f + 900f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1096f - 1000f))) * _wgslsmith_div_f32(-1297f, _wgslsmith_f_op_f32(f32(-1f) * -548f)))), _wgslsmith_f_op_f32(sign(331f)));
    var var_0 = vec3<bool>(0u > _wgslsmith_add_u32(~func_1(u_input.d), 1u), true, true);
    let var_1 = 3291i;
    let var_2 = global1[_wgslsmith_index_u32(4704u, 32u)];
    global2 = array<bool, 2>();
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-925f)), var_2.b.x));
    var var_4 = vec2<u32>(4654u, var_2.c.a.x);
    var var_5 = u_input.c.wy;
    let x = u_input.a;
    s_output = func_4(select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 38424u, 47146u, var_2.d), u_input.b, vec4<u32>(var_4.x, 6010u, var_4.x, 1u))), _wgslsmith_mult_vec4_u32(~var_2.a.a, u_input.b), vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], var_0.x, var_0.x)), func_2(), true, true)), firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_5.x, var_1, 0i)), abs(u_input.c.yyx)))), Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.x, var_3))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, -651f), var_2.b.yy, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -2148f)), !select(vec2<bool>(var_0.x, true), !var_0.xy, var_0.yz), Struct_2(Struct_1(reverseBits(vec4<u32>(var_2.c.a.x, u_input.b.x, var_4.x, var_2.d))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, vec4<bool>(var_0.x, true, global2[_wgslsmith_index_u32(var_2.a.a.x, 2u)], false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(539f, var_3, var_2.b.x, var_2.b.x) - var_2.b))), var_2.a, ~(0u >> (var_2.a.a.x % 32u)))), Struct_2(Struct_1(~u_input.b << (~u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -752f, var_2.b.x, -177f)), _wgslsmith_f_op_vec4_f32(-var_2.b)), var_2.b), var_2.a, ~(~(var_2.a.a.x | var_4.x))));
}


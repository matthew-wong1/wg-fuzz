struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<bool, 25>;

var<private> global2: u32 = 0u;

var<private> global3: array<bool, 9> = array<bool, 9>(true, true, true, true, true, false, false, true, true);

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global1 = array<bool, 25>();
    var var_0 = Struct_3(Struct_2(global4.a, global3[_wgslsmith_index_u32(~40769u, 9u)]), max(global4.a.a, ~global4.a.a), Struct_2(global4.a, false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.b.x * _wgslsmith_f_op_f32(trunc(-334f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global4.a.c.x)))), (any(vec3<bool>(false, global4.b, global3[_wgslsmith_index_u32(global4.a.d.x, 9u)])) || (1271f == global4.a.b.x)) || any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(u_input.c.x, 28u)])))));
    let var_1 = reverseBits(-11146i);
    return !vec4<bool>(all(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, false, global3[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(u_input.a, 1u), firstTrailingBit(u_input.a)) == _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1365u, global4.a.d.x, u_input.b.x), var_0.a.a.d), _wgslsmith_add_u32(var_0.a.a.a, u_input.a)), any(select(vec3<bool>(false, true, false), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global4.b, false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], var_0.a.b, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(644f)) - _wgslsmith_div_f32(var_0.a.a.b.x, 785f)) >= 505f);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(728f - 306f) - global4.a.c.x) - _wgslsmith_f_op_f32(global4.a.c.x * 1141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.c.x * 1130f))))));
    var var_1 = vec3<bool>(true, !all(func_3()), global4.b);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.b.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1339f + 1211f), -440f))));
    global1 = array<bool, 25>();
    var var_3 = Struct_2(global4.a, all(vec2<bool>(true, any(select(vec2<bool>(true, global4.b), vec2<bool>(global4.b, global1[_wgslsmith_index_u32(4294967295u, 25u)]), var_1.x)))));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(10256i, -2147483647i, 1i, 59796i)), firstTrailingBit(vec4<i32>(-1i, -703i, -2147483647i, -2147483647i)))), ~vec4<i32>(-1094i, 1i, -36739i, 1i)), ~(-27707i & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -2147483647i), vec3<i32>(1i, -29269i, -2147483647i))) >> (_wgslsmith_add_u32(38610u, var_3.a.a) % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = -vec2<i32>(1i, reverseBits(func_2()));
    var var_1 = arg_1;
    var var_2 = ~0u;
    var var_3 = !(!all(vec3<bool>(true, true, true)));
    global2 = arg_0.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global2 = u_input.b.x;
    var var_1 = 833f;
    let var_2 = Struct_2(Struct_1(17085u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.c.x) * global4.a.c.x), global4.a.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global4.a.c)), global4.a.b.yx), reverseBits(vec3<u32>(global4.a.a, 8055u, u_input.b.x << (47450u % 32u))), -1000f), any(vec2<bool>(false, ~44482i < (1i << (u_input.b.x % 32u)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.e, -930f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(723f, -106f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(366f, -262f)))))) * -421f);
    let var_3 = !any(vec3<bool>(func_1(Struct_3(Struct_2(Struct_1(var_2.a.d.x, global4.a.b, var_2.a.b.yx, global4.a.d, -798f), true), var_2.a.d.x, var_2, 510f), Struct_1(1u, var_2.a.b, var_2.a.c, vec3<u32>(4294967295u, 44105u, u_input.b.x), -355f)), var_2.b, global0[_wgslsmith_index_u32(u_input.b.x << (var_2.a.d.x % 32u), 28u)])) || true;
    var var_4 = !vec2<bool>(false, !(any(vec4<bool>(true, var_3, false, global3[_wgslsmith_index_u32(global4.a.d.x, 9u)])) && global0[_wgslsmith_index_u32(~global4.a.a, 28u)]));
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.c, -1i, vec2<i32>(min(var_5, _wgslsmith_mod_i32(-55943i, -18480i)) ^ var_5, min(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(8551i, var_5, var_5), vec3<i32>(var_5, var_5, var_5)), -var_5), var_5)));
}


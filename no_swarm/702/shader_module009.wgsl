struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(1509f, 1499f, -1338f, -1225f, 766f, 598f);

var<private> global1: f32 = 1015f;

var<private> global2: array<Struct_2, 9>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~1u, 9u)];
    let var_1 = !(!(!vec2<bool>(arg_0.x, true)));
    var var_2 = global2[_wgslsmith_index_u32(abs(u_input.c.x & 45869u), 9u)];
    global2 = array<Struct_2, 9>();
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.b * 1251f), -427f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.c.a.x, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -121f), var_1.x)))), _wgslsmith_f_op_f32(-arg_2.a.x), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-372f))))));
    return var_3;
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global1 = arg_0.x;
    var var_0 = global2[_wgslsmith_index_u32(u_input.d << (~firstTrailingBit(u_input.d) % 32u), 9u)];
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = var_0.c.a.x;
    global0 = array<f32, 6>();
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_3(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-270f, -1551f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1160f, global0[_wgslsmith_index_u32(u_input.d, 6u)]))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], -384f), min(vec4<i32>(1i, 1i, -3702i, 44171i), -u_input.a)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(234f, 2548f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4967u, 6u)] - -790f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1561u, 6u)]))), ~vec4<i32>(0i, -1i, u_input.e, 180i)))));
    var var_1 = ~35975u;
    let var_2 = var_0;
    var var_3 = Struct_2(~select(~vec3<u32>(u_input.c.x, u_input.d, u_input.d) << (~vec3<u32>(var_0, 67040u, 10082u) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<u32>(var_0, 37032u, u_input.d))), true), var_2, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2141f, -1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(904f, -278f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1697f, -358f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_vec4_i32(~vec4<i32>(59356i, 2147483647i, u_input.b.x, u_input.a.x) | -vec4<i32>(u_input.e, u_input.b.x, 0i, u_input.b.x), -u_input.a)));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-796f, 1000f, global0[_wgslsmith_index_u32(64236u, 6u)], -1457f), vec4<f32>(-701f, -203f, 242f, 313f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-897f, -659f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 6u)]), -1000f))));
    return global2[_wgslsmith_index_u32(var_0, 9u)];
}

fn func_1() -> bool {
    var var_0 = false;
    let var_1 = global2[_wgslsmith_index_u32(15709u, 9u)];
    global2 = array<Struct_2, 9>();
    var_0 = true;
    let var_2 = func_2();
    return any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), true))) && !all(vec3<bool>(true, true, true));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f - global0[_wgslsmith_index_u32(u_input.d, 6u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(386f + global0[_wgslsmith_index_u32(1u, 6u)])))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(step(arg_1, vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(23196u, 4294967295u, 1u))), reverseBits(vec3<u32>(u_input.d ^ u_input.c.x, _wgslsmith_mult_u32(4294967295u, u_input.c.x), abs(u_input.d)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(32049u, 34511u, u_input.d, 21402u), ~vec4<u32>(4294967295u, u_input.c.x, u_input.d, u_input.d)), select(~vec4<u32>(37722u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.d, u_input.c.x, 4294967295u, u_input.d) ^ vec4<u32>(u_input.d, 43043u, 19321u, u_input.d), vec4<bool>(true, true, true, true))), func_2().c);
    global2 = array<Struct_2, 9>();
    let var_1 = !vec2<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true);
    global0 = array<f32, 6>();
    global1 = 365f;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 9>();
    let var_0 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)])))) - _wgslsmith_f_op_vec2_f32(func_5(func_1(), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(2277u, 6u)])))))), -2812f, ~vec4<i32>(-68862i, abs(0i), 55792i, ~u_input.a.x)));
    let var_1 = ~0u;
    var var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -func_2().c.c.x, u_input.b.x ^ var_0.c.x), vec3<i32>(var_0.c.x, _wgslsmith_mod_i32(-u_input.b.x, 2147483647i), (-8908i ^ var_0.c.x) & u_input.a.x));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_1, reverseBits(firstTrailingBit(var_1 ^ u_input.d))));
}


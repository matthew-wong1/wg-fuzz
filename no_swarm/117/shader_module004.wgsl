struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 41412u, 0u, 0u), vec3<f32>(-861f, 1803f, -1106f), i32(-2147483648), vec3<u32>(1u, 0u, 0u), vec4<i32>(11557i, 29986i, -9436i, -1i));

var<private> global3: u32 = 2737u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    var var_0 = abs(16338i);
    var var_1 = Struct_1(~countOneBits(~global0.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), 1000f, any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1135f), 1000f))), -1i, vec3<u32>(_wgslsmith_sub_u32(global0.d.x, global0.a.x ^ 4294967295u), global0.d.x & global0.d.x, ~(~52657u)), min(vec4<i32>(-1i) * -global0.e, min(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(global2.c, 18391i, -23421i, -1i), vec4<i32>(global0.e.x, global0.c, -2147483647i, 985i)))) << (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(43868u, global2.d.x, 3381u, 68842u), ~global0.a)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(101f * _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-368f)) - _wgslsmith_f_op_f32(trunc(global0.b.x))), 187f))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec4<u32> {
    var var_0 = Struct_1(vec4<u32>(min(~reverseBits(14719u), global0.a.x), u_input.b, 46266u, u_input.b), _wgslsmith_f_op_vec3_f32(func_3()), global0.e.x, _wgslsmith_mod_vec3_u32(global0.a.www, ~global0.a.wwz), vec4<i32>(_wgslsmith_clamp_i32(~global0.e.x, 1i, 2147483647i), -39947i, -u_input.a, ~reverseBits(-2147483647i)));
    global1 = array<Struct_1, 19>();
    return ~(~global0.a);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = global0.b.zz;
    global3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 59195u, ~15549u, 17293u) >> (~vec4<u32>(global2.d.x, 1u, u_input.b, 12620u) % vec4<u32>(32u)), reverseBits(func_2(select(vec4<u32>(global0.a.x, global2.a.x, u_input.b, u_input.b), global0.a, true), true)));
    var var_1 = _wgslsmith_mult_u32(4294967295u, ~global2.d.x);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.b.yx)) * global0.b.yz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).yz + global2.b.xy), vec2<bool>(_wgslsmith_sub_i32(global2.e.x, -2586i) > u_input.a, select(false, any(vec2<bool>(true, false)), any(vec2<bool>(false, false)))))) * global0.b.zz);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(846f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(967f - var_0.x) + _wgslsmith_f_op_f32(-1000f * global2.b.x))))));
    return all(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), true)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(global2.b.x * 991f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global2.b.x, global0.b.x, -919f) + vec4<f32>(arg_2.b.x, arg_2.b.x, 714f, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -698f, global2.b.x, arg_2.b.x) + vec4<f32>(global0.b.x, global2.b.x, 349f, global0.b.x)), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 1035f, 241f, -1117f)))), vec4<f32>(_wgslsmith_f_op_f32(step(2823f, _wgslsmith_f_op_f32(f32(-1f) * -1358f))), 1328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - global0.b.x), global0.b.x)));
    var var_2 = true;
    return any(arg_3.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(62537u);
    let var_0 = vec2<bool>(func_4(func_1(global0.b.x), ~u_input.b, Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-368f, global2.b.x, global0.b.x))), global0.b)), ~_wgslsmith_dot_vec4_i32(global0.e, vec4<i32>(u_input.a, u_input.a, -1i, global0.c)), global2.d, vec4<i32>(global0.c, 1i << (u_input.b % 32u), -24385i, countOneBits(u_input.c.x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)))), false);
    global2 = Struct_1(select(_wgslsmith_add_vec4_u32(min(_wgslsmith_div_vec4_u32(global2.a, global2.a), global2.a), global2.a), global0.a, select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), !select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, true, false, var_0.x), true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.b.x, global2.b.x, 160f))) + vec3<f32>(828f, global0.b.x, global0.b.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, 614f, global0.b.x), global2.b), var_0.x))), global2.c, global0.d, vec4<i32>(~(firstLeadingBit(u_input.c.x) ^ _wgslsmith_dot_vec3_i32(global0.e.yyx, vec3<i32>(global2.c, u_input.a, -25849i))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(0i, 23486i), -2147483647i), global2.e.xx), global2.c, -29719i << (~(~1u) % 32u)));
    let var_1 = global1[_wgslsmith_index_u32(abs(global2.a.x), 19u)];
    var var_2 = global0.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 124f) + global2.b.x), max(~abs(0u), ~u_input.b));
}


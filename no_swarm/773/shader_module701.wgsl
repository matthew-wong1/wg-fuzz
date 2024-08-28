struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: i32 = 66985i;

var<private> global3: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1326f, 990f), vec2<f32>(-120f, 2387f), vec2<f32>(-656f, 1000f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = u_input.c;
    global3 = array<vec2<f32>, 3>();
    global0 = arg_0;
    global1 = array<vec3<f32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f) - -907f);
    return true;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_1(~abs(vec3<u32>(u_input.d, 38184u, u_input.b) << (vec3<u32>(12171u, 0u, 12636u) % vec3<u32>(32u))) ^ (_wgslsmith_sub_vec3_u32(global0.a, _wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(23901u, 104994u, global0.a.x))) | vec3<u32>(4294967295u, ~u_input.d, _wgslsmith_mult_u32(1u, global0.a.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - -200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + 150f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x) * _wgslsmith_f_op_f32(1019f + 1513f)))), -553f));
    var var_1 = var_0;
    let var_2 = all(vec4<bool>(!(!arg_0 || true), arg_0, true, func_2(var_0, true, select(vec2<bool>(true, true), select(vec2<bool>(arg_0, true), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0)), true))));
    let var_3 = !select(!(!(!vec2<bool>(arg_0, arg_0))), vec2<bool>(any(vec2<bool>(arg_0, false)) & select(arg_0, arg_0, arg_0), var_2), select(select(vec2<bool>(false, arg_0), !vec2<bool>(var_2, var_2), var_2), vec2<bool>(true, true), !select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false)));
    let var_4 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0.b.x, var_1.b.x))))) != global0.b.x);
    return _wgslsmith_dot_vec4_u32(abs(max(vec4<u32>(_wgslsmith_sub_u32(var_0.a.x, 4294967295u), ~var_0.a.x, ~u_input.e.x, ~var_1.a.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 0u, u_input.b, 4294967295u), ~vec4<u32>(u_input.d, global0.a.x, 31757u, 1u)))), ~abs(reverseBits(max(vec4<u32>(21430u, global0.a.x, 70942u, global0.a.x), vec4<u32>(u_input.b, global0.a.x, 3858u, 4294967295u)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = func_2(arg_0, true, vec2<bool>(~(0i << (global0.a.x % 32u)) <= arg_1, arg_0.a.x > (~global0.a.x | 1u)));
    let var_1 = false;
    global1 = array<vec3<f32>, 10>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1002f);
    var var_3 = Struct_1(vec3<u32>(func_3(false, vec4<i32>(u_input.c.x, ~u_input.a.x, abs(0i), 1i >> (u_input.e.x % 32u)), i32(-1i) * -6608i, u_input.a), firstTrailingBit(~max(arg_0.a.x, 0u)), global0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2228f, -547f, 437f)), true)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c.x;
    global3 = array<vec2<f32>, 3>();
    var var_0 = !all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), all(vec2<bool>(false, false))), vec3<bool>(func_1(Struct_1(vec3<u32>(43806u, 14087u, 0u), vec3<f32>(global0.b.x, -882f, global0.b.x)), -16128i), true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true)));
    var_0 = func_2(Struct_1(abs(u_input.e) ^ global0.a, _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(65103u, 35922u), ~4294967295u, ~4294967295u), 10u)])), false, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, false, false, true))), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), (max(1u, 0u) < u_input.b) & (u_input.a.x != ~(-2147483647i))));
    let var_1 = vec3<bool>(true, true, global0.b.x == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(222f, 2884f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -1511f) + global0.b.x), global0.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -277f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2882f, global0.b.x, -2371f, -1674f), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -332f), vec4<bool>(var_1.x, false, false, true))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1243f, 423f, -1213f), vec4<f32>(global0.b.x, global0.b.x, 1000f, -425f)))))));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.x, -572f))) <= -1742f;
    let var_5 = vec3<bool>(var_1.x, true, !(!var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~u_input.c.x, abs(_wgslsmith_mult_i32(u_input.c.x, 2147483647i))));
}


struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, vec3<f32>(-513f, -284f, -1350f), 22769u), Struct_1(true, vec3<f32>(-2684f, 1000f, -1430f), 19253u), Struct_1(false, vec3<f32>(-1000f, -1260f, -309f), 0u), Struct_1(true, vec3<f32>(1054f, 1000f, -602f), 36218u), Struct_1(false, vec3<f32>(282f, -891f, 643f), 1u), Struct_1(false, vec3<f32>(2594f, 1208f, 1054f), 8952u), Struct_1(true, vec3<f32>(-1000f, -614f, 1136f), 18698u), Struct_1(false, vec3<f32>(-723f, -699f, -444f), 77458u), Struct_1(false, vec3<f32>(109f, 1360f, -519f), 8041u), Struct_1(true, vec3<f32>(561f, 197f, -233f), 0u), Struct_1(false, vec3<f32>(1282f, 142f, 497f), 1u), Struct_1(false, vec3<f32>(463f, 516f, -730f), 29395u), Struct_1(false, vec3<f32>(826f, 853f, -1041f), 1u), Struct_1(false, vec3<f32>(-3472f, 933f, 978f), 33599u), Struct_1(false, vec3<f32>(858f, 1595f, -734f), 4294967295u), Struct_1(true, vec3<f32>(-1439f, 2009f, -179f), 1u));

var<private> global2: Struct_1 = Struct_1(true, vec3<f32>(1052f, -672f, -1030f), 36727u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !global0[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_1 = -596f;
    var var_2 = global2.b;
    var_0 = all(!vec4<bool>(global2.a, true, false, true));
    var_2 = vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))))), _wgslsmith_f_op_f32(-var_2.x));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = arg_1.c;
    let var_1 = func_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1375f + -1000f), _wgslsmith_f_op_f32(-125f - global2.b.x), _wgslsmith_div_f32(global2.b.x, arg_0.b.x))), reverseBits(~(~17903u))));
    var_0 = 1u;
    let var_2 = var_1;
    let var_3 = _wgslsmith_add_i32(-19997i, u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    let var_0 = vec2<bool>(global2.a, any(select(vec3<bool>(global2.a & false, true, true), !(!vec3<bool>(true, global2.a, global0[_wgslsmith_index_u32(67671u, 11u)])), !(!global2.a))));
    global1 = array<Struct_1, 16>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.b)), _wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(1038f - 371f), -842f))));
    global1 = array<Struct_1, 16>();
    var var_2 = firstTrailingBit(~(max(u_input.b.xyy, u_input.c.zzw) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(37374u, 4294967295u, u_input.b.x), vec3<u32>(global2.c, global2.c, u_input.b.x), u_input.b.xwy))) & ~_wgslsmith_mod_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global2.c, global2.c), vec3<u32>(global2.c, global2.c, u_input.c.x)), vec3<u32>(1u, 80221u, u_input.b.x) << (u_input.b.zzx % vec3<u32>(32u)), all(vec3<bool>(false, global2.a, false))), (u_input.c.xwz ^ vec3<u32>(u_input.c.x, 0u, 4294967295u)) >> (~u_input.c.xyz % vec3<u32>(32u)));
    let var_3 = vec4<f32>(1250f, _wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(var_2.x, 16u)], Struct_1(false && var_0.x, _wgslsmith_f_op_vec3_f32(global2.b - global2.b), var_2.x), u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1103f)) - _wgslsmith_f_op_f32(-global2.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -2130f)), func_2(func_2(func_2(global1[_wgslsmith_index_u32(global2.c, 16u)]))).b.x);
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(-u_input.a.x >> (u_input.b.x % 32u)), select(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, 29569i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<bool>(false, false, true)), vec3<i32>(-11652i, u_input.a.x, -1i)), firstTrailingBit(7058i), true), ~(~38838i) << (1u % 32u)), reverseBits(abs(52399i)), u_input.a.x, var_3);
}


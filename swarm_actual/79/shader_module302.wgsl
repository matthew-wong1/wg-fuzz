struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: bool;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(25982u, 32008u, 4294967295u), vec4<f32>(2485f, 1822f, -288f, -621f), 1756u), Struct_1(vec3<u32>(49349u, 0u, 43194u), vec4<f32>(-1008f, -151f, 646f, 448f), 1u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec4<f32>(-2142f, 2454f, 526f, -199f), 225u), Struct_1(vec3<u32>(0u, 0u, 19824u), vec4<f32>(886f, -1000f, 835f, 550f), 23994u), Struct_1(vec3<u32>(80618u, 2491u, 0u), vec4<f32>(263f, -867f, 1984f, 277f), 9639u), Struct_1(vec3<u32>(77809u, 5514u, 4294967295u), vec4<f32>(1005f, 839f, -663f, 1191f), 44575u), Struct_1(vec3<u32>(15153u, 4294967295u, 1u), vec4<f32>(1023f, -104f, 677f, -1365f), 16274u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<f32>(1026f, 490f, -593f, 287f), 25302u), Struct_1(vec3<u32>(0u, 0u, 68574u), vec4<f32>(-1082f, -764f, 208f, -124f), 1u), Struct_1(vec3<u32>(4294967295u, 6861u, 1u), vec4<f32>(-732f, 732f, 1000f, -1176f), 13201u), Struct_1(vec3<u32>(33940u, 1u, 4294967295u), vec4<f32>(166f, 766f, -110f, 1011f), 0u), Struct_1(vec3<u32>(3930u, 0u, 4294967295u), vec4<f32>(736f, 640f, -546f, 1608f), 4294967295u));

var<private> global4: array<Struct_2, 25>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global4 = array<Struct_2, 25>();
    let var_0 = false;
    let var_1 = global3[_wgslsmith_index_u32(~(~(~(~global0.a))), 12u)];
    global3 = array<Struct_1, 12>();
    let var_2 = global4[_wgslsmith_index_u32(~reverseBits(4294967295u), 25u)];
    return _wgslsmith_mult_u32(11850u, abs((global0.a & global0.a) ^ 0u));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u << (1u % 32u), u_input.b << (u_input.b % 32u), func_3()), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, u_input.c, u_input.b), vec3<u32>(86459u, u_input.c, 21110u) | vec3<u32>(4294967295u, global0.a, global0.a)), vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.a.x), ~global0.a, select(2275u, global0.a, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(-816f, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1856f))), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(1355f + arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 233f, -1000f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, arg_0, arg_0, 155f)))), _wgslsmith_sub_u32(5658u, ~u_input.c & 4294967295u));
    var var_1 = Struct_2(global0.a, vec3<bool>(!select(all(vec2<bool>(global1.x, true)), global0.b.x, -625f > var_0.b.x), true, _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 862u, var_0.a.x), vec3<u32>(1u, u_input.c, var_0.a.x))) <= ~u_input.b));
    var_1 = global4[_wgslsmith_index_u32(~(var_1.a >> (57826u % 32u)), 25u)];
    let var_2 = ~1u;
    var_0 = Struct_1(~countOneBits(select(~var_0.a, countOneBits(vec3<u32>(26559u, 70202u, var_1.a)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, -126f, -154f, 451f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.b.x, arg_0, -261f) - var_0.b)))), ~(~(~var_0.c)));
    return vec4<i32>(-33272i, 24675i, -68557i, i32(-1i) * -20846i);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(1i, 1902i), -30845i);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * 369f)));
    var var_2 = 514f;
    let var_3 = vec2<u32>(u_input.c, 41045u);
    var var_4 = vec2<u32>(~19000u, var_3.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1899f) - _wgslsmith_f_op_f32(-352f * -1597f))), arg_0, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1f * 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 595f) * _wgslsmith_f_op_f32(1706f - -305f)) - arg_1.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(43025u, 4294967295u, u_input.b)), vec3<u32>(global0.a, 30231u, 22013u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 281f), _wgslsmith_f_op_f32(-472f - 1000f), _wgslsmith_f_op_f32(-283f + 390f), 825f) + _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(1242f - -1321f), Struct_1(vec3<u32>(u_input.b, 19937u, 4294967295u), vec4<f32>(288f, 1000f, -923f, -1144f), u_input.b)))))), global0.a);
    var_0 = Struct_1(var_0.a, vec4<f32>(var_0.b.x, 1266f, 1708f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x * -574f))), -2492f)), abs(var_0.c));
    global0 = global4[_wgslsmith_index_u32(~var_0.c, 25u)];
    let var_1 = 2147483647i;
    var_0 = Struct_1(vec3<u32>(30986u, func_3(), select(var_0.c, 26263u, any(select(vec4<bool>(false, global0.b.x, global1.x, true), vec4<bool>(true, true, true, global0.b.x), vec4<bool>(false, true, true, global0.b.x))))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f) * _wgslsmith_f_op_f32(round(-431f))), global3[_wgslsmith_index_u32(var_0.c, 12u)])), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.x, global0.a), func_3()), ~var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -496f)));
}


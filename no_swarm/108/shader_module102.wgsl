struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-625f, -551f), vec2<f32>(1342f, 896f), vec2<f32>(-284f, 297f), vec2<f32>(-1444f, -1346f), vec2<f32>(-634f, -719f), vec2<f32>(-848f, -1000f), vec2<f32>(-1000f, 1000f), vec2<f32>(-137f, -1000f), vec2<f32>(-341f, -552f), vec2<f32>(-865f, 892f), vec2<f32>(-1845f, -786f), vec2<f32>(1716f, -1574f), vec2<f32>(150f, -1304f), vec2<f32>(-1107f, -905f), vec2<f32>(-508f, 1102f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    global0 = array<u32, 20>();
    global1 = array<vec2<f32>, 15>();
    global1 = array<vec2<f32>, 15>();
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(0u, ~var_0.a.x), 63343u, (~(~6464u) ^ min(global0[_wgslsmith_index_u32(10876u, 20u)], arg_1.a.x)) << (_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0.c, 35315u), 4294967295u) % 32u), var_0.a.x);
    return var_1;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~(~func_3(Struct_2(true), Struct_1(u_input.a, vec4<bool>(true, false, true, false), 4294967295u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 20u)], 20u)], 15u)]))), firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~0u, 20u)], 4294967295u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48862u, 20u)], 20u)], min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72472u, 20u)], 20u)], u_input.a.x)), (vec4<u32>(4294967295u, 60547u, 4932u, 35125u) & vec4<u32>(u_input.a.x, 0u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)])) >> (reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 0u)) % vec4<u32>(32u))) >> (~(select(vec4<u32>(34334u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(23350u, 20u)]), vec4<u32>(62411u, 49353u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec4<bool>(true, false, false, false)) ^ (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x, 20408u, u_input.a.x) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 13151u), select(32227u, 0u, false) ^ ~0u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) >> (global0[_wgslsmith_index_u32(~56767u, 20u)] % 32u), ~u_input.a.x) >> (func_3(Struct_2(true), Struct_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)], 41909u), vec4<bool>(false, false, true, false), ~u_input.a.x, _wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(57166u, 15u)])))) % vec4<u32>(32u)));
    let var_1 = ~var_0;
    return Struct_2(true);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = true;
    let var_1 = arg_2.x;
    let var_2 = func_2();
    global1 = array<vec2<f32>, 15>();
    var var_3 = 0u;
    return ~(~(~abs(~u_input.a.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(true, true, true));
    global0 = array<u32, 20>();
    global1 = array<vec2<f32>, 15>();
    global1 = array<vec2<f32>, 15>();
    var var_1 = func_1(1i, vec4<i32>(-1i, u_input.c.x, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(0i, u_input.c.x), u_input.c.x), firstTrailingBit(countOneBits(0i))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, false)));
    let var_2 = ~(~(~abs(u_input.a.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-198f, -878f), 1f, -988f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-763f, _wgslsmith_f_op_f32(f32(-1f) * -272f), 297f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(608f, 898f, 1985f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1999f, -812f, -880f), vec3<f32>(939f, -350f, 866f))), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000f * -1292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f)), _wgslsmith_f_op_f32(select(-213f, 519f, var_1.x < var_2))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1028f, 466f), false)));
    let var_4 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(var_3.x != var_3.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}


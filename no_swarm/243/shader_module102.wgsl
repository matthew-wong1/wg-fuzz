struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(-1297f, -2038f, 628f, -1000f), vec3<u32>(25336u, 4294967295u, 1u), -1145f), Struct_1(vec4<f32>(-787f, 344f, -1644f, -1000f), vec3<u32>(34602u, 0u, 0u), 1468f), Struct_1(vec4<f32>(-270f, -1090f, 287f, 390f), vec3<u32>(25294u, 4294967295u, 1u), -702f), Struct_1(vec4<f32>(168f, 1100f, 2114f, -323f), vec3<u32>(80330u, 1u, 0u), -405f), Struct_1(vec4<f32>(-1433f, 418f, -1000f, -399f), vec3<u32>(0u, 4294967295u, 4294967295u), 567f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> bool {
    return true;
}

fn func_3() -> f32 {
    var var_0 = u_input.c;
    global1 = array<Struct_1, 5>();
    global0 = array<Struct_2, 1>();
    let var_1 = 1f;
    return 255f;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = vec3<bool>(arg_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), func_2(), true);
    global0 = array<Struct_2, 1>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1813f)))), _wgslsmith_f_op_f32(func_3()));
    let var_2 = _wgslsmith_add_i32(~u_input.b.x, 50219i);
    var var_3 = !(!vec3<bool>(!var_0.x != (false & var_0.x), all(select(var_0.xy, var_0.xy, var_0.yx)), !all(vec3<bool>(var_0.x, true, var_0.x))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(2729u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 0u, 1u, arg_2), vec4<u32>(27154u, 10494u, 70825u, 4294967295u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), 1u), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(u_input.a, 60156u, 17483u)), ~vec3<u32>(640u, 0u, 1u))), vec3<u32>(~arg_2, ~_wgslsmith_add_u32(54362u, 1u), 4294967295u)), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1119f - 672f), -355f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-213f, -117f))))), 92489u);
    var var_1 = _wgslsmith_sub_i32((u_input.c.x >> ((1u ^ var_0.b.b.x) % 32u)) & -12330i, u_input.b.x);
    global0 = array<Struct_2, 1>();
    let var_2 = firstLeadingBit(countOneBits(u_input.c) << (vec3<u32>(4294967295u, reverseBits(func_1(var_0.b.c, -1508f, var_0.b.b.x).b.b.x), u_input.a) % vec3<u32>(32u)));
    global1 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.b.b.xx, max(_wgslsmith_mult_vec2_u32(var_0.b.b.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.b.x, var_0.b.b.x), vec2<u32>(var_0.b.b.x, 0u), vec2<u32>(var_0.b.b.x, 4294967295u))), ~_wgslsmith_add_vec2_u32(var_0.b.b.xy, var_0.b.b.xx)), !select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(var_0.a, true))));
}


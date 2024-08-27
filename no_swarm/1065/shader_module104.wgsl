struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(-_wgslsmith_mult_vec3_i32(~arg_0.a, ~vec3<i32>(10461i, arg_0.a.x, -23241i)) & -_wgslsmith_div_vec3_i32(vec3<i32>(26061i, 6740i, -37699i), arg_0.a));
    global0 = array<u32, 19>();
    let var_1 = true & ((global0[_wgslsmith_index_u32(1u, 19u)] <= _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(64828u, 19u)], ~61666u, 11374u)) != true);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 63504u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(521f, -187f, -2479f, -1000f) - vec4<f32>(-486f, 687f, -471f, 190f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2647f, -1120f, 1514f, -939f))))), vec4<f32>(_wgslsmith_f_op_f32(550f + _wgslsmith_f_op_f32(126f * 879f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1531f * 366f) - 2573f), 833f, _wgslsmith_f_op_f32(-231f * -609f)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), reverseBits(vec3<i32>(func_1(Struct_1(vec3<i32>(u_input.a, u_input.a, -1359i)), Struct_1(vec3<i32>(u_input.a, u_input.a, 155i))), -1i, abs(1i))), 0u);
}


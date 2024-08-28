struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    return u_input.b.x;
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_2(u_input.d, vec3<bool>(false, any(vec2<bool>(true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)))), 46012u);
    let var_1 = Struct_1(-abs(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, -596i), ~vec3<i32>(16210i, -9189i, -7369i))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32((u_input.e.x << (var_0.a % 32u)) & ~u_input.e.x, 51616u), 98719u, 4294967295u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(873f, -1139f, -1947f, 1509f) - vec4<f32>(-973f, -295f, 1111f, 334f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, 1484f, 1628f, 780f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1985f, 1138f, -1496f, 3035f))) * vec4<f32>(942f, 237f, -163f, -1318f)))))), _wgslsmith_mod_i32(firstTrailingBit(21262i), -1i), var_0.b.xz);
    var var_2 = u_input.e.wy;
    var var_3 = select(var_1.e, vec2<bool>(var_0.b.x, !any(vec2<bool>(var_0.b.x, var_0.b.x)) & all(vec3<bool>(true, false, var_0.b.x))), var_1.e);
    let var_4 = var_0;
    return StorageBuffer(firstTrailingBit(~(~vec4<u32>(var_1.b, 4294967295u, 20567u, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~select(vec3<u32>(func_1(), u_input.b.x, ~u_input.d), u_input.e.wzy, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_1 = -70695i;
    var var_2 = countOneBits(~(-3283i));
    var_2 = 23709i;
    var var_3 = Struct_2(var_0.x << ((~_wgslsmith_add_u32(u_input.c.x, var_0.x) | 1u) % 32u), select(vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false)), true | any(vec4<bool>(true, true, false, true))), vec3<bool>(any(vec2<bool>(true, true)), true, true), !vec3<bool>(true, select(false, false, true), all(vec4<bool>(true, false, true, false)))), var_0.x);
    let x = u_input.a;
    s_output = func_2();
}


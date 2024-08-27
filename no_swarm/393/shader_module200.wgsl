struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1894f - -651f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(196f, 344f)) + _wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 404f)))));
    let var_1 = Struct_1(u_input.a.yz);
    let var_2 = true;
    var var_3 = Struct_1(abs(u_input.a.zz));
    let var_4 = abs(u_input.c);
    return var_2;
}

fn func_1() -> Struct_1 {
    global0 = u_input.d;
    var var_0 = vec4<bool>(all(vec4<bool>(true, true, true, true)) & true, func_2(), true, any(vec3<bool>(true, _wgslsmith_mult_u32(10996u, u_input.c.x) <= 30119u, true)));
    var var_1 = Struct_1(u_input.a.xy);
    global0 = u_input.d;
    let var_2 = Struct_1(-u_input.a.yz);
    return Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~var_2.a << ((vec2<u32>(u_input.c.x, 0u) << (u_input.c.wy % vec2<u32>(32u))) % vec2<u32>(32u)), select(max(u_input.a.zy, var_1.a), var_2.a, !var_0.yw)), firstTrailingBit(vec2<i32>(~var_2.a.x, -var_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yx;
    var var_1 = func_1();
    var_1 = Struct_1(var_1.a);
    var var_2 = !select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)), vec4<bool>((var_1.a.x << (1u % 32u)) >= (-18901i | var_0.x), true, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.e, -2147483647i)) != 6259i, func_2()), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, false));
    var_1 = Struct_1(u_input.a.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(366f, 439f))))), 2147483647i, 1i);
}


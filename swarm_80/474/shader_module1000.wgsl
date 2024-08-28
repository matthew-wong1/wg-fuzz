struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(1240f, 244f, 2958f, 546f, -455f, 1144f, 129f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec3<bool> {
    global0 = array<f32, 7>();
    let var_0 = u_input.a.x > 1u;
    let var_1 = 1u;
    global0 = array<f32, 7>();
    let var_2 = !vec4<bool>((_wgslsmith_f_op_f32(f32(-1f) * -1148f) > _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]))) | !any(vec2<bool>(false, var_0)), false, false, false);
    return var_2.yyw;
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = ~(~(-1i & (u_input.c & u_input.c)) | -2147483647i);
    global0 = array<f32, 7>();
    let var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(31859u, u_input.e.x, ~u_input.a.x), vec3<u32>(_wgslsmith_mod_u32(85198u, 4294967295u), ~u_input.b.x, 56866u));
    var_0 = u_input.c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    var var_0 = -(vec3<i32>(-1i) * -(~vec3<i32>(u_input.d, u_input.d, 25822i)));
    var var_1 = Struct_1(u_input.a.x, vec4<i32>(_wgslsmith_mod_i32(-abs(u_input.d), i32(-1i) * -u_input.c), 9021i, var_0.x, _wgslsmith_mult_i32(u_input.d, u_input.c)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f + 164f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(68664u, 7043u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 1u)), 7u)]), 652f, global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), true, !vec3<bool>(true, any(vec4<bool>(true, false, false, true)), false));
    let var_2 = _wgslsmith_clamp_i32(-u_input.d, -1i, u_input.c);
    var var_3 = Struct_2(-1678f, true, _wgslsmith_f_op_vec4_f32(-var_1.c), vec4<bool>(!(!var_1.d), any(!func_1()), func_2(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 7u)], var_1.e.x, var_1.c, vec4<bool>(false, var_1.e.x, false, var_1.e.x), var_1.d)) || false, var_1.d), false);
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(var_0.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, 1i, -27939i, var_1.b.x), var_1.b)), min(~var_2, 1i))), select(var_0.zx, var_0.yy, select(var_1.e.xz, var_3.d.ww, vec2<bool>(!var_3.e, select(false, var_4.x, var_4.x)))), ~var_1.a, min((max(vec3<u32>(var_1.a, 1u, var_1.a), vec3<u32>(var_1.a, var_1.a, u_input.b.x)) << (firstLeadingBit(u_input.b) % vec3<u32>(32u))) << (~u_input.b % vec3<u32>(32u)), abs(vec3<u32>(0u, 42306u, ~64275u))));
}


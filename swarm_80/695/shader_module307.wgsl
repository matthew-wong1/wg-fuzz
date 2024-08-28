struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = any(vec2<bool>(select(false, _wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x) <= _wgslsmith_f_op_f32(-arg_0.c.x), true), arg_0.b));
    var var_1 = arg_0.a.zx;
    let var_2 = false;
    var_0 = !(!(!(!var_2) | all(vec2<bool>(arg_0.b, arg_0.b))));
    var var_3 = arg_0.a;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.c.x, arg_0.c.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1000f, arg_0.c.x))))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> bool {
    let var_0 = vec4<u32>(~_wgslsmith_add_u32(countOneBits(u_input.b.x), 0u), _wgslsmith_div_u32(0u, 1404u), ~(~(~u_input.a)), ~(~13575u) & u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, -989f, 973f), vec3<f32>(arg_0.c.x, 317f, arg_0.c.x), arg_1))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1706f, arg_0.c.x, -105f)), select(select(arg_2.xzw, vec3<bool>(true, arg_0.b, false), false), vec3<bool>(false, arg_1, arg_2.x), !vec3<bool>(arg_0.b, arg_2.x, arg_1)))) * vec3<f32>(-1000f, arg_0.c.x, 1137f)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-706f + _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x))), vec2<i32>(~(-12629i), select(_wgslsmith_add_i32(-arg_0.a.x, arg_0.a.x & 1i), -_wgslsmith_div_i32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.c.x) >= -992f)), arg_0, _wgslsmith_mult_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.a, 0u, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0.x, 76506u, 0u), vec4<u32>(u_input.a, 14084u, var_0.x, u_input.b.x)))) ^ reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 68154u, 4294967295u), abs(var_0))));
    return true;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> bool {
    let var_0 = arg_1.wy;
    var var_1 = u_input.b.zw;
    var_1 = firstTrailingBit(~u_input.b.wz);
    return select(u_input.a, ~48349u, func_2(Struct_1(vec3<i32>(-20445i, 2147483647i, var_0.x), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-842f, 1000f))), !all(vec3<bool>(true, false, false)), vec4<bool>(false, true, false, true))) != 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(firstLeadingBit(select(2147483647i, _wgslsmith_mod_i32(firstLeadingBit(23309i), 1i), !func_1(32489u, vec4<i32>(1i, 22803i, -7760i, 0i)))), 2147483647i);
    var var_1 = func_1(~max(u_input.a, u_input.b.x), ~abs(vec4<i32>(11715i, 46433i, 1i, select(var_0.x, var_0.x, true))));
    var_1 = func_1(u_input.b.x, vec4<i32>(-1i, 2147483647i, ~2147483647i, abs(var_0.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, 148f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(476f, 1099f), vec2<f32>(-280f, -256f)))), vec2<f32>(_wgslsmith_div_f32(1338f, -367f), -433f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)) + vec2<f32>(106f, 567f)))) - vec2<f32>(1f, 1f));
    var_1 = select(max(max(1u, u_input.a << (106980u % 32u)), ~(~25095u)) < ~61205u, false, false);
    var_1 = abs(~u_input.b.x) <= ~29723u;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true)) - var_2.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-408f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1342f + var_2.x))) - 519f)), u_input.b.xy);
}


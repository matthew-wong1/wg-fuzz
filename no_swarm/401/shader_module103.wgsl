struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 36174u;

var<private> global1: i32;

var<private> global2: f32 = 743f;

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, ~u_input.a), select(reverseBits(~1u), 4294967295u, !any(vec4<bool>(true, true, true, true)))));
    var_0 = Struct_1(var_0.a);
    return vec4<f32>(-391f, _wgslsmith_f_op_f32(max(1260f, _wgslsmith_f_op_f32(floor(-558f)))), _wgslsmith_f_op_f32(-346f * -741f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2249f)))));
}

fn func_2() -> Struct_4 {
    global3 = !all(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true));
    let var_0 = Struct_4(~_wgslsmith_sub_vec2_u32(u_input.b.zx & u_input.b.xy, ~u_input.b.yy) ^ ~(~(vec2<u32>(u_input.a, 1u) ^ u_input.b.xx)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = max(var_0.a, min(_wgslsmith_div_vec2_u32(~var_0.a, _wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(28633u, u_input.a) << (var_0.a % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(countOneBits(~var_0.a), vec2<u32>(8794u, var_0.a.x) & var_0.a)));
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = var_0;
    global0 = ~12199u;
    var var_2 = max(firstLeadingBit(~min(vec3<i32>(-2147483647i, -27699i, 23456i), vec3<i32>(-6056i, -14368i, -1i))), ~(vec3<i32>(1i, 1i, 1i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 2404u), vec3<u32>(11538u, 1u, 42680u)) % vec3<u32>(32u)))) ^ max(vec3<i32>(-countOneBits(1i), -firstLeadingBit(-1i), 2147483647i), vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -14043i, ~72998i), -1i, ~(-19983i)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(994f, 221f), _wgslsmith_f_op_f32(sign(-345f))) * _wgslsmith_f_op_f32(f32(-1f) * -888f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(1119f * -1095f), true))))));
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, -1252f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(872f, 1000f), vec2<f32>(331f, 391f), vec2<bool>(false, false))), true))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(-1135f - 866f))))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 62538u), ~vec2<u32>(816u, 0u))), abs(u_input.b.xz)), Struct_2(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(countOneBits(u_input.b.x), 4294967295u, 23786u & u_input.b.x))));
    var var_1 = -select(countOneBits(vec2<i32>(1i, 1i)), reverseBits(vec2<i32>(~23272i, -2147483647i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(select(true, true, true), false), vec2<bool>(all(vec3<bool>(false, false, false)), true)));
    var var_2 = -_wgslsmith_div_vec4_i32(~(vec4<i32>(11266i, var_1.x, 2147483647i, 14383i) << (vec4<u32>(u_input.a, var_0.b.a.x, 4294967295u, var_0.b.a.x) % vec4<u32>(32u))), ~vec4<i32>(10928i, var_1.x, 0i, var_1.x)) | vec4<i32>(~(~abs(var_1.x)), i32(-1i) * -30146i, reverseBits(var_1.x), -var_1.x | var_1.x);
    global2 = _wgslsmith_f_op_vec4_f32(func_3()).x;
    var var_3 = vec2<i32>(-(3234i & var_2.x), _wgslsmith_mult_i32(var_1.x, var_1.x | (64685i ^ min(var_2.x, var_1.x))));
    let var_4 = Struct_2(var_0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_mod_vec4_i32(~vec4<i32>(firstTrailingBit(0i), select(1i, 1i, true), -5101i, ~var_3.x), abs(countOneBits(abs(vec4<i32>(var_2.x, 1i, var_3.x, var_2.x))))), _wgslsmith_dot_vec2_i32(var_2.wx, vec2<i32>(var_2.x, ~(31465i & var_2.x))));
}


struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(-883f, -u_input.a, u_input.a);
    let var_1 = true;
    let var_2 = 4294967295u << (u_input.c % 32u);
    let var_3 = var_2;
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -830f), u_input.a, -2147483647i << (u_input.b % 32u));
    return -364f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~(~0u)), u_input.c), global0[_wgslsmith_index_u32(41542u >> (u_input.b % 32u), 8u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(func_3(false, vec2<i32>(1i, 8015i)))), 1000f)), reverseBits(_wgslsmith_mod_i32(abs(u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 9089u, var_0.x, u_input.c), vec4<u32>(19960u, 8804u, 51092u, 4294967295u)) % 32u), u_input.a)), min(~0i, firstLeadingBit(58847i)));
    var var_2 = Struct_2(all(vec4<bool>(any(vec3<bool>(false, true, false)) & select(true, false, false), ~var_0.x <= 8434u, true, true)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a)) - -1077f) > 655f);
    let var_4 = 565f;
    return var_3;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = vec4<u32>(1u, max(u_input.b >> ((~u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2096u, 0u, 1u), vec3<u32>(u_input.b, u_input.c, u_input.c)) % 32u)) % 32u), 20080u), u_input.b, max(0u, u_input.b));
    global0 = array<vec2<u32>, 8>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, -347f, -233f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x))), var_1.x > ~u_input.c))) + vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-232f + 1783f), _wgslsmith_f_op_f32(ceil(arg_2.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(523f, _wgslsmith_div_f32(-823f, arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + arg_2.x), -531f)))));
    global0 = array<vec2<u32>, 8>();
    return func_2();
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    global0 = array<vec2<u32>, 8>();
    var var_0 = func_4(0i, Struct_2(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), func_2());
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    let var_1 = u_input.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-725f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(525f))))))), 729f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 8>();
    let var_0 = !(!vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(2147483647i, -31536i)) > (u_input.a & -1i), select(all(vec4<bool>(false, true, false, true)), select(true, true, true), false), _wgslsmith_f_op_f32(-632f - 1892f) <= _wgslsmith_f_op_f32(step(-169f, 1518f))));
    let var_1 = ~vec4<u32>(u_input.b, 10153u, 38396u, u_input.c);
    var var_2 = select(-select(~vec2<i32>(1i, u_input.a), -vec2<i32>(u_input.a, u_input.a), true), ~(vec2<i32>(-1i, u_input.a) & vec2<i32>(35998i, 2147483647i)) & (_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -42948i), vec2<i32>(2147483647i, -2147483647i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(6046i, -2147483647i), vec2<i32>(778i, 0i))), !select(!var_0.zy, select(var_0.xz, vec2<bool>(var_0.x, true), var_0.zx), vec2<bool>(true, var_0.x))) >> (~firstLeadingBit(max(~vec2<u32>(var_1.x, 45879u), global0[_wgslsmith_index_u32(u_input.c, 8u)])) % vec2<u32>(32u));
    var_2 = vec2<i32>(-1i) * -vec2<i32>(~43580i, -2020i);
    var_2 = vec2<i32>(var_2.x, var_2.x);
    var var_3 = !select(!vec4<bool>(true, false, var_0.x, false & var_0.x), vec4<bool>(false, true, var_0.x, var_1.x <= u_input.c), !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(true), true, true, true))) + 2117f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f - _wgslsmith_f_op_f32(f32(-1f) * -1083f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(731f, _wgslsmith_f_op_f32(1165f * 635f), 522f, _wgslsmith_f_op_f32(max(242f, -1089f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1333f)), -1602f, _wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(select(-2504f, -915f, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1127f)), _wgslsmith_f_op_f32(632f - -606f), _wgslsmith_f_op_f32(max(-301f, 545f)), -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1372f, 1192f, -993f, 711f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-571f, 1087f, 1119f, -614f)))))))), -117f, 1u);
}


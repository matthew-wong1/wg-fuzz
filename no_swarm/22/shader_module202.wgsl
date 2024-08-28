struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: vec4<f32> = vec4<f32>(-432f, -1000f, 1696f, 1110f);

var<private> global2: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = global1.x;
    var var_1 = u_input.d.xz;
    var var_2 = Struct_2(Struct_1(u_input.d.xw >> (~(~u_input.d.xw) % vec2<u32>(32u)), ~(u_input.d >> (u_input.d % vec4<u32>(32u)))), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, arg_0.x, 1000f, _wgslsmith_f_op_f32(-global1.x)) - vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, -303f)), 493f, global1.x, _wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1172f, 144f, -361f, 462f) - vec4<f32>(global1.x, global1.x, global1.x, -1037f))))))));
    var var_4 = !(!vec3<bool>(any(vec4<bool>(var_2.b, false, false, false)), true, any(vec2<bool>(var_2.b, var_2.b))));
    return var_2.a;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_3(Struct_1(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, arg_2.a.a.x), arg_2.d)), vec4<u32>(~_wgslsmith_sub_u32(15794u, 0u), 4294967295u, 65479u | select(4294967295u, 26039u, false), arg_2.d.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(-561f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c)))), global1.x, abs(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(arg_2.a.b | arg_2.e.a.b, arg_2.a.b))), Struct_2(arg_2.e.a, !any(select(vec4<bool>(false, false, arg_0, false), vec4<bool>(arg_0, false, true, arg_2.e.b), vec4<bool>(true, arg_0, arg_0, arg_0)))));
    var var_1 = ~_wgslsmith_mod_i32(reverseBits(-2147483647i), 2147483647i);
    return var_0.c;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(vec2<u32>(arg_1, _wgslsmith_mod_u32(~u_input.d.x, firstLeadingBit(4294967295u))), vec4<u32>(_wgslsmith_div_u32(u_input.d.x, max(u_input.d.x, 23046u)), arg_1, _wgslsmith_mult_u32(u_input.d.x, 35330u) ^ ~u_input.d.x, 58167u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.zx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1565f, global1.x) - global1.yx) * global1.zx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -147f) * _wgslsmith_f_op_vec2_f32(global1.yw + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 943f) - vec2<f32>(global1.x, arg_2.x)))))), -648f, u_input.d.yy, Struct_2(Struct_1(~u_input.d.wx, vec4<u32>(arg_1, 4294967295u, arg_1, 0u) & u_input.d), select(all(arg_3.zy), true, any(arg_3) != any(arg_3.xy))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0.c, _wgslsmith_f_op_f32(-arg_2.x), 520f)))));
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1208f), _wgslsmith_f_op_f32(-arg_2.x)));
    return min(vec4<i32>(-1i) * -(vec4<i32>(-14522i, 1i, u_input.a.x, 2147483647i) ^ ~vec4<i32>(u_input.a.x, 2147483647i, 92055i, arg_0)), firstTrailingBit(~(~(-vec4<i32>(-1i, arg_0, u_input.b, arg_0)))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(global1.wy, vec2<f32>(global1.x, -992f))), _wgslsmith_f_op_vec2_f32(max(global1.xz, global1.zz)))))))));
    var var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 1592f) * _wgslsmith_f_op_f32(round(464f))) >= global1.x, true, true), vec4<bool>(true, false, true, arg_0 >= abs(var_0.b.x)), vec4<bool>(true, true, true, true));
    let var_2 = ~(~func_4(58373i, 12191u, vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(func_3(true, var_0.a.x, Struct_3(var_0, global1.yz, global1.x, var_0.b.yz, Struct_2(var_0, true))))), select(!vec3<bool>(false, true, var_1.x), select(var_1.wzx, vec3<bool>(var_1.x, true, var_1.x), var_1.xxx), vec3<bool>(false, false, var_1.x))));
    var var_3 = (countOneBits(var_0.b.x) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.d.x, 51192u), vec3<u32>(var_0.a.x, u_input.d.x, var_0.a.x))), 1u) % 32u)) & func_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(465f, global1.x, false)), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 654f) - vec2<f32>(498f, global1.x)))).a.x;
    var var_4 = _wgslsmith_add_vec4_u32(var_0.b, select(var_0.b, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 0u, arg_0, arg_0), var_0.b), vec4<u32>(_wgslsmith_add_u32(61483u, 0u), var_0.b.x, ~1u, _wgslsmith_sub_u32(23826u, arg_0)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, arg_0, 4294967295u, 10386u), vec4<u32>(u_input.d.x, 11570u, 30456u, 4294967295u)), _wgslsmith_mod_u32(65322u, u_input.d.x), 4294967295u)), select(!(!vec4<bool>(var_1.x, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, true, false))), vec4<bool>(true, 4294967295u < u_input.d.x, var_1.x, true))));
    return u_input.d.x < ~(~var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    global2 = !(!func_1(38175u));
    var var_0 = vec2<u32>(~countOneBits(11117u), 24478u);
    var var_1 = Struct_2(Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.d.ww, vec2<u32>(var_0.x, 59414u)), 73141u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(22447u, var_0.x, u_input.d.x, 103992u), _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, var_0.x, var_0.x)))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))));
    var var_2 = vec4<i32>(u_input.c, u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, u_input.c) >> (func_2(vec2<f32>(global1.x, global1.x)).b.x % 32u), u_input.b), -2956i, _wgslsmith_div_i32(min(u_input.b, -31934i) & u_input.a.x, ~(~u_input.a.x))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_1.a.a.x, var_0.x));
}


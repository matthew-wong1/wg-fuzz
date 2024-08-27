struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = -(arg_0.xyx & arg_0.zww);
    var var_1 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 31179u, 13937u), ~u_input.a.xxz) << (reverseBits(u_input.a.xyz) % vec3<u32>(32u)), u_input.a.xzy);
    let var_2 = _wgslsmith_div_vec3_u32(u_input.a.zwx, u_input.a.zxz);
    var var_3 = var_2.x;
    let var_4 = !arg_2;
    return 2147483647i;
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(808f, -123f, 259f)))))))));
    let var_1 = min(~u_input.a.x, ~u_input.a.x) < ~_wgslsmith_div_u32(12613u, 4294967295u);
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(-1i, 15868i), vec2<i32>(1i, 0i), var_1), ~vec2<i32>(-66606i, 2147483647i)) << (~(~vec2<u32>(27445u, 20991u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i >> (u_input.a.x % 32u), -2147483647i), firstTrailingBit(vec2<i32>(-6128i, 1i)))), -1i, -1i);
    var var_3 = Struct_1(vec2<bool>(select(true, true, select(var_1, false, false)), select(true, var_1, !(!var_1))), select(select(vec2<bool>(select(false, var_1, var_1), var_1), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false), select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(var_1, false)), false), var_1), vec2<bool>(var_1, var_1), all(vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec3<bool>(false, true, false)), any(vec2<bool>(false, var_1))))));
    let var_4 = vec3<u32>(select(1u, u_input.a.x, !any(var_3.a)), u_input.a.x, reverseBits(~_wgslsmith_add_u32(1u, 43122u))) ^ (u_input.a.wyz & ~abs(vec3<u32>(1u, 0u, 4294967295u)));
    return reverseBits(~(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-3942i, var_2.x, var_2.x))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec3_i32(~min(-vec3<i32>(-1i, -1i, 23864i), max(vec3<i32>(1i, 16437i, -2147483647i), vec3<i32>(-1i, -9501i, -23441i))) ^ ~vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 42398i), vec2<i32>(-2147483647i, 1i)), 1i >> (u_input.a.x % 32u)), vec3<i32>(-_wgslsmith_sub_i32(~49159i, ~14130i), func_2(max(vec4<i32>(7299i, -2147483647i, -41026i, -4140i), vec4<i32>(41719i, 1i, -1928i, -20004i)), -430f, true, Struct_1(arg_0, vec2<bool>(arg_0.x, arg_0.x))), -1i));
    var_0 = -_wgslsmith_div_vec3_i32(~vec3<i32>(1i, 0i, var_0.x), firstTrailingBit(vec3<i32>(1i, 46219i, var_0.x))) << (u_input.a.yww % vec3<u32>(32u));
    let var_1 = 1u;
    var_0 = vec3<i32>(var_0.x ^ func_2(~vec4<i32>(-37415i, var_0.x, var_0.x, 0i), _wgslsmith_f_op_f32(max(642f, 974f)), !arg_0.x, Struct_1(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x))), -1i, var_0.x) >> (vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, ~min(var_1, 37218u)), u_input.a.x) % vec3<u32>(32u));
    var_0 = min(func_3(), vec3<i32>(_wgslsmith_mod_i32(62207i, -var_0.x), var_0.x, var_0.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, true), select(vec2<bool>(true && all(vec2<bool>(true, true)), select(u_input.a.x >= 50021u, all(vec3<bool>(true, true, false)), select(true, true, true))), !func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(!any(vec2<bool>(false, true)), true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))));
    var var_1 = _wgslsmith_mult_u32(~4294967295u, u_input.a.x & ~(~43650u));
    var_0 = Struct_1(var_0.b, !var_0.a);
    let var_2 = Struct_1(var_0.b, func_1(func_1(var_0.a)));
    var var_3 = var_2;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(428f - _wgslsmith_f_op_f32(-261f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(854f + -951f))))), _wgslsmith_f_op_f32(abs(393f)));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1046f - -308f), -2569f))), _wgslsmith_f_op_f32(-1800f + _wgslsmith_f_op_f32(ceil(843f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(964f, _wgslsmith_f_op_f32(698f * -471f))) - _wgslsmith_f_op_f32(select(-496f, 1f, var_2.b.x))))), vec2<u32>(u_input.a.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 26134u), u_input.a.zx), 18496u)));
}

